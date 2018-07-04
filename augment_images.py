import Augmentor

p = Augmentor.Pipeline('./data/data_road/training/image_2/')
p.ground_truth('./data/data_road/training/road/')
p.ground_truth('./data/data_road/training/lane/')

p.rotate(probability=0.5, max_left_rotation=10, max_right_rotation=10)
p.zoom(probability=0.5, min_factor=1.1, max_factor=1.6)
p.shear(probability=0.5,max_shear_left=10,max_shear_right=10)
p.flip_left_right(probability=0.5)
p.sample(2000,multi_threaded=False)