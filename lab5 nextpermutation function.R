nextpem<
  -function(x)
  {
    n = length(x)
    j = n
    -
      1
    while (x[j] > x[j+1]) {
      j = j
      -
        1
      
    }
    k = n
    while (x[j]>x[k]) {
      k = k
      -
        1
      
    }
    b = x[j]
    x[j] = x[k]
    x[k] = b
    
    r = n
    s = j+1
    while (r>s) {
      e = x[r]
      x[r] = x[s]
      x[s] = e
      r = r
      -
        1
      s = s+1
      
    }
    return(x) }


A = c(1, 2, 3)
B = c(3, 4, 5, 6)

pem(B)