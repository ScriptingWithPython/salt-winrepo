# Source: http://winappmanager.herokuapp.com/
{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "C:\Program Files (x86)" %}
{% else %}
    {% set PROGRAM_FILES = "C:\Program Files" %}
{% endif %}
win-app-manager:
  15.01.11:
    installer: 'http://heanet.dl.sourceforge.net/project/appdriverupdate/WinApp_Manager/WinAppManagerSetup_15.01.11.exe'
    full_name: 'WinAppManager'
    install_flags: '/SP- /verysilent /norestart'
    uninstaller: '{{ PROGRAM_FILES }}\WinApp Manager\unins000.exe'
    uninstall_flags: '/SP- /verysilent /norestart'
    locale: en_US
    reboot: False
