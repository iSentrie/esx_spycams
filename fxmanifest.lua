fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Mobius1'
description 'Deployable spy cameras for ESX (converted by iSentrie)'
version '0.0.1'

shared_scripts {
    '@es_extended/imports.lua',
	'@es_extended/locale.lua',
    'locales/en.lua',
}

server_scripts {
    'config/config_server.lua',
    'server/main.lua'
}

client_scripts {
    'config/config_client.lua',
    'client/utils.lua',
    'client/main.lua'
}

dependencies {
    'es_extended',
    'ox_target',
}
