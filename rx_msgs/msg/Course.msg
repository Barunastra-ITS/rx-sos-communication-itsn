# /system/mission/course — pre-run course configuration (GCS -> all vehicles)
# Mirrors robocommand.robotx.v1.RxCourse; uav_geofence is a team extension
# relayed by the GCS from the team's RunDeclaration.
string course_id
uint32 pinger_freq_hz
rx_msgs/LatLng[] boundary
rx_msgs/LatLng[] uav_geofence
# Area beyond the boundary a UAV may also use (Garuda's transit area: takeoff,
# landing and the way to and from the course); closed like boundary. Every
# uav_geofence point lies within boundary or this. Empty: within boundary alone.
rx_msgs/LatLng[] uav_transit_area
# Ceiling of uav_geofence in meters HAE (team extension, from the RunDeclaration)
float64 uav_geofence_max_altitude_hae_m
