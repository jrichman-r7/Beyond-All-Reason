return {
	corkark = {
		acceleration = 0.0828,
		brakerate = 0.8211,
		buildcostenergy = 2400,
		buildcostmetal = 280,
		buildpic = "CORKARK.DDS",
		buildtime = 4000,
		canmove = true,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 1",
		collisionvolumescales = "29 35 29",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		damagemodifier = 0.5,
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1150,
		maxslope = 17,
		maxvelocity = 1.4,
		maxwaterdepth = 12,
		movementclass = "BOT2",
		name = "Karkinos",
		nochasecategory = "VTOL",
		objectname = "Units/scavboss/CORKARK.s3o",
		script = "Units/scavboss/CORKARK.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 400,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 0.99,
		turnrate = 885.5,
		upright = true,
		customparams = {
			unitgroup = 'weapon',
			model_author = "Firestorm",
			normaltex = "unittextures/Cor_normal.dds",
			subfolder = "corbots",
			wpn1turretx = 200,
			wpn1turrety = 200,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.527076721191 -5.09926749023 6.06378173828",
				collisionvolumescales = "37.3442840576 10.0486450195 42.9995422363",
				collisionvolumetype = "Box",
				damage = 880,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 161,
				object = "Units/scavboss/corkark_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 490,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 64,
				object = "Units/arm2X2A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			--explosiongenerators = {	-- disabled cause flare direction is off
			--	[1] = "custom:barrelshot-medium",
			--},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg2",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "kbarmmov",
			},
			select = {
				[1] = "kbarmsel",
			},
		},
		weapondefs = {
			corwar_laser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.5,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:laserhit-small-yellow",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 6,
				name = "HeatRay",
				noselfdamage = true,
				range = 360,
				reloadtime = 2,
				rgbcolor = "1 0.8 0",
				rgbcolor2 = "0.8 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.2,
				thickness = 1.25,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 950,
				damage = {
					bombers = 9,
					default = 160,
					fighters = 9,
					vtol = 9,
				},
			},
			corlevlr_weapon = {
				areaofeffect = 144,
				avoidfeature = false,
				burnblow = true,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.9,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulsefactor = 3,
				name = "RiotCannon",
				noselfdamage = true,
				range = 220,
				reloadtime = 5,
				soundhit = "xplosml3",
				soundhitwet = "splsmed",
				soundstart = "canlite3",
				separation = 2.0,
				nogap = false,
				sizeDecay = 0.08,
				stages = 12,
				alphaDecay = 0.10,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 550,
				customparams = {
					expl_light_life_mult = 1.1,
					light_mult = 1.2,
					light_radius_mult = 1.3,
				},
				damage = {
					bombers = 27,
					default = 190,
					fighters = 27,
					subs = 70,
					vtol = 27,
				},
			},
		},
		weapons = {
			[1] = {
				def = "CORWAR_LASER",
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "CORLEVLR_WEAPON",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
