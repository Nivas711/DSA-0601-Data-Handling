# Load library
library(igraph)

# Create graph
from <- c("A","A","B","C","C","D","E","F","G","H")
to   <- c("B","C","D","D","E","E","F","G","H","A")

g <- graph_from_data_frame(data.frame(from, to), directed = FALSE)

# -----------------------------------
# Q1. Create a Network Graph
# -----------------------------------
plot(g,
     main = "Network Graph")

# -----------------------------------
# Q2. Display Node Labels and
#     Customize Node Colors
# -----------------------------------
plot(g,
     vertex.label = V(g)$name,
     vertex.color = "skyblue",
     vertex.size = 30,
     edge.color = "black",
     main = "Network Graph with Labels")

# -----------------------------------
# Q3. Calculate Degree of Each Node
# -----------------------------------
deg <- degree(g)
print(deg)

# -----------------------------------
# Q4. Identify Node with Highest
#     Number of Connections
# -----------------------------------
max_node <- names(which.max(deg))
cat("Node with Highest Connections:", max_node, "\n")
cat("Degree:", max(deg), "\n")

# -----------------------------------
# Q5. Plot Network Using
#     Circular Layout
# -----------------------------------
plot(g,
     layout = layout_in_circle(g),
     vertex.color = "lightgreen",
     vertex.size = 30,
     vertex.label = V(g)$name,
     main = "Circular Layout Network")