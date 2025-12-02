# Практические работы №11-12

### Развертывание через kubectl

1. Создайте `Deployment` и `Service` для backend:

```shell
kubectl apply -f deployment-backend.yaml -f service-backend.yaml
```

2. Создайте `ConfigMap`, `Deployment` и `Service` для frontend

```shell
kubectl apply -f config-map.yaml -f deployment-frontend.yaml -f service-frontend.yaml
```

3. Создайте `Intgress` (я развертывала в Yandex Cloud, поэтому предварительно установила `Ingress NGINX` в маркетплейсе кластера)

```shell
kubectl apply -f ingress.yaml
```

Запросы к `http://<EXTERNAL_IP>/`, `http://<EXTERNAL_IP>/api` и `http://<EXTERNAL_IP>/health` можно использовать для проверки доступности приложения.
