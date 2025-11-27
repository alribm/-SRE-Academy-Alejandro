# SRE-Academy-Alejandro

## Descripción del Proyecto

Este repositorio documenta mi recorrido a través del **SRE Academy de IBM**, donde he aplicado principios de ingeniería de software a operaciones para construir sistemas escalables y altamente confiables. El objetivo principal ha sido asegurar la disponibilidad de sistemas, reducir el trabajo manual repetitivo y promover la mejora continua, equilibrando la velocidad de innovación con la gestión de riesgos.

**Autor:** Alejandro Enrique Lopez  
**Programa:** IBM SRE Academy  
**Fecha:** 2025

---

## Resumen del Programa

El SRE Academy es una iniciativa interna de IBM diseñada para formar profesionales en Site Reliability Engineering. A través de ejercicios prácticos y teóricos, el programa cubre:

- **Observabilidad:** Métricas, logs y trazas
- **Contenedores y Orquestación:** Docker, Kubernetes
- **Infraestructura como Código:** Ansible, Terraform, Helm
- **CI/CD y GitOps:** GitHub Actions, ArgoCD
- **Monitoreo y Alertas:** Prometheus, Grafana, Jaeger, Loki
- **Automatización:** AWX, runbooks automatizados
- **Ingeniería del Caos:** Experimentación controlada para mejorar resiliencia
- **SLIs, SLOs, SLAs:** Definición de objetivos de nivel de servicio

---

## Objetivos Alcanzados

- Construcción y despliegue de aplicaciones Python con Flask  
- Containerización con Docker y gestión de registros  
- Despliegue en Kubernetes con Minikube  
- Implementación de stack de observabilidad completo (Prometheus, Grafana, Jaeger, Loki)  
- Configuración de dashboards de Golden Signals  
- Definición y configuración de alertas  
- Automatización de runbooks con Ansible y AWX  
- Gestión de infraestructura con Terraform  
- Implementación de pipelines CI/CD con GitHub Actions  
- Práctica de GitOps con ArgoCD  
- Manejo de rollbacks en Kubernetes  
- Experimentación con Chaos Engineering


### Temas Teóricos

- **Topic 0:** SLIs, SLOs, SLAs y Error Budgets
- **Topic 1:** Time to Detect, Acknowledge, and Resolve
- **Topic 2:** Synthetic Monitoring
- **Topic 3:** Operational Readiness Review (ORR)
- **Topic 4:** Fundamentos de GitHub
- **Topic 5:** Gestión de tareas con GitHub Projects
- **Topic 6:** Incident Management

---

## Aprendizajes Clave

1. **Observabilidad como Pilar Fundamental:** La implementación de un stack completo de observabilidad (métricas, logs, trazas) es esencial para mantener sistemas confiables.

2. **Infraestructura como Código:** La automatización mediante Ansible y Terraform reduce errores humanos y mejora la reproducibilidad.

3. **Golden Signals:** Latencia, tráfico, errores y saturación son métricas críticas para entender la salud de un sistema.

4. **GitOps:** La gestión declarativa de infraestructura mediante Git proporciona trazabilidad y facilita rollbacks.

5. **Resiliencia:** El Chaos Engineering ayuda a identificar puntos débiles antes de que afecten a usuarios reales.

---

## Evidencia del Proyecto

### Pods on Kubernetes
<img src="images/kubernetes-pods.png" width="400"/>

### Dashboard de Grafana
<table>
  <tr>
    <td><img src="images/grafana-1.png" width="400"/></td>
    <td><img src="images/grafana-2.png" width="400"/></td>
    <td><img src="images/grafana-3.png" width="400"/></td>
  </tr>
  <tr>
    <td><img src="images/grafana-4.png" width="400"/></td>
    <td><img src="images/grafana-5.png" width="400"/></td>
    <td><img src="images/grafana-7.png" width="400"/></td>
  </tr>
  <tr>
    <td><img src="images/grafana-8.png" width="400"/></td>
    <td><img src="images/grafana-9.png" width="400"/></td>
    <td><img src="images/grafana-10.png" width="400"/></td>
  </tr>
</table>

### Métricas de Prometheus
<table>
  <tr>
    <td><img src="images/prometheus-1.png" width="400"/></td>
    <td><img src="images/prometheus-2.png" width="400"/></td>
    <td><img src="images/prometheus-3.png" width="400"/></td>
  </tr>
  <tr>
    <td><img src="images/prometheus-4.png" width="400"/></td>
    <td><img src="images/prometheus-5.png" width="400"/></td>
    <td><img src="images/prometheus-6.png" width="400"/></td>
  </tr>
  <tr>
    <td><img src="images/prometheus-7.png" width="400"/></td>
    <td><img src="images/prometheus-8.png" width="400"/></td>
    <td></td>
  </tr>
</table>

### Trazas en Jaeger
<table>
  <tr>
    <td><img src="images/jaeger-1.png" width="400"/></td>
    <td><img src="images/jaeger-2.png" width="400"/></td>
    <td></td>
  </tr>
</table>

### Logs en Loki
<table>
  <tr>
    <td><img src="images/loki-1.png" width="400"/></td>
    <td><img src="images/loki-2.png" width="400"/></td>
    <td></td>
  </tr>
</table>

### AWX Dashboard
<img src="images/awx-dashboard.png" width="400"/>

### ArgoCD Dashboard
<img src="images/argocd-dashboard.png" width="400"/>

---

## Desarrollo de Exercises por Orden

A continuación se documenta el código, YAMLs, Dockerfiles y procesos de deployment de cada exercise en orden secuencial.

---

### Exercise 1: Introducción a Python y Flask

**Descripción:** Primera aplicación web básica usando Flask para familiarizarse con el framework y desarrollo web en Python.

**Tecnologías:**
- Python 3.x
- Flask (framework web)

**Código:** `exercises/exercise1/app.py`

```python
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

**Deployment:**

```bash
# Instalar Flask
pip install flask

# Ejecutar la aplicación
python app.py

# Acceder a la aplicación
curl http://localhost:5000
```

**Características:**
- Endpoint básico `/` que retorna "Hello, World!"
- Aplicación corriendo en puerto 5000
- Primera experiencia con Flask

---

### Exercise 2: Aplicación Flask con API REST y Containerización

**Descripción:** Desarrollo de una API REST con Flask y primera containerización usando Docker.

**Tecnologías:**
- Python 3.10
- Flask (framework web)
- Docker (containerización)

**Código de la aplicación:** `exercises/exercise2/app.py`

```python
from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

stores = [
    {
        "name": "My Store",
        "items": [
            {
            "name": "Chair",
            "price": 15.99
            }
        ]
    }
]

@app.get('/store')
def get_stores():
    return {"stores": stores}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

**Dockerfile:** `exercises/exercise2/Dockerfile`

```dockerfile
FROM python:3.10
EXPOSE 5000
WORKDIR /app
RUN pip install flask
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
```

**Deployment:**

```bash
# Build de la imagen Docker
docker build -t sre-app:v1 .

# Ejecutar el contenedor
docker run -p 5000:5000 sre-app:v1

# Probar la API
curl http://localhost:5000/store
```

**Características:**
- Endpoint REST `/store` que devuelve JSON con datos de tienda
- Primera containerización con Docker
- Imagen base Python 3.10
- Port mapping para acceso externo

---

### Exercise 3: Práctica Avanzada de Docker

**Descripción:** Dominio completo del ciclo de vida de contenedores Docker: build, run, logs, exec, inspect, stats, cleanup.

**Tecnologías:**
- Docker (manejo avanzado de contenedores)
- Docker CLI (comandos de gestión)

**Código de la aplicación:** `exercises/exercise3/app.py`

```python
from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

stores = [
    {
        "name": "My Store",
        "items": [
            {
            "name": "Chair",
            "price": 15.99
            }
        ]
    }
]

@app.get('/store')
def get_stores():
    return {"stores": stores}

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

**Dockerfile:** `exercises/exercise3/Dockerfile`

```dockerfile
FROM python:3.10
EXPOSE 5000
WORKDIR /app
RUN pip install flask
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
```

**Comandos Docker (ciclo completo):**

```bash
# 1. Build de la imagen
docker build -t sre-training-app:v1 .

# 2. Listar imágenes locales
docker images

# 3. Ejecutar contenedor en modo detached
docker run -d -p 5000:5000 --name my-sre-app sre-training-app:v1

# 4. Ver contenedores en ejecución
docker ps

# 5. Verificar logs del contenedor
docker logs my-sre-app

# 6. Ejecutar comando dentro del contenedor
docker exec -it my-sre-app /bin/bash

# 7. Inspeccionar contenedor
docker inspect my-sre-app

# 8. Ver estadísticas de recursos
docker stats my-sre-app

# 9. Detener el contenedor
docker stop my-sre-app

# 10. Eliminar el contenedor
docker rm my-sre-app

# 11. Tag para registry
docker tag sre-training-app:v1 alribm/sre-training-app:v1

# 12. Push a Docker Hub (opcional)
docker login
docker push alribm/sre-training-app:v1

# 13. Limpiar imágenes no utilizadas
docker image prune
```

**Características:**
- Manejo completo del ciclo de vida de contenedores
- Debugging con logs e inspect
- Monitoreo de recursos con stats
- Gestión de imágenes y tags
- Push a registros remotos (Docker Hub)
- Limpieza de recursos no utilizados

---

### Exercise 4: Deployment en Kubernetes

**Descripción:** Primera implementación de deployment en Kubernetes con múltiples réplicas y exposición mediante Service.

**Tecnologías:**
- Kubernetes (orquestación de contenedores)
- Minikube (cluster local)
- kubectl (CLI de Kubernetes)

**Manifiestos:**

**Deployment:** `exercises/exercise4/deployment.yaml`

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: sre-abc-training-app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: sre-abc-training-app
  template:
    metadata:
      labels:
        app: sre-abc-training-app
    spec:
      containers:
      - name: sre-abc-training-app
        image: cguillenmendez/sre-abc-training-python:latest
        ports:
        - containerPort: 5000
```

**Service:** `exercises/exercise4/service.yaml`

```yaml
apiVersion: v1
kind: Service
metadata:
  name: sre-abc-training-service
spec:
  type: NodePort
  selector:
    app: sre-abc-training-app
  ports:
  - port: 5000
    targetPort: 5000
```

**Deployment:**

```bash
# 1. Iniciar Minikube
minikube start

# 2. Aplicar deployment
kubectl apply -f deployment.yaml

# 3. Aplicar service
kubectl apply -f service.yaml

# 4. Verificar pods
kubectl get pods

# 5. Verificar servicios
kubectl get svc

# 6. Acceder al servicio
minikube service sre-abc-training-service
```

**Características:**
- 3 réplicas para alta disponibilidad
- Service tipo NodePort para acceso externo
- Uso de labels para selección de pods
- Primera experiencia con orquestación en Kubernetes

---

### Exercise 5: Monitoreo con Prometheus

**Descripción:** Implementación de Prometheus para recolección de métricas en un namespace dedicado con configuración mediante ConfigMap.

**Tecnologías:**
- Prometheus (sistema de monitoreo y alertas)
- Kubernetes ConfigMap (gestión de configuración)
- Kubernetes Service (exposición de UI)

**Configuración completa:** `exercises/exercise5/prometheus.yaml`

```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: monitoring
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: prometheus-config
  namespace: monitoring
data:
  prometheus.yml: |
    global:
      scrape_interval: 15s
    scrape_configs:
      - job_name: 'prometheus'
        static_configs:
          - targets: ['localhost:9090']
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: prometheus-deployment
  namespace: monitoring
spec:
  replicas: 1
  selector:
    matchLabels:
      app: prometheus
  template:
    metadata:
      labels:
        app: prometheus
    spec:
      containers:
        - name: prometheus
          image: prom/prometheus:latest
          args:
            - "--config.file=/etc/prometheus/prometheus.yml"
          ports:
            - containerPort: 9090
          volumeMounts:
            - name: prometheus-config-volume
              mountPath: /etc/prometheus/
      volumes:
        - name: prometheus-config-volume
          configMap:
            name: prometheus-config
---
apiVersion: v1
kind: Service
metadata:
  name: prometheus-service
  namespace: monitoring
spec:
  selector:
    app: prometheus
  ports:
    - protocol: TCP
      port: 9090
      targetPort: 9090
  type: NodePort
```

**Deployment:**

```bash
# 1. Aplicar namespace e infraestructura base
kubectl apply -f infra.yaml

# 2. Aplicar Prometheus (ConfigMap + Deployment + Service)
kubectl apply -f prometheus.yaml

# 3. Verificar pods en namespace monitoring
kubectl get pods -n monitoring

# 4. Acceder a Prometheus UI
minikube service prometheus-service -n monitoring
```

**Características:**
- Namespace dedicado `monitoring` para aislar recursos
- ConfigMap para gestión centralizada de configuración
- Scrape interval de 15s para recolección de métricas
- Montaje de configuración mediante volúmenes
- Service tipo NodePort para acceso externo a UI
- Auto-scraping de Prometheus (self-monitoring)

---

### Exercise 6: Visualización con Grafana

**Descripción:** Implementación de Grafana para visualización de métricas con provisioning automático de datasources y dashboards.

**Tecnologías:**
- Grafana (plataforma de visualización y análisis)
- Prometheus datasource (conexión a fuente de datos)
- Kubernetes ConfigMap (provisioning de configuración)

**Configuración:** `exercises/exercise6/grafana.yaml`

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: grafana-deployment
  namespace: monitoring
spec:
  replicas: 1
  selector:
    matchLabels:
      app: grafana
  template:
    metadata:
      labels:
        app: grafana
    spec:
      containers:
        - name: grafana
          image: grafana/grafana:latest
          ports:
            - containerPort: 3000
          volumeMounts:
            - name: grafana-config-datasources
              mountPath: /etc/grafana/provisioning/datasources
              readOnly: true
            - name: grafana-config-dashboards
              mountPath: /etc/grafana/provisioning/dashboards
              readOnly: true
      volumes:
        - name: grafana-config-datasources
          configMap:
            name: grafana-datasources-config
        - name: grafana-config-dashboards
          configMap:
            name: grafana-dashboards-config
```

**Deployment:**

```bash
# 1. Aplicar Grafana
kubectl apply -f grafana.yaml

# 2. Verificar deployment
kubectl get pods -n monitoring -l app=grafana

# 3. Acceder a Grafana UI
minikube service grafana-service -n monitoring

# Credenciales por defecto:
# Usuario: admin
# Password: admin
```

**Características:**
- Provisioning automático de datasources (Prometheus)
- Provisioning automático de dashboards mediante ConfigMaps
- Integración directa con Prometheus del Exercise 5
- UI web accesible vía NodePort
- Montaje de configuración mediante volúmenes read-only

---

### Exercise 7: Monitoreo Avanzado con cAdvisor

**Descripción:** Implementación de cAdvisor para monitoreo de métricas de contenedores y configuración de RBAC para Prometheus.

**Tecnologías:**
- cAdvisor (container metrics)
- Prometheus (scraping de métricas de contenedores)
- Kubernetes RBAC (permisos de acceso)
- Grafana (visualización)

**Script de deployment:** `exercises/exercise7/cluster.sh`

```bash
#!/bin/bash

kubectl apply -f ../exercise4/deployment.yaml
kubectl apply -f ../exercise4/service.yaml
kubectl apply -f ./cadvisor.yaml
kubectl apply -f ./prometheus.yaml
kubectl apply -f ./grafana.yaml
```

**RBAC:** `exercises/exercise7/prometheus-rbac-cluster.yaml`

```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  name: prometheus-pod-reader-cluster
rules:
- apiGroups: [""]
  resources: ["pods"]
  verbs: ["get", "list", "watch"]
- apiGroups: [""]
  resources: ["endpoints"]
  verbs: ["get", "list", "watch"]
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: prometheus-pod-reader-binding-cluster
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: prometheus-pod-reader-cluster
subjects:
- kind: ServiceAccount
  name: default
  namespace: monitoring
```

**Deployment:**

```bash
# 1. Dar permisos de ejecución al script
chmod +x cluster.sh

# 2. Ejecutar script de deployment
./cluster.sh

# 3. Verificar cAdvisor
kubectl get pods -n default -l app=cadvisor

# 4. Verificar Prometheus RBAC
kubectl get clusterrole prometheus-pod-reader-cluster

# 5. Verificar scraping en Prometheus UI
minikube service prometheus-service -n monitoring
```

**Características:**
- cAdvisor desplegado para métricas de contenedores (CPU, memoria, red, filesystem)
- RBAC configurado para Prometheus (ClusterRole + ClusterRoleBinding)
- Permisos para descubrimiento de pods y endpoints
- Integración con stack de monitoreo existente
- Visualización de métricas de contenedores en Grafana

---

### Exercise 8: Trazabilidad Distribuida con OpenTelemetry y Jaeger

**Descripción:** Instrumentación de aplicación Flask con OpenTelemetry para generar trazas distribuidas y visualización en Jaeger.

**Tecnologías:**
- OpenTelemetry (framework de observabilidad)
- Jaeger (distributed tracing backend)
- OTLP (OpenTelemetry Protocol)
- Flask instrumentation

**Código instrumentado:** `exercises/exercise8/app.py`

```python
from flask import Flask
import random
import time
from opentelemetry import trace
from opentelemetry.exporter.otlp.proto.grpc.trace_exporter import OTLPSpanExporter
from opentelemetry.sdk.trace import TracerProvider
from opentelemetry.sdk.trace.export import BatchSpanProcessor
from opentelemetry.instrumentation.flask import FlaskInstrumentor
from opentelemetry.sdk.resources import Resource

# Configuración de OpenTelemetry
resource = Resource.create({"service.name": "sre-abc-training-app"})

span_exporter = OTLPSpanExporter(
    endpoint="otel-collector.opentelemetry.svc.cluster.local:4317",
    insecure=True
)

tracer_provider = TracerProvider(resource=resource)
span_processor = BatchSpanProcessor(span_exporter)
tracer_provider.add_span_processor(span_processor)
trace.set_tracer_provider(tracer_provider)

tracer = trace.get_tracer(__name__)

app = Flask(__name__)
FlaskInstrumentor().instrument_app(app)

# Funciones con trazabilidad
def zoo():
    with tracer.start_as_current_span("zoo") as span:
        delay = random.uniform(0, 5)
        span.set_attribute("delay", delay)
        time.sleep(delay)
        return f"zoo executed in {delay:.2f} seconds"

def goo():
    with tracer.start_as_current_span("goo") as span:
        result = zoo()
        span.add_event("Called zoo")
        return f"goo called -> {result}"

def foo():
    with tracer.start_as_current_span("foo") as span:
        result = goo()
        span.add_event("Called goo")
        return f"foo called -> {result}"

@app.get('/store')
def get_stores():
    result = foo()
    return {"stores": stores, "operation": result}
```

**Dockerfile:** `exercises/exercise8/Dockerfile`

```dockerfile
FROM python:3.10

EXPOSE 5000
WORKDIR /app

RUN pip install flask \
    opentelemetry-api \
    opentelemetry-sdk \
    opentelemetry-exporter-otlp-proto-grpc \
    opentelemetry-instrumentation-flask

COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
```

**Jaeger YAML:** `exercises/exercise8/jaeger.yaml`

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: jaeger
  namespace: opentelemetry
spec:
  replicas: 1
  selector:
    matchLabels:
      app: jaeger
  template:
    metadata:
      labels:
        app: jaeger
    spec:
      containers:
        - name: jaeger
          image: jaegertracing/all-in-one:1.62.0
          ports:
            - containerPort: 16686  # UI
            - containerPort: 14268  # HTTP Collector
            - containerPort: 4317   # OTLP Receiver
          args: ["--collector.otlp.enabled=true"]
---
apiVersion: v1
kind: Service
metadata:
  name: jaeger-service
  namespace: opentelemetry
spec:
  selector:
    app: jaeger
  ports:
    - name: ui
      port: 16686
      targetPort: 16686
  type: NodePort
```

**Deployment:**

```bash
# 1. Build de la imagen con OpenTelemetry
docker build -t sre-app-otel:v1 .

# 2. Crear namespace OpenTelemetry
kubectl create namespace opentelemetry

# 3. Desplegar Jaeger
kubectl apply -f jaeger.yaml

# 4. Desplegar OTEL Collector
kubectl apply -f otel-collector.yaml

# 5. Desplegar aplicación instrumentada
kubectl apply -f deployment.yaml

# 6. Acceder a Jaeger UI
minikube service jaeger-service -n opentelemetry
```

**Características:**
- Instrumentación automática de Flask con OpenTelemetry
- Trazas distribuidas con spans personalizados (foo → goo → zoo)
- Atributos y eventos personalizados en spans
- Export de trazas vía OTLP a OTEL Collector
- Jaeger all-in-one con OTLP receiver habilitado
- Visualización de call stack y latencias en Jaeger UI
- Simulación de latencia aleatoria para testing

---

### Exercise 9: Integración Completa de Observabilidad

**Descripción:** Stack completo de observabilidad integrando Prometheus, Grafana y Jaeger con múltiples fuentes de métricas.

**Tecnologías:**
- Prometheus (metrics collection con multiple scrape targets)
- Grafana (visualización unificada)
- Jaeger (distributed tracing)
- OTEL Collector (telemetry pipeline)
- cAdvisor (container metrics)

**Prometheus multi-source:** `exercises/exercise9/prometheus.yaml`

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: prometheus-config
  namespace: monitoring
data:
  prometheus.yml: |
    global:
      scrape_interval: 15s
    scrape_configs:
      - job_name: 'prometheus'
        static_configs:
          - targets: ['localhost:9090']
      - job_name: 'cadvisor'
        kubernetes_sd_configs:
          - role: pod
        relabel_configs:
          - source_labels: [__meta_kubernetes_pod_label_app]
            action: keep
            regex: cadvisor
      - job_name: 'otel-collector'
        static_configs:
          - targets: ['otel-collector.opentelemetry.svc.cluster.local:9464']
```

**Grafana con datasources:** `exercises/exercise9/grafana.yaml`

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: grafana-datasources-config
  namespace: monitoring
data:
  datasources.yaml: |
    apiVersion: 1
    datasources:
      - name: Prometheus
        type: prometheus
        access: proxy
        url: http://prometheus-service.monitoring.svc.cluster.local:9090
        isDefault: true
      - name: Jaeger
        type: jaeger
        access: proxy
        url: http://jaeger-service.opentelemetry.svc.cluster.local:16686
```

**Deployment:**

```bash
# 1. Desplegar aplicación
kubectl apply -f deployment.yaml

# 2. Desplegar OTEL Collector
kubectl apply -f otel-collector.yaml

# 3. Desplegar Jaeger
kubectl apply -f jaeger.yaml

# 4. Desplegar Prometheus con configuración multi-source
kubectl apply -f prometheus.yaml

# 5. Desplegar Grafana con datasources pre-configurados
kubectl apply -f grafana.yaml

# 6. Verificar todos los componentes
kubectl get pods -A

# 7. Acceder a Grafana
minikube service grafana-service -n monitoring

# 8. Verificar datasources en Grafana
# Configuration > Data Sources > Prometheus y Jaeger
```

**Características:**
- Stack completo de observabilidad (métricas + logs + trazas)
- Prometheus scraping 3 fuentes: self-monitoring, cAdvisor (kubernetes_sd), OTEL Collector
- Grafana con 2 datasources pre-configurados: Prometheus (default) + Jaeger
- Service discovery de Kubernetes para cAdvisor
- Visualización unificada en Grafana de métricas y trazas
- Integración completa entre componentes

---

### Exercise 10: Logging Centralizado con Loki

**Descripción:** Implementación de logging centralizado con Loki, incluyendo exportación de logs a OTEL Collector y almacenamiento persistente.

**Tecnologías:**
- Loki (agregación de logs)
- OpenTelemetry Logging (export de logs)
- Kubernetes PersistentVolume (almacenamiento)
- Grafana (visualización de logs)

**Código con logging:** `exercises/exercise10/app.py` (fragmento)

```python
import logging
from opentelemetry.exporter.otlp.proto.grpc._log_exporter import OTLPLogExporter
from opentelemetry._logs import set_logger_provider
from opentelemetry.sdk._logs import LoggerProvider, LoggingHandler
from opentelemetry.sdk._logs.export import BatchLogRecordProcessor

# Configuración de logging
logger = logging.getLogger(__name__)
logging.basicConfig(filename='./logs/sre-app.log', level=logging.DEBUG)

# OpenTelemetry logging
logger_provider = LoggerProvider()
set_logger_provider(logger_provider)

log_exporter = OTLPLogExporter(
    endpoint="otel-collector.opentelemetry.svc.cluster.local:4317",
    insecure=True
)

log_processor = BatchLogRecordProcessor(log_exporter)
logger_provider.add_log_record_processor(log_processor)
```

**Loki YAML:** `exercises/exercise10/grafana-loki.yaml`

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: loki-config
  namespace: opentelemetry
data:
  loki.yaml: |
    auth_enabled: false
    server:
      http_listen_port: 3100
    schema_config:
      configs:
      - from: 2020-05-15
        store: tsdb
        object_store: filesystem
        schema: v13
    storage_config:
      filesystem:
        directory: /tmp/loki/chunks
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: loki
  namespace: opentelemetry
spec:
  replicas: 1
  selector:
    matchLabels:
      app: loki
  template:
    metadata:
      labels:
        app: loki
    spec:
      containers:
        - name: loki
          image: grafana/loki:3.1.0
          ports:
            - containerPort: 3100
```

**Storage:** `exercises/exercise10/storage.yaml`

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: log-pv-1
spec:
  capacity:
    storage: 3Gi
  accessModes:
    - ReadWriteMany
  hostPath:
    path: /data/sre-app/logs
    type: DirectoryOrCreate
```

**Script de deployment completo:** `exercises/exercise10/cluster.sh`

```bash
#!/bin/bash

set -e

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}

# Limpieza completa
log "Limpieza de entorno..."
minikube delete --all

# Inicialización
log "Iniciando Minikube..."
minikube start --driver=docker

log "Creando directorio de logs..."
minikube ssh "sudo mkdir -p /data/sre-app/logs && sudo chmod 777 /data/sre-app/logs"

# Build de imagen
log "Construyendo imagen Docker..."
docker build -t sre-abc-training-python-app:latest .

# Deployment del stack
log "Desplegando stack completo..."
kubectl apply -f ./storage.yaml
kubectl apply -f ./deployment.yaml
kubectl apply -f ./otel-collector.yaml
kubectl apply -f ./jaeger.yaml
kubectl apply -f ./prometheus.yaml
kubectl apply -f ./grafana-loki.yaml
kubectl apply -f ./grafana.yaml

# Verificación
log "Esperando que los pods estén listos..."
kubectl wait --for=condition=Ready pods --all --all-namespaces --timeout=120s

kubectl get pods -A
```

**Deployment:**

```bash
# 1. Ejecutar script de deployment completo
chmod +x cluster.sh
./cluster.sh

# El script realiza:
# - Limpieza de entorno (minikube delete)
# - Inicio de Minikube
# - Creación de directorio de logs
# - Build de imagen Docker
# - Deployment de todo el stack
# - Verificación de pods

# 2. Acceder a Grafana
minikube service grafana-service -n monitoring

# 3. Verificar logs en Grafana
# Explore > Loki > Log browser
```

**Características:**
- Logging dual: archivo local + export OTLP
- OTLPLogExporter para envío a OTEL Collector
- Loki con almacenamiento en filesystem
- PersistentVolume para persistencia de logs
- Integración con Grafana para visualización
- Script automatizado para deployment completo
- Verificación automática con kubectl wait

---

### Exercise 11: Métricas Personalizadas con Prometheus Client

**Descripción:** Implementación de métricas custom usando Prometheus Client Library con Counter, Histogram y Gauge.

**Tecnologías:**
- Prometheus Client (biblioteca Python)
- Counter, Histogram, Gauge (tipos de métricas)
- Flask endpoint `/metrics` (exposición de métricas)
- Prometheus scraping (recolección)

**Código con métricas:** `exercises/exercise11/app.py` (fragmento)

```python
from flask import Flask, Response
from prometheus_client import Counter, Histogram, Gauge, generate_latest

# Definición de métricas Prometheus
REQUEST_COUNT = Counter('http_requests_total', 'Total HTTP Requests', ['method', 'endpoint'])
REQUEST_LATENCY = Histogram('http_request_duration_seconds', 'HTTP Request Latency', ['method', 'endpoint'])
GOO_CALL_COUNT = Gauge('goo_function_calls_total', 'Total calls to the goo function')

app = Flask(__name__)

# Endpoint para exponer métricas
@app.route('/metrics')
def metrics():
    return Response(generate_latest(), mimetype='text/plain')

@app.get('/store')
def get_stores():
    REQUEST_COUNT.labels(method='GET', endpoint='/store').inc()
    # ... lógica de la aplicación
    return {"stores": stores}
```

**Dockerfile:** `exercises/exercise11/Dockerfile`

```dockerfile
FROM python:3.10

EXPOSE 5000
WORKDIR /app

RUN pip install flask \
    opentelemetry-api \
    opentelemetry-sdk \
    opentelemetry-exporter-otlp-proto-grpc \
    opentelemetry-instrumentation-flask \
    prometheus-client

COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]
```

**Configuración Prometheus para scraping:** `exercises/exercise11/prometheus.yaml` (fragmento)

```yaml
scrape_configs:
  - job_name: 'sre-app'
    kubernetes_sd_configs:
      - role: pod
        namespaces:
          names:
            - application
    relabel_configs:
      - source_labels: [__meta_kubernetes_pod_label_app]
        action: keep
        regex: sre-abc-training-app
    metrics_path: /metrics
```

**Deployment:**

```bash
# 1. Build de imagen con prometheus-client
docker build -t sre-app-metrics:v1 .

# 2. Aplicar deployment
kubectl apply -f deployment.yaml

# 3. Configurar Prometheus para scraping
kubectl apply -f prometheus.yaml

# 4. Verificar endpoint de métricas
kubectl port-forward <pod-name> 5000:5000
curl http://localhost:5000/metrics

# 5. Consultar métricas en Prometheus UI
minikube service prometheus-service -n monitoringl
```

**Características:**
- Counter para conteo de requests HTTP
- Histogram para distribución de latencias
- Gauge para valores que suben/bajan
- Labels para dimensionalidad (method, endpoint)
- Endpoint `/metrics` en formato Prometheus
- Kubernetes service discovery para auto-scraping
- Integración con stack de monitoreo

---

### Exercise 12: Stack de Observabilidad Completo

**Descripción:** Deployment unificado del stack completo de observabilidad con todos los componentes integrados, incluyendo storage persistente, tráfico sintético y configuración avanzada de RBAC.

**Tecnologías:**
- Prometheus + Grafana + Jaeger + Loki (stack completo)
- OpenTelemetry Collector (telemetry pipeline)
- Kubernetes RBAC (permisos avanzados)
- PersistentVolumes (storage para logs)
- CronJob (generación de tráfico)

**Manifiestos principales:**

**1. Storage:** `exercises/exercise12/storage.yaml`

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: log-pv-1
spec:
  capacity:
    storage: 3Gi
  accessModes:
    - ReadWriteMany
  hostPath:
    path: /data/sre-app/logs
    type: DirectoryOrCreate
  storageClassName: ""
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: log-pv-2
spec:
  capacity:
    storage: 3Gi
  accessModes:
    - ReadWriteMany
  hostPath:
    path: /data/sre-app/logs
    type: DirectoryOrCreate
  storageClassName: ""
```

**2. Aplicación con tráfico sintético:** `exercises/exercise12/deployment.yaml`

```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: application
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: sre-abc-training-app
  namespace: application
spec:
  replicas: 3
  selector:
    matchLabels:
      app: sre-abc-training-app
  template:
    metadata:
      labels:
        app: sre-abc-training-app
      annotations:
        prometheus.io/scrape: "true"
        prometheus.io/port: "5000"
        prometheus.io/path: "/metrics"
    spec:
      containers:
      - name: sre-abc-training-app
        image: sre-abc-training-python-app:amd64
        imagePullPolicy: Never
        ports:
        - containerPort: 5000
        volumeMounts:
        - name: log-volume
          mountPath: /app/logs
      volumes:
      - name: log-volume
        persistentVolumeClaim:
          claimName: log-pvc
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: log-pvc
  namespace: application
spec:
  accessModes:
    - ReadWriteMany
  resources:
    requests:
      storage: 3Gi
  storageClassName: ""
  volumeName: log-pv-1
---
apiVersion: v1
kind: Service
metadata:
  name: sre-abc-training-service
  namespace: application
  annotations:
    prometheus.io/scrape: "true"
    prometheus.io/port: "5000"
    prometheus.io/path: "/metrics"
spec:
  type: NodePort
  selector:
    app: sre-abc-training-app
  ports:
  - port: 5000
    targetPort: 5000
    nodePort: 30007
---
apiVersion: batch/v1
kind: CronJob
metadata:
  name: store-caller
  namespace: application
spec:
  schedule: "*/1 * * * *"
  successfulJobsHistoryLimit: 3
  failedJobsHistoryLimit: 1
  jobTemplate:
    spec:
      template:
        spec:
          containers:
          - name: curl-container
            image: curlimages/curl:7.85.0
            command: ["/bin/sh", "-c"]
            args:
              - |
                curl http://sre-abc-training-service.application.svc.cluster.local:5000/store
                sleep 1;
                curl http://sre-abc-training-service.application.svc.cluster.local:5000/store
                sleep 1;
                curl http://sre-abc-training-service.application.svc.cluster.local:5000/store
                sleep 1;
                curl http://sre-abc-training-service.application.svc.cluster.local:5000/store
                sleep 1;
                curl http://sre-abc-training-service.application.svc.cluster.local:5000/store
                sleep 1;
                curl http://sre-abc-training-service.application.svc.cluster.local:5000/store
          restartPolicy: Never
```

**3. OTEL Collector con 3 pipelines:** `exercises/exercise12/otel-collector.yaml` (fragmento clave)

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: otel-config
  namespace: opentelemetry
data:
  config.yaml: |
    receivers:
      otlp:
        protocols:
          grpc:
            endpoint: 0.0.0.0:4317
      filelog:
        include: ["/var/log/sre-app/*.log"]
        start_at: beginning

    exporters:
      otlphttp/loki:
        endpoint: http://loki.opentelemetry.svc.cluster.local:3100/otlp
        tls:
          insecure: true
      otlp/jaeger:
        endpoint: "jaeger:4317"
        tls:
          insecure: true
      prometheus:
        endpoint: "0.0.0.0:9464"
        namespace: "otel_collector"
    
    connectors:
      spanmetrics:
          namespace: span.metrics
    
    processors:
      batch: {}

    service:
        pipelines:
            logs:
                receivers: [otlp, filelog]
                processors: [batch]
                exporters: [otlphttp/loki]
            traces:
                receivers: [otlp]
                processors: [batch]
                exporters: [otlp/jaeger, spanmetrics]
            metrics:
              receivers: [otlp, spanmetrics]
              processors: [batch]
              exporters: [prometheus]
```

**4. Prometheus con Service Discovery:** `exercises/exercise12/prometheus.yaml` (fragmento clave)

```yaml
scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']

  - job_name: 'kubernetes-apiservers'
    kubernetes_sd_configs:
      - role: endpoints
    scheme: https
    tls_config:
      insecure_skip_verify: true
    bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token

  - job_name: 'kubernetes-nodes-cadvisor'
    kubernetes_sd_configs:
      - role: node
    scheme: https
    tls_config:
      insecure_skip_verify: true
    bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
    relabel_configs:
      - target_label: __metrics_path__
        replacement: /api/v1/nodes/${1}/proxy/metrics/cadvisor

  - job_name: 'kubernetes-pods'
    kubernetes_sd_configs:
      - role: pod
    relabel_configs:
      - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_scrape]
        action: keep
        regex: true
      - source_labels: [__meta_kubernetes_pod_annotation_prometheus_io_path]
        action: replace
        target_label: __metrics_path__

  - job_name: 'kubernetes-services'
    kubernetes_sd_configs:
      - role: service
    relabel_configs:
      - source_labels: [__meta_kubernetes_service_annotation_prometheus_io_scrape]
        action: keep
        regex: true
```

**5. RBAC para Prometheus:** `exercises/exercise12/prometheus-rbac-cluster.yaml`

```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRole
metadata:
  name: prometheus
rules:
- apiGroups: [""]
  resources:
    - nodes
    - nodes/proxy
    - nodes/metrics
    - services
    - endpoints
    - pods
    - configmaps
  verbs: ["get", "list", "watch"]
- apiGroups: ["extensions", "networking.k8s.io"]
  resources:
    - ingresses
  verbs: ["get", "list", "watch"]
- nonResourceURLs: ["/metrics", "/metrics/cadvisor"]
  verbs: ["get"]
---
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: prometheus
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: prometheus
subjects:
- kind: ServiceAccount
  name: prometheus
  namespace: monitoring
```

**6. Grafana con Datasources y Dashboards:** `exercises/exercise12/grafana.yaml` (fragmento clave)

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: grafana-datasources-config
  namespace: monitoring
data:
  datasources.yaml: |
    apiVersion: 1
    datasources:
      - name: Prometheus
        type: prometheus
        access: proxy
        url: http://prometheus-service.monitoring.svc.cluster.local:9090
        isDefault: true
      - name: Loki
        type: loki
        access: proxy
        url: http://loki.opentelemetry.svc.cluster.local:3100
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: grafana-dashboards-config
  namespace: monitoring
data:
  golden-signal.json: |
    {
      "title": "Golden Signals Dashboard",
      "panels": [
        {
          "title": "Latency",
          "datasource": "Prometheus",
          "targets": [{
            "expr": "sum(rate(otel_collector_span_metrics_duration_milliseconds_bucket[5m])) by (span_name)"
          }]
        },
        {
          "title": "Traffic (Receive Bytes)",
          "datasource": "Prometheus",
          "targets": [{
            "expr": "sum(rate(container_network_receive_bytes_total[5m])) by (container_label_k8s_app)"
          }]
        },
        {
          "title": "Errors (Application Logs)",
          "datasource": "Loki",
          "targets": [{
            "expr": "{service_name=\"unknown_service\"} |= `err`"
          }]
        },
        {
          "title": "Saturation (CPU Usage)",
          "datasource": "Prometheus",
          "targets": [{
            "expr": "sum(rate(container_cpu_system_seconds_total[5m])) by (container_label_io_kubernetes_container_name)"
          }]
        }
      ]
    }
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: grafana-alerts-config
  namespace: monitoring
data:
  alerts.json: |
    {
      "groups": [{
        "name": "Conditions evaluated each minute(1m)",
        "interval": "1m",
        "rules": [
          {
            "title": "Endpoint's latency lower than 1400 miliseconds",
            "expr": "sum(rate(otel_collector_span_metrics_duration_milliseconds_bucket[5m])) by (span_name)"
          },
          {
            "title": "Receive bytes lower than 250000 bytes",
            "expr": "sum(rate(container_network_receive_bytes_total[5m])) by (container_label_k8s_app)"
          },
          {
            "title": "Availability must have less than 5500 errors",
            "expr": "sum(count_over_time({service_name=\"unknown_service\"} |= \"err\" [5m])) by(service_name)"
          }
        ]
      }]
    }
```

**Características:**
- **2 PersistentVolumes** (log-pv-1, log-pv-2) con 3Gi cada uno
- **Deployment de aplicación** con 3 réplicas y anotaciones Prometheus
- **CronJob** ejecutando cada minuto con 6 requests al endpoint `/store`
- **OTEL Collector** con 3 pipelines completos (logs, traces, metrics)
- **Receivers:** OTLP gRPC + Filelog
- **Exporters:** Loki (OTLP HTTP), Jaeger (OTLP), Prometheus (puerto 9464)
- **Connector spanmetrics** para generar métricas desde trazas
- **Prometheus** con 6 scrape jobs: self, apiservers, nodes, cadvisor, pods (annotation-based), services (annotation-based)
- **ClusterRole y ClusterRoleBinding** para permisos completos de Prometheus
- **Grafana** con 2 datasources (Prometheus + Loki)
- **Dashboard Golden Signals** pre-configurado (Latency, Traffic, Errors, Saturation)
- **3 Alertas** configuradas: latencia, tráfico de red, disponibilidad
- **Multi-namespace:** application, monitoring, opentelemetry
- **Service discovery automático** con anotaciones prometheus.io/scrape

---

### Exercise 13: Automatización con Ansible y AWX

**Descripción:** Automatización de tareas operativas usando Ansible y AWX para gestión de la infraestructura de Kubernetes.

**Tecnologías:**
- Ansible (automation engine)
- AWX (interfaz web para Ansible)
- Ansible Playbooks (runbooks automatizados)
- AWX Operator (deployment en Kubernetes)

**Playbook de configuración de AWX:** `exercises/exercise13/awx-configuration.yaml` (fragmento)

```yaml
---
- name: Create Organization, Inventory, Project, and Job Template in AWX
  hosts: all
  gather_facts: false
  vars:
    awx_username: "admin"
    organization_name: "SRE's Organization"
    project_scm_url: "https://github.com/cguillencr/sre-abc-training.git"
    playbook: "exercises/exercise13/collect-status-application.yaml"
  tasks:
    - name: Fetch AWX service URL
      command: minikube service awx-demo-service -n awx --url
      register: service_url_output

    - name: Get AWX password
      command: kubectl get secret awx-demo-admin-password -o jsonpath="{.data.password}" -n awx
      register: kubectl_output

    - name: Set awx_password variable
      set_fact:
        awx_password: "{{ kubectl_output.stdout | b64decode }}"
```

**Playbook de monitoreo:** `exercises/exercise13/collect-status-application.yaml`

Automatiza la recolección de estado de pods, services y deployments de la aplicación.

**Deployment:**

```bash
# 1. Crear namespace para AWX
kubectl create namespace awx

# 2. Instalar AWX Operator
kubectl apply -f awx-operator.yaml

# 3. Desplegar AWX instance
kubectl apply -f awx-demo.yml

# 4. Esperar a que AWX esté listo
kubectl wait --for=condition=Ready pods -l app.kubernetes.io/name=awx-demo -n awx --timeout=300s

# 5. Obtener password de admin
kubectl get secret awx-demo-admin-password -o jsonpath="{.data.password}" -n awx | base64 --decode

# 6. Configurar AWX (Organization, Inventory, Project, Job Template)
ansible-playbook -i inventory.ini awx-configuration.yaml

# 7. Acceder a AWX UI
minikube service awx-demo-service -n awx
```

**Características:**
- AWX Operator para gestión de AWX en Kubernetes
- Playbook de configuración automatizada (Organization, Inventory, Project)
- Job Template para monitoreo de estado de aplicación
- Runbook automatizado para recolección de métricas
- Interfaz web para gestión de trabajos
- Integración con repositorio Git para playbooks
- Credenciales automáticas de Kubernetes

---

### Exercise 14: Helm Charts para Kubernetes

**Descripción:** Empaquetamiento de aplicaciones Kubernetes usando Helm Charts para deployment reproducible y versionado.

**Tecnologías:**
- Helm 3 (package manager para Kubernetes)
- Chart templating (Go templates)
- Values.yaml (configuración parametrizable)

**Chart.yaml:** `exercises/exercise14/my-sre-app-chart/Chart.yaml`

```yaml
apiVersion: v2
name: my-sre-app-chart
description: A Helm chart for Kubernetes
type: application
version: 0.1.0
appVersion: "1.16.0"
```

**Values.yaml:** `exercises/exercise14/my-sre-app-chart/values.yaml` (fragmento)

```yaml
replicaCount: 1

image:
  repository: nginx
  pullPolicy: IfNotPresent
  tag: ""

service:
  type: ClusterIP
  port: 80

autoscaling:
  enabled: false
  minReplicas: 1
  maxReplicas: 100
```

**Deployment:**

```bash
# 1. Crear estructura de chart
helm create my-sre-app-chart

# 2. Validar sintaxis del chart
helm lint ./my-sre-app-chart

# 3. Hacer dry-run para ver manifiestos generados
helm install my-sre-app ./my-sre-app-chart --dry-run --debug

# 4. Instalar el chart
helm install my-sre-app ./my-sre-app-chart

# 5. Verificar release
helm list
helm status my-sre-app

# 6. Actualizar valores y hacer upgrade
helm upgrade my-sre-app ./my-sre-app-chart --set replicaCount=3

# 7. Ver historial de revisiones
helm history my-sre-app

# 8. Rollback a versión anterior
helm rollback my-sre-app 1

# 9. Desinstalar release
helm uninstall my-sre-app
```

**Características:**
- Chart structure con templates parametrizables
- Values.yaml para configuración centralizada
- Templating con Go templates y Helm functions
- Versionado de charts (Chart.yaml)
- Gestión de releases con historial
- Upgrades y rollbacks simplificados
- Dry-run para validación pre-deployment
- Packaging y distribución de aplicaciones

---

### Exercise 15: Infraestructura como Código con Terraform

**Descripción:** Gestión declarativa de infraestructura Kubernetes usando Terraform para deployment reproducible.

**Tecnologías:**
- Terraform (Infrastructure as Code)
- Kubernetes provider (gestión de recursos K8s)
- HCL (HashiCorp Configuration Language)
- State management (terraform.tfstate)

**Configuración principal:** `exercises/exercise15/main.tf`

```terraform
resource "kubernetes_deployment" "app_deployment" {
  metadata {
    name      = var.app_name
    namespace = kubernetes_namespace.app_namespace.metadata[0].name
    labels = {
      app = var.app_name
    }
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = var.app_name
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_name
        }
      }

      spec {
        container {
          name  = var.app_name
          image = var.image

          port {
            container_port = var.container_port
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "app_service" {
  metadata {
    name      = "${var.app_name}-service"
    namespace = kubernetes_namespace.app_namespace.metadata[0].name
  }

  spec {
    selector = {
      app = var.app_name
    }

    port {
      port        = var.service_port
      target_port = var.container_port
    }

    type = "NodePort"
  }
}
```

**Deployment:**

```bash
# 1. Inicializar Terraform y descargar providers
terraform init

# 2. Formatear archivos .tf
terraform fmt

# 3. Validar configuración
terraform validate

# 4. Planificar cambios (preview)
terraform plan -out=tfplan

# 5. Aplicar infraestructura
terraform apply tfplan
# O interactivo: terraform apply

# 6. Ver estado actual
terraform show
terraform state list

# 7. Ver outputs definidos
terraform output

# 8. Actualizar infraestructura
# Modificar variables.tf o main.tf
terraform plan
terraform apply

# 9. Destruir infraestructura
terraform destroy
```

**Características:**
- Declaración de recursos Kubernetes en HCL
- Variables parametrizables (variables.tf)
- Outputs para información post-deployment (outputs.tf)
- State management para tracking de recursos
- Provider configuration (provider.tf)
- Plan/Apply workflow para cambios controlados
- Idempotencia y drift detection
- Destrucción segura de infraestructura

---

### Exercise 16: Continuous Integration con GitHub Actions

**Descripción:** Implementación de pipeline CI/CD usando GitHub Actions para build, test y deployment automatizado.

**Tecnologías:**
- GitHub Actions (CI/CD platform)
- Docker build and push
- Kubernetes deployment automation
- YAML workflows

**Características:**
- Workflow automatizado en `.github/workflows/`
- Build de imagen Docker en cada push
- Push automático a Docker registry
- Tests automatizados pre-deployment
- Deployment a Kubernetes vía kubectl
- Secrets management para credenciales

---

### Exercise 17: GitOps con ArgoCD

**Descripción:** Implementación de GitOps usando ArgoCD para deployment declarativo desde repositorio Git.

**Tecnologías:**
- ArgoCD (GitOps continuous delivery)
- Git como source of truth
- Kubernetes manifest sync
- Web UI para gestión

**Deployment:**

```bash
# 1. Instalar ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# 2. Acceder a ArgoCD UI
kubectl port-forward svc/argocd-server -n argocd 8080:443

# 3. Obtener password inicial
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

# 4. Crear aplicación
argocd app create my-sre-app \
  --repo https://github.com/user/repo.git \
  --path k8s \
  --dest-server https://kubernetes.default.svc \
  --dest-namespace application

# 5. Sincronizar aplicación
argocd app sync my-sre-app
```

**Características:**
- Deployment declarativo desde Git
- Auto-sync de cambios en repositorio
- Diff visualization en UI
- Health monitoring de aplicaciones
- Rollback con historial de revisiones
- Multi-cluster support

---

### Exercise 18: Rollbacks y Manejo de Fallos

**Descripción:** Práctica de estrategias de rollback y recovery ante fallos en deployments de Kubernetes.

**Tecnologías:**
- Kubernetes Deployments (rollout management)
- kubectl rollout (comandos de gestión)
- ArgoCD rollback (GitOps rollback)
- Helm rollback (package management)

**Comandos de rollback:**

```bash
# Rollback con kubectl
kubectl rollout undo deployment/my-app
kubectl rollout undo deployment/my-app --to-revision=2
kubectl rollout history deployment/my-app

# Rollback con Helm
helm rollback my-release 1
helm history my-release

# Rollback con ArgoCD
argocd app rollback my-app <revision>
argocd app history my-app
```

**Características:**
- Rollback inmediato ante fallos
- Historial de revisiones
- Rollback a versión específica
- Health checks y readiness probes
- Estrategias de deployment (RollingUpdate, Recreate)
- PodDisruptionBudgets para availability

---

### Exercise 19: Chaos Engineering

**Descripción:** Experimentación controlada con Chaos Engineering para identificar puntos débiles y mejorar resiliencia.

**Tecnologías:**
- Chaos Mesh (Kubernetes chaos engineering platform)
- Pod failure injection
- Network chaos (latency, partition)
- Resource stress testing

**Experimentos realizados:**

```bash
# Instalar Chaos Mesh
curl -sSL https://mirrors.chaos-mesh.org/v2.5.0/install.sh | bash

# Pod Kill Experiment
kubectl apply -f - <<EOF
apiVersion: chaos-mesh.org/v1alpha1
kind: PodChaos
metadata:
  name: pod-kill-experiment
spec:
  action: pod-kill
  mode: one
  selector:
    namespaces:
      - application
    labelSelectors:
      app: my-sre-app
  scheduler:
    cron: '@every 2m'
EOF

# Network Delay Experiment
kubectl apply -f network-delay.yaml

# Stress CPU Experiment
kubectl apply -f stress-cpu.yaml
```

**Características:**
- Pod kill para testing de resilience
- Network chaos (latency, packet loss, partition)
- Stress testing (CPU, memory, IO)
- Scheduled chaos experiments
- Observación de comportamiento del sistema
- Validación de recovery automático
- Mejora de tolerancia a fallos
---

## Scripts Personalizados

Durante el programa, desarrollé varios scripts de automatización para facilitar tareas comunes del proyecto y así ahorrar un poquito de tiempo:

### Script 1: apply-all-services.sh
<img src="images/script-1.png" width="600"/>

**Archivo:** [`scripts/apply-all-services.sh`](scripts/apply-all-services.sh)

**Descripción:**
Este script automatiza el inicio de servicios en un clúster de Kubernetes aplicando distintos manifiestos en un orden lógico. Se encarga de desplegar almacenamiento, la aplicación base y varias herramientas de observabilidad y monitoreo (Jaeger, Prometheus, Grafana, Loki/Promtail). Al final muestra un mensaje confirmando que todos los manifiestos fueron aplicados correctamente


**Tecnologías:** 
- Bash (Shell Script) → lenguaje de scripting para ejecutar comandos de forma secuencial.
- Kubernetes (kubectl) → CLI para aplicar manifiestos YAML y gestionar recursos en el clúster.


**Uso:**
```bash
./apply-all-services.sh
```

**Características:**
- Orden lógico: aplica primero el almacenamiento, luego la aplicación base y finalmente las herramientas de monitoreo/logging.
- Automatización: reduce la necesidad de ejecutar múltiples comandos manualmente.
- Claridad: incluye comentarios en español que documentan cada sección.
- Feedback inmediato: imprime un mensaje final confirmando que todos los manifiestos fueron aplicados

---

### Script 2: stop-all-services.sh
<img src="images/script-2.png" width="600"/>

**Archivo:** [`scripts/stop-all-services.sh`](scripts/stop-all-services.sh)

**Descripción:** El script automatiza el apagado de servicios desplegados en Kubernetes y la gestión del entorno de Minikube. Primero elimina los manifiestos aplicados (storage, deployment, Jaeger, Prometheus, Grafana, Loki/Promtail), espera unos segundos para liberar recursos y luego ofrece confirmaciones interactivas para detener o eliminar Minikube.


**Tecnologías:** 
- Bash (Shell Script) → lenguaje de scripting para automatizar tareas en Linux/Unix.
- Kubernetes (kubectl) → herramienta CLI para aplicar y eliminar manifiestos de servicios.
- Minikube → entorno local de Kubernetes que se puede detener o eliminar desde el script.


**Uso:**
```bash
./stop-all-services.sh
```

**Características:**
- Automatización: elimina servicios en orden inverso para evitar conflictos de dependencias.
- Interactividad: incluye confirmaciones yes/no antes de detener o borrar Minikube.
- Robustez: añade un sleep para dar tiempo a que los recursos se liberen.
- Flexibilidad: permite elegir entre detener Minikube (mantener configuración) o eliminarlo completamente (limpieza total).
- Mensajes claros: imprime estados y resultados de cada acción para mayor transparencia.

---

## Reflexiones Finales

Este programa ha sido una experiencia transformadora que me ha permitido:

- Comprender profundamente los principios de SRE
- Desarrollar habilidades prácticas en herramientas modernas de DevOps/SRE
- Aprender a equilibrar innovación con estabilidad
- Implementar soluciones de observabilidad end-to-end
- Automatizar procesos operativos

El conocimiento adquirido es directamente aplicable a entornos de producción y me ha preparado para enfrentar los desafíos de mantener sistemas distribuidos a escala.

---

## Referencias

- [Repositorio Original SRE Academy](https://github.ibm.com/SRE-Academy/sre-academy-training.git)

**© 2025 Alejandro Enrique Lopez - IBM SRE Academy**
