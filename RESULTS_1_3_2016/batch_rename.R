#!/usr/bin/Rscript
#batch rename
oldstring <- readLines("../old_taxa_names.txt")
newstring <- readLines("../new_taxa_names.txt")
directory <- dir(pattern = "startrees_output.tre_consnesus.tre$")
for (j in 1:length(directory)) {
  treefile <- readLines(directory[j])
  for (i in 1:length(oldstring)) {
    newtreefile <- sub(oldstring[i],newstring[i],treefile)
    treefile <- newtreefile
  }
  filename <- paste("taxas_name_changed_",directory[j],".tre",sep = "")
  write(treefile,filename)
}
