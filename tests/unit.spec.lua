--******************************************************************************************************
--** Copyright (c) 2024 FAForever
--**
--** Permission is hereby granted, free of charge, to any person obtaining a copy
--** of this software and associated documentation files (the "Software"), to deal
--** in the Software without restriction, including without limitation the rights
--** to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--** copies of the Software, and to permit persons to whom the Software is
--** furnished to do so, subject to the following conditions:
--**
--** The above copyright notice and this permission notice shall be included in all
--** copies or substantial portions of the Software.
--**
--** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--** IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--** FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--** AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--** LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--** OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--** SOFTWARE.
--******************************************************************************************************

-- Note that the root of the Lua environment for this script is in the '/tests'
-- folder of the repository!

---@type Luft
local luft = require "luft"

---@type UnitBlueprint[]
local BlueprintUnits = {}

-------------------------------------------------------------------------------
--#region Mock constructors

---@param t table
---@return table
function Sound(t)
    return t
end

---@param t table
---@return table
function RPCSound(t)
    return t
end

---@param bp UnitBlueprint
function UnitBlueprint(bp)
    if bp.Description then
        BlueprintUnits[bp.Description] = { bp }
    end
end

---@param bp MeshBlueprint
function MeshBlueprint(bp)
    return bp
end

-------------------------------------------------------------------------------

-- this file is generated by the bash script
dofile("generated/unit-blueprint-list.lua")

for k, blueprintFile in ipairs(Files) do
    -- ./units/UEL0301/UEL0301_PersonalShield_mesh.bp
    -- to
    -- ../units/UEL0301/UEL0301_PersonalShield_mesh.bp
    dofile("." .. blueprintFile)
end

local BlueprintIntelNameToOgrids = {
    CloakFieldRadius = 4,
    OmniRadius = 4,
    RadarRadius = 4,
    RadarStealthFieldRadius = 4,
    SonarRadius = 4,
    SonarStealthFieldRadius = 4,
    WaterVisionRadius = 4,
    VisionRadius = 2,
}

luft.describe(
    'Unit blueprints - intel radius values',
    function()
        luft.describe_each(
            "%s",
            BlueprintUnits,

            ---@param name string
            ---@param unitBlueprintPacked UnitBlueprint[]
            function(name, unitBlueprintPacked)
                local unitBlueprint = unpack(unitBlueprintPacked)
                if unitBlueprint.Intel then

                    -----------------------------------------------------------
                    --#region Intel radius matches intel grid

                    -- The game uses a grid to keep track of the intel of an
                    -- army. The grid is coarse, for vision each cell takes up
                    -- 2 ogrids and for all other intel it is 4 ogrids. As a
                    -- result a unit with 28, 29, 30, or 31 radar range will
                    -- practically see the same units but visually to the player
                    -- it appears larger.

                    -- You can use the console command 'dbg Radar' to see the
                    -- intel grid.

                    local visionRadius = unitBlueprint.Intel.VisionRadius
                    if visionRadius and visionRadius > 0 then
                        luft.test(
                            "Vision radius",
                            function()
                                local visionRadiusOnGrid = math.floor(visionRadius / 2) * 2
                                luft.expect(visionRadius).to.be.equal(visionRadiusOnGrid)
                            end
                        )
                    end

                    local cloakFieldRadius = unitBlueprint.Intel.CloakFieldRadius
                    if cloakFieldRadius and cloakFieldRadius > 0 then
                        luft.test(
                            "Cloak field radius",
                            function()
                                local cloakFieldRadiusOnGrid = math.floor(cloakFieldRadius / 4) * 4
                                luft.expect(cloakFieldRadius).to.be.equal(cloakFieldRadiusOnGrid)
                            end
                        )
                    end

                    local omniRadius = unitBlueprint.Intel.OmniRadius
                    if omniRadius and omniRadius > 0 then
                        luft.test(
                            "Omni field radius",
                            function()
                                local omniRadiusOnGrid = math.floor(omniRadius / 4) * 4
                                luft.expect(omniRadius).to.be.equal(omniRadiusOnGrid)
                            end
                        )
                    end

                    local radarRadius = unitBlueprint.Intel.RadarRadius
                    if radarRadius and radarRadius > 0 then
                        luft.test(
                            "Radar field radius",
                            function()
                                local radarRadiusOnGrid = math.floor(radarRadius / 4) * 4
                                luft.expect(radarRadius).to.be.equal(radarRadiusOnGrid)
                            end
                        )
                    end

                    local radarStealthFieldRadius = unitBlueprint.Intel.RadarStealthFieldRadius
                    if radarStealthFieldRadius and radarStealthFieldRadius > 0 then
                        luft.test(
                            "Radar stealth field radius",
                            function()
                                local radarStealthFieldRadiusOnGrid = math.floor(radarStealthFieldRadius / 4) * 4
                                luft.expect(radarStealthFieldRadius).to.be.equal(radarStealthFieldRadiusOnGrid)
                            end
                        )
                    end

                    local sonarRadius = unitBlueprint.Intel.SonarRadius
                    if sonarRadius and sonarRadius > 0 then
                        luft.test(
                            "Sonar field radius",
                            function()
                                local sonarRadiusOnGrid = math.floor(sonarRadius / 4) * 4
                                luft.expect(sonarRadius).to.be.equal(sonarRadiusOnGrid)
                            end
                        )
                    end

                    local sonarStealthFieldRadius = unitBlueprint.Intel.SonarStealthFieldRadius
                    if sonarStealthFieldRadius and sonarStealthFieldRadius > 0 then
                        luft.test(
                            "Sonar stealth field radius",
                            function()
                                local sonarStealthFieldRadiusOnGrid = math.floor(sonarStealthFieldRadius / 4) * 4
                                luft.expect(sonarStealthFieldRadius).to.be.equal(sonarStealthFieldRadiusOnGrid)
                            end
                        )
                    end

                    local waterVisionRadius = unitBlueprint.Intel.WaterVisionRadius
                    if waterVisionRadius and waterVisionRadius > 0 then
                        luft.test(
                            "Water vision radius",
                            function()
                                local waterVisionRadiusOnGrid = math.floor(waterVisionRadius / 4) * 4
                                luft.expect(waterVisionRadius).to.be.equal(waterVisionRadiusOnGrid)
                            end
                        )
                    end

                    -----------------------------------------------------------
                    --#region Unique radia

                    -- Range rings may render on top of each other. When that
                    -- happens one or more range rings are visually hidden from
                    -- the user. In this section we prevent that.

                    if radarRadius and sonarRadius then
                        luft.test(
                            "Unique radar and sonar radia",
                            function()
                                luft.expect(radarRadius)["to.not"].equal(sonarRadius)
                            end
                        )
                    end

                    if radarRadius and sonarStealthFieldRadius then
                        luft.test(
                            "Unique radar and sonar stealth field radia",
                            function()
                                luft.expect(radarRadius)["to.not"].equal(sonarStealthFieldRadius)
                            end
                        )
                    end

                    if radarRadius and radarStealthFieldRadius then
                        luft.test(
                            "Unique radar and radar stealth field radia",
                            function()
                                luft.expect(radarRadius)["to.not"].equal(radarStealthFieldRadius)
                            end
                        )
                    end

                    if radarRadius and cloakFieldRadius then
                        luft.test(
                            "Unique radar and cloak field radia",
                            function()
                                luft.expect(radarRadius)["to.not"].equal(cloakFieldRadius)
                            end
                        )
                    end

                    if sonarRadius and sonarStealthFieldRadius then
                        luft.test(
                            "Unique sonar and sonar stealth field radia",
                            function()
                                luft.expect(sonarRadius)["to.not"].equal(sonarStealthFieldRadius)
                            end
                        )
                    end

                    if sonarRadius and radarStealthFieldRadius then
                        luft.test(
                            "Unique sonar and radar stealth field radia",
                            function()
                                luft.expect(sonarRadius)["to.not"].equal(radarStealthFieldRadius)
                            end
                        )
                    end

                    if sonarRadius and cloakFieldRadius then
                        luft.test(
                            "Unique sonar and cloak field radia",
                            function()
                                luft.expect(sonarRadius)["to.not"].equal(cloakFieldRadius)
                            end
                        )
                    end

                    --#endregion
                end
            end
        )
    end
)
