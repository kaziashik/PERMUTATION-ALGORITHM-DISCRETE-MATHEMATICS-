#2.Use knowledge from previous chapter write the factorial function

#Factorial fuction
fact<-function(n)
  { 
    if (n==0)
      
    {
      return(1)
      
    }
    else
      
    {
      return(n*fact(n-1))
      
    }
}

#3.Create new function name nextpermutation based on the algorithm above

nextpem<-function(x)
  {
    n = length(x)
    j = n-1
    while (x[j] > x[j+1]) {
      j = j- 1
      
    }
    k = n
    while (x[j]>x[k]) {
      k = k -1
      
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
      r = r -1
      s = s+1
      
    }
    return(x) }

#4.Create new function name permutation based on the algorithm above.

pem<-function(a)
{
  n = length(a)
  r = fact(n)
  x <- array(dim = c(r,n))
  for (i in 1:n) {
    x[1,i] = a[i]
    
  }
  for (i in 2:r) {
    x[i,] = nextpem(x[i-1,])
  }
  return(x)
}

# 5.Create two sets A = {1, 2, 3} and B = {3, 4, 5, 6}.
A = c(1, 2, 3)
B = c(3, 4, 5, 6)


#6.Run the function permutation(A) and permutation(B).
pem(A)
pem(B)