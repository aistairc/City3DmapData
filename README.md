# Globally consistent 3D maps and sensor data in city.

City3DmapData provides the 3D maps and sensor data in a real city of Japan. 
These data are used for evaluation in article entiltled 
“Semi-Automatic Town-Scale 3D Mapping using Building Information from Publicly Available Maps” in IEEE Access 2022 (url).


# Requirements
The sensor data is recorded by robot operating system (ROS) record, and tested by following version.  
- [ROS melodic](http://wiki.ros.org/melodic/Installation)  

For visualization of 3D maps.
- [pcl 1.8.1](https://pointclouds.org/)

For visualization of pose graph.
- [evo](https://michaelgrupp.github.io/evo/)

# How to get data
Please check your free disk space enough and download the data by the following url.
“URL”

# Data structure
The dataset is stored in a separate directory for each route written in the paper.
```
data
└───route1
│   - sensor_data.bag 
│   - 3Dmap.pcd
│   - reference.tum 
│   - proposed_trajectory.tum
└───route2
│     ・
│     ・
│     ・
└───route6
```

# Details of the data

## sensor_data.bag
## 3Dmap.pcd
## reference_posegraph.tum
## estimated_posegraph.tum


# Examples
## How to visualize the data
- Sensor data
- 3D map
- Pose graph


# License
This dataset is allowed only for noncommercial usage. Please cite our paper when this dataset is used in your work. The specific terms for use are written in the LICENSE.md.
