module drawBasicShape(x1, y1, x2, y2, width)
{
	length = sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
	if (width!=0.0) {
		square(size = [width, length], center = false);
		translate([width/2.0, 0, 0]) circle(d=width);
		translate([width/2.0, length, 0]) circle(d=width);
	}
}

module translateAndRotate(x1, y1, x2, y2, width)
{
	if (width != 0.0) {
		angle = atan((y2-y1)/(x2-x1)) +270;
		if (x2>=x1) {
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle]) translate([-width/2.0, 0.0, 0.0]) drawBasicShape(x1, y1, x2, y2, width);
		}
		else {
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle+180]) translate([-width/2.0, 0.0, 0.0]) drawBasicShape(x1, y1, x2, y2, width);		}
	}
}

$fn=50;

points0 = [
[98.42300000, 91.89400000, 0.00000000],
[98.67700000, 92.15200000, 0.63260182],
[96.59400000, 94.39200000, 0.63273914],
[95.48700000, 95.69400000, 0.63248553],
[94.98100000, 96.34500000, 0.63266657],
[94.52200000, 96.98500000, 0.63281554],
[94.10900000, 97.61800000, 0.63280952],
[93.74600000, 98.24500000, 0.63238370],
[93.43500000, 98.86400000, 0.63287831],
[93.17800000, 99.47700000, 0.63207305],
[92.97500000, 100.08200000, 0.63302777],
[92.82600000, 100.68200000, 0.63237716],
[92.73100000, 101.27800000, 0.63263717],
[92.69000000, 101.87300000, 0.63250402],
[92.70300000, 102.46900000, 0.63295259],
[92.76900000, 103.07000000, 0.63214933],
[92.88900000, 103.67600000, 0.63278157],
[93.06300000, 104.28900000, 0.63269593],
[93.28900000, 104.90900000, 0.63312026],
[93.56700000, 105.53700000, 0.63210497],
[93.89300000, 106.17100000, 0.63266906],
[94.26400000, 106.81100000, 0.63249024],
[94.67900000, 107.46200000, 0.63292961],
[95.38200000, 108.44800000, 0.63241350],
[95.10300000, 108.66900000, 0.63271971],
[94.31500000, 107.72500000, 0.63260390],
[93.84600000, 107.09800000, 0.63294208],
[93.41700000, 106.46500000, 0.63229096],
[93.03300000, 105.82700000, 0.63269570],
[92.69800000, 105.18300000, 0.63263819],
[92.41700000, 104.53200000, 0.63249793],
[92.19300000, 103.87500000, 0.63272712],
[92.03000000, 103.21100000, 0.63218059],
[91.93100000, 102.54300000, 0.63320303],
[91.89800000, 101.87000000, 0.63218046],
[91.93100000, 101.19600000, 0.63279756],
[92.03200000, 100.52200000, 0.63243515],
[92.19800000, 99.85100000, 0.63320065],
[92.42900000, 99.18200000, 0.63188674],
[92.72100000, 98.51900000, 0.63308157],
[93.07200000, 97.86000000, 0.63235867],
[93.47800000, 97.20700000, 0.63302566],
[93.93600000, 96.55800000, 0.63240414],
[94.44100000, 95.91400000, 0.63272330],
[94.98900000, 95.27400000, 0.63259432],
[95.57400000, 94.63700000, 0.63267492],
[96.18900000, 94.00600000, 0.63241029],
[97.50400000, 92.74200000, 0.63263809],
[98.37900000, 91.93500000, 0.63258978],
[101.92300000, 80.53000000, 0.00000000],
[102.27800000, 80.78500000, 0.63227976],
[103.04100000, 81.47800000, 0.63247628],
[103.62000000, 82.18200000, 0.63299133],
[104.02800000, 82.90200000, 0.63269050],
[104.27300000, 83.63800000, 0.63227247],
[104.36300000, 84.38200000, 0.63282120],
[104.31300000, 85.12600000, 0.63242371],
[104.14100000, 85.86200000, 0.63311722],
[103.86400000, 86.58900000, 0.63260582],
[103.49900000, 87.30700000, 0.63262495],
[103.06000000, 88.01700000, 0.63237256],
[102.56100000, 88.72000000, 0.63275804],
[102.01400000, 89.41600000, 0.63218944],
[100.81300000, 90.79700000, 0.63269258],
[98.27100000, 93.49400000, 0.63270170],
[97.06200000, 94.80700000, 0.63236740],
[95.97200000, 96.08800000, 0.63279105],
[95.48200000, 96.71900000, 0.63243249],
[95.03800000, 97.33800000, 0.63271653],
[94.64200000, 97.94600000, 0.63272216],
[94.29600000, 98.54200000, 0.63258050],
[94.00300000, 99.12600000, 0.63260474],
[93.76300000, 99.69700000, 0.63309797],
[93.57500000, 100.25700000, 0.63207481],
[93.43900000, 100.80600000, 0.63294574],
[93.35300000, 101.34900000, 0.63196062],
[93.31600000, 101.88800000, 0.63277046],
[93.32700000, 102.42800000, 0.63304020],
[93.38700000, 102.97400000, 0.63287706],
[93.49700000, 103.53000000, 0.63201649],
[93.65800000, 104.09600000, 0.63325462],
[93.86900000, 104.67600000, 0.63212550],
[94.13100000, 105.26800000, 0.63227995],
[94.44100000, 105.87100000, 0.63331128],
[94.79700000, 106.48600000, 0.63240641],
[95.19800000, 107.11200000, 0.63246446],
[96.10100000, 108.38100000, 0.63284376],
[97.11300000, 109.67800000, 0.63240609],
[98.70200000, 111.65700000, 0.63271888],
[99.71400000, 112.99600000, 0.63259294],
[100.17500000, 113.66700000, 0.63227952],
[100.59300000, 114.34300000, 0.63261568],
[100.95700000, 115.02200000, 0.63313890],
[101.25400000, 115.70700000, 0.63230166],
[101.47000000, 116.39700000, 0.63283694],
[101.59000000, 117.09300000, 0.63269767],
[101.59700000, 117.79400000, 0.63197719],
[101.47400000, 118.49300000, 0.63290439],
[101.20900000, 119.18500000, 0.63270566],
[100.69400000, 120.02500000, 0.63247655],
[109.65000000, 120.02500000, 0.63259520],
[109.65000000, 120.62500000, 0.63254126],
[90.35000000, 120.62500000, 0.63261863],
[90.35000000, 120.02500000, 0.63264148],
[99.86400000, 120.02500000, 0.63264797],
[100.30500000, 119.51000000, 0.63251488],
[100.65200000, 118.91600000, 0.63294226],
[100.85000000, 118.33100000, 0.63185896],
[100.91800000, 117.75500000, 0.63283501],
[100.87200000, 117.18200000, 0.63303447],
[100.72600000, 116.60600000, 0.63199391],
[100.49000000, 116.02700000, 0.63306439],
[100.17500000, 115.44200000, 0.63257219],
[99.79000000, 114.85300000, 0.63275509],
[99.34700000, 114.25900000, 0.63222076],
[98.85600000, 113.66200000, 0.63257012],
[98.32700000, 113.06100000, 0.63319828],
[95.45000000, 110.00700000, 0.63255467],
[94.33800000, 108.74700000, 0.63262291],
[93.82200000, 108.10900000, 0.63282308],
[93.33700000, 107.46000000, 0.63231272],
[92.89000000, 106.80200000, 0.63268105],
[92.48700000, 106.13300000, 0.63279965],
[92.13300000, 105.45100000, 0.63230296],
[91.83300000, 104.75700000, 0.63270818],
[91.59300000, 104.05000000, 0.63253592],
[91.41700000, 103.33200000, 0.63294206],
[91.30900000, 102.60400000, 0.63244565],
[91.27200000, 101.87000000, 0.63247936],
[91.30900000, 101.13400000, 0.63254805],
[91.41800000, 100.40100000, 0.63315219],
[91.59800000, 99.67300000, 0.63237713],
[91.84700000, 98.95400000, 0.63239834],
[92.15900000, 98.24600000, 0.63299198],
[92.53000000, 97.54800000, 0.63256391],
[92.95700000, 96.86100000, 0.63238292],
[93.43400000, 96.18500000, 0.63297925],
[93.95700000, 95.51800000, 0.63275019],
[94.52100000, 94.85900000, 0.63246629],
[95.12100000, 94.20700000, 0.63214963],
[95.74900000, 93.56300000, 0.63287190],
[97.07500000, 92.28700000, 0.63271211],
[99.78700000, 89.78600000, 0.63256299],
[101.03900000, 88.55700000, 0.63266169],
[101.60900000, 87.94500000, 0.63285672],
[102.12400000, 87.33700000, 0.63237275],
[102.57600000, 86.73500000, 0.63284419],
[102.95300000, 86.13700000, 0.63219570],
[103.24500000, 85.54600000, 0.63279402],
[103.44300000, 84.96000000, 0.63228653],
[103.53800000, 84.37700000, 0.63311629],
[103.51700000, 83.78700000, 0.63198309],
[103.36400000, 83.18400000, 0.63321827],
[103.05500000, 82.56100000, 0.63206278],
[102.57000000, 81.92100000, 0.63316287],
[101.88700000, 81.26700000, 0.63245863],
[100.98900000, 80.60500000, 0.63248692],
[99.91900000, 79.97500000, 0.63253868],
[90.35000000, 79.97500000, 0.63264081],
[90.35000000, 79.37500000, 0.63264148],
[109.65000000, 79.37500000, 0.63261863],
[109.65000000, 79.97500000, 0.63264148],
[102.10100000, 79.97500000, 0.63260505],
[101.94100000, 80.47300000, 0.63281791],
[101.72500000, 80.87800000, 0.00000000],
[100.99300000, 79.94500000, 0.00000000],
[100.10400000, 79.70300000, 0.63295876],
[103.15300000, 82.13900000, 0.00000000],
[103.34300000, 82.38000000, 0.63329865],
[103.70000000, 83.05400000, 0.63251793],
[103.89700000, 83.72500000, 0.63288569],
[103.95000000, 84.39300000, 0.63251264],
[103.87000000, 85.07800000, 0.63200766],
[103.68600000, 85.72300000, 0.63307299],
[103.35900000, 86.47300000, 0.63278540],
[103.35000000, 86.46800000, 0.00000000],
[103.02500000, 87.04100000, 1.24502816],
[102.57800000, 87.69700000, 1.24565727],
[102.06900000, 88.35300000, 1.24407106],
[101.51300000, 89.00200000, 1.24450822],
[100.27900000, 90.31300000, 1.24559042],
[98.77200000, 91.80300000, 1.24499324],
[95.04300000, 95.72200000, 0.00000000],
[94.70500000, 96.13700000, 0.63387658],
[94.22300000, 96.77900000, 0.63225731],
[93.79200000, 97.41500000, 0.63230939],
[93.40400000, 98.06300000, 0.63279963],
[93.07800000, 98.69200000, 0.63287302],
[92.80300000, 99.32900000, 0.63253855],
[92.58700000, 99.96600000, 0.63215806],
[92.42900000, 100.60100000, 0.63279518],
[92.33100000, 101.23600000, 0.63239556],
[92.29400000, 101.86000000, 0.63262164],
[92.31700000, 102.50500000, 0.63246187],
[92.40000000, 103.13900000, 0.63288908],
[92.53800000, 103.76200000, 0.63288028],
[92.73500000, 104.39600000, 0.63272515],
[92.89400000, 104.79800000, 0.63221501],
[95.43600000, 108.80400000, 0.00000000],
[96.01000000, 109.49700000, 1.24511615],
[98.74800000, 112.67100000, 1.24518245],
[99.27300000, 113.31400000, 1.24522856],
[99.69100000, 113.86900000, 1.24477367],
[99.69400000, 113.86600000, 0.00000000],
[100.18100000, 114.58000000, 0.63242526],
[100.55400000, 115.21000000, 0.63267489],
[100.86600000, 115.85100000, 0.63267283],
[101.09400000, 116.48800000, 0.63234667],
[101.23000000, 117.12600000, 0.63255917],
[101.25800000, 117.75900000, 0.63257424],
[101.22700000, 117.97300000, 0.63284036],
];

translate([0.0, 0.0, 0.40000000]) {
	linear_extrude(height = 0.40000000, center = false, convexity = 10, twist = 0) {
		union() {
			for( i=[0:len(points0)-2] ){ 
				x1 = points0[i][0];
				y1 = points0[i][1];
				x2 = points0[i+1][0];
				y2 = points0[i+1][1];
				width = points0[i+1][2];
				translateAndRotate(x1, y1, x2, y2, width);
			}
		}
	}
}
