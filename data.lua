local fallback_tier = 3.33333 -- In Organized Solar System, vertically south of the star

--== Tier meanings guide ==--
-- Tier 0:  Pre-Nauvis
-- Tier 1:  Nauvis & friends
-- Tier 2:  First steps from Nauvis
-- Tier 3:  Intermediate planets that may reward preparation
-- Tier 4:  More involved planets that may depend on earlier progress
-- Tier 5:  Aquilo and the vanilla endgame
-- Tier 6:  Post-endgame planets and other oddities
-- Tier -1: Indicates the planet sits outside of this system in some way.

local vanilla_tiers = {
	planet = {
		nauvis = 1,
		vulcanus = 1.8,
		fulgora = 2.4,
		gleba = 3.5,
		aquilo = 5,
	},
	["space-location"] = {
		["shattered-planet"] = 5,
		["solar-system-edge"] = 5,
	},
}

local modded_tiers = {
	planet = {
		akularis = 0.5,
		gerkizia = 0.5,
		quadromire = 0.5,
		foliax = 0.5,
		mickora = 1,
		["erimos-prime"] = 1.22,
		vicrox = 1.4,
		pelagos = 1.5,
		froodara = 1.8,
		tchekor = 2,
		jahtra = 2.2,
		nekohaven = 2.5,
		zzhora = 2.5,
		igrys = 2.6,
		arig = 2.8,
		janus = 3,
		shchierbin = 3,
		ithurice = 3.3,
		corrundum = 3.3,
		castra = 4,
		tapatrion = 4,
		tenebris = 4,
		moshine = 4.1,
		cubium = 4.1,
		rubia = 4.5,
		paracelsin = 4.8,
		hexalith = 5.1,
		vesta = 5.2,
		maraxsis = 5.3,
		frozeta = 5.5,
		omnia = 6,
		naufulglebunusilo = 6,
		arrakis = 6,
		tiber = 6.5,
	},
	["space-location"] = {
		["slp-solar-system-sun"] = 0.2,
		["slp-solar-system-sun2"] = 0.2,
		["calidus-senestella-gate-calidus"] = 4.0,
		secretas = 5.6,
	},
}

data:extend({
	{
		type = "mod-data",
		name = "PlanetsLib-tierlist",
		data_type = "tierlist",
		data = {
			default = fallback_tier,
			planet = {},
			["space-location"] = {},
		},
	},
})

for planet_name, tier in pairs(vanilla_tiers.planet) do
	data.raw["mod-data"]["PlanetsLib-tierlist"].data.planet[planet_name] = tier
end

for planet_name, tier in pairs(modded_tiers.planet) do
	data.raw["mod-data"]["PlanetsLib-tierlist"].data.planet[planet_name] = tier
end

for space_location_name, tier in pairs(vanilla_tiers["space-location"]) do
	data.raw["mod-data"]["PlanetsLib-tierlist"].data["space-location"][space_location_name] = tier
end

for space_location_name, tier in pairs(modded_tiers["space-location"]) do
	data.raw["mod-data"]["PlanetsLib-tierlist"].data["space-location"][space_location_name] = tier
end
