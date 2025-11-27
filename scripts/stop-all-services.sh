#!/bin/bash

echo "Eliminando manifiestos del stack de observabilidad..."

# Orden inverso al deployment

# Grafana + Loki
kubectl delete -f ./grafana.yaml
kubectl delete -f ./grafana-loki.yaml

# Prometheus
kubectl delete -f ./prometheus.yaml
kubectl delete -f ./prometheus-rbac-cluster.yaml

# Jaeger
kubectl delete -f ./jaeger.yaml

# Collector
kubectl delete -f ./otel-collector.yaml

# Aplicación base
kubectl delete -f ./deployment.yaml

# Storage al final
kubectl delete -f ./storage.yaml

echo "Todos los manifiestos eliminados."

# Esperar a que se liberen recursos
sleep 5

# Mostrar estado
kubectl get pods -A

# Preguntar si detener Minikube
read -p "¿Deseas detener Minikube? (y/n): " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    minikube stop
    echo "Minikube detenido."
    
    # Preguntar si eliminar Minikube
    read -p "¿Deseas eliminar Minikube completamente? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        minikube delete
        echo "Minikube eliminado."
    fi
fi
