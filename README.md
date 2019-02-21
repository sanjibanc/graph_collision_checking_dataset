# Learning Graph Collision Checking Policies

Official datasets for evaluating collision checking policies listed in the package [matlab_learning_collision_checking](https://github.com/sanjibac/matlab_learning_collision_checking)

## Related Publications
1.[Near-Optimal Edge Evaluation in Explicit Generalized Binomial Graphs (NIPS 2017)](https://arxiv.org/pdf/1706.09351.pdf)

## Dataset Types
The datasets span a spectrum of planning problems such as
1. 2D geometric planning
2. 3D (x,y,heading) non-holonomic planning of a dubin's vehicle
3. 4D (x,y,z,heading) non-holonomic planning of an autonomous helicopter
4. 7D robotic arm planning

In addition, some of the datasets are synthetic bernoulli decision region determination problems.

## Dataset Format
Each dataset folder contains .mat files which are used by the MATLAB code base. However, equivalent .dat files are provided to support other codebases. 

The files are as follows:
1. graph.txt: The explicit graph used to collect data. The format is as follows:
+ NumVertices: <number of vertices>
+ NumEdges: <number of edges>
+ <edge_id> <parent_vertex> <child_vertex> <edge_id>

2. start_idx.dat, goal_idx.dat: Start and goal id

3. coll_check_results.dat: Binary matrix (num_worlds x number of edges) where 0 is invalid and 1 is valid

4. path_library.dat: Library of paths to select from. The format is as follows:
Each line is a set of vertex ids which define the path. The first id is start_id and last id is goal_id

5. world_library_assignment.dat: Binary matrix (num_worlds x number of paths) where 1 implies the path is valid in the world. 

Optionally for 2D environments, we have additional files:
1. coord_set.mat: The 2D coordinate corresponding to each vertex
2. environment_images: The 2D png image on which planning is done (from lower left to upper right). 
