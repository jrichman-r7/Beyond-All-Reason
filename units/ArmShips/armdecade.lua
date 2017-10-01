return {
	armdecade = {
		activatewhenbuilt = true,
		buildangle = 16384,
		buildcostenergy = 0.8*1480,
		buildcostmetal = 0.8*180,
		buildpic = "ARMDECADE.DDS",
		buildtime = 0.8*6525*0.57,
		canmove = true,
		category = "ALL WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -4 -2",
		collisionvolumescales = "24 24 67",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Corvette",
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 2,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 780,
		minwaterdepth = 12,
		movementclass = "BOAT42X4",
		name = "Decade",
		nochasecategory = "UNDERWATER VTOL",
		objectname = "ARMDECADE",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 320,
		sonardistance = 200,
		waterline = 3,
		--move
		acceleration = 3.00/90,
		brakerate = 3.00/15,
		maxvelocity = 3.00,		
		turninplace = true,
		turninplaceanglelimit = 110,
		turninplacespeedlimit = 0.64*3.00,
		turnrate = 410,
		--end move
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-4.64749145508 -7.42665378418 -1.15311431885",
				collisionvolumescales = "32.7630615234 17.5484924316 65.1112213135",
				collisionvolumetype = "Box",
				damage = 150,
				description = "Decade Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 0.8*197,
				object = "ARMDECADE_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 250,
				description = "Decade Heap",
				energy = 0.8*0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*97,
				object = "4X4B",
                collisionvolumescales = "85.0 14.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			corvette_emg_front = {
				areaofeffect = 8,
				avoidfeature = false,
				burst = 3,
				burstrate = 0.12,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-small",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.7,
				model = "minitorpedo",
				name = "flash",
				noselfdamage = true,
				range = 280,
				reloadtime = 0.37,
				rgbcolor = "1 0.95 0.4",
				size = 1.75,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				-- soundstart = "flashemg",
				sprayangle = 1250,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.1,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					bombers = 3,
					default = 9,
					fighters = 3,
					subs = 3,
					vtol = 3,
				},
			},
			corvette_emg_rear = {
				areaofeffect = 8,
				avoidfeature = false,
				burst = 3,
				burstrate = 0.13,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-small",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.7,
				name = "flash",
				noselfdamage = true,
				range = 280,
				model = "minitorpedo",
				reloadtime = 0.4,
				rgbcolor = "1 0.95 0.4",
				size = 1.75,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				-- soundstart = "flashemg",
				sprayangle = 1250,
				tolerance = 5000,
				turret = true,
				waterweapon = true,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					bombers = 3,
					default = 9,
					fighters = 3,
					subs = 1,
					vtol = 3,
				},
			},
		},
		weapons = {
			[1] = {
				def = "CORVETTE_EMG_FRONT",
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				def = "CORVETTE_EMG_REAR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
