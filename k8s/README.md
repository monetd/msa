## Deployments
- `k8s.sh` 를 실행시킨다. (Pods 20개 / 서비스포트 TCP_80)

[![asciicast](https://asciinema.org/a/343246.svg)](https://asciinema.org/a/343246)

- 생성된 deployment  확인

```
❯ kubectl get deployments
NAME      READY   UP-TO-DATE   AVAILABLE   AGE
mynginx   20/20   20           20          64s

```

## Service Expose

- 생성된 서비스 확인
```
❯ kubectl get services
NAME         TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
kubernetes   ClusterIP   10.96.0.1        <none>        443/TCP        5h55m
mynginx      NodePort    10.103.203.167   <none>        80:31739/TCP   5s

```

## Test
- nginx 웹 페이지 접속 (http://127.0.0.1:31739)

![Welcome Page](./_static/web2.png)
