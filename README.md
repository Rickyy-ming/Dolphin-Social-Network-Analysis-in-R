Dolphin Social Network Analysis

This project explores the social interactions of dolphins by analyzing a network graph built from the provided dataset. The project applies various graph layouts, calculates centrality metrics, and identifies key features like the largest connected component and graph density.



Table of Contents

	1.	Project Overview
	2.	Features
	3.	Setup Instructions
	4.	How It Works
	5.	Technologies Used
	6.	Example Usage
	7.	Future Improvements
	8.	License



 Project Overview

The Dolphin Social Network Analysis examines the relationships between dolphins in a social network using graph theory and network analysis techniques. By visualizing the network and calculating metrics like centrality and density, this analysis identifies key dolphins and insights about their social structure.

The dataset is represented as an edge list where each row indicates an interaction between two dolphins.


Features

	1.	Graph Visualization:
	•	Three distinct layouts for visualizing the dolphin social network:
	•	Circular layout using Reingold-Tilford.
	•	Fruchterman-Reingold force-directed layout.
	•	Tree layout for hierarchical representation.
	2.	Network Metrics:
	•	Graph Density: Measures the overall connectedness of the network.
	•	Degree Centrality: Identifies dolphins with the most connections.
	•	Betweenness Centrality: Highlights dolphins that act as bridges within the network.
	3.	Connected Components:
	•	Identifies the largest connected component (clique) in the network.
	•	Calculates its size and diameter.



 How It Works

	1.	Graph Creation:
	•	The dataset is loaded and converted into a graph object using igraph.
	•	The graph is simplified to eliminate self-loops for cleaner analysis.
	2.	Graph Visualization:
	•	Three layouts are used to visualize the network:
	•	Circular Layout: Emphasizes cyclical connections.
	•	Force-Directed Layout: Reveals natural clustering.
	•	Tree Layout: Shows a hierarchical structure.
	3.	Network Metrics:
	•	Graph Density: Calculated using graph.density() to measure overall connectivity.
	•	Degree Centrality: Uses degree() to find the most connected nodes.
	•	Betweenness Centrality: Computed with betweenness() to identify bridge nodes.
	4.	Largest Connected Component:
	•	Largest Clique: Found using largest.cliques().
	•	Clique Size: Obtained via clique.number().
	•	Diameter: Calculated using diameter().


 Future Improvements

	1.	Dynamic Visualizations:
	•	Integrate ggraph or visNetwork for interactive network visualizations.
	2.	Community Detection:
	•	Apply clustering algorithms like Louvain or Girvan-Newman for deeper insights into dolphin subgroups.
	3.	Temporal Analysis:
	•	Extend the analysis to include changes in interactions over time.
	4.	Node Attributes:
	•	Incorporate additional dolphin attributes (e.g., age, gender) for more detailed analysis.
