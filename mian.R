s1 <- read.table("~/roboczy/osiadanie nogi co2/s1.txt", 
                 quote="\"", 
                 dec = ".",
                 comment.char="",
col.names = c("Nr:","X","Y","H")
)

s1$poziom<-cut(s1$H,2,labels = c("d","g"))
sr_okr()
