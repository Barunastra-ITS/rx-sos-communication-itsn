# /system/vehicle/usv/waypoints — team extension, not relayed to RoboCommand
# Ordered waypoint list the USV hands over to the UAV.
# Publish on every change, repeated ~1 Hz (plain default QoS: reliable,
# volatile, keep_last 10) so a UAV that joins late still receives the newest list.
std_msgs/Header header
# Course.course_id this list belongs to
string course_id
# increases whenever the content changes
uint32 seq
# waypoints in visiting order (WGS-84, latitude/longitude only)
rx_msgs/LatLng[] waypoints
