#!/bin/bash

token=$(kubeadm token generate)

kubeadm token create $token --print-join-command
