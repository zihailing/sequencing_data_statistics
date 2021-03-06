aligned_reads<-read.table("aligned_reads.txt",header=F)
raw_clean_reads<-read.table("raw_clean_reads.txt",header=F)
statistics_table<-merge(raw_clean_reads,aligned_reads,by=c("V1","V1"))
colnames(statistics_table)<-c("sample","raw_reads","clean_reads","mapped","uniquely_mapped")
statistics_table$mapped1<-paste(statistics_table$mapped,"(",round(statistics_table$mapped/statistics_table$raw_reads*100, digits=2),"%",")",sep="")
statistics_table$uniquely_mapped1<-paste(statistics_table$uniquely_mapped,"(",round(statistics_table$uniquely_mapped/statistics_table$raw_reads*100, digits=2),"%",")",sep="")
write.table(statistics_table, file="statistics_table", quote=FALSE, row.names=FALSE, sep="\t")
