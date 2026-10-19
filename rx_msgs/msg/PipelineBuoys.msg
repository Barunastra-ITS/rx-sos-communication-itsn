# /system/vehicle/usv/task2/pipeline_buoys — team extension for Task 2, not relayed to RoboCommand
# The two buoys at the ends of the Task 2 pipeline, as observed by the USV.
# Published as soon as one buoy is found and on every estimate change, repeated
# ~1 Hz (plain default QoS: reliable, volatile, keep_last 10) so a UUV that
# joins late still receives the newest positions from the repeat, before it dives.
std_msgs/Header header
# stamp = time of the newest observation (UTC); leave zero if the clock is not synced
# Course.course_id this observation belongs to
string course_id
# VehicleType constants; TYPE_USV only (the USV is the only publisher)
uint8 source_vehicle
# increases whenever the content changes
uint32 seq
# one pipeline buoy (WGS-84)
rx_msgs/LatLng buoy_a
# the other pipeline buoy
rx_msgs/LatLng buoy_b
# false while only one buoy has been found (put it in buoy_a)
bool buoy_b_valid
# which buoy shows the green light (the survey start)
uint8 ACTIVE_UNKNOWN = 0
uint8 ACTIVE_A = 1
uint8 ACTIVE_B = 2
uint8 active_buoy
# horizontal position error, metres; 0 = unknown
float32 uncertainty_m
