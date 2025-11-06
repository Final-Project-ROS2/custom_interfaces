# GraspDetections.msg
# Complete pipeline results: SAM + CLIP + GraspNet
# Published to /vision/grasp_detections topic

std_msgs/Header header           # Timestamp + frame_id
string image_id                  # Frame identifier

# Detection data
string[] object_ids              # Object IDs from SAM
int32[] bbox_x1                  # Bounding boxes
int32[] bbox_y1
int32[] bbox_x2
int32[] bbox_y2
string[] class_labels            # Classification labels from CLIP
float32[] classification_conf    # CLIP confidence scores
GraspPose[] grasp_poses          # Grasp poses from GraspNet

# Summary
int32 total_objects              # Number of detected objects
int32 total_grasps               # Number of valid grasps