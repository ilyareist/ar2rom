Arabic to roman numeral converter
--------
Roman numerals converter written in Golang

## Usage

### from code
```bash
go run . ${number}
```
### docker 
#### build image
```bash
make build-docker
```
#### run it
```bash
docker run --rm ar2rom:1.0 ${number}
```
#### run tests
```bash
make test
```