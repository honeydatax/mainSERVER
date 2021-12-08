            { chars += length($0) + 1  
              words += NF
            }
END{
			print "words: 	",words 
}
