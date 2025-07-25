[![The Foundry](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)](https://thefoundrygg.com)[![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)](https://github.com/danielmartin0/factorio-PlanetsLib-Tiers)

# PlanetsLib: Tiers

This companion mod for PlanetsLib assigns 'tier values' to planets, rough indicators of where the planet fits in a vanilla-style game of Space Age. 

Tiers have no functionality by themselves, but are a rough indicator where the planet fits in a vanilla-style game of Space Age for the purposes of other mods that wish to use this information.

This mod is separate to PlanetsLib so that players can choose to update PlanetsLib without changing the tiers of planets on their save.

## Documentation

The built-in tier list is [defined here](https://github.com/danielmartin0/factorio-PlanetsLib-Tiers/blob/main/tiers.lua), though other mods are able to overwrite these values. Players are encouraged to submit edits to keep the built-in list up-to-date.

You can access the tier values of a planet or space location with `local tier = data.raw["mod-data"]["PlanetsLib-tierlist"].data[type][name] or data.raw["mod-data"]["PlanetsLib-tierlist"].data.default`.