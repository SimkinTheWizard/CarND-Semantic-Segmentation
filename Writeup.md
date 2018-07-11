# Self Driving Car Nanodegree Project - 12 : Semantic Segmentation

## Model

For semantic task an I used an autoencoder network. The autoencoder network build on VGG-16 as encoder side, and additional transpose convolution layers as decoder side. The transpose convolution layers extend the VGG-16 after the 7th layer. There are also skip connections from the 3rd and 4th layer of VGG-16 to the transpose convolution layers with corresponding sizes for finer solutions.

The autoencoder networks encoder part compresses the incomming image data to represent it in a lower dimension, (i.e. road, and non-road parts) and the decoder part extends this information to the pixels.

For the training part I used an Adam optimizer that minimizes the cross entropy loss that is defined as the cross enrtopy between supplied ground truth and predictions.


### Performance Improvement Attempts

At the beginning I was having problems network exceeding the tried freezing some layers of the VGG-16 since it is pre-trained. However the results were sub-par. So I migrated to a GPU with more memory. 


## Data Augmentation

I implemented 'Augmentor' package for augmenting data. This is a practical tool for augmenting images. I added small rotations, zooms, shear, and left-right flip operations for increasing the data size.

## Parameter Tuning
I begin with a relatively high learning rate (0.0005) and keep probability (0.8) and 30 epochs. The model reached small errors but the results were grainy and not very nice. I gradually decreased the keep probability because the network was overfitting. I also adjusted the learning rate and epochs to better learn the data.

## Results

The results of the best run is given in the combined gif below.
![(The gif takes a while to load. Please download to see it.)](./best_run.gif "The result of the best run")
