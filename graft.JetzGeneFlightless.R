### Jetz Gene - flightless

library(phytools)
library(plyr)

source('~/Dropbox/Flightless_project/graft.replace.function.r', chdir = TRUE)

cat("Reading Tree","\n")

JG<-read.nexus("~/Dropbox/Flightless_project/Trees/All_Birds/Jetz_gene.nex")

cladeTree<-AnaJGF
	
cat("Anatidae\n")
	Ana_JG<-read.nexus("~/Dropbox/Flightless_project/Trees/Anatidae/JetzGeneFlightless/AnatidaeJetzGeneFlightless.nexus.t")
	AnaJG<-list()
	AnaJG<-Ana_JG[1:1000]
	AnaJGF<-llply(AnaJG,drop.tip,c("Dendrocygna_javanica","Anser_albifrons"),.progress="text")
	class(AnaJGF)<-"multiPhylo"


	JGF.1<-graft.replace(JG,AnaJGF)

	
# Rallidae
cat("Rallidae\n")

	RGF<-read.nexus("/Users/ryanterrill/Dropbox/Flightless_project/Trees/Rallidae/Rallidae_gene_plus_flightless/Rallidae_JetzGeneFlightless.nexus.t")
	RalJGF<-list()
	RalJGF<-RGF[1:1000]
	RalJGF<-llply(RalJGF,drop.tip,c("Grus_canadensis","Podiceps_cristatus"),.progress="text")
	class(RalJGF)<-"multiPhylo"

	JGF.2<-graft.replace(JGF.1,RalJGF)

	

# Anserinae
cat("Anserinae\n")
	Ans_JGF<-read.nexus("~/Dropbox/Flightless_project/Trees/Anseridae/JetzGeneFlightless/Anserinae_JetzGeneFLightless.nexus.t")
	AnsJGF<-list()
	AnsJGF<-Ans_JGF[1:1000]
	AnsJGF<-llply(AnsJGF,drop.tip,c("Anas_platyrhynchos","Dendrocygna_javanica"),.progress="text")
	class(AnsJGF)<-"multiPhylo"

	JGF.3<-graft.replace(JGF.2,AnsJGF)

	


# Ciconiidae
cat("Ciconiidae\n")
	Cic_JGF<-read.nexus("/Users/ryanterrill/Dropbox/Flightless_project/Trees/Ciconiidae/Jetz_Gene_Flightless/Ciconiidae_JetzGeneFlightless.nexus.t")
	CicJGF<-list()
	CicJGF<-Cic_JGF[1:1000]
	CicJGF<-llply(CicJGF,drop.tip,c("Gavia_immer","Theristicus_caudatus"),.progress="text")
	class(CicJGF)<-"multiPhylo"

JGF.4<-graft.replace(JGF.3,CicJGF)


# Columbidae
cat("Columbidae\n")
	Col_JGF<-read.nexus("/Users/ryanterrill/Dropbox/Flightless_project/Trees/Columbidae/JetzGeneFlightless/Columbidae_JetzGeneFlightless.nexus.t")
	ColJGF<-list()
	ColJGF<-Col_JGF[1:1000]
	ColJGF<-llply(ColJGF,drop.tip,c("Pterocles_gutturalis","Colius_striatus"),.progress="text")
	class(ColJGF)<-"multiPhylo"

	JGF.5<-graft.replace(JGF.4,ColJGF)



# Emberizidae
cat("Emberizidae\n")
	Emb_JGF<-read.nexus("~/Dropbox/Flightless_project/Trees/Emberizidae/JetzGeneFlightless/Emberizidae_p20b_JetzGeneFlightless.nexus.t")
	EmbJGF<-list()
	EmbJGF<-Emb_JGF[1:1000]
	EmbJGF<-llply(EmbJGF,drop.tip,c("Parula_pitiayumi","Coereba_flaveola"),.progress="text")
	class(EmbJGF)<-"multiPhylo"

	JGF.6<-graft.replace(JGF.5,EmbJGF)

# Falconidae
cat("Falconidae\n")
	Fal_JGF<-read.nexus("~/Dropbox/Flightless_project/Trees/Falconidae/JetzAllFlightless/Falconidae_JetzAllFlightless.nexus.t")
	FalJGF<-list()
	FalJGF<-Fal_JGF[1:1000]
	FalJGF<-llply(FalJGF,drop.tip,c("Tyto_alba","Parula_pitiayumi"),.progress="text")
	class(FalJGF)<-"multiPhylo"

	JGF.7<-graft.replace(JGF.6,FalJGF)


# Gruidae
cat("Guidae\n")
	Gru_JGF<-read.nexus("~/Dropbox/Flightless_project/Trees/Gruidae/JetzGeneFlightless/Gruidae_JetzGeneFlightless.nexus.t")
	GruJGF<-list()
	GruJGF<-Gru_JGF[1:1000]
	GruJGF<-llply(GruJGF,drop.tip,c("Psophia_viridis","Fulica_americana"),.progress="text")
	class(GruJGF)<-"multiPhylo"

	JGF.8<-graft.replace(JGF.7,GruJGF)


	
# Megapodidae
cat("Megapodidae\n")
	Meg_JGF<-read.nexus("~/Dropbox/Flightless_project/Trees/Megapodidae/JetzGeneFlightless/Megapodidae_JetzGeneFlightless.nexus.t")
	MegJGF<-list()
	MegJGF<-Meg_JGF[1:1000]
	MegJGF<-llply(MegJGF,drop.tip,c("Chauna_torquata","Gallus_gallus"),.progress="text")
	class(MegJGF)<-"multiPhylo"

	JGF.9<-graft.replace(JGF.8,MegJGF)


	
# Podicipedidae
cat("Podicipedidae\n")
	Pod_JGF<-read.nexus("~/Dropbox/Flightless_project/Trees/Podicipedidae/JetzGeneFlightless/Podicipedidae_JetzGene.nexus.t")
	PodJGF<-list()
	PodJGF<-Pod_JGF[1:1000]
	PodJGF<-llply(PodJGF,drop.tip,c("Phoenicopterus_ruber","Grus_japonensis"),.progress="text")
	class(PodJGF)<-"multiPhylo"

	JGF.10<-graft.replace(JGF.9,PodJGF)



#backbone trees

backbone_JGF<-read.nexus("~/Dropbox/Flightless_project/Trees/Backbone/backbone.nexus.t")
backboneJGF<-list()
backboneJGF<-backbone_JGF[1:1000]
class(backboneJGF)<-"multiPhylo"


# Upupa Antaios
cat("Upupidae\n")
	#extract Upupidae clade	
	
	Phoeniculidae<-read.csv("~/Dropbox/Flightless_project/Trees/Phoeniculidae.csv",header=F)

	Upu_JGF_nodes<-findMRCA(backboneJGF[[1]],c(as.vector(Phoeniculidae$V1),"Upupa_epops","Upupa_antaios"))	
	
	Upu_JGF_nodes<-unlist(Upu_JGF_nodes)
	
	Upu_JGF<-llply(backboneJGF,extract.clade,284,.progress="text")
	
	class(Upu_JGF)<-"multiPhylo"
	
	JGF.11<-graft.replace(JGF.10,Upu_JGF)
	
# Rhynochetos orarius
cat("Rhynochetidae\n")
	# extract Rhynochetidae
	
		Rhy_JGF_Nodes<-findMRCA(backboneJGF[[1]],c("Eurypyga_helias","Rhynochetos_jubatus","Rhynochetos_orarius"))	

		Rhy_JGF_nodes<-unlist(Rhy_JGF_Nodes)
		
		Rhy_JGF<-llply(backboneJGF,extract.clade,344,.progress="text")
		
		class(Rhy_JGF)<-"multiPhylo"
		
		JGF.12<-graft.replace(JGF.11,Rhy_JGF)
		

		
	
#Acanthisittidae
cat("Acanthisittidae\n")
	#extract Acanthisittidae
	
	Aca_Nodes<-findMRCA(backboneJGF[[1]],c("Dendroscansor_decurvirostris","Traversia_lyalli","Pachyplichas_yaldwyni","Acanthisitta_chloris","Xenicus_gilviventris"))	

	Aca_JGF<-llply(backboneJGF,extract.clade,200,.progress="text")
	
	class(Aca_JGF)<-"multiPhylo"
	
	JGF.13<-graft.replace(JGF.12,Aca_JGF)
	
		
cat("Saving Tree \n")		
write.nexus(JGF.13,file="~/Dropbox/Flightless_project/Trees/JGF_final.nexus")	
cat("Done.\n")
