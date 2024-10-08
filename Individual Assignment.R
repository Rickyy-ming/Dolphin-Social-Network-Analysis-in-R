# Load required packages
library(igraph)



# Load the Dolphin social network data
dolphin=read.csv('dolphins.csv',header=T)

#Create graph from edge list, specifying graph as undirected
dolphinGraph = graph_from_data_frame(dolphin,directed =F)
#Eliminate self-loops
DSG = simplify(dolphinGraph)


#Requirement 1:
## First Layout
plot(DSG,layout = layout.reingold.tilford(DSG, circular=T),vertex.shape = 'sphere',
     vertex.color = 'white',
     vertex.label.color='black',vertex.label.cex = 0.65,vertex.label.dist=.3)

## Second Layout
plot(DSG,layout = layout.fruchterman.reingold(DSG),
     vertex.color = 'white',
     vertex.label.color='black',vertex.label.cex = 0.55,vertex.shape = 'sphere')

## Third Layout
plot(DSG,layout = layout_as_tree(DSG),
     vertex.color = 'white',
     vertex.label.color='black',vertex.label.cex = 0.55,vertex.shape = 'sphere',vertex.size=10)

#Requirement 2:
##Obtain Graph Density
graph.density(DSG)

#Requirement 3:
##Obtain Degree centrality
degree(DSG)

#Requirement 4:
## Obtain Betweenness Centrality Metric
betweenness(DSG)


#Requirement 5:
## Identify the largest connected component in the network
largest.cliques(DSG)
## Obtain the size of the largest connected component
clique.number(DSG)
## Obtain the diameter of largest connected component
diameter(DSG,unconnected = T)
