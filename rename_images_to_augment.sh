#cd into directory
cd data/data_road/training/
mkdir lane
mkdir road
cd gt_augmented_image
for i in *_lane_*.png; do cp "$i" "../lane/${i/_lane/}"; done;
for i in *_road_*.png; do cp "$i" "../road/${i/_road/}"; done;
