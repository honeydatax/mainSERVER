printf "\ec\e[44;36m\a\nmacro close.!\n"
ps | grep "python" > /tmp/aux
while read a 
do
kill $a
done < /tmp/aux
python -m SimpleHTTPServer 8080 &
