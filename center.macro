stars () {
	for a in $(seq 0 $1)
	do
		printf "**"
	done 
}
center () {
	c=$(expr $1 '*' 2)
	c=$(expr 80 - $c)
	c=$(expr $c '/' 2)
	for d in $(seq 0 $c)
	do
		printf " "
	done 
}

printf "\ec\e[44;36m\a\nmacro graphics\n\n"
for b in $(seq 0 10)
do
	center $b
	stars $b
	printf "\n"
done
