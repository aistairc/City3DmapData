# Globally consistent 3D maps and sensor data in city.

This City3DmapData repositry provides the 3D maps and sensor data in a real city of Japan. 
<What purpose for use>
These data are used for evaluation in article entiltled 
“Semi-Automatic Town-Scale 3D Mapping using Building Information from Publicly Available Maps” in IEEE Access 2022 (url).
Please check your free disk space 33.4GB enough and download the data by the following url. “URL”

## Data structure
  The dataset is stored in a separate directory for each route written in the paper.
  ```
  data
  └───route1
  │   - sensor_data.bag 
  │   - 3Dmap.pcd
  │   - reference_posegraph.tum 
  │   - estimated_posegraph.tum
  └───route2
  │     ・
  │     ・
  │     ・
  └───route6
  ```

## Details of the data
### 1. Acquisition Platform
  **3D LIDAR** Velodyne VLP-16, 360 Horizontal Field of View (FOV) 15Hz  
  **6-axis IMU** Xsens MTi-300 AHRS, 200Hz  

### 2. sensor data
  The sensor data is recorded by rosbag format.  
  Topics:   
  - 3D LIDAR: `/velodyne_points_world_filtered [sensor_msgs/PointCloud2]` 
  - 6-axis IMU: `/imu/raw [sensor_msgs/Imu]`

### 3. 3Dmap
  The 3D map data is saved as Point Cloud Data ([PCD](https://pcl.readthedocs.io/projects/tutorials/en/latest/pcd_file_format.html)) file format.

### 4. posegraph
  Format `tum` - TUM RGB-D dataset trajectory format  
  Every row has 8 entries containing timestamp (in seconds), position and orientation (as quaternion) with each value separated by a space:  
  ~~~
  timestamp x y z q_x q_y q_z q_w
  ~~~
  More infos: [https://vision.in.tum.de/data/datasets/rgbd-dataset/file_formats](https://vision.in.tum.de/data/datasets/rgbd-dataset/file_formats)
  - reference_posegraph
    <description>
  - estimated_posegraph
    <description>


## How to visualize the data  
### Requirements  
  We used robot operating system (ROS), point cloud library (PCL) and evo scripts for visualization data, and teseted by following version.
  - [ROS melodic](http://wiki.ros.org/melodic/Installation)  
  - [pcl 1.8.1](https://pointclouds.org/)
  - [evo](https://michaelgrupp.github.io/evo/)
      
### Sensor data  
  Start the ROS visualization
  ~~~
  cd City3DmapData/launch/
  roslaunch City3DmapData visualize_sensordata.launch
  ~~~
  Play the rosbag in another terminal  
  ~~~
  cd route<num>
  rosbag play sensor_data.bag --clock
  ~~~

### 3D map  
  ~~~
  cd route<num>  
  pcl_viewer 3Dmap.pcd  
  ~~~

### Pose graph  
  ~~~
  cd route<num> 
  evo_traj tum --plot --plot_mode xy --ref reference_posegraph.tum estimated_posegraph.tum
  ~~~

## License
This dataset is allowed only for noncommercial usage. Please cite our paper if you use this dataset for your work. The specific terms for use are written in the LICENSE.md.
  ~~~
  @ARTICLE{XXX,
    author={Shun Niijima, Ryusuke Umeyama, Yoko Sasaki, Hiroshi Mizoguchi},
    journal={IEEE Access}, 
    title={Semi-Automatic Town-Scale 3D Mapping using Building Information from Publicly Available Maps}, 
    year={2022},
    volume={},
    number={},
    pages={},
    doi={}}
  ~~~
