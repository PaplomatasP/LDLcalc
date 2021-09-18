# This .R file requires "data.table" and "caret" packages to run

# Read the .csv file
CsvRead<-function(CsvData){
  Data<-data.table::fread(CsvData)
  return(Data)
}

# Create partitions from your .csv file extracted data table
dataPartitions<-function(Data,partition){
  i<-caret::createDataPartition(Data$LDLd,p=partition,list=FALSE)
  trainData<-Data[i,]
  validationData <- Data[-i,]
  return(list("trainData" = trainData,"validationData" = validationData))
}

