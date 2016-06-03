##Code to bing all subclade trees

clade.depth<-function(backBoneTree,cladeTree){
	require(phytools)
	cladetips<-cladeTree$tip.label                                                    #get clade tips                                                       
	dropTips<-intersect(backBoneTree$tip.label,cladetips)  	                          #make list of tips to drop from backbone tree so you can leave one tip that is guaranteed to be in the backbone tree
	m<-findMRCA(backBoneTree,dropTips)												#get mrca of clade in backbone tree
	t<-extract.clade(backBoneTree,m)												#extract clade tree form backbone tree
	d<-branching.times(t)[1]
	return(d)
	}




replace.clade<-function(backBoneTree,cladeTree,cladeDepth){
	require(phytools)
	cladetips<-cladeTree$tip.label                                                    #get clade tips                                                       
	dropTips<-intersect(backBoneTree$tip.label,cladetips)  	                          #make list of tips to drop from backbone tree so you can leave one tip that is guaranteed to be in the backbone tree
	d<-cladeDepth														#find height of clader tree
	cladeTree$edge.length<-cladeTree$edge.length*d									#multiply branches of input clade tree by clade tree in backbone
	backBoneTree<-drop.tip(backBoneTree,dropTips[2:length(dropTips)])                 #leave the first tip in the backbone tree
	treeLength<-branching.times(cladeTree)[1]						                  # find total depth of Clade tree
	bindtip<-which(backBoneTree$tip.label==dropTips[1])                               #find the tip number
	backBoneTree$tip.label[bindtip]<-"Clade" 									      #rename the tip so it can be dropped later
	t<-match(which(backBoneTree$tip.label=="Clade"),backBoneTree$edge[,2])            #find edge length of recieving brach                            
	backBoneTree$edge.length[t] <-backBoneTree$edge.length[t]-treeLength              #cut receiving tip by length of clade tree		
	bound.tree<-bind.tree(backBoneTree,cladeTree,where=bindtip)
	return(bound.tree)
	}
	
	
#drop outgroups first	
	
fam.replace<-function(backBoneTree,cladeTree){

	out<-list()
	cd<-clade.depth(backBoneTree[[1]],cladeTree[[1]])
	for(i in 1:1000){
		out[[i]]<-replace.clade(backBoneTree[[i]],cladeTree[[i]],cd)
		}
	class(out)<-"multiPhylo"	
	return(out)	
	}	
		
