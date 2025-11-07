# GraspPose.msg
# Individual grasp pose for an object

string object_id                 # Object ID from detection
int32[4] bbox                    # Associated bounding box [x1, y1, x2, y2]
geometry_msgs/Point position     # Grasp position in 3D space
geometry_msgs/Quaternion orientation  # Grasp orientation
float32 quality_score            # Grasp quality [0-1]
float32 width                    # Gripper width in meters
string approach_direction        # "top", "side", "angle"