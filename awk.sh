curl http://localhost:8080/$1.awk > /tmp/aux
awk -f /tmp/aux < $2
