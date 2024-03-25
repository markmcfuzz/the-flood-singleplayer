------------------------------------------------------------------------------
-- Map Gameplay Features Module
-- Mark Mc'Fuzz
-- Set of different gameplay features
------------------------------------------------------------------------------
-- Lua libraries
local const = require "the_flood.constants"
local glue = require "glue"
local _, harmony
if not blam.isGameSAPP() then
    _, harmony = pcall(require, "mods.harmony")
end
local network = require "the_flood.dataNet.network"
local core = require "the_flood.core"

-- Gameplay Modules
local hudExtensions = require "lua.the_flood.zGameplayCore.hudExtensions"
local healthRegen = require "lua.the_flood.zGameplayCore.healthRegen"
local dynamicCross = require "lua.the_flood.zGameplayCore.dynamicCross"
--local playerPingObjectives = require "the_flood.gameplay_core.playerPingObjectives"

-- Functions OnTick
function OnTick()
    dynamicCross.dynamicReticles()
    hudExtensions.radarHideOnZoom()
    hudExtensions.hudBlurOnLowHealth()
    hudExtensions.changeGreandeSound()
    healthRegen.regenerateHealth()
end

-- local fontOverride = require "multiplayer.features.fontOverride" (use later for change the font with a custom one)
