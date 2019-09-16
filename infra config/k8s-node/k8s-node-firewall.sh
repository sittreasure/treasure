#!/bin/bash

sudo firewall-cmd --permanent --new-service=kubelet-api

sudo firewall-cmd --permanent --service=kubelet-api --set-description="For Self Using and Control Plane"

sudo firewall-cmd --permanent --service=kubelet-api --add-port=10250/tcp

sudo firewall-cmd --permanent --new-service=nodeport

sudo firewall-cmd --permanent --service=nodeport --set-description="For Using in Service That espose to public"

sudo firewall-cmd --permanent --service=nodeport --add-port=30000-32767/tcp

sudo firewall-cmd --add-service=kubelet-api

sudo firewall-cmd --add-service=nodeport

sudo firewall-cmd --reload
