docker build -t caption01/multi-client-k8s:latest -t caption01/multi-client-k8s:$SHA -f ./client/Dockerfile ./client
docker build -t caption01/multi-server-k8s:latest -t caption01/multi-server-k8s:$SHA -f ./server/Dockerfile ./server
docker build -t caption01/multi-worker-k8s:latest -t caption01/multi-worker-k8s:$SHA -f ./worker/Dockerfile ./worker

docker push caption01/multi-client-k8s:latest
docker push caption01/multi-server-k8s:latest
docker push caption01/multi-worker-k8s:latest

docker push caption01/multi-client-k8s:$SHA
docker push caption01/multi-server-k8s:$SHA
docker push caption01/multi-worker-k8s:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=caption/multi-server-k8s:$SHA
kubectl set image deployments/client-deployment client=caption/multi-client-k8s:$SHA
kubectl set image deployments/worker-deployment worker=caption/multi-worker-k8s:$SHA
