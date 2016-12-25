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

points24 = [
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
[92.92700000, 101.29700000, 0.38016049],
[92.88600000, 101.83600000, 0.38007285],
[92.89900000, 102.45600000, 0.37993819],
[92.96400000, 103.04000000, 0.37964144],
[93.08100000, 103.63000000, 0.38005828],
[93.25000000, 104.22800000, 0.38039423],
[93.47200000, 104.83600000, 0.37969034],
[93.74400000, 105.45200000, 0.38016988],
[94.06500000, 106.07700000, 0.37990519],
[94.43200000, 106.70900000, 0.37982388],
[94.84200000, 107.35200000, 0.38019533],
[95.75800000, 108.63700000, 0.38004933],
[96.77700000, 109.94400000, 0.37991736],
[98.36400000, 111.92000000, 0.38009573],
[99.36700000, 113.24600000, 0.37991603],
[99.76700000, 113.82900000, 0.37985512],
[99.63200000, 113.93100000, 0.37974670],
[99.18300000, 113.38500000, 0.37999078],
[98.64300000, 112.77200000, 0.37960888],
[95.76700000, 109.71900000, 0.38008506],
[94.66500000, 108.47000000, 0.37977631],
[94.16000000, 107.84600000, 0.38030387],
[93.68600000, 107.21200000, 0.38004380],
[93.25100000, 106.57100000, 0.37980010],
[92.86100000, 105.92300000, 0.37993786],
[92.52000000, 105.26700000, 0.37993926],
[92.23300000, 104.60300000, 0.38011237],
[92.00400000, 103.93000000, 0.37994813],
[91.83700000, 103.24900000, 0.37990717],
[91.73500000, 102.56200000, 0.38012406],
[91.70100000, 101.87000000, 0.37988975],
[91.73500000, 101.17700000, 0.38033312],
[91.83900000, 100.48400000, 0.37973903],
[92.01000000, 99.79500000, 0.38010458],
[92.24600000, 99.11100000, 0.38003170],
[92.54400000, 98.43300000, 0.38000557],
[92.90200000, 97.76200000, 0.37988732],
[93.31400000, 97.09800000, 0.38010075],
[93.77800000, 96.44100000, 0.38009814],
[94.28900000, 95.78900000, 0.37982747],
[94.84200000, 95.14300000, 0.37993613],
[95.43200000, 94.50200000, 0.38008355],
[96.05100000, 93.86700000, 0.37999669],
[97.36900000, 92.59900000, 0.38003708],
[100.08200000, 90.09700000, 0.38003421],
[101.34600000, 88.85600000, 0.37991923],
[101.92900000, 88.22900000, 0.37998158],
[102.45900000, 87.60500000, 0.38021976],
[102.92900000, 86.97800000, 0.37990148],
[103.27900000, 86.42200000, 0.38000711],
[103.37400000, 86.47600000, 0.37749042],
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
[93.21900000, 101.33200000, 0.38006226],
[93.18000000, 101.84400000, 0.38047984],
[93.19300000, 102.43700000, 0.37973775],
[93.25500000, 102.99500000, 0.37984235],
[93.36700000, 103.56100000, 0.38015667],
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
[100.06200000, 113.74000000, 0.38003796],
[100.47700000, 114.41000000, 0.37981918],
[100.83600000, 115.08100000, 0.38010033],
[101.12800000, 115.75400000, 0.38001889],
[101.33900000, 116.42900000, 0.38003465],
[101.45600000, 117.10500000, 0.38025581],
[101.46200000, 117.78300000, 0.37957162],
[101.34400000, 118.45700000, 0.38023889],
[101.08800000, 119.12600000, 0.37982385],
[100.45500000, 120.15900000, 0.38016800],
[109.51600000, 120.15900000, 0.37999734],
[109.51600000, 120.49100000, 0.37979951],
[90.48400000, 120.49100000, 0.37999551],
[90.48400000, 120.15900000, 0.37961839],
[99.92600000, 120.15900000, 0.38000503],
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
[92.25400000, 105.39400000, 0.38009183],
[91.95900000, 104.70900000, 0.38012283],
[91.72200000, 104.01300000, 0.38002161],
[91.54800000, 103.30600000, 0.37977136],
[91.44200000, 102.59100000, 0.38008913],
[91.40700000, 101.87000000, 0.37981633],
[91.44200000, 101.14800000, 0.38032518],
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
[97.16700000, 92.38400000, 0.37992232],
[99.88000000, 89.88400000, 0.38002821],
[101.13500000, 88.65100000, 0.38004969],
[101.70900000, 88.03400000, 0.37996736],
[102.22900000, 87.42100000, 0.37997555],
[102.68600000, 86.81100000, 0.38011062],
[103.07000000, 86.20300000, 0.37984876],
[103.36900000, 85.59700000, 0.37976065],
[103.57400000, 84.99300000, 0.38016531],
[103.67200000, 84.38500000, 0.37993588],
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
[102.68900000, 88.81600000, 0.37998663],
[102.13800000, 89.51800000, 0.38002723],
[100.93200000, 90.90500000, 0.37992675],
[98.38800000, 93.60300000, 0.38005903],
[97.18200000, 94.91300000, 0.37988194],
[96.09600000, 96.18900000, 0.38004465],
[95.61000000, 96.81400000, 0.38015135],
[95.17000000, 97.42800000, 0.37990247],
[94.77800000, 98.03000000, 0.37981345],
[94.43700000, 98.61800000, 0.38025345],
[94.14800000, 99.19300000, 0.37980055],
[93.91300000, 99.75400000, 0.38015794],
[93.72900000, 100.30200000, 0.37980931],
[93.59600000, 100.83800000, 0.38026489],
[93.51200000, 101.36600000, 0.37984259],
[93.47500000, 101.85300000, 0.37985034],
[93.48700000, 102.41800000, 0.37994251],
[93.54600000, 102.95000000, 0.38028758],
[93.65300000, 103.49200000, 0.38015490],
[93.81000000, 104.04700000, 0.38004812],
[94.01800000, 104.61600000, 0.37973869],
[94.27500000, 105.19900000, 0.37992621],
[94.58100000, 105.79500000, 0.38005475],
[94.93400000, 106.40300000, 0.37998116],
[95.33000000, 107.02300000, 0.38001354],
[96.23000000, 108.28600000, 0.37993650],
[97.23800000, 109.57900000, 0.38006673],
[98.82900000, 111.55900000, 0.37996509],
[99.84400000, 112.90200000, 0.38014071],
[100.30900000, 113.57900000, 0.37994374],
[100.73200000, 114.26300000, 0.37976068],
[101.10100000, 114.95300000, 0.38009520],
[101.40400000, 115.65100000, 0.38012802],
[101.62600000, 116.36000000, 0.37980603],
[101.75000000, 117.07900000, 0.38014904],
[101.75700000, 117.80700000, 0.37987946],
[101.62900000, 118.53600000, 0.38002104],
[101.35300000, 119.25600000, 0.38007219],
[100.98000000, 119.86500000, 0.37995442],
[109.81000000, 119.86500000, 0.37999745],
[109.81000000, 120.78500000, 0.37996488],
[90.19000000, 120.78500000, 0.38000046],
[90.19000000, 119.86500000, 0.38003024],
[99.79100000, 119.86500000, 0.37998734],
[100.17400000, 119.41700000, 0.38027733],
[100.50600000, 118.84900000, 0.37986918],
[100.69300000, 118.29600000, 0.38003108],
[100.75700000, 117.75200000, 0.37994066],
[100.71400000, 117.20800000, 0.38016663],
[100.57400000, 116.65600000, 0.37970247],
[100.34500000, 116.09500000, 0.38008081],
[100.03700000, 115.52400000, 0.38011865],
[99.65900000, 114.94400000, 0.37985486],
[99.22100000, 114.35800000, 0.38008956],
[98.73500000, 113.76600000, 0.38016644],
[98.20800000, 113.16900000, 0.37988319],
[95.33200000, 110.11500000, 0.38000534],
[94.21600000, 108.85000000, 0.37995729],
[93.69600000, 108.20700000, 0.38011961],
[93.20700000, 107.55300000, 0.37994695],
[92.75500000, 106.88800000, 0.37981887],
[92.34700000, 106.21100000, 0.38009609],
[91.98900000, 105.52000000, 0.38015268],
[91.68400000, 104.81500000, 0.38002427],
[91.43900000, 104.09500000, 0.37980318],
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
[93.83400000, 95.41600000, 0.37989228],
[94.40100000, 94.75300000, 0.38037105],
[95.00400000, 94.09700000, 0.37987527],
[95.63600000, 93.44900000, 0.37986861],
[96.96500000, 92.17000000, 0.38003397],
[99.67700000, 89.67000000, 0.37997274],
[100.92500000, 88.44600000, 0.38005960],
[101.48900000, 87.83800000, 0.38000678],
[101.99900000, 87.23800000, 0.38013841],
[102.44400000, 86.64400000, 0.37985740],
[102.81300000, 86.05900000, 0.37995680],
[103.09700000, 85.48500000, 0.38010881],
[103.28700000, 84.92200000, 0.38002621],
[103.37700000, 84.36700000, 0.37995037],
[103.35800000, 83.81000000, 0.37974465],
[103.21300000, 83.24000000, 0.38028798],
[102.91900000, 82.64600000, 0.37997948],
[102.45000000, 82.02700000, 0.37968362],
[101.78400000, 81.38900000, 0.38002022],
[100.90100000, 80.73900000, 0.38012719],
[99.87600000, 80.13500000, 0.38000038],
[90.19000000, 80.13500000, 0.37998863],
[90.19000000, 79.21500000, 0.38003024],
[109.81000000, 79.21500000, 0.38000046],
[109.81000000, 80.13500000, 0.37996488],
[102.21800000, 80.13500000, 0.38000620],
[102.12900000, 80.41100000, 0.37987095],
[101.94800000, 80.75500000, 0.00000000],
[101.58500000, 80.66400000, 0.00000000],
[102.08500000, 81.02800000, 0.38034515],
[102.80600000, 81.70100000, 0.37994966],
[103.34000000, 82.37500000, 0.37982195],
[103.69900000, 83.05100000, 0.38013239],
[103.89600000, 83.72200000, 0.38017190],
[103.91100000, 83.90000000, 0.37870652],
[103.95000000, 84.39300000, 0.76091858],
[103.87500000, 85.06000000, 0.75990395],
[103.68600000, 85.72300000, 0.75980607],
[103.42000000, 86.33300000, 0.75956257],
[102.46800000, 87.83900000, 0.00000000],
[102.06900000, 88.35300000, 0.38008307],
[101.51300000, 89.00200000, 0.37981734],
[100.90100000, 89.65300000, 0.38027526],
[100.90100000, 89.65300000, 0.00000000],
[100.27900000, 90.31300000, 0.75989112],
[98.61700000, 91.95600000, 0.75999644],
[98.61200000, 92.30300000, 0.00000000],
[98.26900000, 91.96100000, 0.38329265],
[98.05000000, 92.16300000, 0.38333774],
[98.40900000, 92.52200000, 0.38312386],
[98.20600000, 92.74000000, 0.38339137],
[97.83100000, 92.36500000, 0.38325241],
[97.61200000, 92.56700000, 0.38333774],
[98.00300000, 92.95800000, 0.38337044],
[97.80000000, 93.17600000, 0.38339137],
[97.39500000, 92.77000000, 0.38353138],
[97.18000000, 92.97700000, 0.38282128],
[97.59800000, 93.39400000, 0.38322436],
[97.39500000, 93.61200000, 0.38339137],
[96.96600000, 93.18300000, 0.38347918],
[96.75400000, 93.39200000, 0.38337063],
[97.19200000, 93.83000000, 0.38338210],
[96.98900000, 94.04800000, 0.38339137],
[96.54400000, 93.60300000, 0.38386138],
[96.33300000, 93.81300000, 0.38337735],
[96.78600000, 94.26600000, 0.38357304],
[96.58600000, 94.48700000, 0.38341220],
[96.12300000, 94.02400000, 0.38338735],
[95.91200000, 94.23400000, 0.38357934],
[96.39200000, 94.71400000, 0.38339060],
[96.19900000, 94.94100000, 0.38412321],
[95.70200000, 94.44500000, 0.38360749],
[95.49100000, 94.65500000, 0.38357934],
[96.00500000, 95.16900000, 0.38331373],
[95.81100000, 95.39600000, 0.38347520],
[95.28500000, 94.87000000, 0.38356002],
[95.08400000, 95.08900000, 0.38421766],
[95.61800000, 95.62400000, 0.38335973],
[95.42900000, 95.85600000, 0.38344584],
[94.88500000, 95.31100000, 0.38359619],
[94.69000000, 95.53800000, 0.38282807],
[95.24500000, 96.09300000, 0.38332596],
[95.06100000, 96.33000000, 0.38345303],
[94.49600000, 95.76500000, 0.38332867],
[94.30700000, 95.99700000, 0.38344584],
[94.88300000, 96.57300000, 0.38362682],
[94.70700000, 96.81800000, 0.38344744],
[94.12200000, 96.23300000, 0.38362455],
[93.93700000, 96.46900000, 0.38342456],
[94.53300000, 97.06400000, 0.38365758],
[94.36700000, 97.31900000, 0.38346616],
[93.76100000, 96.71300000, 0.38354935],
[93.58700000, 96.96000000, 0.38338218],
[94.20100000, 97.57400000, 0.38354843],
[94.04300000, 97.83700000, 0.38335433],
[93.41500000, 97.20900000, 0.38327606],
[93.25400000, 97.46900000, 0.38334305],
[93.88800000, 98.10300000, 0.38374745],
[93.73800000, 98.37400000, 0.38325557],
[93.09200000, 97.72800000, 0.38321590],
[92.94100000, 97.99800000, 0.38343389],
[93.59700000, 98.65400000, 0.38354400],
[93.45800000, 98.93600000, 0.38325310],
[92.79500000, 98.27300000, 0.38347918],
[92.65300000, 98.55200000, 0.38356455],
[93.33300000, 99.23200000, 0.38341665],
[93.20800000, 99.52800000, 0.38377671],
[92.52400000, 98.84400000, 0.38347918],
[92.39600000, 99.13700000, 0.38336125],
[93.10300000, 99.84400000, 0.38335890],
[92.99900000, 100.16000000, 0.38426503],
[92.28800000, 99.45000000, 0.38350903],
[92.18000000, 99.76300000, 0.38349650],
[92.91500000, 100.49800000, 0.38347918],
[92.83900000, 100.84200000, 0.38420069],
[92.09400000, 100.09700000, 0.38353626],
[92.01000000, 100.43500000, 0.38280489],
[92.78100000, 101.20600000, 0.38353433],
[92.74100000, 101.58700000, 0.38360185],
[91.95300000, 100.79800000, 0.38361393],
[91.90100000, 101.16700000, 0.38339796],
[92.72000000, 101.98700000, 0.38350507],
[92.72900000, 102.41700000, 0.38349910],
[91.88100000, 101.56800000, 0.38350419],
[91.87800000, 101.98600000, 0.38347232],
[92.77000000, 102.87800000, 0.38347918],
[92.84600000, 103.37500000, 0.38328536],
[91.90000000, 102.42900000, 0.38338929],
[91.96800000, 102.91800000, 0.38339186],
[92.96800000, 103.91800000, 0.38356422],
[93.15300000, 104.52400000, 0.38326973],
[92.07600000, 103.44700000, 0.38347918],
[92.24100000, 104.03400000, 0.38346890],
[93.42200000, 105.21400000, 0.38356920],
[92.87500000, 105.50900000, 0.00000000],
[94.36900000, 107.00300000, 0.38356456],
[93.49400000, 106.54900000, 0.00000000],
[95.27400000, 108.32900000, 0.38350307],
[95.10800000, 108.58400000, 0.38366378],
[94.75900000, 108.23500000, 0.38408835],
[93.80800000, 106.02100000, 0.00000000],
[92.49300000, 104.70600000, 0.38354385],
[95.29200000, 108.62100000, 0.00000000],
[96.01000000, 109.49700000, 0.76018504],
[97.12100000, 110.78200000, 0.76012243],
[97.12100000, 110.78200000, 0.00000000],
[98.60900000, 112.50500000, 0.38000433],
[99.78500000, 113.99900000, 0.00000000],
[100.18100000, 114.58000000, 0.75992360],
[100.55700000, 115.21600000, 0.75973369],
[100.86600000, 115.85100000, 0.76039754],
[101.05500000, 116.37800000, 0.75937338],
[101.05500000, 116.37800000, 0.00000000],
[101.09400000, 116.48800000, 0.38055253],
[101.23000000, 117.12900000, 0.38013755],
[101.25800000, 117.76600000, 0.37979800],
[101.16400000, 118.40600000, 0.38014894],
[100.93200000, 119.04800000, 0.38005592],
[100.55200000, 119.68300000, 0.37991224],
[100.12700000, 120.26800000, 0.37989649],
[100.19200000, 120.32500000, 0.38214578],
[109.36900000, 120.32500000, 0.37998126],
[100.25100000, 120.21100000, 0.00000000],
[99.99400000, 120.32500000, 0.37992479],
[90.63100000, 120.32500000, 0.37998875],
[90.63100000, 79.67500000, 0.00000000],
[99.99600000, 79.67500000, 0.37999656],
[100.56900000, 79.83000000, 0.37961543],
[101.90200000, 79.67500000, 0.00000000],
[109.36900000, 79.67500000, 0.37998606],
];

translate([0.0, 0.0, 10.00000000]) {
	linear_extrude(height = 0.40400000, center = false, convexity = 10, twist = 0) {
		union() {
			for( i=[0:len(points24)-2] ){ 
				x1 = points24[i][0];
				y1 = points24[i][1];
				x2 = points24[i+1][0];
				y2 = points24[i+1][1];
				width = points24[i+1][2];
				translateAndRotate(x1, y1, x2, y2, width);
			}
		}
	}
}
