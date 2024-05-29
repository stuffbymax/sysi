# sfetch
simple neofetch

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
*`` gsettings: This is for accessing GNOME settings.``
* ``lspci: Used for displaying information about PCI buses in the system.``
* ``xrandr: For querying and setting display parameters.``
*`` free: For displaying memory usage information.``
* ``df: For displaying disk space usage.``
* ``upower: For getting battery information.``

Ensure that these commands are available on your system. Some of these commands might not be available on all systems by default, so you may need to install additional packages depending on your Linux distribution.
