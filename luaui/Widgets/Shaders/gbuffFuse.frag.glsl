#version 150 compatibility

//__DEFINES__

uniform sampler2D modelDepthTex;
uniform sampler2D mapDepthTex;
uniform sampler2D modelDiffTex;

uniform sampler2D modelNormalTex;
uniform sampler2D mapNormalTex;

uniform sampler2D modelMiscTex;
uniform sampler2D mapMiscTex;

uniform sampler2D unitStencilTex;

uniform mat4 invProjMatrix;
uniform mat4 viewMatrix;

#define NORM2SNORM(value) (value * 2.0 - 1.0)
#define SNORM2NORM(value) (value * 0.5 + 0.5)

// Calculate out of the fragment in screen space the view space position.
vec4 GetViewPos(vec2 texCoord, float sampledDepth) {
	vec4 projPosition = vec4(0.0, 0.0, 0.0, 1.0);

	//texture space [0;1] to NDC space [-1;1]
	#if (DEPTH_CLIP01 == 1)
		//don't transform depth as it's in the same [0;1] space
		projPosition.xyz = vec3(NORM2SNORM(texCoord), sampledDepth);
	#else
		projPosition.xyz = NORM2SNORM(vec3(texCoord, sampledDepth));
	#endif

	vec4 viewPosition = invProjMatrix * projPosition;
	viewPosition /= viewPosition.w;

	return viewPosition;
}

void main() {
	
	vec2 uv = gl_FragCoord.xy * vec2(1.0/VSX, 1.0/VSY);
	//vec2 uv = gl_TexCoord[0].xy * vec2(2,-2) + vec2(0,2.0);
	//gl_FragColor = vec4(uv.xy, 0.0, 1.0); return;
	#if USE_STENCIL == 1 
		if (texture(unitStencilTex, uv).r < 0.1) {
			gl_FragData[0] = vec4(0,0,0,0) ; 
			gl_FragData[1] = vec4(0,0,0,0) ; 
			#if (MERGE_MISC == 1)
				gl_FragData[2] = vec4(0,0,0,0);
			#endif
			return;
		}
	#endif

	float modelAlpha = texture(modelDiffTex, uv, 0).a;
	float validFragment = step(3.0 / 255.0, modelAlpha); //agressive approach

	/*if (validFragment < 0.1) { // more early bails
		gl_FragData[0] = vec4(0,0,0,0) ; 
		gl_FragData[1] = vec4(0,0,0,0) ; 
		#if (MERGE_MISC == 1)
			gl_FragData[2] = vec4(0,0,0,0);
		#endif
		//return;
	}*/

	float modelDepth = texture(modelDepthTex, uv).r;
	float mapDepth = texture(mapDepthTex, uv).r;

	float modelOccludesMap = float(modelDepth < mapDepth);
	float depth = mix(mapDepth, modelDepth, modelOccludesMap);

	vec4 viewPosition = GetViewPos(uv, depth);
	
	vec3 viewNormal = vec3 (0.0);
	if (validFragment > 0.5){
		vec3 modelNormal = texture(modelNormalTex, uv).rgb;
		vec3 mapNormal = texture(mapNormalTex, uv).rgb;

		viewNormal = mix(mapNormal, modelNormal, modelOccludesMap);
	}
	float validNormal = step(0.2, length(viewNormal)); //empty spaces in g-buffer will have vec3(0.0) normals

	viewNormal = NORM2SNORM(viewNormal);
	viewNormal = normalize(viewNormal);
	viewNormal = vec3(viewMatrix * vec4(viewNormal, 0.0)); //transform world-->view space

	#if (MERGE_MISC == 1)
		vec4 modelMiscInfo = texture(modelMiscTex, uv);
		vec4 mapMiscInfo = texture(mapMiscTex, uv);
		vec4 miscInfo = mix(mapMiscInfo, modelMiscInfo, modelOccludesMap);
	#endif

	// MRT output:
	//[0] = gbuffFuseViewPosTex
	//[1] = gbuffFuseViewNormalTex
	//[2] = gbuffFuseMiscTex (conditional to MERGE_MISC == 1)
	gl_FragData[0].xyz = mix( vec3(0.0), viewPosition.xyz, 1);
	gl_FragData[1].xyz = mix( vec3(0.0), viewNormal.xyz, validFragment * validNormal);
	//gl_FragData[1].a = validFragment * validNormal;
	#if (MERGE_MISC == 1)
		gl_FragData[2] = miscInfo;
	#endif
}