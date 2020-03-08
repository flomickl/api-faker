
# Readme

This is an API Faker with prepared data accessible via URL commands


## Start API with Docker
* clone the reposirory
* run:  `docker build -t api-faker .`
* run: `docker run --rm -d --name api-faker -p 5000:3000 api-faker`

The API is accessible under localhost and port 5000

## Data Description
1. Geolife
    * See PDF

2.  Tankstellen
    * Coming Soon

3. Animal Movement
    * Lat Lng Position from two animals (cat and dog) in one event walking around


## Data Access
### GeoLife
* http://localhost:5000/api/v1/geolife/all --> all geolife positions from a single trajectory

### Animals
* http://localhost:3000/api/v1/animal/all ->  all events
* http://localhost:3000/api/v1/animal/latest -> single event refreshing every second the position



## Sources
* [GeoLife](https://www.microsoft.com/en-us/download/details.aspx?id=52367&from=https%3A%2F%2Fresearch.microsoft.com%2Fen-us%2Fdownloads%2Fb16d359d-d164-469e-9fd4-daa38f2b2e13%2F)
* [PetrolStations](https://creativecommons.tankerkoenig.de/)
