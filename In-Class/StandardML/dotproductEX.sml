exception notSameLength;
fun dotproduct(nil, nil) = 0.0
	| dotproduct(nil, y) = raise notSameLength
	| dotproduct(x, nil) = raise notSameLength
	| dotproduct(xh::xt,yh::yt) = xh*yh + dotproduct(xt,yt)