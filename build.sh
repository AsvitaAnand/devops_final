#!/bin/bash
docker build -t task_final .
echo Hyyy
docker login -u asvita12 -p asvinu@12
docker tag task_final asvita12/final_devops
docker push asvita12/final_devops
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
