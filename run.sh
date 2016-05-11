  #!/bin/ash
  
  /confd -backend=rancher -prefix="latest" -backend2=vault -prefix2="/secret" -auth-type2=token -auth-token2="$VAULT_TOKEN" -node2="http://$VAULT_NODE:8200" -log-level=debug -interval=60
