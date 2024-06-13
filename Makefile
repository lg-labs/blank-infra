init-helm:
	mkdir "helm"
	cd ./helm && helm install local-confluent-kafka helm/cp-helm-charts --version 0.6.0
uninstall-kafka:
	helm uninstall local-confluent-kafka
install-kafka:
	helm install local-confluent-kafka helm/cp-helm-charts --version 0.6.0

kafka-down:
	kubectl delete -f kafka-client.yml
kafka-up:
	kubectl apply -f kafka-client.yml

kafka-exec: # require to create topics here manually!
	kubectl exec -it kafka-client -- /bin/bash

db-down:
	kubectl delete -f postgres-deployment.yml
db-up:
	kubectl apply -f postgres-deployment.yml

app-down:
	kubectl delete -f application-deployment-local.yml
app-up:
	kubectl apply -f application-deployment-local.yml



