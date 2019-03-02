# build classifier for names of "mandril" characters

library(tidyverse)
library(magrittr)

df <- read_csv("mandril_karakterer.csv")

# names to remove
stop_names = c("Anne Linnet","Arild og Abel","Casey og Jürgen Klins", "Chuck Tennyson & China Pete",
               "Det nye Linie 3" , "De tres tenorer", "Donnerdanserne", "Clausen", "Dadadaah", "Edgar", "Egern",
               "Gunrack-reparatøren", "Isak", "Josti & Steffen", "Kenzo-kuplen", "Kål Frederik & Lars Tærskeværk",
               "Mand fra Venezuela", "Regil & Sydorf", "Papa Bue's Viking Jazz Band", "Pelle Stærkhylster og Elvira Bo",
               "Saltefanden" , "Voksen Lars & Snøflen", "Tiramisu Sommerset & Ven", "Scottie", "Teatergruppe fra Odense",
               "Torsten", "Vagtmesteren", "Adolf Honningånde og Kuntekente Eriksen","Boris", "Casper", "De tre vise strandsten",
               "Drengen Ortmann", "Ebbe Karlmeyers (og unavngiven figur)", "Frans","Gentleman Finn","Hanenklee & Kreiler",
               "Hassan", "Henning", "Herold Bueflis og Kelly Bødker", "Hovedet i bordet", "Idéernes Venner", "Jimbo" , "Kenneth",
               "Kévin", "Laughing Eagle", "Louis the Liver", "Lusty Dave", "Machieu", "Mandrillen" , "Nonnie" , "Post & Post", 
               "Rektum", "Ricco", "Safir & Granat", "Satan", "Steen Bostrup-flutene", "Sune", "Tanja", "Terkel", "Tissmageren" ,
               "Torben" ,  "Trommedanser", "Vildere klovn!", "Vandrende pind", "Apple Jack", "Bjarne Goldbæk", "Bøllemis",
               "Dommer Keith", "Emma", "Finn Nørbygaard & Finn Nørbygaard", "Gerda", "Grenen Kim" , "Gunrack", "Hassefar",
               "Jean Tim & Jean Per", "Jimmy Naller og Bauditz", "Klovnen Liljan", "Kurt Thyboe & Kurt Thyboe" , "Lil-Babs" ,
               "London-Lars", "Lucy" , "Melissa", "Meyer", "Norm" , "Olsen", "Otto Leisner", "Pete, Poul og Mary", "Rami & Edvard", 
               "Rod Stewart","Rulle og Cromwell", "Sailor", "Satire John" , "Siam", "Simba", "Susse Wold", "Tarp-ekspeditionen",
               "Tronhjem","Ånden i vasken", "Bitten & Trold")

df %<>% filter(!Navn %in% stop_names)


write_csv(df, "mandril_karakterer_subset.csv")
