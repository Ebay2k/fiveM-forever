---@diagnostic disable: undefined-global
local spawnPos = vector3(-822.592834, -1222.937012, 7.365409)

AddEventHandler("onClientGameTypeStart", function()
	exports.spawnmanager:setAutoSpawnCallback(function()
		exports.spawnmanager:spawnPlayer({
			x = spawnPos.x,
			y = spawnPos.y,
			z = spawnPos.z,
			model = "a_m_m_skater_01",
		}, function()
			TriggerEvent("chat:addMessage", {
				args = { "Welcome to the party!~" },
			})
		end)
	end)

	exports.spawnmanager:setAutoSpawn(true)
	exports.spawnmanager:forceRespawn()
end)

RegisterCommand("cords", function(source, args, raw)
	local coords = GetEntityCoords(PlayerPedId())
	local zoneName = GetNameOfZone(coords.x, coords.y, coords.z)
	print(coords)
end, false)
