#!/bin/bash

minikube addons enable ingress

echo '$(minikube ip) demo.test' >> /etc/hosts
