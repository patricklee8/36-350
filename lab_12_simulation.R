
run_simulation=function(n_trials, n, p, cutoff){
  for (n in (1:n_trials)){
  for (i in c(10,100,1000)){
    for (j in c(10,20,50)){
  save(data=model_select(generate_data(j,i)$covariates,generate_data(n_trials,i)$responses,0.05)$pvalues.2, file="datapath")
    }
  }
  }
}

make_plot=function(datapath){
  load("datapath")
  hist(data)
}