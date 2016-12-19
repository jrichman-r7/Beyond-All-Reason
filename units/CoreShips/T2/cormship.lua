return {
	cormship = {
		acceleration = 0.022,
		activatewhenbuilt = true,
		brakerate = 0.086,
		buildcostenergy = 17000,
		buildcostmetal = 3000,
		buildpic = "CORMSHIP.DDS",
		buildtime = 22200,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND SHIP NOTSUB NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -8 0",
		collisionvolumescales = "43 43 111",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Cruise Missile Ship",
		energymake = 0.9,
		energyuse = 0.9,
		explodeas = "largeexplosiongeneric",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2250,
		maxvelocity = 2,
		minwaterdepth = 12,
		movementclass = "BOAT5",
		name = "Messenger",
		nochasecategory = "VTOL",
		objectname = "CORMSHIP",
		radardistance = 1400,
		seismicsignature = 0,
		selfdestructas = "largeexplosiongeneric",
		sightdistance = 318.5,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.32,
		turnrate = 250,
		waterline = 5,
		customparams = {
			death_sounds = "generic",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.0875 0.375",
				collisionvolumescales = "46.75 27.25 110.75",
				collisionvolumetype = "Box",
				damage = 1350,
				description = "Messenger Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 1679,
				object = "CORMSHIP_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Messenger Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 566,
				object = "6X6B",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			armship_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailflashy",
				explosiongenerator = "custom:genericshellexplosion-medium-aa",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "missilesmalllauncher.s3o",
				name = "Missiles",
				noselfdamage = true,
				range = 700,
				reloadtime = 2,
				smoketrail = false,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rockhvy2",
				startvelocity = 250,
				texture2 = "armsmoketrail",
				tolerance = 8000,
				tracks = true,
				turnrate = 30000,
				turret = true,
				weaponacceleration = 250,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 850,
				damage = {
					default = 138,
					subs = 5,
				},
			},
			cormship_rocket = {
				areaofeffect = 96,
				avoidfeature = false,
				burnblow = true,
				craterareaofeffect = 96,
				craterboost = 0,
				cratermult = 0,
				energypershot = 100,
				cegTag = "missiletrailmedium",
				explosiongenerator = "custom:genericshellexplosion-large",
				firestarter = 100,
				flighttime = 15,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "corshiprckt1",
				name = "Rocket",
				noselfdamage = true,
				range = 1550,
				reloadtime = 8,
				smoketrail = false,
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "Rockhvy1",
				tolerance = 4000,
				turnrate = 24384,
				weaponacceleration = 75,
				weapontimer = 5,
				weapontype = "StarburstLauncher",
				weaponvelocity = 480,
				damage = {
					commanders = 500,
					default = 1100,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "CORMSHIP_ROCKET",
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				def = "ARMSHIP_MISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
