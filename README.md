# Astar_algorithm

Implementation of Astar algorithm and simulation using ROS-Gazebo.

## Authors

 1. Sri Manika Makam
 2. Pradeep Gopal

## Dependencies

1. Ubuntu 16.04
2. ROS kinetic
3. Gazebo 
4. catkin
5. Turtlebot3 packages

## Libraries:

1. math
2. numpy
3. time
4. matplotlib
5. Queue
6. argparse
7. rospy
8. geometry_msgs
9. std_msgs.msg

## Setup

Install turtlebot3-gazebo package by running the below command:

```
$ sudo apt install ros-kinetic-turtlebot3-gazebo
```

In your .bashrc file, include the following statements and source it.

```
source /opt/ros/kinetic/setup.bash
source ~/catkin_ws/devel/setup.bash
export TURTLEBOT3_MODEL=burger
```

Run the following commands:

```
$ cd ~/catkin_ws/
$ catkin_make
```

## Instructions to run

The inputs from user are coordinates of start point, orientation of start point (in degrees), coordinates of goal point, two RPM values and clearance. 

Robot radius is taken by default as 0.08 (which is half the distance between wheels of the robot). Theta (the angle between the action at each node) is taken as 15. The orientation of goal point is taken by default as 0. 

The total clearance is clearance given by user + 0.1 (minimum clearance).
Wheel radius is 33mm and distance between the wheels is 160mm for turtlebot3. 

Run roscore in one terminal. And in other terminal run the following command:

```
roslaunch astar_search test.launch x_pos:=4.5 y_pos:=4.5 yaw:=3.14
```
The start coordinates and goal coordinates should be given as negative of the coordinates as observed in right-handed system because the map given has negative axes. For example, if the robot start point is bottom left (-4.5,-4.5) in right-handed coordinate system, it should be given as (4.5,4.5). 

The x,y coordinates of start point should be given in arguments 'x_pos' and 'y_pos' respectively. And argument 'yaw' is (3.14 + orientation at start point in radians). This ensures the turtlebot to spawn at correct position and orientation in gazebo. 

## Demo

For video 1 (Phase4_video1.mp4):

start point = (4.5,3,0);
goal point = (0.5,3,0);
clearance = 0;
RPM values = (2,3)

The command to run is:
```
roslaunch astar_search test.launch x_pos:=4.5 y_pos:=3.0 yaw:=3.14
```

For video 2 (Phase4_video2.mp4):

start point = (4.5,4.5,0);
goal point = (-3.5,-3.5,0);
clearance = 0.3;
RPM values = (2,3)

The command to run is:
```
roslaunch astar_search test.launch x_pos:=4.5 y_pos:=4.5 yaw:=3.14
```

