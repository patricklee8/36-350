
model_select=function(covariates,responses,cutoff){
  lin.reg=lm(responses~covariates)
  testresult=t.test(lin.reg)[[3]]
  wcutoff=lin.reg[testresult<=cutoff]
  
  linreg.2=lm(responses ~ covariates[testresult<=cutoff,])
  pvalues.2=t.test(linreg.2)[[3]]
  return(wcutoff,pvalues.2)
}


