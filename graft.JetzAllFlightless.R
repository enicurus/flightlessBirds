### Jetz All

library(phytools)
library(plyr)

source('~/Dropbox/Flightless_project/graft.replace.function.r', chdir = TRUE)

cat("Reading Tree","\n")
JA<-read.nexus("~/Dropbox/Flightless_project/Trees/All_Birds/Jetz_all.nex")



cat("Rallidae","\n")

# Rallidae
	Ral_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Rallidae/Rallidae_JetzAllPastis/Rallidae_JetzAllPastis.nexus.t")
	RalJA<-list()
	RalJA<-Ral_JA[1:1000]
	RalJA<-llply(RalJA,drop.tip,c("Grus_canadensis","Podiceps_cristatus"),.progress="text")
	class(RalJA)<-"multiPhylo"

	JA.1<-graft.replace(JA,RalJA)
	
cat("Anatidae","\n")

# Anatide
	Ana_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Anatidae/JetzAllFlightless/Anatidae_JetzAllFlightless.nexus.t")
	AnaJA<-list()
	AnaJA<-Ana_JA[1:1000]
	AnaJA<-llply(AnaJA,drop.tip,c("Anser_albifrons_anser","Dendrocygna_javanica"),.progress="text")
	class(AnaJA)<-"multiPhylo"

	JA.2<-graft.replace(JA.1,AnaJA)
	
cat("Anserinae","\n")
	
# Anserinae
	Ans_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Anseridae/JetzAllFlightless/Anserinae_JetzAllFlightless.nexus.t")
	AnsJA<-list()
	AnsJA<-Ans_JA[1:1000]
	AnsJA<-llply(AnsJA,drop.tip,c("Anas_platyrhynchos","Dendrocygna_javanica"),.progress="text")
	class(AnsJA)<-"multiPhylo"

	JA.3<-graft.replace(JA.2,AnsJA)
	
cat("Ciconidae","\n")
	
# Ciconiidae
	Cic_JA<-read.nexus("/Users/ryanterrill/Dropbox/Flightless_project/Trees/Ciconiidae/Jetz_All_Flightless/Ciconiidae_JetzAll_Flightless.nexus.t")
	CicJA<-list()
	CicJA<-Cic_JA[1:1000]
	CicJA<-llply(CicJA,drop.tip,c("Gavia_immer","Theristicus_caudatus"),.progress="text")
	class(CicJA)<-"multiPhylo"

	JA.4<-graft.replace(JA.3,CicJA)
	
cat("Columbidae","\n")
	
# Columbidae
	Col_JA<-read.nexus("/Users/ryanterrill/Dropbox/Flightless_project/Trees/Columbidae/JetzAllFlightless/Columbidae_JetzAllFlightless.nexus.t")
	ColJA<-list()
	ColJA<-Col_JA[1:1000]
	ColJA<-llply(ColJA,drop.tip,c("Pterocles_gutturalis","Colius_striatus"),.progress="text")
	
	JA.5<-graft.replace(JA.4,ColJA)
	
cat("Emberizidae","\n")
	
# Emberizidae
	Emb_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Emberizidae/JetzGeneFlightless/Emberizidae_p20b_JetzGeneFlightless.nexus.t")
	EmbJA<-list()
	EmbJA<-Emb_JA[1:1000]
	EmbJA<-llply(EmbJA,drop.tip,c("Parula_pitiayumi","Coereba_flaveola"),.progress="text")
	JA.6<-graft.replace(JA.5,EmbJA)

cat("Falconidae","\n")

# Falconidae
	Fal_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Falconidae/JetzGeneFlightless/Falconidae_JetzGeneFLightless.nexus.t")
	FalJA<-list()
	FalJA<-Fal_JA[1:1000]
	FalJA<-llply(FalJA,drop.tip,c("Tyto_alba","Parula_pitiayumi"),.progress="text")
	
	JA.7<-graft.replace(JA.6,FalJA)
	
cat("Gruidae","\n")
	
# Gruidae
	Gru_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Gruidae/JetzGeneFlightless/Gruidae_JetzGeneFlightless.nexus.t")
	GruJA<-list()
	GruJA<-Gru_JA[1:1000]
	GruJA<-llply(GruJA,drop.tip,c("Psophia_viridis","Fulica_americana"),.progress="text")
	
	JA.8<-graft.replace(JA.7,FalJA)

cat("Megapodidae","\n")

# Megapodidae
	Meg_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Megapodidae/JetzGeneFlightless/Megapodidae_JetzGeneFlightless.nexus.t")
	MegJA<-list()
	MegJA<-Meg_JA[1:1000]
	MegJA<-llply(MegJA,drop.tip,c("Chauna_torquata","Gallus_gallus"),.progress="text")
	
	JA.9<-graft.replace(JA.8,MegJA)

cat("Podicipedidae","\n")


# Podicipedidae
	Pod_JA<-read.nexus("~/Dropbox/Flightless_project/Trees/Podicipedidae/JetzGeneFlightless/Podicipedidae_JetzGene.nexus.t")
	PodJA<-list()
	PodJA<-Pod_JA[1:1000]
	PodJA<-llply(PodJA,drop.tip,c("Phoenicopterus_ruber","Grus_japonensis"),.progress="text")
	
	JA.10<-graft.replace(JA.9,PodJA)


cat("Upupidae","\n")

backboneJA<-read.nexus("~/Dropbox/Flightless_project/Trees/Backbone/backbone.nexus.t")
backboneJA<-backboneJA[1:1000]
	
# Upupa Antaios
	#extract Upupidae clade	
	
	Phoeniculidae<-read.csv("~/Dropbox/Flightless_project/Trees/Phoeniculidae.csv",header=F)

	Upu_Ja_nodes<-findMRCA(backboneJA[[1]],c(as.vector(Phoeniculidae$V1),"Upupa_epops","Upupa_antaios"))	
	
	Upu_Ja_nodes<-unlist(Upu_Ja_nodes)
	
	Upu_JA<-llply(backboneJA,extract.clade,284,.progress="text")
	
	class(Upu_JA)<-"multiPhylo"
	
	JA.11<-graft.replace(JA.10,Upu_JA)
	
cat("Rhynochetidae","\n")
	
	
# Rhynochetos orarius
	# extract Rhynochetidae
	
		Rhy_JA_Nodes<-findMRCA(backboneJA[[1]],c("Eurypyga_helias","Rhynochetos_jubatus","Rhynochetos_orarius"))	

		Rhy_JA_nodes<-unlist(Rhy_JA_Nodes)
		
		Rhy_JA<-llply(backboneJA,extract.clade,344,.progress="text")
		
		class(Rhy_JA)<-"multiPhylo"
		
		JA.12<-graft.replace(JA.11,Rhy_JA)
		
cat("Acanthisittidae","\n")

	
#Acanthisittidae
	#extract Acanthisittidae
	
	Aca_Nodes<-findMRCA(backboneJA[[1]],c("Dendroscansor_decurvirostris","Traversia_lyalli","Pachyplichas_yaldwyni","Acanthisitta_chloris","Xenicus_gilviventris"))	

	Aca_JA<-llply(backboneJA,extract.clade,200,.progress="text")
	
	class(Aca_JA)<-"multiPhylo"
	
	JA.13<-graft.replace(JA.12,Aca_JA)
 
 
cat("Saving Tree","\n")
 
write.nexus(JA.12,file="~/Dropbox/Flightless_project/Jetz_all_Flightless.nexus") 
 #Done! Now run that shit through BayesTraits!	
