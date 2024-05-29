# sfetch
## (simple neofetch)

# demo

```
          /\
         /  \
        /    \
       /      \
      /   ,,   \
     /   |  |   \
    /_-''    ''-_\

 Operating System: Arch Linux
  host:  zdislav
 Kernel Name: Linux
 Kernel Version: 6.9.2-arch1-1
 Kernel Release: #1 SMP PREEMPT_DYNAMIC Sun, 26 May 2024 01:30:29 +0000
 Kernel Architecture: x86_64
 Uptime:  04:34:22 up  1:11,  1 user,  load average: 1.25, 1.13, 1.39
 Packages: 790
 Shell: /usr/bin/bash
 Resolution: 1920x1080
 Machine Hardware Platform: unknown
 Processor Type: unknown
 CPU: Intel(R) Pentium(R) CPU 4405U @ 2.10GHz
 CPU CORES:2
 CPU THREADS:4
 GPU: Intel Corporation HD Graphics 510 (rev 07)
 Memory: 2.9G / 8.2G
 Swap: 0B / 4.1G
 Disk Usage: 18G/116G (17% used)
 Second Disk Usage: (916G/103G used) 12%
 Other: (3.9G/0 used) 0%
 Clock/Time: 2024-05-29 04:34:23
 BATTERY:    state:               charging
    percentage:          76%
 Mounted Drive/Drives:
      Filesystem                     Size       Used       Use%      
      dev                            3.9G       0          0%        
      run                            3.9G       1.2M       1%        
      efivarfs                       118K       51K        45%       
      /dev/sdb2                      116G       18G        17%       
      tmpfs                          3.9G       0          0%        
      tmpfs                          3.9G       8.0K       1%        
      /dev/sdb1                      1022M      144M       15%       
      /dev/sda1                      916G       103G       12%       
      tmpfs                          784M       52K        1%        

GTK Theme: 'Breeze-Dark'
Icon Theme: 'Papirus-Dark'
Cursor Theme: 'Adwaita'
```


supported ascii logos distros

* arch
```
          /\
         /  \
        /    \
       /      \
      /   ,,   \
     /   |  |   \
    /_-''    ''-_\
```

* mint
```
 ___________     
|_          \   
  | | _____ |    
  | | | | | |   
  | | | | | |   
  | \_____/ |    
  \_________/
```
* ubuntu
```
           _    
     ---(_)   
 _/  ---  \   
(_) |   |     
  \  --- _/    
     ---(_)  
```

* debian
```
  _____     
 /  __ \    
|  /    |    
|  \___-     
-_          
  --_ 
```

 
* fedora
```
      _____      
     /   __)\    
     |  /  \ \   
  ___|  |__/ /   
 / (_    _)_/    
/ /  |  |        
\ \__/  |        
 \(_____/ 
```
* opensuse
```
  _______     
__|   __ \     
     / .\ \   
     \__/ |   
   _______|   
   \_______   
__________/ 

```

* zorin
```
      `osssssssssssssssssssso`           
       .osssssssssssssssssssssso.          
      .+oooooooooooooooooooooooo+.         
                                           
                                           
  `::::::::::::::::::::::.         .:`     
 `+ssssssssssssssssss+:.`     `.:+ssso`    
.ossssssssssssssso/.       `-+ossssssso.   
ssssssssssssso/-`      `-/osssssssssssss    
.ossssssso/-`      .-/ossssssssssssssso.   
 `+sss+:.      `.:+ssssssssssssssssss+`    
  `:.         .::::::::::::::::::::::`     
                                           
                                           
      .+oooooooooooooooooooooooo+.         
       -osssssssssssssssssssssso-          
        `osssssssssssssssssssso`
```       
                                  
* elementary OS
```
         eeeeeeeeeeeeeeeee            
    eeeee  eeeeeeeeeeee   eeeee       
  eeee   eeeee       eee     eeee     
 eeee   eeee          eee     eeee    
eee    eee            eee       eee   
eee   eee            eee        eee   
ee    eee           eeee       eeee   
ee    eee         eeeee      eeeeee   
ee    eee       eeeee      eeeee ee   
eee   eeee   eeeeee      eeeee  eee   
eee    eeeeeeeeee     eeeeee    eee   
 eeeeeeeeeeeeeeeeeeeeeeee    eeeee    
  eeeeeeee eeeeeeeeeeee      eeee     
    eeeee                 eeeee       
      eeeeeee         eeeeeee         
         eeeeeeeeeeeeeeeee            


```

* manjaro
```
||||||||| ||||   
||||||||| ||||   
||||      ||||   
|||| |||| ||||   
|||| |||| ||||   
|||| |||| ||||   
|||| |||| ||||

```

# To run this script, you'll need the following dependencies:
## distro
 ### (only for arch)
 * ``pacman : Used by the function get_package_count() to count installed packages.``
 ### (only for debian based)
 * ``dpkg-query : Also used by get_package_count() for package counting.``
 ### (only for Red Hat based systems) 
 * ``rpm : Required for package counting on RPM-based systems.``
  ### (All systems) 
* ``Bash: Since this is a Bash script, you need the Bash interpreter installed on your system.``
* ``awk: This is used for text processing and pattern scanning.``
* ``grep: Used for searching patterns in text.``
* ``cat: For concatenating and displaying file contents.``
* ``gsettings: This is for accessing GNOME settings.``
* ``lspci: Used for displaying information about PCI buses in the system.``
* ``xrandr: For querying and setting display parameters.``
* ``free: For displaying memory usage information.``
* ``df: For displaying disk space usage.``
* ``upower: For getting battery information.``

Ensure that these commands are available on your system. Some of these commands might not be available on all systems by default, so you may need to install additional packages depending on your Linux distribution.
