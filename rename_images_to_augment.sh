#cd into directory
cd data/data_road/training/
mkdir lane
mkdir road
cd gt_augmented_image
for i in *_lane_*.png; do cp "$i" "../lane/${i/_lane/}"; done;
for i in *_road_*.png; do cp "$i" "../road/${i/_road/}"; done;
cd ..
mkdir augmented_image
mkdir gt_augmented_image
mv image_2/output/_* gt_augmented_image
mv image_2/output/* augmented_image
