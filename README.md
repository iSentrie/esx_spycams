# ms-spycams
 Deployable spy cameras for ESX

## Dependencies
* [es_extended](https://github.com/esx-framework/esx_core)
* [ox_target](https://github.com/overextended/ox_target)

## Install
* Drag `ms-spycams` into your `resources` directory
* Add `ensure ms-spycams` to your  `server.cfg` AFTER `es_extended`
* The inventory images and items list are in the `INVENTORY` directory
* Adjust `config/config_client.lua` and `config/config_server.lua` to you liking
* Restart you server

## Usage
* Use the `spycam` item from your inventory to deploy a new spy camera
* Use the `spycam_tablet` item to connect to and control your deployed spy camera(s)
* Retrieve a spy camera by targeting it

## Contributing
* Pull requests are welcome
