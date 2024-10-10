fx_version 'adamant'

game 'gta5'

author 'Quasar Scripts'

name 'qs-inventory'

ui_page 'html/ui.html'

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
	'html/images/*.png',
	'html/images/*.jpg',
	'html/ammo_images/*.png',
	'html/attachment_images/*.png',
	'html/*.ttf'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	"config.lua",
	"server/main.lua"
}

client_scripts {
	"config.lua",
	"client/main.lua"
}

server_exports  {
    'GetItem'
}