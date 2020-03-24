# aquatone-docker
Docker version of [Aquatone](https://github.com/michenriksen/aquatone)

## Instructions

Clone project

```
git clone https://github.com/xymfrx/aquatone-docker
```

Create docker image

```
docker build -t aquatone .
```

Usage

```
echo 'google.com' | docker run -v ~/<folder-on-your-host>:/output --rm -i aquatone -out /output
```