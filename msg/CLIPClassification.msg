# CLIPClassification.msg
# CLIP classification result for a single region

std_msgs/Header header
string image_id
int32[4] bbox            # [x1, y1, x2, y2]
string label             # Top prediction
float32 confidence       # Confidence [0-1]
string all_labels        # JSON string with all predictions