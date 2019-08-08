# load and save 
loadRData <- function(path, type){

	load(paste(path,type,".RData",sep=""))

	for (i in ls()){
		if(i!="type" & i!="path") {  write.csv( get(i), paste(path,type,"/",i,".csv",sep=""))  } 
}
}


major_path<-"C:/Users/David/Desktop/Applied_Predictive_Modeling_Python/data/"
rdata<- Sys.glob(paste(major_path,"*.RData", sep=""))

for (i in rdata){
	sp1<- strsplit(i,"/")
	type<-strsplit(unlist(sp1)[7], ".RData")
	# this generates a type variable string
	#print(type)

	loadRData(major_path, type)
	
}



