# Centro Médico Horizonte Talca

## Descripción del proyecto

Este proyecto corresponde al desarrollo de una página web de demostración para la reserva de horas médicas del Centro Médico Horizonte Talca.
La aplicación fue desarrollada como parte de una actividad académica de la asignatura Introducción a DevOps, de la carrera de Ingeniería en Informática.
El sitio presenta información general del centro médico, sus especialidades y un formulario que simula la solicitud de una hora médica.
El diseño utiliza una temática de Octubre Rosa, relacionada con la concientización sobre el cáncer de mama y la importancia del autocuidado.

## Objetivo

Aplicar conceptos básicos de DevOps mediante la creación de una aplicación web estática, su ejecución en un contenedor Docker y la utilización de Git y GitHub para el control de versiones.

## Tecnologías utilizadas

- HTML5: estructura de la página web.
- CSS3: diseño y presentación visual.
- Nginx: servidor web.
- Docker: creación y ejecución del contenedor.
- Docker Compose: administración del servicio.
- Git: control de versiones.
- GitHub: almacenamiento y seguimiento del proyecto.

## Estructura del proyecto

```text
reserva-horas-medicas-devops/
├── src/
│   ├── favicon.svg
│   ├── index.html
│   └── styles.css
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── .gitignore
└── README.md
```

## Requisitos

Para ejecutar el proyecto se necesita:

- Docker Desktop instalado y funcionando.
- Docker Compose.
- Un navegador web.
- Un editor de código, como Visual Studio Code.

## Ejecución del proyecto

### 1. Abrir la carpeta

Abrir una terminal en la carpeta principal del proyecto.

### 2. Construir e iniciar el contenedor

```bash
docker compose up -d --build
```

### 3. Comprobar el estado

```bash
docker compose ps
```

### 4. Abrir la aplicación

Ingresar desde un navegador a:

http://localhost:8080

## Monitoreo

### Consultar los registros del servidor

```bash
docker compose logs --tail=30 web
```

### Consultar el consumo de recursos

```bash
docker stats --no-stream horizonte-talca-web
```

## Detener la aplicación

Para detener y eliminar el contenedor creado por Docker Compose:

```bash
docker compose down
```

## Consideraciones importantes

- El proyecto es una demostración académica.
- El centro médico y el sistema de reservas son ficticios.
- El formulario no registra ni almacena información de pacientes.
- No existe conexión con una base de datos.
- El puerto 8080 debe estar disponible para ejecutar la aplicación.
- Si otro programa utiliza ese puerto, se debe liberar o configurar uno diferente.

## Control de versiones

El proyecto utiliza Git para registrar los cambios realizados durante el desarrollo.
GitHub permite mantener una copia del código y documentar las modificaciones mediante ramas, commits y solicitudes de incorporación de cambios (pull requests).

## Estado del proyecto

La página web fue desarrollada y probada localmente mediante Docker y Nginx.
Se realizaron pruebas de funcionamiento, revisión de registros y monitoreo del consumo de recursos.

## Mejoras realizadas

Durante la revisión de los registros de Nginx se detectó un error 404 asociado a la solicitud del ícono del sitio web.
Para corregirlo, se incorporó el archivo favicon.svg y se agregó su referencia en index.html.
Posteriormente, se reconstruyó la imagen Docker y se comprobó que el servidor entregaba el archivo correctamente mediante una respuesta HTTP 200.
