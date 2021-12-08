curl https://raw.githubusercontent.com/honeydatax/elearning/main/$1.awk > /tmp/aux
awk -f /tmp/aux < $2
