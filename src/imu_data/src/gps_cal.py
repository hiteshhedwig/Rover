import geopy.distance




coords_1 = (a, b)
coords_2 = (x, y)

print geopy.distance.vincenty(coords_1, coords_2).m
