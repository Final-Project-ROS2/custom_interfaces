# SAMDetections.msg
# Collection of SAM detections for a single frame

std_msgs/Header header           # Timestamp + frame_id (camera_link)
string image_id                  # Frame identifier (e.g., "frame_000042")

SAMDetection[] detections        # Array of individual detections

# Summary statistics
int32 total_detections           # Number of objects detected
float32 average_distance_cm      # Average distance in cm (-1.0 if unavailable)