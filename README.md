# BVR update site

##Overview
This repository contains the BVR update site built from the BVR sources, see https://github.com/SINTEF-9012/bvr

##Installation
In general, the update site can be installed on the Apache Web Server. Just copy the contents of the htdocs folder of the current repository to /usr/local/apache2/htdocs/ of the Apache Web Server. 

Alternatively, you can spawn off an instance of the Apache Web Server on your local machine using a bat or bash script for any windows and unix machine respectivelly. Both scripts require a Docker installation on the machine, please refer to the official docker installation instructions for your system, see https://docs.docker.com/install/

Please copy the current repository on you machine.

###Linux
To install the BVR update site, run the following:
```
>./deploy_unix.sh
```
###Windows
Run CMD in the folder with the deploy_windows.bat script and execute the script as follows:
```
>deploy_windows.bat
```

##Usage
The update site should be available at http://localhost:8080, you should see a BVR welcome page with instractions to install BVR and links to tutorials.
