cat <<EOF > pvc_fedora.yml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: "fedora"
  labels:
    app: containerized-data-importer
  annotations:
    cdi.kubevirt.io/storage.import.endpoint: "https://download.fedoraproject.org/pub/fedora/linux/releases/36/Cloud/x86_64/images/Fedora-Cloud-Base-36-1.5.x86_64.raw.xz"
spec:
  accessModes:
  - ReadWriteOnce
  resources:
    requests:
      storage: 5Gi
EOF

kubectl create -f pvc_fedora.yml
