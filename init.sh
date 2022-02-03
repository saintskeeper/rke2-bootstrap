# as root
curl -sfL https://get.rke2.io | sh -
systemctl enable rke2-server.service
systemctl start rke2-server.service

mkdir ~/.kube
cp /etc/rancher/rke2/rke2.yaml ~/.kube/config
cp /var/lib/rancher/rke2/bin/* /usr/local/bin/

# helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
# cert manager
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.7.0/cert-manager.yaml