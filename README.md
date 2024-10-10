****Quasar Inventory 2.3 [21/07/2021] - https://quasar-scripts.com/****

[IMPORTANT] THIS PRODUCT CONTAINS AN OFFICIAL LICENSE FROM QUASAR SCRIPTS©
Fill in these fields and send us this for a ticket on our official rare5mord.

*PERSONAL rare5mORD: ___________________.
*SERVER NAME: ___________________.
*PURCHASE CODE: ___________________.
*DATE OF PURCHASE: ___ /___ /___.
*WHERE DID YOU FIND US? ___________________.
[OPTIONAL]
*SERVER WEB: ___________________.
*SERVER rare5mORD: ___________________.




****GENERAL DESCRIPTION****

This comprehensive inventory includes a very complex metadata system, which will allow players to
be able to enjoy the benefits of a high quality inventory, super advanced options, unique accessories
and much more.
This package includes, among many things, a store system, crafting, accessories and a core where all the available objects on your server are stored, with their functions, combinations, and all this with the least consumption of 'resmon' on your server.
The inventory provides buyers with a very high security, which is not found in other inventory, you can be sure that no one will be able to duplicate objects or take advantage of inventory bugs, since it is practically impossible.




****INSTALATION TUTORIAL****

This script has several dependencies, but don't worry, just replace all the files in this package with those from your server.
In case you don't want to replace `es_extended` and `esx_ambulancejob`, you can read the code a bit and replace the functions that contain the acronyms `QS` and `Premiumcoins`.
Remember that most of the functions that call the inventory will be modified in our `es_extended`.

[IMPORTANT] It is recommended to use the complete package, or at least completely replace `es_extended`, `esx_ambulancejob` you must modify it or use our system that includes the deletion of objects when a character dies.

Install the SQL completely, we recommend using `localhost/phpmyadmin` to do this, since HeidiSQL and other alternate programs are not officially native to SQL.

You should stop using your `SQL Items`, since now it will be completely useless, from now on your server will work much better thanks to the fact that the objects do not use a connection with the SQL, they will only work with metadata.

You don't know how this works, right? It is very simple, go to `qs-core/shared.lua` and you will see many lines, each line is an object, with its respective settings, such as name, label, description, photo and more.
Simply duplicate any line and create your own objects, the inventory will detect everything normally, you should not make changes in other scripts.

Inside each `config.lua` you will find a Config.Lenguage, you can modify it for the language you want, even at the end of each file you will find a guide on how to create more languages.
[IMPORTANT] The translation of the inventory tutorial can be found in the HTML file inside the inventory.

Each script contains more than 400 lines of settings, you can configure everything to your liking.
Each configuration section brings a description or mini tutorial so that you know how to modify it.




****SOME USEFUL CHANGES****

These changes are not very important, in fact in most scripts you should not make changes, but in case you receive an error in a line like this, you can apply these changes.

[ORIGINAL]
local xPlayer = ESX.GetPlayerFromId(source)
local items = xPlayer.getInventoryItem("phone")
if items.count >= 1 then
	--bla bla
end

[REPLACEMENT]
local xPlayer = ESX.GetPlayerFromId(source)
local items = xPlayer.getInventoryItem("phone")
 if items >= 1 then
	--bla bla 
end

****OR****

[ORIGINAL]
if xPlayer.getInventoryItem(item).count >= 1 then

[REPLACEMENT]
 if xPlayer.getInventoryItem(item) and xPlayer.getInventoryItem(item).count >= 1 then




****CREDITS****
Thank you for your purchase, you really are a great person and we plan to take care of our prestige by giving you the best possible support.

This inventory does not require many more modifications, but you can create your own configurations and share them with us, such as new languages or corrections in them, our community would greatly appreciate your support.