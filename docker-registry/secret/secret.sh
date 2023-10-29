export REGISTRY_USERNAME=username
export REGISTRY_PASSWORD=password
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: registry-basic-auth-secret
  namespace: default
data:
  users: |2
    $(htpasswd -bn $REGISTRY_USERNAME $REGISTRY_PASSWORD | base64)
EOF