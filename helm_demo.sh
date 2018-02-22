#!/bin/sh

cd /home/vagrant/ICP/demo/icp-tech-talks

rm -rf /home/vagrant/ICP/demo/icp-tech-talks/myemp

# Initialize Helm and Install Tiller
helm init

helm del --purge myemp

# helm install  odmcharts --set image.pullSecrets=admin.registrykey --set image.repository=mycluster.icp:8500/ibmcom

helm create myemp

# helm install --name myemp

cp /home/vagrant/ICP/demo/icp-tech-talks/values.yaml /home/vagrant/ICP/demo/icp-tech-talks/myemp

helm install --name myemp myemp

