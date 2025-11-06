# SceneObject.msg
# Complete object information in scene

string object_id                 # Unique object ID
string class_label               # CLIP classification label
float32 classification_conf      # CLIP confidence
int32[4] bbox                    # Bounding box [x1, y1, x2, y2]
int32[2] center                  # Center point [x, y]
float32 distance_cm              # Distance from camera
bool has_grasp                   # Whether grasp is available
float32 grasp_quality            # Grasp quality score (0 if no grasp)
SceneRelation[] relations        # Spatial relations to other objects