cmake_minimum_required(VERSION 3.8)
project(custom_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies

# add find packags here and dependencies above
find_package(ament_cmake REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "srv/GetTranscript.srv"
  "srv/PixelToReal.srv"
  "srv/ClassifyBBox.srv"
  "srv/ClassifyAll.srv"
  "srv/DetectObjects.srv"
  "srv/DetectGrasps.srv"
  "srv/DetectGraspBBox.srv"
  "srv/UnderstandScene.srv"
  "srv/GetSetBool.srv"
  "srv/FindObject.srv"
  "srv/ClassifyBBoxFiltered.srv"
  "srv/FindObjectReal.srv"
  "srv/FindObjectGrasp.srv"

  "action/MoveitPose.action"
  "action/SetJointAngles.action"
  "action/Prompt.action"
  "action/MoveitRelative.action"
  "action/GetCurrentPose.action"
  "action/GetJointAngles.action"
  "action/PlanComplexCartesianSteps.action"

  "msg/SAMDetection.msg"
  "msg/SAMDetections.msg"
  "msg/CLIPClassification.msg"
  "msg/GraspPose.msg"
  "msg/GraspDetections.msg"
  "msg/SceneRelation.msg"
  "msg/SceneObject.msg"
  "msg/SceneUnderstanding.msg"
  
  DEPENDENCIES geometry_msgs
  DEPENDENCIES std_msgs
  DEPENDENCIES sensor_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
