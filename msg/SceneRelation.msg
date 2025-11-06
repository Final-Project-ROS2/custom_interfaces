# SceneRelation.msg
# Spatial relationship between two objects

string subject_id                # ID of the subject object (e.g., "obj_0")
string subject_label             # Label of subject (e.g., "cup")
string relation                  # Spatial relation (e.g., "left_of", "above", "behind")
string object_id                 # ID of the related object (e.g., "obj_1")
string object_label              # Label of related object (e.g., "bottle")
float32 confidence               # Confidence of this relation [0-1]
float32 distance_2d              # 2D pixel distance between objects
float32 distance_3d              # 3D distance in meters (-1.0 if unavailable)