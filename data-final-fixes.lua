if not settings.startup["PlanetsLibTiers-show-tier-tooltip"].value then
	return
end

local tierlist_data = data.raw["mod-data"]["PlanetsLib-tierlist"]
if not tierlist_data then
	return
end

local tier_data = tierlist_data.data

local function get_tier(prototype_type, prototype_name)
	if tier_data[prototype_type] and tier_data[prototype_type][prototype_name] then
		return tier_data[prototype_type][prototype_name]
	end
end

for _, type in ipairs({ "planet", "space-location" }) do
	for name, prototype in pairs(data.raw[type]) do
		local tier = get_tier(type, name)

		if tier then
			if not prototype.custom_tooltip_fields then
				prototype.custom_tooltip_fields = {}
			end

			table.insert(prototype.custom_tooltip_fields, {
				name = { "tooltip.planet-tier" },
				value = tostring(tier),
			})
		end
	end
end
