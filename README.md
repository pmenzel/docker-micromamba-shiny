# Shiny App in Docker using micromamba packages

This is a minimal example for running an R Shiny app inside a Docker container and use R packages via conda-forge.

The image is build upon the [micromamba-docker](https://github.com/mamba-org/micromamba-docker) images, which provide
the micromamba executable for quickly creating conda environments.

No real Shiny server is run in the image, but the app is directly started using the `runApp()` function.

### Build Docker image

```
docker build -t docker-micromamba-shiny:latest .
```

### Run container

```
docker run -p 3838:3838 docker-micromamba-shiny
```

Open http://localhost:3838/ in your browser


### Notes

- static content can be placed in `app/www/`

