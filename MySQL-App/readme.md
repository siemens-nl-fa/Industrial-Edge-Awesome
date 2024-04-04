# Installation of MySQL App
This is for testing only and not production-ready.

## Requirements

Components

- OS: Windows or Linux
- Docker minimum V18.09
- Docker Compose V2.4
- Industrial Edge App Publisher (IEAP) V1.1.5
- Industrial Edge Management (IEM) V1.1.16
- Industrial Edge Device (IED) V1.1.0-44

Tools
- Any development environment (e.g. Visual Studio Code, Eclipse, …)
- Docker Extension for your development environment e.g. Visual Studio Code Extension.


## Installation
1. * [Download or git clone folder](./)

### Step 1 - Build docker image

- Navigate into `MySQL-App` 
- Open a console in the folder (where the `docker-compose.yml` file is)

  #### Building the image :

  - Use the `docker-compose up --build` (replaces the older `docker-compose build`) command to build and run the docker image of the service which is specified in the docker-compose.yml file.
  - You can test around in your local environment if your image is working.
  - These Docker images can now be used to build your app with the Industrial Edge App Publisher.

## Step 2 - Upload App to the Industrial Edge Management

Please find below a short description how to publish your application in your IEM.

For more detailed information please see the section for [uploading apps to the IEM](https://github.com/industrial-edge/upload-app-to-iem).

### Connect your Industrial Edge App Publisher

- Connect your Industrial Edge App Publisher to your docker engine
- Connect your Industrial Edge App Publisher to your Industrial Edge Management System

### Upload App using the Industrial Edge App Publisher

- Create a new App Project or select a existing one
- Create new application
- Add a new app version with docker compose version 2.4
- Import the [docker-compose](../docker-compose.yml) file to the Industrial Edge App Publisher using the **Import YAML** button
- The warnings <br> `Build (Detail) (services >> hello-world >> build) is not supported` <br> 
  can be ignored
- Click "Review" and "Validate & Create"
- Start Upload to transfer the app to Industrial Edge Management

## Step 3 - Install Application on Industrial Edge Device

Go to Industrial Edge Management, select uploaded version of application and install to Industrial Edge Device.

## Documentation
 
You can find further documentation and help in the following links

  - [Industrial Edge Hub](https://iehub.eu1.edge.siemens.cloud/#/documentation)
  - [Industrial Edge Forum](https://forum.mendix.com/link/space/industrial-edge)
  - [Industrial Edge landing page](https://new.siemens.com/global/en/products/automation/topic-areas/industrial-edge/simatic-edge.html)
  - [Industrial Edge GitHub page](https://github.com/industrial-edge)
  - [Industrial Edge documentation page](https://docs.eu1.edge.siemens.cloud/index.html)