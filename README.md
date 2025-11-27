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

## Tecnologías Utilizadas

### Lenguajes y Frameworks
- Python 3.x
- Flask

### Contenedores y Orquestación
- Docker
- Kubernetes
- Minikube
- Helm

### Observabilidad
- Prometheus
- Grafana
- Jaeger
- Loki
- OpenTelemetry Collector
- cAdvisor

### Automatización e IaC
- Ansible
- AWX
- Terraform

### CI/CD y GitOps
- GitHub Actions
- ArgoCD
---

## Aprendizajes Clave

1. **Observabilidad como Pilar Fundamental:** La implementación de un stack completo de observabilidad (métricas, logs, trazas) es esencial para mantener sistemas confiables.

2. **Infraestructura como Código:** La automatización mediante Ansible y Terraform reduce errores humanos y mejora la reproducibilidad.

3. **Golden Signals:** Latencia, tráfico, errores y saturación son métricas críticas para entender la salud de un sistema.

4. **GitOps:** La gestión declarativa de infraestructura mediante Git proporciona trazabilidad y facilita rollbacks.

5. **Resiliencia:** El Chaos Engineering ayuda a identificar puntos débiles antes de que afecten a usuarios reales.

---

## Capturas de Pantalla

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
    <td><img src="images/grafana-6.png" width="400"/></td>
  </tr>
  <tr>
    <td><img src="images/grafana-7.png" width="400"/></td>
    <td><img src="images/grafana-8.png" width="400"/></td>
    <td><img src="images/grafana-9.png" width="400"/></td>
  </tr>
  <tr>
    <td><img src="images/grafana-10.png" width="400"/></td>
    <td><img src="images/grafana-11.png" width="400"/></td>
    <td></td>
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

### AWX Dashboard
<img src="images/awx-dashboard.png" width="400"/>

### ArgoCD Dashboard
<img src="images/argocd-dashboard.png" width="400"/>

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
