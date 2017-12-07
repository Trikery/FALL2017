//Maya ASCII 2017ff05 scene
//Name: Plant_C.ma
//Last modified: Sat, Nov 11, 2017 05:36:57 PM
//Codeset: UTF-8
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Mac OS X 10.12.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "619CEF79-6C4B-74E2-4BA7-75A3B61F0D07";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.42843463073188737 3.8333910794383712 12.953875525176894 ;
	setAttr ".r" -type "double3" 5.6616472705908869 -361.4 -3.1069378838242674e-16 ;
	setAttr ".rp" -type "double3" 4.4408920985006262e-16 8.8817841970012523e-16 0 ;
	setAttr ".rpt" -type "double3" -1.7007649036574987e-16 -2.0124696308588909e-16 -6.6266004482005708e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "192CF312-6544-84A3-A380-E68B40F6A5AA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 13.690142712149093;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.390825380810536 1.5435465692354036 0.90316421781526279 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "57B0EB9D-474C-E1DD-C779-06B7D3DAFA23";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4BA86098-4949-93D5-9DD6-D8ABABDE7212";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "A2F71B92-114B-2A02-383B-75A74043E703";
	setAttr ".t" -type "double3" -0.80866810392141075 5.6221030235216087 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "7E3E5942-AA4D-0C6D-F8FD-64BAA7DADE82";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 9.8555971060643373;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "42BF220B-DC47-86B0-E3B8-FA9017DE8726";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0FD48980-F248-D0BB-C5A0-E28CBFB2E907";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	rename -uid "C8E043D3-F449-6064-F03C-20ADDF36CC19";
	setAttr ".t" -type "double3" 0 4.5799627304077148 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 6.5537552861407935 6.5537552861407935 9.1599254313229768 ;
	setAttr ".rp" -type "double3" 3.276877641677856 -7.2761300133402548e-16 4.5799627304077148 ;
	setAttr ".rpt" -type "double3" 0 -4.579962730407714 -4.5799627304077148 ;
	setAttr ".sp" -type "double3" 0.49999999978752019 -1.1102230241533556e-16 0.50000000160986313 ;
	setAttr ".spt" -type "double3" 2.7768776418903358 -6.1659069891868992e-16 4.0799627287978515 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "6EB5BA83-9C49-C933-7D84-36967CE407A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49241552599242677 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "left";
	rename -uid "43814D8A-6749-FC42-05BA-258FD87B2AF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1000000000003 0 2.2206680938552382e-13 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "16F6D8C6-1647-5D68-B6B3-86BBFE6BD7EA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 52.408947590667502;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pSolid1";
	rename -uid "77D95430-8A4A-035E-D875-9DA2E3EFF496";
	setAttr ".t" -type "double3" -0.58214556522249317 6.1143734923125121 0 ;
	setAttr ".s" -type "double3" 0.56431235342198605 0.56431235342198605 0.47401032576293889 ;
createNode mesh -n "pSolidShape1" -p "pSolid1";
	rename -uid "649AB9B7-9249-6CCB-C995-EEA0B404B6D6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.70120893931517037 0.83214057298330402 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane2";
	rename -uid "6151B1F2-3241-D04B-634F-9F94DF6C1152";
	setAttr ".t" -type "double3" 2.6927891180455426 0 0 ;
	setAttr ".r" -type "double3" -36.071658584457715 -9.1897030876103862 72.200011813933543 ;
	setAttr ".s" -type "double3" 4.7181651503570787 1.5123301922470811 1.5123301922470811 ;
	setAttr ".rp" -type "double3" -2.7014658451080322 0.1225242018699646 0.005718898959457876 ;
	setAttr ".sp" -type "double3" -0.49999999114510391 0.070748773229246081 0.0033022462454647592 ;
	setAttr ".spt" -type "double3" -2.2014658539629282 0.051775428640718525 0.0024166527139931164 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "30BEDA54-754C-4637-5EBD-8C9C48304D78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58955430140632026 0.32912070071825406 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pPlane3";
	rename -uid "1339E399-BE46-FB4C-3D9E-DC812D4ED859";
	setAttr ".t" -type "double3" 2.3258395511414554 0 0 ;
	setAttr ".r" -type "double3" 0 180 -69.877905328166946 ;
	setAttr ".s" -type "double3" 4.0836954803860079 1.3089613809858502 1.3089613809858502 ;
	setAttr ".rp" -type "double3" -2.7014658451080322 0.1225242018699646 0.005718898959457876 ;
	setAttr ".sp" -type "double3" -0.49999999114510391 0.070748773229246081 0.0033022462454647592 ;
	setAttr ".spt" -type "double3" -2.2014658539629282 0.051775428640718525 0.0024166527139931164 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "E0E87423-E440-5B84-2082-B7AE0C205AC9";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "pPlaneShape3Orig" -p "pPlane3";
	rename -uid "D72EC6EC-6D4B-D895-9DDB-D5B23B13BFC3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.5 0.33333334 0.5 0.66666669 0.5 1 0.5 0 1 0.33333334 1 0.66666669
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -5.5879354e-09 0.2263961 
		0.38413215 0.003524171 0.10592954 0.3929249 -0.045563806 -0.70082468 0.28533402 -0.16621272 
		-1.6586668 0.20812799 -9.3132257e-10 -1.5832484e-08 0.0041261446 -0.0048102285 -0.1189685 
		0.0068563106 -0.077365838 -0.90432203 0.0035764505 -0.20935094 -1.840718 -0.0011542584 
		-5.5879354e-09 0.2263961 -0.38115281 0.003524171 0.10592954 -0.38521028 -0.045563806 
		-0.70082468 -0.28058514 -0.16621272 -1.6586668 -0.21069995;
	setAttr -s 12 ".vt[0:11]"  -0.5 -1.110223e-16 0.5 -0.16666666 -1.110223e-16 0.5
		 0.16666669 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5 -0.5 0 0 -0.16666666 0 0 0.16666669 0 0
		 0.5 0 0 -0.5 1.110223e-16 -0.5 -0.16666666 1.110223e-16 -0.5 0.16666669 1.110223e-16 -0.5
		 0.5 1.110223e-16 -0.5;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 0 9 10 0 10 11 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -16 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -17 -13
		mu 0 4 6 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4";
	rename -uid "4036A074-0E43-13C7-3E2F-63A474F875A5";
	setAttr ".t" -type "double3" 2.522312689618941 2.6162255561081165 -0.0020917234934074713 ;
	setAttr ".r" -type "double3" 12.011915694408284 0 93.69681306539853 ;
	setAttr ".s" -type "double3" 3.0738870349297276 0.98528390218160633 0.98528390218160633 ;
	setAttr ".rp" -type "double3" -2.7014658451080322 0.1225242018699646 0.005718898959457876 ;
	setAttr ".sp" -type "double3" -0.49999999114510391 0.070748773229246081 0.0033022462454647592 ;
	setAttr ".spt" -type "double3" -2.2014658539629282 0.051775428640718525 0.0024166527139931164 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "BDF1E1A4-EA43-CEC9-9AEF-7D8D220B919D";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "pPlaneShape4Orig" -p "pPlane4";
	rename -uid "31B3517E-4D4F-0DF8-5E07-CCA395FBD632";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.5 0.33333334 0.5 0.66666669 0.5 1 0.5 0 1 0.33333334 1 0.66666669
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -5.5879354e-09 0.2263961 
		0.38413215 0.003524171 0.10592954 0.3929249 -0.045563806 -0.70082468 0.28533402 -0.16621272 
		-1.6586668 0.20812799 -9.3132257e-10 -1.5832484e-08 0.0041261446 -0.0048102285 -0.1189685 
		0.0068563106 -0.077365838 -0.90432203 0.0035764505 -0.20935094 -1.840718 -0.0011542584 
		-5.5879354e-09 0.2263961 -0.38115281 0.003524171 0.10592954 -0.38521028 -0.045563806 
		-0.70082468 -0.28058514 -0.16621272 -1.6586668 -0.21069995;
	setAttr -s 12 ".vt[0:11]"  -0.5 -1.110223e-16 0.5 -0.16666666 -1.110223e-16 0.5
		 0.16666669 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5 -0.5 0 0 -0.16666666 0 0 0.16666669 0 0
		 0.5 0 0 -0.5 1.110223e-16 -0.5 -0.16666666 1.110223e-16 -0.5 0.16666669 1.110223e-16 -0.5
		 0.5 1.110223e-16 -0.5;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 0 9 10 0 10 11 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -16 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -17 -13
		mu 0 4 6 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5";
	rename -uid "6B00F3DE-9742-53E5-EC1F-14BA2ADE14F6";
	setAttr ".t" -type "double3" 2.0971713817797997 2.6162255561081165 -0.0020917234934074713 ;
	setAttr ".r" -type "double3" 162.70058509076904 5.8092804920136443 109.35520720439503 ;
	setAttr ".s" -type "double3" 2.6844298462397278 0.86044980963209439 0.86044980963209439 ;
	setAttr ".rp" -type "double3" -2.7014658451080322 0.1225242018699646 0.005718898959457876 ;
	setAttr ".sp" -type "double3" -0.49999999114510391 0.070748773229246081 0.0033022462454647592 ;
	setAttr ".spt" -type "double3" -2.2014658539629282 0.051775428640718525 0.0024166527139931164 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	rename -uid "58BD2CBD-1747-BE00-1EAA-E0B36BDCEAF2";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "pPlaneShape5Orig" -p "pPlane5";
	rename -uid "83DC69CC-014D-B66E-550D-3EB06091A872";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.5 0.33333334 0.5 0.66666669 0.5 1 0.5 0 1 0.33333334 1 0.66666669
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -5.5879354e-09 0.2263961 
		0.38413215 0.003524171 0.10592954 0.3929249 -0.045563806 -0.70082468 0.28533402 -0.16621272 
		-1.6586668 0.20812799 -9.3132257e-10 -1.5832484e-08 0.0041261446 -0.0048102285 -0.1189685 
		0.0068563106 -0.077365838 -0.90432203 0.0035764505 -0.20935094 -1.840718 -0.0011542584 
		-5.5879354e-09 0.2263961 -0.38115281 0.003524171 0.10592954 -0.38521028 -0.045563806 
		-0.70082468 -0.28058514 -0.16621272 -1.6586668 -0.21069995;
	setAttr -s 12 ".vt[0:11]"  -0.5 -1.110223e-16 0.5 -0.16666666 -1.110223e-16 0.5
		 0.16666669 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5 -0.5 0 0 -0.16666666 0 0 0.16666669 0 0
		 0.5 0 0 -0.5 1.110223e-16 -0.5 -0.16666666 1.110223e-16 -0.5 0.16666669 1.110223e-16 -0.5
		 0.5 1.110223e-16 -0.5;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 0 9 10 0 10 11 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -16 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -17 -13
		mu 0 4 6 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane6";
	rename -uid "BA1E05B4-B74D-82D0-17F1-CCAF11E8892C";
	setAttr ".t" -type "double3" 0.70876780638138337 5.4295058692184242 -0.0020917234934074713 ;
	setAttr ".r" -type "double3" 200.44110932737911 -6.4028789969070168 126.70812038261099 ;
	setAttr ".s" -type "double3" 1.9263886446906164 0.45319816509484717 0.61747217753644501 ;
	setAttr ".rp" -type "double3" -2.7014658451080322 0.1225242018699646 0.005718898959457876 ;
	setAttr ".sp" -type "double3" -0.49999999114510391 0.070748773229246081 0.0033022462454647592 ;
	setAttr ".spt" -type "double3" -2.2014658539629282 0.051775428640718525 0.0024166527139931164 ;
createNode mesh -n "pPlaneShape6" -p "pPlane6";
	rename -uid "6814D4AC-0342-F591-5451-C28DB0CCAFCE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "pPlaneShape6Orig" -p "pPlane6";
	rename -uid "6EAEDC9F-2B42-99FD-EEC8-A6BDB4915AD3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.5 0.33333334 0.5 0.66666669 0.5 1 0.5 0 1 0.33333334 1 0.66666669
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -5.5879354e-09 0.2263961 
		0.38413215 0.003524171 0.10592954 0.3929249 -0.045563806 -0.70082468 0.28533402 -0.16621272 
		-1.6586668 0.20812799 -9.3132257e-10 -1.5832484e-08 0.0041261446 -0.0048102285 -0.1189685 
		0.0068563106 -0.077365838 -0.90432203 0.0035764505 -0.20935094 -1.840718 -0.0011542584 
		-5.5879354e-09 0.2263961 -0.38115281 0.003524171 0.10592954 -0.38521028 -0.045563806 
		-0.70082468 -0.28058514 -0.16621272 -1.6586668 -0.21069995;
	setAttr -s 12 ".vt[0:11]"  -0.5 -1.110223e-16 0.5 -0.16666666 -1.110223e-16 0.5
		 0.16666669 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5 -0.5 0 0 -0.16666666 0 0 0.16666669 0 0
		 0.5 0 0 -0.5 1.110223e-16 -0.5 -0.16666666 1.110223e-16 -0.5 0.16666669 1.110223e-16 -0.5
		 0.5 1.110223e-16 -0.5;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 0 9 10 0 10 11 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -16 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -17 -13
		mu 0 4 6 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane7";
	rename -uid "D6DD328A-8F46-FF5A-F0D6-F8A9A9C3C9CA";
	setAttr ".t" -type "double3" 0.70876780638138337 5.7783284626495064 -0.0020917234934074713 ;
	setAttr ".r" -type "double3" 45.725859108001572 28.629131598722402 77.628853248410749 ;
	setAttr ".s" -type "double3" 1.4008761404955654 0.32956719203445278 0.44902779265996395 ;
	setAttr ".rp" -type "double3" -2.7014658451080322 0.1225242018699646 0.005718898959457876 ;
	setAttr ".sp" -type "double3" -0.49999999114510391 0.070748773229246081 0.0033022462454647592 ;
	setAttr ".spt" -type "double3" -2.2014658539629282 0.051775428640718525 0.0024166527139931164 ;
createNode mesh -n "pPlaneShape7" -p "pPlane7";
	rename -uid "4E3DA687-474D-DAD0-089D-8BA1F0E122A3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "pPlaneShape7Orig" -p "pPlane7";
	rename -uid "6260058E-1F49-3B17-BC15-359F62631E0C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.5 0.33333334 0.5 0.66666669 0.5 1 0.5 0 1 0.33333334 1 0.66666669
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -5.5879354e-09 0.2263961 
		0.38413215 0.003524171 0.10592954 0.3929249 -0.045563806 -0.70082468 0.28533402 -0.16621272 
		-1.6586668 0.20812799 -9.3132257e-10 -1.5832484e-08 0.0041261446 -0.0048102285 -0.1189685 
		0.0068563106 -0.077365838 -0.90432203 0.0035764505 -0.20935094 -1.840718 -0.0011542584 
		-5.5879354e-09 0.2263961 -0.38115281 0.003524171 0.10592954 -0.38521028 -0.045563806 
		-0.70082468 -0.28058514 -0.16621272 -1.6586668 -0.21069995;
	setAttr -s 12 ".vt[0:11]"  -0.5 -1.110223e-16 0.5 -0.16666666 -1.110223e-16 0.5
		 0.16666669 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5 -0.5 0 0 -0.16666666 0 0 0.16666669 0 0
		 0.5 0 0 -0.5 1.110223e-16 -0.5 -0.16666666 1.110223e-16 -0.5 0.16666669 1.110223e-16 -0.5
		 0.5 1.110223e-16 -0.5;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 0 9 10 0 10 11 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -16 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -17 -13
		mu 0 4 6 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane8";
	rename -uid "7B19320F-894D-DCB7-81BB-BCA1FD5705CB";
	setAttr ".t" -type "double3" 2.6520795975264955 0 -0.033104073953129753 ;
	setAttr ".r" -type "double3" -113.5521381416176 156.77984680622515 -99.190678568887009 ;
	setAttr ".s" -type "double3" 4.0836954803860079 1.3089613809858502 1.3089613809858502 ;
	setAttr ".rp" -type "double3" -2.7014658451080322 0.1225242018699646 0.005718898959457876 ;
	setAttr ".sp" -type "double3" -0.49999999114510391 0.070748773229246081 0.0033022462454647592 ;
	setAttr ".spt" -type "double3" -2.2014658539629282 0.051775428640718525 0.0024166527139931164 ;
createNode mesh -n "pPlaneShape8" -p "pPlane8";
	rename -uid "5F3F6655-9E4A-B2B3-2B69-AC846FF183EE";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "pPlaneShape8Orig" -p "pPlane8";
	rename -uid "86891677-7548-FC15-47E0-C385CB5F0275";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0 0.33333334 0
		 0.66666669 0 1 0 0 0.5 0.33333334 0.5 0.66666669 0.5 1 0.5 0 1 0.33333334 1 0.66666669
		 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -5.5879354e-09 0.2263961 
		0.38413215 0.003524171 0.10592954 0.3929249 -0.045563806 -0.70082468 0.28533402 -0.16621272 
		-1.6586668 0.20812799 -9.3132257e-10 -1.5832484e-08 0.0041261446 -0.0048102285 -0.1189685 
		0.0068563106 -0.077365838 -0.90432203 0.0035764505 -0.20935094 -1.840718 -0.0011542584 
		-5.5879354e-09 0.2263961 -0.38115281 0.003524171 0.10592954 -0.38521028 -0.045563806 
		-0.70082468 -0.28058514 -0.16621272 -1.6586668 -0.21069995;
	setAttr -s 12 ".vt[0:11]"  -0.5 -1.110223e-16 0.5 -0.16666666 -1.110223e-16 0.5
		 0.16666669 -1.110223e-16 0.5 0.5 -1.110223e-16 0.5 -0.5 0 0 -0.16666666 0 0 0.16666669 0 0
		 0.5 0 0 -0.5 1.110223e-16 -0.5 -0.16666666 1.110223e-16 -0.5 0.16666669 1.110223e-16 -0.5
		 0.5 1.110223e-16 -0.5;
	setAttr -s 17 ".ed[0:16]"  0 1 0 0 4 0 1 2 0 1 5 1 2 3 0 2 6 1 3 7 0
		 4 5 1 4 8 0 5 6 1 5 9 1 6 7 1 6 10 1 7 11 0 8 9 0 9 10 0 10 11 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 3 -8 -2
		mu 0 4 0 1 5 4
		f 4 2 5 -10 -4
		mu 0 4 1 2 6 5
		f 4 4 6 -12 -6
		mu 0 4 2 3 7 6
		f 4 7 10 -15 -9
		mu 0 4 4 5 9 8
		f 4 9 12 -16 -11
		mu 0 4 5 6 10 9
		f 4 11 13 -17 -13
		mu 0 4 6 7 11 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4B31CAD4-AC44-05DE-5E94-F9AEF655BF38";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "4A85949E-FF46-0504-1016-8C8770B33ACF";
createNode displayLayer -n "defaultLayer";
	rename -uid "0D779178-144B-9C11-095A-189205CB4195";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F4D1034A-134E-72F9-DEEF-DEA06CB4DB59";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "90BC1BDB-3549-18EB-4297-C890F8F78109";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CEB11EAD-E84A-5E23-7A1A-0D8FC7294988";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "9A150E27-6340-007D-4E87-9989C8F68C8E";
createNode polyPlane -n "polyPlane1";
	rename -uid "25AA4D00-2F4C-16FA-42B4-97BF4F9127F5";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyPlatonicSolid -n "polyPlatonicSolid1";
	rename -uid "37CC982D-5141-FD48-C4CA-D79FEB02F51E";
	setAttr ".l" 1.4142999649047852;
	setAttr ".st" 2;
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "6B41B289-CC48-3ADB-506A-02ADCBF0220E";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[0:5]" -type "float3"  -0.27247521 0.92641604 0 0.054495048
		 -0.054495066 0 0.054495048 -0.054495066 0 0.054495048 -0.054495066 0 0.054495048
		 -0.054495066 0 0.08174257 0.21798018 0;
createNode polySplit -n "polySplit1";
	rename -uid "6ED30AA9-7340-D232-1472-FBBB02B35562";
	setAttr -s 3 ".e[0:2]"  0.44176999 0.438995 0.56326199;
	setAttr -s 3 ".d[0:2]"  -2147483644 -2147483642 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "50F01577-464B-18DB-861D-389215AD2FEE";
	setAttr -s 3 ".e[0:2]"  1 0.46655899 1;
	setAttr -s 3 ".d[0:2]"  -2147483646 -2147483647 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode animCurveTL -n "pSolidShape1_pnts_5__pntx";
	rename -uid "05BB781F-354C-D111-E864-D3872F2730ED";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pSolidShape1_pnts_5__pnty";
	rename -uid "6214D112-2B41-196E-7B59-31A189DC4948";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pSolidShape1_pnts_5__pntz";
	rename -uid "6F2991E3-7048-8349-9253-4D9B68E0CE80";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "B9AA4A68-9B4B-5D39-7C37-4997B3EFA4FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.56431235342198605 0 0 0 0 0.56431235342198605 0 0
		 0 0 0.47401032576293889 0 -0.58214556522249317 6.1143734923125121 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak2";
	rename -uid "B3BA636A-604D-E0F0-3CF6-058428F9E398";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[0]" -type "float3" -0.13553183 0.074832834 0.0099984556 ;
	setAttr ".tk[6]" -type "float3" -0.1276316 -0.017694857 -0.031076726 ;
	setAttr ".tk[7]" -type "float3" -0.0010322646 -0.01064203 0.23233442 ;
	setAttr ".tk[8]" -type "float3" 0.23842525 -0.012540255 -0.005851421 ;
	setAttr ".tk[9]" -type "float3" -0.0048587448 0.012540255 -0.23233442 ;
createNode polyPlane -n "polyPlane2";
	rename -uid "B38D890F-D949-A165-0BA6-B98B937355AF";
	setAttr ".sw" 3;
	setAttr ".sh" 2;
	setAttr ".cuv" 2;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "23EE1FA8-E041-FE2B-EABB-41B73F3043BC";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 0.32961836 1.8888093e-08
		 -0.0037150085 0.21024099 -0.33704832 0.42048204 -0.67038161 0.630723 0.16480918 -0.5
		 -0.16852419 -0.28975901 -0.50185752 -0.07951802 -0.83519083 0.130723 3.7776186e-08
		 -1 -0.33333331 -0.78975898 -0.66666669 -0.57951796 -1 -0.369277;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "3C3B835E-5347-A709-1295-B5B72666E99F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" 0.32987484 0.36927703 -0.4165433
		 0.36927703 0.32987484 0 -0.4165433 0;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "4E4206E3-D94E-740E-6B31-78B8FBCE8BC2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 0.56431235342198605 0 0 0 0 0.56431235342198605 0 0
		 0 0 0.47401032576293889 0 -0.58214556522249317 6.1143734923125121 0 1;
	setAttr ".s" -type "double3" 1.5706329047212808 1.5706329047212808 1.5706329047212808 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "8EDB5B7F-9E41-F2E6-71BD-95BC876B82FF";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk[0:16]" -type "float2" -0.44243538 0.041052073 -0.43615875
		 0.018131673 -0.39981452 0.031012595 -0.47322607 0.037031278 -0.46145129 0.0071058422
		 -0.42640489 -0.0065210164 -0.48322278 -0.001460609 -0.44967651 -0.022819594 -0.46145129
		 0.0071058422 -0.43600577 0.017320126 0.52939093 0.01612401 0.52037305 -0.012875944
		 0.54934537 -0.029836506 0.56033933 0.0065377504 0.48545319 0.028774798 0.58680248
		 -0.001460609 0.53468454 0.044690877;
createNode polyPinUV -n "polyPinUV1";
	rename -uid "246FDC65-8E4B-E049-7240-228C49CAC2D7";
	setAttr ".uopa" yes;
	setAttr ".op" 3;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "B9BE2045-F44B-5A41-4105-CA9E99B79CF6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "08FEF4BE-A148-9F1E-1E46-7C9763858E94";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[2]" "e[4]" "e[9:10]" "e[12]" "e[14]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "715B4632-DA4E-95CD-035A-3289ABFA4660";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.27552325 0.45744213 -0.044157997
		 0.29848471 -0.48675475 0.23834121 0.33764434 0.23561758 0.14885098 0.46756667 -0.19729677
		 -0.09003371 -0.13745809 0 -0.16180581 -0.03663373 -0.063381195 0.67748731 -0.23922059
		 0.49509716 -0.044608831 -0.12196633 -0.0058525205 -0.056124449 -0.067701712 -0.14321971
		 -0.23771149 -0.28689289 -0.55178988 0 -0.042791367 -0.072306216;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F5528502-E346-18D7-5F27-4A801F95FE3C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1053\n            -height 729\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n"
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1053\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1053\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E7145A00-C64A-4C69-62FA-459801FF411D";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "4653640A-584D-4165-E82C-59AFA85E869B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 0.56431235342198605 0 0 0 0 0.56431235342198605 0 0
		 0 0 0.47401032576293889 0 -0.58214556522249317 6.1143734923125121 0 1;
	setAttr ".s" -type "double3" 1.5706329047212808 1.5706329047212808 1.5706329047212808 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "EEB3B6FD-174A-BD3A-5A7C-1BA8BBC766FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "FE055890-9A42-AF11-217C-3A9CA5614951";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2]" "e[9]" "e[14]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "63BD5AB3-2041-D766-F477-8ABB98DC7239";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" -0.37690836 -0.33745778 -0.079446316
		 -0.099346191 -0.29401124 0.097196698 0.059190869 -0.041625261 0.23746806 0.26907116
		 -0.027313173 0.014868334 0.1925346 0.24987218 0.199285 0.038584828 -0.04220438 -0.033637598
		 -0.28207606 -0.31810713 0.185072 0.089671016 0.22840899 0.070909709;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "8EE42FA6-0A40-F1DE-0B3B-F68963BF7D83";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "0B4CF9CF-B744-CE75-26A8-BCB9270A71E8";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" 0.13633671 -0.067356303 0.10511887
		 -0.18383782 0.15020478 -0.3175191 0.019952178 -0.27266443 0.080548733 -0.25562686
		 0.0087020993 -0.14104697 0.053219438 -0.2464367 -0.00091922283 -0.19370884 0.091565371
		 -0.041373014 -0.029216945 -0.018695433 -0.068119287 -0.29099682 -0.084630609 -0.1488356
		 -0.19088858 -0.20193774;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "364437FE-584A-780D-FC6B-A385785DC3E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "EC50EEE8-264A-8F64-6455-46BB71B5B48F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0.11468448 0 0 -0.40745413
		 0 0 0.11468448 -2.7844415e-17 0.10131213 -0.40745413 -2.7844415e-17 0.10131213;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "3801177E-2C4D-E9CD-F070-38AE72E67036";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "CDBED751-C54E-7301-AD6B-56B6F9F3742F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "78E04BDD-AE4A-3E7C-F2ED-869F863D505C";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  -5.5879354e-09 0.2263961 0.38413215
		 0.003524171 0.10592954 0.3929249 -0.045563806 -0.70082468 0.28533402 -0.16621272
		 -1.65866685 0.20812799 -9.3132257e-10 -1.5832484e-08 0.0041261446 -0.0048102285 -0.1189685
		 0.0068563106 -0.077365838 -0.90432203 0.0035764505 -0.20935094 -1.84071803 -0.0011542584
		 -5.5879354e-09 0.2263961 -0.38115281 0.003524171 0.10592954 -0.38521028 -0.045563806
		 -0.70082468 -0.28058514 -0.16621272 -1.65866685 -0.21069995;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "841F6180-434D-FFCF-2697-729E0F95778C";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" -0.40255255 -0.77243137 -0.2740317
		 -0.49008787 -0.57904142 -0.25891235 -0.25964421 -0.020074874 -0.20215598 -0.26478627
		 -0.085485786 -0.59015161 0.069675416 -0.25825995 -0.087283015 0.072161615 0.18832833
		 0.14673787 -0.12710385 -0.91212189 -0.40553653 0.25338697 -0.13061696 0.3934198 0.19025919
		 -0.66344529;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "42EADC1C-7B44-FB67-CC3C-45895E2B735C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" 0.56531417 0.77271575 0.16326469
		 1 1.6847677e-08 -0.22728425 -0.40204945 5.9604645e-08;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "6B106A31-2444-E301-60BC-A5A5CE22C766";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 0.042710185 0.77271563 -0.14572778
		 0.43938237 -0.33416593 0.106049 -0.52260399 -0.22728425 0.30401218 0.62499797 0.11557421
		 0.2916646 -0.072863907 -0.041668713 -0.26130196 -0.37500203 0.56531411 0.47728026
		 0.37687606 0.14394692 0.18843804 -0.18938646 1.6847677e-08 -0.52271974;
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "CF1E759E-D246-DA76-F638-DF98A259829C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "B6F5BB40-FC43-FB96-146A-69AB697D1019";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV6";
	rename -uid "5A983BB4-C244-B735-73FE-F7954C83421B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "243DAB1E-F448-5854-5874-D081D7EB455E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk[0:3]" -type "float2" -0.56531399 -0.77271575 -0.16326457
		 -0.99999988 0 0.22728413 0.4020493 0;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "D6FB125B-B14F-EF93-50D1-2EBE1251AD9C";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" 0.31928611 0.92651635 0.37824035
		 0.73158473 0.62882972 0.74973339 0.57479793 0.49355254 0.44041455 0.58932859 0.24189746
		 0.69923806 0.30918217 0.46832758 0.52975917 0.37338108 0.42614812 0.21718168 0.12291521
		 0.87605828 0.76523715 0.4219023 0.69032913 0.23372114 0.074149609 0.61590636;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "0651589C-8C49-BCDC-F7AB-B2B8C63FBD32";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 0.43468583 -0.25011158 0.2897906
		 -0.25011158 0.14489529 -0.25011158 4.5831676e-08 -0.25011158 0.43468583 -0.36369583
		 0.2897906 -0.36369586 0.14489529 -0.36369586 0 -0.36369586 0.43468583 -0.47728017
		 0.28979057 -0.47728017 0.14489527 -0.47728014 1.2954649e-08 -0.4772802;
createNode polyLayoutUV -n "polyLayoutUV7";
	rename -uid "8CC34461-834E-9420-CBA0-FD9B68D4D95E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "49886D13-3648-3236-D30F-98A2B7513F7F";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk[0:11]" -type "float2" 0.23871821 0.00044393959
		 0.23871821 -0.11377156 0.23871821 -0.22798704 0.23871797 -0.34220251 0.32825232 0.00044393959
		 0.32825226 -0.11377156 0.3282522 -0.22798704 0.3282522 -0.34220263 0.41778642 0.00044396939
		 0.41778648 -0.11377168 0.41778642 -0.2279871 0.41778642 -0.34220257;
createNode transferAttributes -n "transferAttributes1";
	rename -uid "59396282-064A-0C23-F577-7DA568A6E085";
	setAttr ".uvs" 2;
	setAttr ".spa" 5;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
	setAttr ".mtd" 0;
createNode tweak -n "tweak1";
	rename -uid "70692F6F-3E47-BB6D-BEAF-6F894A8571A1";
createNode objectSet -n "set1";
	rename -uid "A43621C0-9147-55EB-9DC1-61A15F21F42A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId1";
	rename -uid "E6C9F876-C74F-1992-9330-E788A2383D73";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "C63FF925-3B49-B000-EEA3-9082C1971A29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "BC1C344C-D046-5407-DB76-06A00DBF483C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "0C154E18-9748-7D95-4587-9FBD180438B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "6018A6DF-D946-8A36-5D3D-8B8FB1E9BF5B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes2";
	rename -uid "32B53FAF-BC47-696A-8764-5FB80BC7A6AF";
	setAttr ".uvs" 2;
	setAttr ".spa" 5;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
	setAttr ".mtd" 0;
createNode tweak -n "tweak2";
	rename -uid "12669590-8A42-1F66-73A9-B4AC6B55C090";
createNode objectSet -n "set2";
	rename -uid "69F3DD68-DB42-FE97-9E66-4686467A7E9F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId3";
	rename -uid "7D134212-BC45-70C9-C714-24965FAA643B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "BFF460FE-5B45-CB36-53FB-E496EABAF201";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "7AA50D8A-4A4D-F0B7-D227-35B5237D41BE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "947A5D1C-2A45-EFCD-1EE4-D29A8C894858";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "98E99ECA-9747-F93C-03CE-17B1A1E809FB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes3";
	rename -uid "DE7E20EC-CB49-5E6A-B928-57B3D864BC24";
	setAttr ".uvs" 2;
	setAttr ".spa" 5;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
	setAttr ".mtd" 0;
createNode tweak -n "tweak3";
	rename -uid "205A6140-BC48-C1C3-4A0C-3F93C92E46E2";
createNode objectSet -n "set3";
	rename -uid "89CCDA46-9E40-31D1-F031-1590CDEB62F6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	rename -uid "532585CF-CF4F-B584-4244-78B08160BCF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "B88F4E76-2948-289A-D416-76B4A4129282";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "330971A4-764D-0B5D-F71B-D3A1FF9D3C41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "97BD1B41-2947-5314-28EE-138F40D3130E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "C9C9657E-1E47-0B78-0613-278E58067741";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes4";
	rename -uid "F8163FCF-4746-BA45-7605-C2B865AFA444";
	setAttr ".uvs" 2;
	setAttr ".spa" 5;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
	setAttr ".mtd" 0;
createNode tweak -n "tweak4";
	rename -uid "0C6D7A86-B245-69AA-84B6-83810ECA1A9F";
createNode objectSet -n "set4";
	rename -uid "DAD3FF2C-E74C-029F-0E8B-BDBCADC3549E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId7";
	rename -uid "42FAFADC-224E-3937-D73B-9285634456B4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "15AAC5AE-2242-ADFD-2531-C3BDE9FF1787";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	rename -uid "7A42A400-E449-9A7E-9763-628D71671466";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "72EF9767-3941-5FCB-D5FD-648F7ADADFBF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "8B717799-5C4B-DE16-5DB9-7D99C34B5116";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes5";
	rename -uid "29925328-F140-F6CD-F11B-3DA16C3C99F7";
	setAttr ".uvs" 2;
	setAttr ".spa" 5;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
	setAttr ".mtd" 0;
createNode tweak -n "tweak5";
	rename -uid "B6DB7537-8C4D-F736-6876-7BBC0C6D6D8C";
createNode objectSet -n "set5";
	rename -uid "6D20EEA4-3545-C624-6011-2DBDDD2E762E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId9";
	rename -uid "A31AD6CE-E74F-5F8D-A717-19A5C569E3A2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "BC9DE397-9944-7E6F-02B0-7DA85E4EB54F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	rename -uid "1ACD1FFA-0349-4E86-EF24-7794C511161D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "5445BCD3-BA40-3B52-A8B8-808D16B074E4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "2F42A597-CD4B-808C-55F6-F39DB567C457";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes6";
	rename -uid "CB2E4CC8-2341-6501-D83B-4F87A2611FD0";
	setAttr ".uvs" 2;
	setAttr ".spa" 5;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
	setAttr ".mtd" 0;
createNode tweak -n "tweak6";
	rename -uid "CAA577F2-3A4B-D22E-A7F3-89A21CCD97C0";
createNode objectSet -n "set6";
	rename -uid "566D9CB1-2F4B-C83E-EBA4-9D8C3C5F9763";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId11";
	rename -uid "D9045F98-E943-1C48-4A6E-7D9663AE5039";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "710461B2-A343-998C-7DF8-D4AAB2634019";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	rename -uid "712ABC3D-F24F-6977-77E8-CBBC257C2882";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "FA7AC063-6040-0334-D84D-72A99A74D858";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "DCCADB22-7C47-9FAD-73FC-99945BBBB961";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV10.out" "pPlaneShape1.i";
connectAttr "polyTweakUV10.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "polyTweakUV11.out" "pSolidShape1.i";
connectAttr "polyTweakUV11.uvtk[0]" "pSolidShape1.uvst[0].uvtw";
connectAttr "polyTweakUV13.out" "pPlaneShape2.i";
connectAttr "polyTweakUV13.uvtk[0]" "pPlaneShape2.uvst[0].uvtw";
connectAttr "groupId1.id" "pPlaneShape3.iog.og[0].gid";
connectAttr "set1.mwc" "pPlaneShape3.iog.og[0].gco";
connectAttr "groupId2.id" "pPlaneShape3.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pPlaneShape3.iog.og[1].gco";
connectAttr "transferAttributes1.og[0]" "pPlaneShape3.i";
connectAttr "tweak1.vl[0].vt[0]" "pPlaneShape3.twl";
connectAttr "groupId3.id" "pPlaneShape4.iog.og[0].gid";
connectAttr "set2.mwc" "pPlaneShape4.iog.og[0].gco";
connectAttr "groupId4.id" "pPlaneShape4.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "pPlaneShape4.iog.og[1].gco";
connectAttr "transferAttributes2.og[0]" "pPlaneShape4.i";
connectAttr "tweak2.vl[0].vt[0]" "pPlaneShape4.twl";
connectAttr "groupId5.id" "pPlaneShape5.iog.og[0].gid";
connectAttr "set3.mwc" "pPlaneShape5.iog.og[0].gco";
connectAttr "groupId6.id" "pPlaneShape5.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "pPlaneShape5.iog.og[1].gco";
connectAttr "transferAttributes3.og[0]" "pPlaneShape5.i";
connectAttr "tweak3.vl[0].vt[0]" "pPlaneShape5.twl";
connectAttr "groupId7.id" "pPlaneShape6.iog.og[0].gid";
connectAttr "set4.mwc" "pPlaneShape6.iog.og[0].gco";
connectAttr "groupId8.id" "pPlaneShape6.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "pPlaneShape6.iog.og[1].gco";
connectAttr "transferAttributes4.og[0]" "pPlaneShape6.i";
connectAttr "tweak4.vl[0].vt[0]" "pPlaneShape6.twl";
connectAttr "groupId11.id" "pPlaneShape7.iog.og[0].gid";
connectAttr "set6.mwc" "pPlaneShape7.iog.og[0].gco";
connectAttr "groupId12.id" "pPlaneShape7.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "pPlaneShape7.iog.og[1].gco";
connectAttr "transferAttributes6.og[0]" "pPlaneShape7.i";
connectAttr "tweak6.vl[0].vt[0]" "pPlaneShape7.twl";
connectAttr "groupId9.id" "pPlaneShape8.iog.og[0].gid";
connectAttr "set5.mwc" "pPlaneShape8.iog.og[0].gco";
connectAttr "groupId10.id" "pPlaneShape8.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "pPlaneShape8.iog.og[1].gco";
connectAttr "transferAttributes5.og[0]" "pPlaneShape8.i";
connectAttr "tweak5.vl[0].vt[0]" "pPlaneShape8.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPlatonicSolid1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyTweak2.out" "polySoftEdge1.ip";
connectAttr "pSolidShape1.wm" "polySoftEdge1.mp";
connectAttr "polySplit2.out" "polyTweak2.ip";
connectAttr "pSolidShape1_pnts_5__pntx.o" "polyTweak2.tk[5].tx";
connectAttr "pSolidShape1_pnts_5__pnty.o" "polyTweak2.tk[5].ty";
connectAttr "pSolidShape1_pnts_5__pntz.o" "polyTweak2.tk[5].tz";
connectAttr "polyPlane2.out" "polyTweakUV1.ip";
connectAttr "polyPlane1.out" "polyTweakUV2.ip";
connectAttr "polySoftEdge1.out" "polyAutoProj1.ip";
connectAttr "pSolidShape1.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyPinUV1.ip";
connectAttr "polyPinUV1.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyAutoProj2.ip";
connectAttr "pSolidShape1.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV6.ip";
connectAttr "polyTweak3.out" "polyLayoutUV1.ip";
connectAttr "polyTweakUV2.out" "polyTweak3.ip";
connectAttr "polyTweakUV6.out" "polyLayoutUV2.ip";
connectAttr "polyTweak4.out" "polyLayoutUV3.ip";
connectAttr "polyTweakUV1.out" "polyTweak4.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV7.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV8.ip";
connectAttr "polyLayoutUV3.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV8.out" "polyLayoutUV4.ip";
connectAttr "polyTweakUV7.out" "polyLayoutUV5.ip";
connectAttr "polyTweakUV9.out" "polyLayoutUV6.ip";
connectAttr "polyLayoutUV4.out" "polyTweakUV10.ip";
connectAttr "polyLayoutUV5.out" "polyTweakUV11.ip";
connectAttr "polyLayoutUV6.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyLayoutUV7.ip";
connectAttr "polyLayoutUV7.out" "polyTweakUV13.ip";
connectAttr "groupParts1.og" "transferAttributes1.ip[0].ig";
connectAttr "groupId1.id" "transferAttributes1.ip[0].gi";
connectAttr "pPlaneShape2.w" "transferAttributes1.src[0]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "pPlaneShape3.iog.og[0]" "set1.dsm" -na;
connectAttr "transferAttributes1.msg" "set1.ub[0]";
connectAttr "tweak1.og[0]" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pPlaneShape3.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pPlaneShape3Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts3.og" "transferAttributes2.ip[0].ig";
connectAttr "groupId3.id" "transferAttributes2.ip[0].gi";
connectAttr "pPlaneShape2.w" "transferAttributes2.src[0]";
connectAttr "groupParts4.og" "tweak2.ip[0].ig";
connectAttr "groupId4.id" "tweak2.ip[0].gi";
connectAttr "groupId3.msg" "set2.gn" -na;
connectAttr "pPlaneShape4.iog.og[0]" "set2.dsm" -na;
connectAttr "transferAttributes2.msg" "set2.ub[0]";
connectAttr "tweak2.og[0]" "groupParts3.ig";
connectAttr "groupId3.id" "groupParts3.gi";
connectAttr "groupId4.msg" "tweakSet2.gn" -na;
connectAttr "pPlaneShape4.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "pPlaneShape4Orig.w" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "groupParts5.og" "transferAttributes3.ip[0].ig";
connectAttr "groupId5.id" "transferAttributes3.ip[0].gi";
connectAttr "pPlaneShape2.w" "transferAttributes3.src[0]";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "groupId5.msg" "set3.gn" -na;
connectAttr "pPlaneShape5.iog.og[0]" "set3.dsm" -na;
connectAttr "transferAttributes3.msg" "set3.ub[0]";
connectAttr "tweak3.og[0]" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "pPlaneShape5.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "pPlaneShape5Orig.w" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "groupParts7.og" "transferAttributes4.ip[0].ig";
connectAttr "groupId7.id" "transferAttributes4.ip[0].gi";
connectAttr "pPlaneShape2.w" "transferAttributes4.src[0]";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "groupId7.msg" "set4.gn" -na;
connectAttr "pPlaneShape6.iog.og[0]" "set4.dsm" -na;
connectAttr "transferAttributes4.msg" "set4.ub[0]";
connectAttr "tweak4.og[0]" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "pPlaneShape6.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "pPlaneShape6Orig.w" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "groupParts9.og" "transferAttributes5.ip[0].ig";
connectAttr "groupId9.id" "transferAttributes5.ip[0].gi";
connectAttr "pPlaneShape2.w" "transferAttributes5.src[0]";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "groupId9.msg" "set5.gn" -na;
connectAttr "pPlaneShape8.iog.og[0]" "set5.dsm" -na;
connectAttr "transferAttributes5.msg" "set5.ub[0]";
connectAttr "tweak5.og[0]" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "pPlaneShape8.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "pPlaneShape8Orig.w" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "groupParts11.og" "transferAttributes6.ip[0].ig";
connectAttr "groupId11.id" "transferAttributes6.ip[0].gi";
connectAttr "pPlaneShape8.w" "transferAttributes6.src[0]";
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "groupId11.msg" "set6.gn" -na;
connectAttr "pPlaneShape7.iog.og[0]" "set6.dsm" -na;
connectAttr "transferAttributes6.msg" "set6.ub[0]";
connectAttr "tweak6.og[0]" "groupParts11.ig";
connectAttr "groupId11.id" "groupParts11.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "pPlaneShape7.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "pPlaneShape7Orig.w" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSolidShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape8.iog" ":initialShadingGroup.dsm" -na;
// End of Plant_C.ma
