# CertiDevOps - CI/CD w/ Angular - Docker - AWS

## Datos del estudiante

- Nombre: **Marcos Andrés Simon Ágreda**
- Código: **56728**
- Curso: **Certificación DevOps**

## Descripción del proyecto

En el presente repositorio, se encuentra el código fuente de una aplicación web desarrollada en Angular, la cual, se utilizada para demostrar los distintos workflows de CI/CD, utilizando la herramienta de GitHub Actions.

Se tiene un total de 2 workflows:
- Uno de nombre: Angular Project CI-CD, que se ocupa de los trabajos de Continuous Integration (testing) y Continous Delivery (build). Se ejecuta en tres escenarios diferentes:
  
  - Cuando se lo ejecuta de forma manual (`workflow_dispatch`)
  - De manera automática, todos los lunes a las 15:45 y 20:00 (UTC -4)
- Otro de nombre: Angular Project Deploy, que se ocupa del trabajo de Continuous Deployment (deploy). Se ejecuta cuando:
    -  Cuando se realiza un push a cualquier branch que empiece con el prefijo `release/`

Los jobs más importantes dentro de éstos workflows son los siguientes:

- **Angular Project CI-CD**
  - **test**: Se encarga de ejecutar los unit tests por defecto de la aplicación.
  - **build_docker_image_and_push_to_docker_hub**: Se encarga de construir una imagen de Docker, utilizando el Dockerfile que se encuentra en la raíz del proyecto, para luego subir dicha imagen a Docker Hub.
- **Angular Project Deploy**
  - **deploy_into_dev_server**: Se encarga de realizar el deploy de la aplicación en AWS, utilizando la imagen de Docker que se encuentra en Docker Hub, para levantar un contenedor en un servidor EC2.

La aplicación web, se encuentra desplegada en un servidor EC2 de AWS, el cual, se encuentra en la siguiente URL: http://ec2-184-73-19-160.compute-1.amazonaws.com:8080