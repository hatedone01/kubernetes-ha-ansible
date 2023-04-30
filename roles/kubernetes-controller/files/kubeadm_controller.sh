#!/bin/bash

token=$(kubeadm token generate)

certkey=$(kubeadm init phase upload-certs --upload-certs --one-output | sed 's/^.*Namespace//' | sed 's/^.*://' | tr -d '\n')

kubeadm token create $token --certificate-key $certkey --print-join-command
