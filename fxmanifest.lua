fx_version 'cerulean'
game 'gta5'

lua54 'yes'
author 'TropicGalxy'
description 'simple and easy city guide'
version '1.0.0'

shared_script 'config.lua'

server_scripts {
    'server.lua'
}

client_scripts {
    '@ox_lib/init.lua', 
    'client.lua'
}
