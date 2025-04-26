fx_version 'cerulean'
game 'gta5'

lua54 'yes'
author 'TropicGalxy'
description 'simple and easy city guide'
version '1.0.0'


server_scripts {
    'server.lua'
}

client_scripts {
    '@ox_lib/init.lua', 
    'client.lua'
}
shared_scripts {
	'shared/config.lua',
	'shared/core.lua'
}

files {
	'locales/*.json',
}