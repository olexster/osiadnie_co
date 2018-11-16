s1 <- read.table("~/roboczy/osiadanie nogi co2/s1.txt", 
                 quote="\"", 
                 dec = ".",
                 comment.char="",
col.names = c("Nr:","X","Y","H")
)

s1$poziom<-cut(s1$H,2,labels = c("d","g"))
# pochylenie slupa 1
sr_okr(as.matrix(s1[which(s1$poziom=="g"),-c(1,4,5)]))-sr_okr(as.matrix(s1[which(s1$poziom=="d"),-c(1,4,5)]))
