replace.clade<-function(backBoneTree,cladeTree){
	require(phytools)
	cladetips<-cladeTree$tip.label  #get clade tips
	cladeTree$root.edge<-1 #give clade tree an arbitrary root edge for binding, will be deleted in binding process
	#make list of tips to drop from backbone tree so you can leave one tip that is guaranteed to be in the backbone tree
	dropTips<-intersect(backBoneTree$tip.label,cladetips)
	dropTips<-dropTips[2:length(dropTips)] # leave the first tip in the backbone tree
	bindtip<-which(backBoneTree$tip.label==dropTips[1]) #find the tip number
	backBoneTree$tip.label[bindtip]<-"Clade" #rename the tip so it can be dropped later
	bound.tree<-bind.tree(backBoneTree,cladeTree,where=bindtip,position=1)
	bound.tree<-drop.tip(bound.tree,"Clade")
	return(bound.tree)
	}
	
#show tree with bound clade highlighted

clade<-tips(bound.tree,node=findMRCA(bound.tree,cladeTree$tip.label))
cladebranches<-which.edge(bound.tree,clade)	
	
clcolr <- rep("darkgrey", dim(bound.tree$edge)[1]) 
clcolr[cladebranches] <- "blue"
plot(bound.tree, lwd=3, edge.color=clcolr)
