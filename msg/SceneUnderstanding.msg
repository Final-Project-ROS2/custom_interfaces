# SceneUnderstanding.msg
# Complete scene understanding result

std_msgs/Header header           # Timestamp + frame_id
string scene_id                  # Scene identifier

# All objects in scene
SceneObject[] objects            # Array of all detected objects
int32 total_objects              # Number of objects in scene

# Spatial relationships
SceneRelation[] all_relations    # All pairwise spatial relations

# Scene summary
string scene_description         # Natural language scene description
string[] object_labels           # Unique object labels in scene
int32[] object_counts            # Count of each unique object type
int32 graspable_objects          # Number of objects with valid grasps

# Statistics
float32 average_distance_cm      # Average object distance
float32 scene_density            # Objects per square meter (if depth available)