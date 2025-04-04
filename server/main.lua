ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('orinchin_easytemplate:sendMessage')
AddEventHandler('orinchin_easytemplate:sendMessage', function(message)
    local xPlayer = ESX.GetPlayerFromId(source)
    local time = os.date('%H:%M')
    local job = xPlayer.job.name
    local playerName = xPlayer.getName()

    if Config.Templates[job] then
        local chatTemplate = Config.Templates[job].ChatTemplate
        TriggerClientEvent('chat:addMessage', -1, {
            template = chatTemplate,
            args = { playerName, message, time }
        })
    end
end)
