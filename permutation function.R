pem<-function(a)
  {
    n = length(a)
    r = fact(n)
    x <
      - array(dim = c(r,n))
    for (i in 1:n) {
      x[1,i] = a[i]
      
    }
    for (i in 2:r) {
      x[i,] = nextpem(x[i
                        -1,])
      5
    }
    return(x)
  }

A = c(1, 2, 3)
B = c(3, 4, 5, 6)

pem(B)