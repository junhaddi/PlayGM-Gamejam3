if (image_scale < 1) {
	image_scale += 0.1;
	if (image_scale > 1) {
		image_scale = 1;
	}
}
image_xscale = image_scale;
image_yscale = image_scale;