ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

function OpenChatMenu(job)
    local menuOptions = {}

    if Config.Templates[job] then
        local categories = Config.Templates[job].Categories
        for _, category in ipairs(categories) do
            local categoryOptions = {}
            for _, template in ipairs(category.templates) do
                table.insert(categoryOptions, {
                    title = template.Title,
                    description = 'Template: ' .. template.Message,
                    icon = 'fas fa-comment',
                    onSelect = function()
                        local job = ESX.PlayerData.job and ESX.PlayerData.job.name
                        local message = template.Message
                        TriggerServerEvent('orinchin_easytemplate:sendMessage', message)
                    end
                })
            end

            lib.registerContext({
                id = 'orinchin_easytemplate_submenu_' .. category.id,
                title = category.Title,
                menu = 'orinchin_easytemplate_menu',
                options = categoryOptions
            })
            
            table.insert(menuOptions, {
                title = category.Title,
                description = category.Description,
                menu = 'orinchin_easytemplate_submenu_' .. category.id,
                icon = 'fas fa-bars'
            })
        end
    end

    lib.registerContext({
        id = 'orinchin_easytemplate_menu',
        title = job:gsub("^%l", string.upper) .. ' Templates',
        options = menuOptions
    })

    lib.showContext('orinchin_easytemplate_menu')
end


RegisterCommand('easytemplate', function()
    local job = ESX.PlayerData.job and ESX.PlayerData.job.name

    if Config.Templates[job] then
        OpenChatMenu(job)
    else
        lib.notify({
            title = 'EASY TEMPLATE',
            description = 'You do not have access to this command.',
            position = 'center-right',
            type = 'error'
        })
    end
end, false)