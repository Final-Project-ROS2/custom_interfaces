# SAMDetection.msg
# Individual object detection from SAM

string object_id                 # Unique ID (e.g., "obj_0", "obj_1")
string class_name                # Object class or label (e.g., "object", "person", "cup")
float32 confidence               # Detection confidence [0-1]
int32[4] bbox                    # Bounding box [x1, y1, x2, y2]
int32[2] center                  # Center point [x, y]
int32 area                       # Contour area in pixels
float32 distance_cm              # Distance from camera in cm (-1.0 if unavailable)

# COCO AP-style IoU metrics (frame-to-frame tracking)
float32 iou_score                # IoU with previous frame [0-1] (0.0 if no match)
string matched_prev_id           # ID of matched detection from previous frame (empty if no match)
bool is_stable_detection         # True if IoU >= 0.5 (COCO AP threshold)

sensor_msgs/Image mask           # Binary segmentation mask (mono8 encoding)
