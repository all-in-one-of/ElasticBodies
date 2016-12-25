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
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle]) translate([-width/2.0, 0.0, 0.0]) scale([1.0, 1.0, 1.0]) drawBasicShape(x1, y1, x2, y2, width);
		}
		else {
			translate([x1, y1, 0.0]) rotate([0.0, 0.0, angle+180]) translate([-width/2.0, 0.0, 0.0]) scale([1.0, 1.0, 1.0]) drawBasicShape(x1, y1, x2, y2, width);		}
	}
}

$fn=50;

points13 = [
[103.42600000, 86.50500000, 0.00000000],
[103.12500000, 87.09700000, 0.38010536],
[102.70300000, 87.78100000, 0.37972841],
[102.21800000, 88.46400000, 0.38015396],
[101.68400000, 89.14300000, 0.37987852],
[100.49600000, 90.51000000, 0.38001224],
[97.95700000, 93.20200000, 0.38001260],
[96.74200000, 94.52300000, 0.38000317],
[95.63900000, 95.81800000, 0.37987849],
[95.13900000, 96.46200000, 0.38041137],
[94.68400000, 97.09600000, 0.37973073],
[94.27700000, 97.72100000, 0.38035835],
[93.91900000, 98.33900000, 0.37951096],
[93.61400000, 98.94700000, 0.38013052],
[93.36200000, 99.54600000, 0.38018565],
[93.16400000, 100.13700000, 0.37999577],
[93.01900000, 100.72100000, 0.37993962],
[92.92700000, 101.30000000, 0.38010912],
[92.88700000, 101.87700000, 0.38016697],
[92.89900000, 102.45600000, 0.37989496],
[92.96400000, 103.04000000, 0.37964144],
[93.08100000, 103.63000000, 0.38005828],
[93.25000000, 104.22800000, 0.38039423],
[93.47200000, 104.83600000, 0.37969034],
[93.74400000, 105.45200000, 0.38025918],
[94.06500000, 106.07700000, 0.37981961],
[94.43200000, 106.70900000, 0.37982388],
[94.84200000, 107.35200000, 0.38027418],
[95.75800000, 108.63700000, 0.38001123],
[96.77700000, 109.94400000, 0.37991736],
[98.36400000, 111.92000000, 0.38011946],
[99.36700000, 113.24600000, 0.37991603],
[99.76700000, 113.82900000, 0.37977007],
[99.63200000, 113.93100000, 0.37974670],
[99.18300000, 113.38500000, 0.37999078],
[98.64300000, 112.77200000, 0.37968249],
[95.76700000, 109.71900000, 0.38007073],
[94.66500000, 108.47000000, 0.37977631],
[94.16000000, 107.84600000, 0.38030387],
[93.68600000, 107.21200000, 0.38004380],
[93.25100000, 106.57100000, 0.37980010],
[92.86100000, 105.92300000, 0.37993786],
[92.52000000, 105.26700000, 0.37993926],
[92.23300000, 104.60300000, 0.38019550],
[92.00400000, 103.93000000, 0.37986355],
[91.83700000, 103.24900000, 0.37990717],
[91.73500000, 102.56200000, 0.38021064],
[91.70100000, 101.87000000, 0.37988975],
[91.73500000, 101.17700000, 0.38024645],
[91.83900000, 100.48400000, 0.37982484],
[92.01000000, 99.79500000, 0.38001988],
[92.24600000, 99.11100000, 0.38011481],
[92.54400000, 98.43300000, 0.37992438],
[92.90200000, 97.76200000, 0.37988732],
[93.31400000, 97.09800000, 0.38010075],
[93.77800000, 96.44100000, 0.38017290],
[94.28900000, 95.78900000, 0.37975489],
[94.84200000, 95.14300000, 0.37993613],
[95.43200000, 94.50200000, 0.38008355],
[96.05100000, 93.86700000, 0.37999669],
[97.36900000, 92.59900000, 0.38006996],
[100.08200000, 90.09700000, 0.38001791],
[101.34600000, 88.85600000, 0.37995317],
[101.92900000, 88.22900000, 0.37998158],
[102.45900000, 87.60500000, 0.38014631],
[102.92900000, 86.97800000, 0.37990148],
[103.27900000, 86.42200000, 0.38000711],
[103.37400000, 86.47600000, 0.37804070],
[101.49900000, 80.44900000, 0.00000000],
[101.22600000, 80.24700000, 0.38029744],
[100.69300000, 79.93300000, 0.37988360],
[100.72800000, 79.80300000, 0.38062949],
[101.70600000, 79.80300000, 0.38004507],
[101.51800000, 80.39200000, 0.37985058],
[101.76500000, 80.58300000, 0.00000000],
[102.19400000, 80.88900000, 0.38002467],
[102.94300000, 81.57100000, 0.37997764],
[103.50900000, 82.25800000, 0.38017571],
[103.90500000, 82.95700000, 0.37984746],
[104.14100000, 83.66700000, 0.38023409],
[104.22900000, 84.38600000, 0.37970830],
[104.18000000, 85.10600000, 0.37997444],
[104.01200000, 85.82300000, 0.38004248],
[103.74100000, 86.53500000, 0.38001677],
[103.38200000, 87.24200000, 0.37993171],
[102.94800000, 87.94300000, 0.38005589],
[102.45400000, 88.64000000, 0.38012757],
[101.91100000, 89.33000000, 0.37998225],
[100.71400000, 90.70700000, 0.37998566],
[98.17200000, 93.40300000, 0.37994272],
[96.96200000, 94.71800000, 0.38007590],
[95.86800000, 96.00300000, 0.38008379],
[95.37400000, 96.63800000, 0.37987681],
[94.92700000, 97.26200000, 0.38000512],
[94.52700000, 97.87500000, 0.38010856],
[94.17800000, 98.47800000, 0.37997879],
[93.88100000, 99.07000000, 0.37972629],
[93.63700000, 99.65000000, 0.38008173],
[93.44600000, 100.21900000, 0.38018841],
[93.30700000, 100.78000000, 0.37954911],
[93.21900000, 101.33300000, 0.38050985],
[93.18100000, 101.88400000, 0.38001818],
[93.19300000, 102.43700000, 0.37969004],
[93.25500000, 102.99500000, 0.37994946],
[93.36700000, 103.56100000, 0.38005245],
[93.53000000, 104.13800000, 0.37999138],
[93.74500000, 104.72600000, 0.37993416],
[94.01000000, 105.32500000, 0.38025791],
[94.32300000, 105.93600000, 0.37979775],
[94.68300000, 106.55600000, 0.37990100],
[95.08600000, 107.18700000, 0.38027173],
[95.99400000, 108.46100000, 0.37999341],
[97.00700000, 109.76100000, 0.38006475],
[98.59700000, 111.74000000, 0.37986742],
[99.60600000, 113.07400000, 0.38009922],
[100.06200000, 113.74000000, 0.38011246],
[100.47700000, 114.41000000, 0.37974288],
[100.83600000, 115.08100000, 0.38010033],
[101.12800000, 115.75400000, 0.38001889],
[101.33900000, 116.42900000, 0.38003465],
[101.45600000, 117.10500000, 0.38025581],
[101.46200000, 117.78300000, 0.37957162],
[101.34400000, 118.45700000, 0.38023889],
[101.08800000, 119.12600000, 0.37982385],
[100.45500000, 120.15900000, 0.38016800],
[109.51600000, 120.15900000, 0.38000397],
[109.51600000, 120.49100000, 0.37961839],
[90.48400000, 120.49100000, 0.37999551],
[90.48400000, 120.15900000, 0.37979951],
[99.92600000, 120.15900000, 0.37999866],
[100.41500000, 119.58800000, 0.38003299],
[100.77500000, 118.97100000, 0.37978982],
[100.98200000, 118.36100000, 0.38016942],
[101.05300000, 117.75800000, 0.38017964],
[101.00500000, 117.16000000, 0.37992402],
[100.85400000, 116.56400000, 0.37973749],
[100.61200000, 115.96900000, 0.37998023],
[100.29000000, 115.37300000, 0.37992270],
[99.90000000, 114.77600000, 0.38021952],
[99.45300000, 114.17600000, 0.37990920],
[98.95900000, 113.57500000, 0.38009728],
[98.42600000, 112.97000000, 0.37990212],
[95.54900000, 109.91700000, 0.38002263],
[94.44100000, 108.66000000, 0.37996549],
[93.92800000, 108.02600000, 0.37995656],
[93.44600000, 107.38200000, 0.37992248],
[93.00300000, 106.73000000, 0.38022295],
[92.60400000, 106.06700000, 0.37981703],
[92.25400000, 105.39400000, 0.38017110],
[91.95900000, 104.70900000, 0.38004220],
[91.72200000, 104.01300000, 0.38002161],
[91.54800000, 103.30600000, 0.37977136],
[91.44200000, 102.59100000, 0.38008913],
[91.40700000, 101.87000000, 0.37989963],
[91.44200000, 101.14800000, 0.38024199],
[91.55000000, 100.42700000, 0.37988441],
[91.72700000, 99.71100000, 0.37991612],
[91.97200000, 99.00300000, 0.37992256],
[92.27900000, 98.30400000, 0.38010292],
[92.64700000, 97.61500000, 0.37991216],
[93.06900000, 96.93600000, 0.38023809],
[93.54200000, 96.26500000, 0.37992464],
[94.06100000, 95.60300000, 0.38007003],
[94.62200000, 94.94800000, 0.37980482],
[95.21800000, 94.29900000, 0.37996831],
[95.84300000, 93.65800000, 0.38016426],
[97.16700000, 92.38400000, 0.37995505],
[99.88000000, 89.88300000, 0.37995788],
[101.13500000, 88.65100000, 0.38016691],
[101.70900000, 88.03400000, 0.38003872],
[102.22900000, 87.42100000, 0.37990075],
[102.68600000, 86.81100000, 0.38011062],
[103.07000000, 86.20300000, 0.37984876],
[103.36900000, 85.59700000, 0.37984963],
[103.57400000, 84.99300000, 0.38016531],
[103.67200000, 84.38500000, 0.37983824],
[103.65000000, 83.76800000, 0.37988183],
[103.49000000, 83.13700000, 0.38023379],
[103.17000000, 82.49000000, 0.37991572],
[102.67000000, 81.83100000, 0.37995401],
[101.97400000, 81.16400000, 0.38019940],
[101.06300000, 80.49300000, 0.37984640],
[99.95600000, 79.84100000, 0.38010309],
[90.48400000, 79.84100000, 0.37999386],
[90.48400000, 79.50900000, 0.37961839],
[109.51600000, 79.50900000, 0.37999551],
[109.51600000, 79.84100000, 0.37979951],
[102.00300000, 79.84100000, 0.37997793],
[101.78400000, 80.52500000, 0.38030360],
[102.11100000, 80.46800000, 0.00000000],
[102.37900000, 80.66000000, 0.37986300],
[103.15700000, 81.36700000, 0.38002215],
[103.75200000, 82.09100000, 0.38017293],
[104.17500000, 82.83700000, 0.37984643],
[104.43000000, 83.60300000, 0.37982377],
[104.52400000, 84.37800000, 0.38007713],
[104.47200000, 85.15000000, 0.37991488],
[104.29400000, 85.90900000, 0.38025599],
[104.01000000, 86.65400000, 0.37997863],
[103.63800000, 87.38600000, 0.37979949],
[103.19400000, 88.10600000, 0.38014095],
[102.68900000, 88.81600000, 0.38005564],
[102.13800000, 89.51800000, 0.37995985],
[100.93200000, 90.90500000, 0.37995946],
[98.38800000, 93.60300000, 0.38004281],
[97.18200000, 94.91300000, 0.37991571],
[96.09600000, 96.18900000, 0.38000876],
[95.61000000, 96.81400000, 0.38015135],
[95.17000000, 97.42800000, 0.37998208],
[94.77800000, 98.03000000, 0.37972975],
[94.43700000, 98.61800000, 0.38025345],
[94.14800000, 99.19300000, 0.37980055],
[93.91300000, 99.75400000, 0.38015794],
[93.72900000, 100.30200000, 0.37991334],
[93.59600000, 100.83800000, 0.38015600],
[93.51200000, 101.36700000, 0.37974956],
[93.47600000, 101.89100000, 0.38052756],
[93.48700000, 102.41800000, 0.37947675],
[93.54600000, 102.95000000, 0.38017524],
[93.65300000, 103.49200000, 0.38015490],
[93.81000000, 104.04700000, 0.38004812],
[94.01800000, 104.61600000, 0.37973869],
[94.27500000, 105.19900000, 0.38002059],
[94.58200000, 105.79500000, 0.37985405],
[94.93400000, 106.40300000, 0.38010557],
[95.33000000, 107.02300000, 0.38001354],
[96.23000000, 108.28600000, 0.37997528],
[97.23800000, 109.57900000, 0.38006673],
[98.82900000, 111.55900000, 0.37994142],
[99.84400000, 112.90200000, 0.38017643],
[100.30900000, 113.57900000, 0.37987052],
[100.73200000, 114.26300000, 0.37983545],
[101.10100000, 114.95300000, 0.38001835],
[101.40400000, 115.65100000, 0.38012802],
[101.62600000, 116.36000000, 0.37980603],
[101.75000000, 117.07900000, 0.38014904],
[101.75700000, 117.80700000, 0.37987946],
[101.62900000, 118.53600000, 0.38002104],
[101.35300000, 119.25600000, 0.38015018],
[100.98000000, 119.86500000, 0.37995442],
[109.81000000, 119.86500000, 0.37999064],
[109.81000000, 120.78500000, 0.38003024],
[90.19000000, 120.78500000, 0.37999739],
[90.19000000, 119.86500000, 0.38003024],
[99.79100000, 119.86500000, 0.37999361],
[100.17400000, 119.41700000, 0.38027733],
[100.50600000, 118.84900000, 0.37986918],
[100.69300000, 118.29600000, 0.38003108],
[100.75700000, 117.75200000, 0.37994066],
[100.71400000, 117.20800000, 0.38005643],
[100.57400000, 116.65600000, 0.37970247],
[100.34500000, 116.09500000, 0.38008081],
[100.03700000, 115.52400000, 0.38011865],
[99.65900000, 114.94400000, 0.37994172],
[99.22100000, 114.35800000, 0.38000736],
[98.73500000, 113.76600000, 0.38016644],
[98.20800000, 113.16900000, 0.37995870],
[95.33200000, 110.11500000, 0.38000534],
[94.21600000, 108.85000000, 0.37992164],
[93.69600000, 108.20700000, 0.38011961],
[93.20700000, 107.55300000, 0.38002059],
[92.75500000, 106.88800000, 0.37981887],
[92.34700000, 106.21100000, 0.38002002],
[91.98900000, 105.52000000, 0.38022995],
[91.68400000, 104.81500000, 0.38002427],
[91.43900000, 104.09500000, 0.37972411],
[91.25900000, 103.36300000, 0.38011674],
[91.14900000, 102.62000000, 0.37997677],
[91.11200000, 101.87000000, 0.37988963],
[91.14900000, 101.11900000, 0.38029876],
[91.26100000, 100.37000000, 0.37993951],
[91.44500000, 99.62800000, 0.37994337],
[91.69700000, 98.89600000, 0.38006851],
[92.01500000, 98.17600000, 0.37989320],
[92.39200000, 97.46800000, 0.37985974],
[92.82400000, 96.77300000, 0.38006362],
[93.30600000, 96.08900000, 0.37997314],
[93.83400000, 95.41600000, 0.37996258],
[94.40100000, 94.75300000, 0.38037105],
[95.00400000, 94.09700000, 0.37980778],
[95.63600000, 93.44900000, 0.37986861],
[96.96500000, 92.17000000, 0.38006657],
[99.67700000, 89.67000000, 0.37995644],
[100.92500000, 88.44600000, 0.38005960],
[101.48900000, 87.83800000, 0.38000678],
[101.99900000, 87.23800000, 0.38021477],
[102.44400000, 86.64400000, 0.37985740],
[102.81300000, 86.05900000, 0.37995680],
[103.09700000, 85.48500000, 0.38001492],
[103.28700000, 84.92200000, 0.38002621],
[103.37700000, 84.36700000, 0.38005732],
[103.35800000, 83.81000000, 0.37974465],
[103.21300000, 83.24000000, 0.38018574],
[102.91900000, 82.64600000, 0.37997948],
[102.45000000, 82.02700000, 0.37976105],
[101.78400000, 81.38900000, 0.38002022],
[100.90100000, 80.73900000, 0.38007235],
[99.87600000, 80.13500000, 0.38000038],
[90.19000000, 80.13500000, 0.37999484],
[90.19000000, 79.21500000, 0.37996488],
[109.81000000, 79.21500000, 0.38000046],
[109.81000000, 80.13500000, 0.38003024],
[102.21800000, 80.13500000, 0.38000620],
[102.12900000, 80.41100000, 0.37987095],
[101.94800000, 80.75500000, 0.00000000],
[101.58500000, 80.66400000, 0.00000000],
[102.08500000, 81.02800000, 0.38024792],
[102.80600000, 81.70100000, 0.37994966],
[103.34000000, 82.37500000, 0.37989187],
[103.69900000, 83.05100000, 0.38005383],
[103.89600000, 83.72200000, 0.38025789],
[103.91100000, 83.90000000, 0.37870652],
[103.91100000, 83.90000000, 0.00000000],
[103.95000000, 84.39300000, 0.76079698],
[103.87500000, 85.06000000, 0.75990395],
[103.68600000, 85.72300000, 0.75980607],
[103.42000000, 86.33300000, 0.75956257],
[102.46800000, 87.83900000, 0.00000000],
[102.06900000, 88.35300000, 0.38008307],
[101.51300000, 89.00200000, 0.37981734],
[100.90100000, 89.65300000, 0.38027526],
[100.90100000, 89.65300000, 0.00000000],
[100.27900000, 90.31300000, 0.75995743],
[98.61700000, 91.95600000, 0.75997071],
[98.56700000, 92.13400000, 0.00000000],
[93.51800000, 97.18300000, 0.38949208],
[94.37100000, 97.18900000, 0.00000000],
[92.47300000, 99.08700000, 0.38950543],
[92.22100000, 99.76700000, 0.00000000],
[93.73600000, 98.25300000, 0.38941705],
[92.86500000, 98.26500000, 0.00000000],
[95.54200000, 95.58800000, 0.38945133],
[95.38900000, 94.88200000, 0.00000000],
[97.02300000, 93.24800000, 0.38941217],
[93.34900000, 99.06900000, 0.00000000],
[92.06000000, 100.35800000, 0.38948275],
[91.95800000, 100.89000000, 0.38922625],
[93.09000000, 99.75800000, 0.38945148],
[92.91900000, 100.35900000, 0.38916973],
[91.89600000, 101.38100000, 0.38936330],
[91.87400000, 101.83300000, 0.38933454],
[92.81000000, 100.89600000, 0.38949502],
[92.74800000, 101.38800000, 0.38935598],
[91.88500000, 102.25100000, 0.38958863],
[91.91000000, 102.65500000, 0.38949234],
[92.72000000, 101.84500000, 0.38935846],
[92.72900000, 102.26600000, 0.38914547],
[91.96600000, 103.02900000, 0.38955344],
[92.03200000, 103.39200000, 0.38963736],
[92.76000000, 102.66400000, 0.38967025],
[92.80500000, 103.04800000, 0.38927894],
[92.11600000, 103.73700000, 0.38958870],
[92.21200000, 104.07100000, 0.38933637],
[92.87600000, 103.40600000, 0.38958991],
[92.95700000, 103.75500000, 0.38929006],
[92.32100000, 104.39100000, 0.38956299],
[92.43800000, 104.70400000, 0.38888296],
[93.05200000, 104.09000000, 0.38936547],
[93.15800000, 104.41300000, 0.38973044],
[92.56800000, 105.00300000, 0.38960491],
[92.70100000, 105.29900000, 0.38936638],
[93.27300000, 104.72800000, 0.38939389],
[93.39700000, 105.03300000, 0.38956647],
[92.84800000, 105.58200000, 0.38952024],
[92.99500000, 105.86400000, 0.38970205],
[93.52900000, 105.33000000, 0.38945106],
[93.66700000, 105.62200000, 0.38876547],
[93.15600000, 106.13300000, 0.38963664],
[93.31700000, 106.40100000, 0.38973031],
[93.81300000, 105.90500000, 0.38922278],
[93.96100000, 106.18600000, 0.38972679],
[93.48600000, 106.66200000, 0.38942552],
[93.65900000, 106.91700000, 0.39045642],
[94.11900000, 106.45800000, 0.38944750],
[94.27600000, 106.73000000, 0.38950805],
[93.83400000, 107.17200000, 0.38963589],
[94.01800000, 107.41800000, 0.38904536],
[94.44300000, 106.99300000, 0.38918183],
[94.61000000, 107.25500000, 0.38969668],
[94.20200000, 107.66300000, 0.38962787],
[94.39000000, 107.90400000, 0.38979127],
[94.78200000, 107.51300000, 0.38928943],
[94.96000000, 107.76400000, 0.38971631],
[94.58200000, 108.14100000, 0.38973017],
[94.77600000, 108.37700000, 0.38895852],
[95.13900000, 108.01400000, 0.38910163],
[95.31700000, 108.26500000, 0.38971631],
[95.05500000, 108.52800000, 0.38987684],
[95.29200000, 108.62100000, 0.00000000],
[96.01000000, 109.49700000, 0.76018504],
[97.12100000, 110.78200000, 0.76008703],
[97.12100000, 110.78200000, 0.00000000],
[98.60900000, 112.50500000, 0.38003074],
[99.78500000, 113.99900000, 0.00000000],
[100.18100000, 114.58000000, 0.75992360],
[100.55700000, 115.21600000, 0.75973369],
[100.86600000, 115.85100000, 0.76039754],
[101.05500000, 116.37800000, 0.75937338],
[101.05500000, 116.37800000, 0.00000000],
[101.09400000, 116.48800000, 0.38055253],
[101.23000000, 117.12900000, 0.38013755],
[101.25800000, 117.76600000, 0.37970370],
[101.16400000, 118.40600000, 0.38024190],
[100.93200000, 119.04800000, 0.38005592],
[100.55200000, 119.68300000, 0.37991224],
[100.12700000, 120.26800000, 0.37989649],
[100.19200000, 120.32500000, 0.38145022],
[109.36900000, 120.32500000, 0.37998781],
[100.25100000, 120.21100000, 0.00000000],
[99.99400000, 120.32500000, 0.37992479],
[90.63100000, 120.32500000, 0.37998875],
[90.63100000, 79.67500000, 0.00000000],
[99.99600000, 79.67500000, 0.37999656],
[100.56900000, 79.83000000, 0.37961543],
[101.90200000, 79.67500000, 0.00000000],
[109.36900000, 79.67500000, 0.37998606],
];

translate([0.0, 0.0, 5.60000000]) {
	linear_extrude(height = 0.40400000, center = false, convexity = 10, twist = 0) {
		union() {
			for( i=[0:len(points13)-2] ){ 
				x1 = points13[i][0];
				y1 = points13[i][1];
				x2 = points13[i+1][0];
				y2 = points13[i+1][1];
				width = points13[i+1][2];
				translateAndRotate(x1, y1, x2, y2, width);
			}
		}
	}
}
