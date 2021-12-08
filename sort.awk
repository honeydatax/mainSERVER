 { line[NR] = $0 "" }  
                       
            END {  isort(line, NR)
              for(i = 1 ; i <= NR ; i++) print line[i]
            }
            
              function isort( A, n,    i, j, hold)
            {
              for( i = 2 ; i <= n ; i++)
              {
                hold = A[j = i]
                while ( A[j-1] > hold )
                { j-- ; A[j+1] = A[j] }
                A[j] = hold
              }
            }


