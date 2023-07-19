# README FOR HOLOCENE RECONSTRUCTION CONTAINER
Instructions for running Holocene DA reconstruction in Docker

Container built and maintained by David Edge (david.edge@nau.edu)
Reconstruction code by Michael Erb (michael.erb@nau.edu)
Find the directions for running this code in Python at https://github.com/Holocene-Reconstruction/Holocene-code


## 1. Docker
You will ne to have Docker installed and running to use this container
https://www.docker.com/


## 2. Command line interface
Open your local command prompt and move to a suitable diectory for this project
Place the config_default.yml file in this directory


## 3. Pull the Docker image
From the command line execute: docker pull davidedge/lipd_webapps_holocene_da
This will take some time - the image is large


## 4. Adjust the configuration file
Download the config_default.yml file and adjust and the settings if desired


## 5. Run the container
When running the container, two volumes will be mounted
The config_default.yml file allows you to mkae changes to the recontruction parameters
The results folder will contain the reconstruction results as a netCDF file

The following command will need to be adjusted to your desired directory (which should also be your current woriking directory)
execute: docker run -v C:/Users/dce25/Downloads/config_default.yml:/config_default.yml davidedge/lipd_webapps:holocene_da


## 6. Examine the results
The results folder in your directory should now contain a netCDF file of the reconstruction results
