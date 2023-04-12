# esx_spycams
 Deployable spy cameras for ESX


## Dependencies
* [es_extended](https://github.com/esx-framework/esx_core)
* [ox_target](https://github.com/overextended/ox_target)


## Install
* Drag `esx_spycams` into your `resources` directory
* Add `ensure esx_spycams` to your  `server.cfg` AFTER `es_extended`
* The inventory images and items list are in the `INVENTORY` directory
* Adjust `config/config_client.lua` and `config/config_server.lua` to you liking
* Restart you server


## Usage
* Use the `spycam` item from your inventory to deploy a new spy camera
* Use the `spycam_tablet` item to connect to and control your deployed spy camera(s)
* Retrieve a spy camera by targeting it

If you don't want to utilise the `spycam_tablet` item to connect to the deployed spy cameras, you can either use the command `spycams:connect` or utilise the following exports from your scripts:

* `exports['esx_spycams']:Connect()` - Connects to deployed spy cameras
* `exports['esx_spycams']:Disconnect()` - Disconnects from deployed spy cameras


## Contributing
* Pull requests are welcome
