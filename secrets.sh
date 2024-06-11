#!/bin/zsh
kubectl create secret generic pg-secret --from-literal PASSWORD=my_pass

kubectl describe secrets

kubectl get secret pg-secret --template={{.data.PASSWORD}} | base64 -d

kubectl delete secrets pg-secret
