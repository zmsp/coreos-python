##### Installs python(ActivePython) on /opt/bin/pyhon on coreos. I needed it for running ansible on CoreOS.

#### Requirement of the script:
* Curl installed
* Run as root user

#### To install python on CoreOS:
1. Switch to root user by running `sudo su` 

2. Run  
```curl -S https://raw.githubusercontent.com/zmsp/coreos-python/master/getPython.sh | bash```


#### To change version-
1. Edit getPython.sh
2. Update URL and DIR variables.
3. Run ./getPython.sh
4. Profit.
