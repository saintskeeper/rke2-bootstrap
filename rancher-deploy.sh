helm repo add rancher-latest https://releases.rancher.com/server-charts/latest
kubectl create namespace cattle-system
helm install rancher rancher-latest/rancher \
  --namespace cattle-system \
  --set hostname=cloudranch.us \
  --set replicas=3

# if hook craps out
# kubectl delete -n cattle-system MutatingWebhookConfiguration rancher.cattle.io
# to get secret
# kubectl get secret --namespace cattle-system bootstrap-secret -o go-template='{{.data.bootstrapPassword|base64decode}}{{ "\n" }}'for
# KeepRunning: true