# README

RESTful API interface to create booleans

## Paths
/booleans: `create`,`read`,`update`,`delete`

### `GET` /booleans
returns list of booleans stored in sqlite3 database

### `POST` /booleans
`{ "booleans": {
    "value": true,
    "name": <optional>
   }
}`

### `PUT`/`PATCH` /booleans
`{ "booleans": {
    "id": <uid>,
    "value": true
   }
}`



Build
`docker build -t boolio-api ./`

Run
`docker run -it -p 4000:4000 --rm --name boolio-api boolio-api`

exposes on port 4000, 
