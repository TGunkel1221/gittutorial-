theme_GunkelPresents <- function(){
  theme_linedraw(base_size=28,base_family="Arial")%+replace%
    theme(
      plot.title=element_text(hjust=0.5,vjust=4.5),
      axis.title.x=element_text(size=28,color="black",vjust=-2.5),
      panel.background = element_rect(fill="black"),
      axis.title.y=element_text(size=28,color="black",hjust=-5),
      legend.background=element_rect(fill="black"),
      legend.title=element_text(color="white"),
      title=element_text(size=28,color="black"),
      plot.background=element_rect(fill="transparent",color="black"),
      panel.grid=element_line(color="white"),
      legend.text=element_text(color="white",size=15),
      axis.text.x=element_text(size=15),
      axis.text.y=element_text(size=15),
      legend.key=element_rect(fill="black")
    )
}

ggplot()+geom_point(data=mpg,aes(x=cty,y=hwy,color=factor(cyl)))+
  labs(title="#PresentationStyle",x="City",y="Highway",legend="Factor(Cyl)")+
  theme_GunkelPresents()



theme_GunkelPaper <- function(){
  theme_linedraw(base_size=28,base_family="Arial")%+replace%
    theme(
      plot.title=element_text(hjust=0.5,vjust=4.5),
      axis.title.x=element_text(size=28,color="black",vjust=-2.5),
      panel.background = element_rect(fill="white"),
      axis.title.y=element_text(size=28,color="black",hjust=-5),
      legend.background=element_rect(fill="white"),
      legend.title=element_text(color="black"),
      title=element_text(size=28,color="black"),
      plot.background=element_rect(fill="transparent",color="white"),
      panel.grid=element_line(color="black"),
      legend.text=element_text(color="black",size=15),
      axis.text.x=element_text(size=15),
      axis.text.y=element_text(size=15),
      legend.key=element_rect(fill="white")
    )
}

ggplot()+geom_point(data=mpg,aes(x=cty,y=hwy,shape=factor(cyl)))+
  labs(title="#PaperStyle",x="City",y="Highway",legend="Factor(Cyl)")+
  theme_GunkelPaper()