fx_version 'cerulean'
games {'gta5'}
author 'Orinchin Development'
description 'Orinchin Easy Template'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script 'client/main.lua'
server_script 'server/main.lua'