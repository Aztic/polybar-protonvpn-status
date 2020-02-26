# Polybar protonvpn status

It's just a simple module to show the current status of your protonvpn connection status and the server you are connected to.
Just a "for fun" project.


## Requirements
- [Polybar](https://github.com/polybar/polybar)
- [Proton vpn cli](https://github.com/ProtonVPN/protonvpn-cli-ng)

## Install
Copy the content of `config` to your Polybar config file and add `proton_connection_status` to the desired position in you status bar.
Then copy the `proton_info.sh` file to your desired location. By default is configured to `/home/your_user/.config/polybar/proton_info.sh`, if you place it somewhere else, change that route in the config file.

## Disclaimer
I'm pretty bad at bash in general. k thx

## License
MIT
