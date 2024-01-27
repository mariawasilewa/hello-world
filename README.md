# hello-world

## Project setup

```
npm install
```

### Compiles and hot-reloads for development

```
npm run serve
```

### Compiles and minifies for production

```
npm run build
```

### Lints and fixes files

```
npm run lint
```

### Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).

Project Documentation
This project is a simple Vue.js application that displays a "Hello World" message. The application is containerized using Docker, with the Dockerfile provided in the project root. The Dockerfile uses the node:21.6-bookworm-slim image as a base, installs the necessary dependencies, and starts the application on port 8080.

The project includes a GitHub Actions workflow for continuous integration and deployment. The workflow includes steps for creating a release branch, checking pull requests, scanning with Snyk for vulnerabilities, and building and pushing a Docker image. The workflow is triggered on different events such as manual dispatch, pull requests, and pushes to the master branch.

The application is designed to be deployed on a Kubernetes cluster. The deployment.yaml and service.yaml files define a Deployment and a Service for the application. The Deployment creates three replicas of the application and the Service exposes it on port 80. The Docker image used in the Deployment is mariavasileva/hello-world:v1.0.

The project also includes a unit test for the "Hello World" page. The test is run as part of the GitHub Actions workflow. The project uses ESLint and Prettier for code formatting and linting, and the README file is checked with cli-markdown.
