#!/bin/bash

sudo firewall-cmd --permanent --new-service=k8s-api

sudo firewall-cmd --permanent --service=k8s-api --set-description="For Kubernetes API Control"

sudo firewall-cmd --permanent --service=k8s-api --add-port=6443/tcp

echo "Added k8s-api service"

sudo firewall-cmd --permanent --new-service=etcd-server-client-api

sudo firewall-cmd --permanent --service=etcd-server-client-api --set-description="For Kube-API Server and etcd"

sudo firewall-cmd --permanent --service=etcd-server-client-api --add-port=2379/tcp

sudo firewall-cmd --permanent --service=etcd-server-client-api --add-port=2380/tcp

echo "Added Kube-API Server and etcd service"

sudo firewall-cmd --permanent --new-service=kubelet-api

sudo firewall-cmd --permanent --service=kubelet-api --set-description="For Self Using and Control Plane"

sudo firewall-cmd --permanent --service=kubelet-api --add-port=10250/tcp

echo "Added kubelet-api service"

sudo firewall-cmd --permanent --new-service=kube-scheduler

sudo firewall-cmd --permanent --service=kube-scheduler --set-description="For Using in scheduler control"

sudo firewall-cmd --permanent --service=kube-scheduler --add-port=10251/tcp

echo "Added kube-scheduler service"

sudo firewall-cmd --permanent --new-service=kube-controller-manager

sudo firewall-cmd --permanent --service=kube-controller-manager --set-description="For Using in Controller Manager"

sudo firewall-cmd --permanent --service=kube-controller-manager --add-port=10252/tcp

echo "Added kube-controller-manager service"

sudo firewall-cmd --permanent --add-service=k8s-api

echo "Enabled k8s-api service"

sudo firewall-cmd --permanent --add-service=etcd-server-client-api

echo "Enbled etcd service"

sudo firewall-cmd --permanent --add-service=kubelet-api

echo "Enabled kubelet-api service"

sudo firewall-cmd --permanent --add-service=kube-scheduler

echo "Enabled kube-scheduler service"

sudo firewall-cmd --permanent --add-service=kube-controller-manager

echo "Enalbed kube-controller-manager service"

sudo firewall-cmd --permanent --reload

echo "Reloaded firewalld config"