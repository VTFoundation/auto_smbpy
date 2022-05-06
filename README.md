# auto_smbpy

## Run ...

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/VTFoundation/auto_smbpy/main/setup-smb-service.sh)"
```

## What Will It Do?
- Update repositories.
- Install python3 & pip3 packages (using apt repository).
- Install Impacket (smbserver.py) with pip3.
- if "/opt/smb-files" exists, skip ... Else, create one.
- Setup smbserver as systemd service.
