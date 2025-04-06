#!/bin/bash
docker build -t task_final .
echo Hyyy
docker login -u boopeshs -p 02-Apr-05
docker tag task_final boopeshs/devops_final
docker push boopeshs/devops_final
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
