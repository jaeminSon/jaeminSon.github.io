import open3d as o3d
import numpy as np

# load a sample point cloud in open3d
ply_point_cloud = o3d.data.PLYPointCloud() 
point_cloud = o3d.io.read_point_cloud(ply_point_cloud.path)

assert np.array(point_cloud.points).shape == (196133, 3) # (x,y,z) for 196133 points 
assert np.array(point_cloud.colors).shape == (196133, 3) # RGB for 196133 points 

o3d.visualization.draw_geometries([point_cloud],
                                  zoom=0.3412,
                                  front=[0.4257, -0.2125, -0.8795],
                                  lookat=[2.6172, 2.0475, 1.532],
                                  up=[-0.0694, -0.9768, 0.2024])
