//Maya ASCII 2017ff05 scene
//Name: Plant_Fern_B.ma
//Last modified: Sat, Nov 11, 2017 03:31:50 PM
//Codeset: UTF-8
requires maya "2017ff05";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "1.4.2.3";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Mac OS X 10.12.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "ABF9A223-D64E-B920-0AD8-08870D3EA5F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.63331471693019 4.9714474594041222 5.3625239127377871 ;
	setAttr ".r" -type "double3" -14.13835273961665 2452.9999999998204 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B5FF1CCE-4D40-A3D1-FD08-D6B9384D5440";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 14.153046339746114;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 1.5143653192646207 -2.9802322387695312e-08 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "82EB748D-0B4B-17BD-4911-3DAED7F59181";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "83B08E70-BD44-302D-CE1A-058919436BF8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "ACC1EFA0-A948-D0D1-4096-358C62C13923";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DA781CB8-8548-D347-E85F-199BE17C9DA5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "83B964B0-CD4D-525D-D56C-2C85B0E43122";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F2809B56-AA4A-547A-5D97-F186CE428450";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCylinder1";
	rename -uid "569E9B99-0D4E-4A5D-AC25-DFB80AD9167E";
	setAttr ".t" -type "double3" 0 0.81152800108262912 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "8D52EB69-454B-EC9A-44CF-098C6CBFD3EF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.38048824667930603 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2";
	rename -uid "4CCBFDD2-4B4B-3E9A-B99C-CE955307313A";
	setAttr ".t" -type "double3" 0 0.81152800108262912 0 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "6E58556F-7D40-164C-C87A-4EB9B6AA0A28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.27528131470137607 0.83831667299232182 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCylinder2";
	rename -uid "2C5C7BBE-3A49-ED2B-5E6C-619ABB6C4BC2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 7 ".uvst[0].uvsp[0:6]" -type "float2" 0.57812506 0.70843351
		 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625
		 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  0 0 0.0058172671 0 0 0.0058172671 
		0 0 0.0058172671 0 0 0.0058172671 0 0 0.0058172671 0 0 0.0058172671;
	setAttr -s 7 ".vt[0:6]"  0.39436188 1 -0.68305445 -0.39436162 1 -0.68305457
		 -0.78872347 1 -1.2382549e-07 -0.39436182 1 0.68305451 0.3943617 1 0.68305451 0.78872347 1 -6.2965309e-09
		 0 1 0;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 0 6 1
		 1 6 1 2 6 1 3 6 1 4 6 1 5 6 1;
	setAttr -s 6 -ch 18 ".fc[0:5]" -type "polyFaces" 
		f 3 0 7 -7
		mu 0 3 4 3 6
		f 3 1 8 -8
		mu 0 3 3 2 6
		f 3 2 9 -9
		mu 0 3 2 1 6
		f 3 3 10 -10
		mu 0 3 1 0 6
		f 3 4 11 -11
		mu 0 3 0 5 6
		f 3 5 6 -12
		mu 0 3 5 4 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3";
	rename -uid "2A94BC90-A742-9C69-0424-92A7920C25EC";
	setAttr ".t" -type "double3" 0 -0.78915402819071989 0 ;
	setAttr ".s" -type "double3" 1.4361865920852221 1.4361865920852221 1.4361865920852221 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "9E2E63B3-464D-B565-0AE8-A8A21F62AF3B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.26370363682508469 0.5006300857303978 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCylinder3";
	rename -uid "94B62E4C-2F49-D1C9-B26B-6293BF440F84";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 7 ".uvst[0].uvsp[0:6]" -type "float2" 0.57812506 0.70843351
		 0.42187503 0.70843351 0.34375 0.84375 0.421875 0.97906649 0.578125 0.97906649 0.65625
		 0.84375 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  0 0 0.0058172671 0 0 0.0058172671 
		0 0 0.0058172671 0 0 0.0058172671 0 0 0.0058172671 0 0 0.0058172671;
	setAttr -s 7 ".vt[0:6]"  0.39436188 1 -0.68305445 -0.39436162 1 -0.68305457
		 -0.78872347 1 -1.2382549e-07 -0.39436182 1 0.68305451 0.3943617 1 0.68305451 0.78872347 1 -6.2965309e-09
		 0 1 0;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 0 6 1
		 1 6 1 2 6 1 3 6 1 4 6 1 5 6 1;
	setAttr -s 6 -ch 18 ".fc[0:5]" -type "polyFaces" 
		f 3 0 7 -7
		mu 0 3 4 3 6
		f 3 1 8 -8
		mu 0 3 3 2 6
		f 3 2 9 -9
		mu 0 3 2 1 6
		f 3 3 10 -10
		mu 0 3 1 0 6
		f 3 4 11 -11
		mu 0 3 0 5 6
		f 3 5 6 -12
		mu 0 3 5 4 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "pCylinder3";
	rename -uid "C32C95D2-134A-7A24-958E-64B388BBB847";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0 0 1 0 0.5 1 0 0
		 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.39436188 0.99999988 -0.67723715 -0.39436162 0.99999994 -0.67723727
		 -0.78872347 0.99999994 0.0058171432 -0.39436182 0.99999988 0.6888718 0.3943617 0.99999988 0.6888718
		 0.78872347 0.99999988 0.0058172606 -0.013689226 1.52289963 -0.79996485 -0.72520363 1.46165478 -0.36392388
		 -0.70508587 1.49338794 0.36665887 0.033543225 1.52486706 0.80903798 0.66197312 1.5534327 0.402648
		 0.7443819 1.52298105 -0.40381145;
	setAttr -s 18 ".ed[0:17]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 0 1 0 6 0
		 1 6 0 1 7 0 2 7 0 2 8 0 3 8 0 3 9 0 4 9 0 4 10 0 5 10 0 5 11 0 0 11 0;
	setAttr -s 6 -ch 18 ".fc[0:5]" -type "polyFaces" 
		f 3 -1 6 -8
		mu 0 3 0 1 2
		f 3 -2 8 -10
		mu 0 3 3 4 5
		f 3 -3 10 -12
		mu 0 3 6 7 8
		f 3 -4 12 -14
		mu 0 3 9 10 11
		f 3 -5 14 -16
		mu 0 3 12 13 14
		f 3 -6 16 -18
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "left";
	rename -uid "E351EFC9-864F-2C1F-C535-D4A7EA50C838";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "8F43B0FD-E946-106E-53BE-FCBC9ECD031F";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	rename -uid "30C499CB-1849-9E4A-BD49-2A97EA4731DC";
	setAttr ".t" -type "double3" 0 2.7416238318631967 2.2200601958111608 ;
	setAttr ".r" -type "double3" -3.5935976727787158 0 0 ;
	setAttr ".s" -type "double3" 1.3874984643040262 1.2517915729648268 5.0209313831213569 ;
	setAttr ".rp" -type "double3" 2.2204460492503131e-16 -0.33393065986645798 -2.1947457186602461 ;
	setAttr ".rpt" -type "double3" 0 -0.73851707031216784 0.25096735649776769 ;
	setAttr ".sp" -type "double3" 0 -0.26676218875283975 -0.43711924166863286 ;
	setAttr ".spt" -type "double3" 2.2204460492503131e-16 -0.067168471113618219 -1.7576264769916135 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "7C4096CB-0C49-D244-F041-358135AEF368";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.85095053911209106 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  1.6930901e-14 -1.0665287 
		-0.33963442 5.3290705e-15 -1.2481292 -0.36555934 -8.9372953e-15 -1.0665287 -0.33963442 
		1.6930901e-14 -0.22393638 -0.12455592 5.3290705e-15 -0.40553686 -0.15048073 -8.9372953e-15 
		-0.22393638 -0.12455592 1.3822277e-14 0.33324319 -0.028172603 5.3290705e-15 0.14028138 
		-0.048361078 -5.8286709e-15 0.33324319 -0.028172603 0 0.49896359 0 0 0.28969961 0 
		0 0.49896359 0 0 -0.057498299 0.062880777 0 -0.26676226 0.062880777 0 -0.057498299 
		0.062880777;
createNode transform -n "pPlane2";
	rename -uid "82BEAD02-3544-5BC1-413E-CEAE297A3AFA";
	setAttr ".t" -type "double3" 0.30757609973381772 2.6631959397002154 1.9718016904589404 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -189.35169179901024 55.11383988911529 -187.59729101417446 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".rp" -type "double3" 0 -0.33393065986645781 -2.1947457186602453 ;
	setAttr ".rpt" -type "double3" 0 -0.73851707031216796 0.25096735649776625 ;
	setAttr ".sp" -type "double3" 4.0008081204689767e-17 -0.26676218875284063 -0.43711924166863209 ;
	setAttr ".spt" -type "double3" -4.0008081204689767e-17 -0.067168471113617192 -1.7576264769916132 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	rename -uid "EC6FA1B6-7F4F-6701-E6E5-F8B626759B60";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.69994768500328064 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.5541352 0.0073260069
		 0.69994771 0.0073260069 0.84576011 0.0073260069 0.5541352 0.253663 0.69994771 0.253663
		 0.84576011 0.253663 0.5541352 0.5 0.69994771 0.5 0.84576011 0.5 0.5541352 0.746337
		 0.69994771 0.746337 0.84576011 0.746337 0.5541352 0.99267399 0.69994771 0.99267399
		 0.84576011 0.99267399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  0.14022154 -0.80415493 -0.24783677 
		0.14022154 -1.0047176 -0.2627247 0.14022154 -0.80415493 -0.24783677 0.14022154 -0.015895218 
		-0.079856604 0.14022154 -0.21645798 -0.094744682 0.14022154 -0.015895218 -0.079856604 
		0.14022154 0.60154796 -0.020892927 0.14022154 0.40098521 -0.035780992 0.14022154 
		0.60154796 -0.020892927 0 0.49896359 0 0 0.28969961 0 0 0.49896359 0 0 -0.057498299 
		0.062880777 0 -0.26676226 0.062880777 0 -0.057498299 0.062880777;
	setAttr -s 15 ".vt[0:14]"  -0.5 -1.110223e-16 0.5 0 -1.110223e-16 0.5
		 0.5 -1.110223e-16 0.5 -0.5 -5.5511151e-17 0.25 0 -5.5511151e-17 0.25 0.5 -5.5511151e-17 0.25
		 -0.5 0 0 0 0 0 0.5 0 0 -0.5 5.5511151e-17 -0.25 0 5.5511151e-17 -0.25 0.5 5.5511151e-17 -0.25
		 -0.5 1.110223e-16 -0.5 0 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane3";
	rename -uid "89890AC6-D047-B431-247D-7DB42568356E";
	setAttr ".t" -type "double3" 0 2.7416238318631967 1.9778937133073502 ;
	setAttr ".r" -type "double3" 8.7505170434335522 -114.33073551754794 -7.9838159209655437 ;
	setAttr ".s" -type "double3" 1.3874984643040262 1.2517915729648268 5.0209313831213569 ;
	setAttr ".rp" -type "double3" 2.2204460492503131e-16 -0.33393065986645798 -2.1947457186602461 ;
	setAttr ".rpt" -type "double3" 0 -0.73851707031216784 0.25096735649776769 ;
	setAttr ".sp" -type "double3" 0 -0.26676218875283975 -0.43711924166863286 ;
	setAttr ".spt" -type "double3" 2.2204460492503131e-16 -0.067168471113618219 -1.7576264769916135 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	rename -uid "1E923C4C-F24B-C193-01B9-6DB69DFD0244";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.69994765520095825 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.5541352 0.0073260069
		 0.69994771 0.0073260069 0.84576011 0.0073260069 0.5541352 0.253663 0.69994771 0.253663
		 0.84576011 0.253663 0.5541352 0.5 0.69994771 0.5 0.84576011 0.5 0.5541352 0.746337
		 0.69994771 0.746337 0.84576011 0.746337 0.5541352 0.99267399 0.69994771 0.99267399
		 0.84576011 0.99267399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  -0.049944911 -0.70946985 
		-0.28125674 -0.049944911 -0.8828212 -0.30324551 -0.049944911 -0.70946985 -0.28125674 
		-0.032352313 -0.068923905 -0.10121232 -0.032352313 -0.24227583 -0.12320109 -0.032352313 
		-0.068923905 -0.10121232 -0.020891519 0.41345936 -0.042004626 -0.020891519 0.22505611 
		-0.054048769 -0.020891519 0.41345936 -0.042004626 0 0.49896359 0 0 0.28969961 0 0 
		0.49896359 0 0 -0.057498299 0.062880777 0 -0.26676226 0.062880777 0 -0.057498299 
		0.062880777;
	setAttr -s 15 ".vt[0:14]"  -0.5 -1.110223e-16 0.5 0 -1.110223e-16 0.5
		 0.5 -1.110223e-16 0.5 -0.5 -5.5511151e-17 0.25 0 -5.5511151e-17 0.25 0.5 -5.5511151e-17 0.25
		 -0.5 0 0 0 0 0 0.5 0 0 -0.5 5.5511151e-17 -0.25 0 5.5511151e-17 -0.25 0.5 5.5511151e-17 -0.25
		 -0.5 1.110223e-16 -0.5 0 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4";
	rename -uid "9924F46E-AB47-83DD-4232-50B425D3926A";
	setAttr ".t" -type "double3" 0.30757609973381772 2.6631959397002154 1.9718016904589404 ;
	setAttr ".r" -type "double3" -33.411155825908125 63.051000093783458 -1.0308291196784192 ;
	setAttr ".s" -type "double3" 1.1962754720462068 1.079271504349453 4.3289540240809963 ;
	setAttr ".rp" -type "double3" 0 -0.33393065986645781 -2.1947457186602453 ;
	setAttr ".rpt" -type "double3" 0 -0.73851707031216796 0.25096735649776625 ;
	setAttr ".sp" -type "double3" 4.0008081204689767e-17 -0.26676218875284063 -0.43711924166863209 ;
	setAttr ".spt" -type "double3" -4.0008081204689767e-17 -0.067168471113617192 -1.7576264769916132 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	rename -uid "BD65B265-5341-D06B-D676-A8B51A00A2FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.85095053911209106 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.5541352 0.0073260069
		 0.69994771 0.0073260069 0.84576011 0.0073260069 0.5541352 0.253663 0.69994771 0.253663
		 0.84576011 0.253663 0.5541352 0.5 0.69994771 0.5 0.84576011 0.5 0.5541352 0.746337
		 0.69994771 0.746337 0.84576011 0.746337 0.5541352 0.99267399 0.69994771 0.99267399
		 0.84576011 0.99267399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  -0.043136612 -0.60962069 
		-0.26300442 -0.043136612 -0.81420183 -0.27397993 -0.043136612 -0.60962069 -0.26300442 
		-0.050510723 0.23093186 -0.055835187 -0.050510723 0.026350919 -0.066810742 -0.050510723 
		0.23093186 -0.055835187 0 0.70197469 0 0 0.49271077 0 0 0.70197469 0 0 0.49896359 
		0 0 0.28969961 0 0 0.49896359 0 0 -0.057498299 0.062880777 0 -0.26676226 0.062880777 
		0 -0.057498299 0.062880777;
	setAttr -s 15 ".vt[0:14]"  -0.5 -1.110223e-16 0.5 0 -1.110223e-16 0.5
		 0.5 -1.110223e-16 0.5 -0.5 -5.5511151e-17 0.25 0 -5.5511151e-17 0.25 0.5 -5.5511151e-17 0.25
		 -0.5 0 0 0 0 0 0.5 0 0 -0.5 5.5511151e-17 -0.25 0 5.5511151e-17 -0.25 0.5 5.5511151e-17 -0.25
		 -0.5 1.110223e-16 -0.5 0 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5";
	rename -uid "2F74BE22-2E4D-D6F8-58A8-FC8521FD433A";
	setAttr ".t" -type "double3" 0.14154331819141985 2.7416238318631967 1.6979982422352167 ;
	setAttr ".r" -type "double3" -30.058480827202281 -170.36641273671117 2.2666806417146801 ;
	setAttr ".s" -type "double3" 1.2203367761556345 1.1009794474525356 4.4160245038183952 ;
	setAttr ".rp" -type "double3" 2.2204460492503131e-16 -0.33393065986645798 -2.1947457186602461 ;
	setAttr ".rpt" -type "double3" 0 -0.73851707031216784 0.25096735649776769 ;
	setAttr ".sp" -type "double3" 0 -0.26676218875283975 -0.43711924166863286 ;
	setAttr ".spt" -type "double3" 2.2204460492503131e-16 -0.067168471113618219 -1.7576264769916135 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	rename -uid "753DF4DA-EC46-0172-C7B8-60836EEF608E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.85095053911209106 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.5541352 0.0073260069
		 0.69994771 0.0073260069 0.84576011 0.0073260069 0.5541352 0.253663 0.69994771 0.253663
		 0.84576011 0.253663 0.5541352 0.5 0.69994771 0.5 0.84576011 0.5 0.5541352 0.746337
		 0.69994771 0.746337 0.84576011 0.746337 0.5541352 0.99267399 0.69994771 0.99267399
		 0.84576011 0.99267399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  -0.0098520042 -0.64369416 
		-0.2586064 -0.0098520042 -0.8271054 -0.28372622 -0.0098520042 -0.64369416 -0.2586064 
		-0.0098520042 0.19628891 -0.047238573 -0.0098520042 0.012877669 -0.072358392 -0.0098520042 
		0.19628891 -0.047238573 0 0.70197469 0 0 0.49271077 0 0 0.70197469 0 0 0.49896359 
		0 0 0.28969961 0 0 0.49896359 0 0 -0.057498299 0.062880777 0 -0.26676226 0.062880777 
		0 -0.057498299 0.062880777;
	setAttr -s 15 ".vt[0:14]"  -0.5 -1.110223e-16 0.5 0 -1.110223e-16 0.5
		 0.5 -1.110223e-16 0.5 -0.5 -5.5511151e-17 0.25 0 -5.5511151e-17 0.25 0.5 -5.5511151e-17 0.25
		 -0.5 0 0 0 0 0 0.5 0 0 -0.5 5.5511151e-17 -0.25 0 5.5511151e-17 -0.25 0.5 5.5511151e-17 -0.25
		 -0.5 1.110223e-16 -0.5 0 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane6";
	rename -uid "7838E017-D941-CEA5-E76F-58B6C929EB46";
	setAttr ".t" -type "double3" -0.12886118602664759 2.6631959397002154 2.2239816444845171 ;
	setAttr ".r" -type "double3" -38.102447959963705 -56.024316906451901 5.4986376634325271 ;
	setAttr ".s" -type "double3" 1.1962754720462068 1.079271504349453 4.3289540240809963 ;
	setAttr ".rp" -type "double3" 0 -0.33393065986645781 -2.1947457186602453 ;
	setAttr ".rpt" -type "double3" 0 -0.73851707031216796 0.25096735649776625 ;
	setAttr ".sp" -type "double3" 4.0008081204689767e-17 -0.26676218875284063 -0.43711924166863209 ;
	setAttr ".spt" -type "double3" -4.0008081204689767e-17 -0.067168471113617192 -1.7576264769916132 ;
createNode mesh -n "pPlaneShape6" -p "pPlane6";
	rename -uid "1BF2BBB1-DD40-CA64-F984-37B92AC2F973";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.85095053911209106 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.5541352 0.0073260069
		 0.69994771 0.0073260069 0.84576011 0.0073260069 0.5541352 0.253663 0.69994771 0.253663
		 0.84576011 0.253663 0.5541352 0.5 0.69994771 0.5 0.84576011 0.5 0.5541352 0.746337
		 0.69994771 0.746337 0.84576011 0.746337 0.5541352 0.99267399 0.69994771 0.99267399
		 0.84576011 0.99267399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt[0:14]" -type "float3"  -0.038155869 -0.5016709 -0.21939339 
		-0.038155869 -0.70183718 -0.23460943 -0.038155869 -0.5016709 -0.21939339 -0.038155869 
		0.28873155 -0.050121251 -0.038155869 0.088565193 -0.0653373 -0.038155869 0.28873155 
		-0.050121251 0 0.70197469 0 0 0.49271077 0 0 0.70197469 0 0 0.49896359 0 0 0.28969961 
		0 0 0.49896359 0 0 -0.057498299 0.062880777 0 -0.26676226 0.062880777 0 -0.057498299 
		0.062880777;
	setAttr -s 15 ".vt[0:14]"  -0.5 -1.110223e-16 0.5 0 -1.110223e-16 0.5
		 0.5 -1.110223e-16 0.5 -0.5 -5.5511151e-17 0.25 0 -5.5511151e-17 0.25 0.5 -5.5511151e-17 0.25
		 -0.5 0 0 0 0 0 0.5 0 0 -0.5 5.5511151e-17 -0.25 0 5.5511151e-17 -0.25 0.5 5.5511151e-17 -0.25
		 -0.5 1.110223e-16 -0.5 0 1.110223e-16 -0.5 0.5 1.110223e-16 -0.5;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EBB3262D-5F4F-F914-B331-E99FD7F265B5";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "73B0DFDB-2244-BE7E-CF76-189F98299639";
createNode displayLayer -n "defaultLayer";
	rename -uid "4A35E099-A744-432C-38C8-13BC86D30E26";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B2ECAF2A-3046-60B4-14C4-83980F669BC2";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "76BE025A-1A4F-518D-D5CA-2FA3E4C74DB5";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "21C8CA55-F54F-470D-A253-A29183A6744D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "70C8AB60-B145-707C-C903-01873A3B4963";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "73D482D6-E54F-C3CB-BD7C-E5AC5AC47ED2";
	setAttr ".sa" 6;
	setAttr ".sh" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak1";
	rename -uid "3D023165-0A4E-147C-FDE8-A9B633EFB284";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[6:23]" -type "float3"  0.072787486 0.17971799 -0.12607157
		 -0.072787426 0.17971799 -0.12607159 -0.14557488 0.17971799 -1.7353878e-08 -0.072787471
		 0.17971799 0.12607157 0.072787441 0.17971799 0.12607159 0.14557488 0.17971799 4.3384696e-09
		 -0.008411197 0.44271997 0.014568605 0.0084111877 0.44271997 0.014568605 0.016822385
		 0.44271997 2.0053843e-09 0.0084111895 0.44271997 -0.014568616 -0.0084111895 0.44271997
		 -0.014568605 -0.016822385 0.44271997 -5.0134619e-10 -0.10563835 0 0.18297087 0.10563825
		 0 0.18297094 0.21127652 0 2.5186123e-08 0.1056383 0 -0.1829709 -0.10563826 0 -0.18297093
		 -0.21127652 0 -6.2965309e-09;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "81848D1F-4647-F79D-8FEE-51ACA8EA9A4E";
	setAttr ".dc" -type "componentList" 1 "f[18:23]";
createNode polySplitEdge -n "polySplitEdge1";
	rename -uid "E0728562-A34A-D415-CB81-499896540681";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[42:47]";
createNode polyTweak -n "polyTweak2";
	rename -uid "158CC5C5-E54A-D978-0825-A882D689275F";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0 -0.0044736932 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.0044736932 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.0044736918 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.0044736918 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "53FDD715-A240-9BE0-0272-11BDEFCDC255";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.811528 0.0058172643 ;
	setAttr ".rs" 556739430;
	setAttr ".lt" -type "double3" -3.5218976736935236e-23 4.0554379106261844e-17 0.26 ;
	setAttr ".ls" -type "double3" 0.16666663283751584 0.16666663283751584 0.16666663283751584 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".off" 0.10000000149011612;
	setAttr ".tk" 0.10000000149011612;
	setAttr ".cbn" -type "double3" -0.78872346878051758 1.8115280010826291 -0.67723727226257324 ;
	setAttr ".cbx" -type "double3" 0.78872346878051758 1.8115280010826291 0.68887180089950562 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "B1CA9B40-4C4D-E511-C1A9-0AB98A33F109";
	setAttr ".ics" -type "componentList" 1 "vtx[11:12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "704FDDF2-9948-DF7F-D481-29837AC6CE1D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[11:12]" -type "float3"  0.032863438 0 0.056921214
		 -0.032863438 0 -0.056921214;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "6A0AFAAE-1044-7190-9D3E-798B0515AB77";
	setAttr ".ics" -type "componentList" 1 "vtx[9:10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "05A43311-5B44-62C4-39CA-2A96E2B3CC41";
	setAttr ".ics" -type "componentList" 1 "vtx[7:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "9E8452DF-894C-3DC1-ADF3-C69C935EE5FC";
	setAttr ".ics" -type "componentList" 1 "vtx[14:15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "579AD2CA-7B44-7B94-5E7C-98902EAF2677";
	setAttr ".ics" -type "componentList" 1 "vtx[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "C9BBDAAC-A046-C809-2247-ED850A0F82A1";
	setAttr ".ics" -type "componentList" 1 "vtx[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".am" yes;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "E4E23194-5540-69CF-EEFB-959D8619A8AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak4";
	rename -uid "3EC75FA7-5249-28D1-FAF7-FD9750B126BE";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[24:29]" -type "float3"  0.74750966 0.44956771 -0.40107593
		 0.014371486 0.52296495 -0.79891562 -0.72833139 0.46145928 -0.36101857 -0.60225582
		 0.49608877 0.44690746 0.03364519 0.42454147 0.81693614 0.6647501 0.55362797 0.40881628;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "E1021AD6-414B-B7CF-EBDD-979180511164";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak5";
	rename -uid "1C9FECC8-F44F-AE91-357F-92B7B8398BCC";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[7:12]" -type "float3"  0.014371337 0.26296493 -0.12615204
		 -0.1367889 0.20145938 -0.029782206 -0.01071316 0.23608886 0.095089316 0.033645265
		 0.16454145 0.12359065 0.073207498 0.29362795 0.056998074 0.155967 0.18956777 -0.069839627;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "D6A76EA9-BC47-77E5-9E50-1D8C145159A6";
	setAttr ".version" -type "string" "1.3.0.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "40223D49-8946-5D7A-0CC5-5DAE25874DF5";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "AFA3AD2D-3C4F-87B8-97B9-E493ED334790";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "ABBD35CB-1E47-175A-2898-64A6BD999198";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyNormal -n "polyNormal1";
	rename -uid "45D1B881-064B-2909-1A96-D9801738DE11";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "4B242D0C-414D-8E79-A37B-189D3AA21B03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:5]";
	setAttr ".ix" -type "matrix" 1.4361865920852221 0 0 0 0 1.4361865920852221 0 0 0 0 1.4361865920852221 0
		 0 -0.78915402819071989 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.64703244 0.0083546769 ;
	setAttr ".rs" 986821333;
	setAttr ".lt" -type "double3" 3.9704669402545328e-23 1.1102230246251565e-16 0.56961953714166724 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1327540707255266 0.64703239268771906 -0.97263909008387683 ;
	setAttr ".cbx" -type "double3" 1.1327540707255266 0.64703247829111055 0.98934844411747058 ;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "823A692A-154F-A0BF-237B-B9A8AC9EC9AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.4361865920852221 0 0 0 0 1.4361865920852221 0 0 0 0 1.4361865920852221 0
		 0 -0.78915402819071989 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak6";
	rename -uid "2A78E97D-0F49-60BC-EC37-739821CA75E0";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0.0044635534 0.0075758528 -0.013548367 ;
	setAttr ".tk[1]" -type "float3" -0.0044635013 0.0075758528 -0.013548371 ;
	setAttr ".tk[2]" -type "float3" -0.0089270137 0.0075758528 -0.0058172587 ;
	setAttr ".tk[3]" -type "float3" -0.0044635003 0.0075758528 0.0019138196 ;
	setAttr ".tk[4]" -type "float3" 0.0044634948 0.007575836 0.0019138611 ;
	setAttr ".tk[5]" -type "float3" 0.0089269299 0.0075758528 -0.0058172573 ;
	setAttr ".tk[12]" -type "float3" -0.20987159 -0.47630721 0.36178297 ;
	setAttr ".tk[13]" -type "float3" 0.2115425 -0.48273957 0.36274767 ;
	setAttr ".tk[14]" -type "float3" 0.42552999 -0.48565209 -0.0072286972 ;
	setAttr ".tk[15]" -type "float3" 0.21398738 -0.49509424 -0.37603849 ;
	setAttr ".tk[16]" -type "float3" -0.21579719 -0.50613028 -0.37708351 ;
	setAttr ".tk[17]" -type "float3" -0.4256705 -0.49025571 -0.0092374086 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "47D929A5-CF4D-28A6-515B-2FBAC8FC6881";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[24:29]" -type "float3"  0.090660311 0.075383715 -0.050382867
		 -0.031031936 0.0018946556 -0.099261127 -0.090660311 -0.0056618853 -0.045461446 -0.19405037
		 -0.0045077093 -0.029554099 0.0029555082 0.10253667 0.099261127 0.080492556 0.0056618853
		 0.049119849;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4B7081A6-1442-EB21-F099-DD83AAAA25CE";
	setAttr ".dc" -type "componentList" 1 "f[0:5]";
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "4F0F0AEB-E24D-1C5B-0A00-05A2C7DC0E91";
	setAttr ".ics" -type "componentList" 1 "e[6:11]";
	setAttr ".cv" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E5D74349-1F41-9C4D-526C-5EBE3DD3597B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 192\n            -height 367\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 192\n            -height 367\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 192\n            -height 367\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1053\n            -height 778\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
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
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1053\\n    -height 778\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1053\\n    -height 778\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "0D8C9B19-C944-CAF3-BC83-998B349343B8";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "0513EDC0-3E45-A3EA-A875-F9A78F31B71E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -17570.621494079369 9767.8567547173898 ;
	setAttr ".tgi[0].vh" -type "double2" -16234.13906740204 10669.047195097774 ;
	setAttr -s 19 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -16842.857421875;
	setAttr ".tgi[0].ni[0].y" 9974.2861328125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -16995.71484375;
	setAttr ".tgi[0].ni[1].y" 10102.857421875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -17457.142578125;
	setAttr ".tgi[0].ni[2].y" 9974.2861328125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -17168.572265625;
	setAttr ".tgi[0].ni[3].y" 10427.142578125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -17310;
	setAttr ".tgi[0].ni[4].y" 10117.142578125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -17150;
	setAttr ".tgi[0].ni[5].y" 10315.7138671875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -17168.572265625;
	setAttr ".tgi[0].ni[6].y" 10624.2861328125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -17295.71484375;
	setAttr ".tgi[0].ni[7].y" 10131.4287109375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -16988.572265625;
	setAttr ".tgi[0].ni[8].y" 10347.142578125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -17150;
	setAttr ".tgi[0].ni[9].y" 9974.2861328125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -16995.71484375;
	setAttr ".tgi[0].ni[10].y" 9848.5712890625;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -16535.71484375;
	setAttr ".tgi[0].ni[11].y" 9974.2861328125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 674.28570556640625;
	setAttr ".tgi[0].ni[12].y" 31.428571701049805;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -17295.71484375;
	setAttr ".tgi[0].ni[13].y" 10387.142578125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -17168.572265625;
	setAttr ".tgi[0].ni[14].y" 10525.7138671875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -16988.572265625;
	setAttr ".tgi[0].ni[15].y" 10191.4287109375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -16681.427734375;
	setAttr ".tgi[0].ni[16].y" 10262.857421875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -16848.572265625;
	setAttr ".tgi[0].ni[17].y" 10525.7138671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -16842.857421875;
	setAttr ".tgi[0].ni[18].y" 10315.7138671875;
	setAttr ".tgi[0].ni[18].nvs" 18304;
createNode polyPlane -n "polyPlane1";
	rename -uid "5C5B9A84-C94C-2221-E52E-7D8107158876";
	setAttr ".sw" 2;
	setAttr ".sh" 4;
	setAttr ".cuv" 2;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "E49C03DC-A54E-32A4-7A1F-3181A60EFF56";
	setAttr ".uopa" yes;
	setAttr -s 15 ".uvtk[0:14]" -type "float2" 0.5541352 0.0073260069 0.19994769
		 0.0073260069 -0.15423983 0.0073260069 0.5541352 0.0036630034 0.19994769 0.0036630034
		 -0.15423983 0.0036630034 0.5541352 0 0.19994769 0 -0.15423983 0 0.5541352 -0.0036630034
		 0.19994769 -0.0036630034 -0.15423983 -0.0036630034 0.5541352 -0.0073260069 0.19994769
		 -0.0073260069 -0.15423983 -0.0073260069;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "86A01F3A-2E47-22D8-1823-71BC927A1CCD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[13]" "e[15]" "e[17]" "e[19]" "e[21]" "e[23]";
	setAttr ".uic" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "3CA0C8AD-8548-CA18-A349-A395C8D105A8";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" -0.0041781869 0.003036499 0.0074032722 ;
	setAttr ".tk[1]" -type "float3" 0.004386439 0.0030365586 0.0074032759 ;
	setAttr ".tk[2]" -type "float3" 0.0086687487 0.0030366206 -1.3905553e-05 ;
	setAttr ".tk[3]" -type "float3" 0.0043864418 0.0030365614 -0.0074310959 ;
	setAttr ".tk[4]" -type "float3" -0.004178185 0.0030365614 -0.0074310959 ;
	setAttr ".tk[5]" -type "float3" -0.0084604938 0.0030365614 -1.390683e-05 ;
	setAttr ".tk[7]" -type "float3" -0.030746896 -0.00076815486 -0.089410111 ;
	setAttr ".tk[8]" -type "float3" -0.081662886 -0.0075746854 -0.040949702 ;
	setAttr ".tk[9]" -type "float3" -0.18529928 -0.0068090763 -0.033988249 ;
	setAttr ".tk[10]" -type "float3" 0.0026621937 0.099849887 0.089410111 ;
	setAttr ".tk[11]" -type "float3" 0.072504207 0.0026252642 0.044245031 ;
	setAttr ".tk[12]" -type "float3" 0.081662886 0.072720081 -0.045382708 ;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "519C2A94-524C-7D6B-E644-5CA9D0A2CFA6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[13]" "e[15]" "e[17]" "e[19]" "e[21]" "e[23]";
	setAttr ".uic" yes;
createNode animCurveTL -n "pPlane2_translateX";
	rename -uid "152D6B7A-5B42-D9B8-D73B-5D88EDC24F15";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pPlane2_translateY";
	rename -uid "258D1E13-B746-AFA4-4AE6-A491BB5CD464";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 2.7416238318631967;
createNode animCurveTL -n "pPlane2_translateZ";
	rename -uid "81E30753-5043-11BA-8314-91BC6444AE57";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 2.2200601958111608;
createNode animCurveTU -n "pPlane2_visibility";
	rename -uid "E5069EA9-A545-AC53-B62D-75B99B1F6655";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pPlane2_rotateX";
	rename -uid "37F24A7A-CE4A-2A8A-1B23-B9BC1EC2E4C5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -216.69449440225657;
createNode animCurveTA -n "pPlane2_rotateY";
	rename -uid "5261F778-7B47-A63A-704C-F1AB74C7EBE1";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 55.113839889115319;
createNode animCurveTA -n "pPlane2_rotateZ";
	rename -uid "83FD625E-7F46-7FB5-F51F-FDA96651E2FF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -187.59729101417525;
createNode animCurveTU -n "pPlane2_scaleX";
	rename -uid "21D22303-3F4E-79F9-4F2F-99BEC1F9A5FD";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1.3874984643040262;
createNode animCurveTU -n "pPlane2_scaleY";
	rename -uid "78591D48-F94F-7779-B52F-B292A339672A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 1.2517915729648268;
createNode animCurveTU -n "pPlane2_scaleZ";
	rename -uid "20D89DCE-304E-6E63-34D4-BAB0AE10806A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 5.0209313831213569;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "7BE7E68B-CD4B-6D04-3FC2-B4B6B5D212FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
createNode polyMapSew -n "polyMapSew3";
	rename -uid "11535926-C945-6074-898B-328FA3BDFCEE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:29]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "4E4592F2-4C45-3714-B65A-36A4E5CD9B50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
createNode polyCylProj -n "polyCylProj1";
	rename -uid "C61C1850-3C48-3E82-3CA0-C4A54F7AE046";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1.4361865920852221 0 0 0 0 1.4361865920852221 0 0 0 0 1.4361865920852221 0
		 0 -0.78915402819071989 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.62669661641120911 0.0065153837203979492 ;
	setAttr ".ps" -type "double2" 180 1.6303371787071228 ;
	setAttr ".r" 2.3108282089233398;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "EB570538-D944-3D41-777B-0187C8ABDFEA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1.4361865920852221 0 0 0 0 1.4361865920852221 0 0 0 0 1.4361865920852221 0
		 0 -0.78915402819071989 0 1;
	setAttr ".s" -type "double3" 2.310828203456285 2.310828203456285 2.310828203456285 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyCylProj -n "polyCylProj2";
	rename -uid "4B66F569-564C-3171-8C84-D68E68867BDF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1.4361865920852221 0 0 0 0 1.4361865920852221 0 0 0 0 1.4361865920852221 0
		 0 -0.78915402819071989 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0.62669661641120911 0.0065153837203979492 ;
	setAttr ".ps" -type "double2" 180 1.6303371787071228 ;
	setAttr ".r" 2.3108282089233398;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "14BBBF27-424C-BA20-EE32-15BA5457BA47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1.4361865920852221 0 0 0 0 1.4361865920852221 0 0 0 0 1.4361865920852221 0
		 0 -0.78915402819071989 0 1;
	setAttr ".s" -type "double3" 2.310828203456285 2.310828203456285 2.310828203456285 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSew -n "polyMapSew4";
	rename -uid "268FEE99-D24B-2168-44E4-DA95F005156A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[25]";
createNode polyMapSew -n "polyMapSew5";
	rename -uid "3A37DDBC-A04C-D4FD-F152-4992B84E51E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19]";
createNode polyMapSew -n "polyMapSew6";
	rename -uid "F8DE4814-1544-FD5E-2F18-C69B8CCCD055";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "F96BC3B0-5049-1F9B-8E5D-AE9FD82FDF73";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.27563211 -0.3106097 0.26917824
		 -0.38553518 0.25694174 -0.43972477 0.18294035 -0.4986431 0.33012059 -0.24640238 0.17146167
		 -0.26562557 0.23918769 -0.20713462 0.17921436 -0.33560249 -0.053822696 0.39240852
		 -0.12578142 0.39951858 -0.28994107 0.25282884 -0.33986509 0.32520628 -0.0095028579
		 0.36727968 -0.070470095 0.056005001 -0.12888271 -0.065907985 -0.080338955 0.44076443
		 0.1965307 -0.24861059 -0.23152977 0.10795468 -0.26527816 0.36002356 -0.44258505 0.49854803;
createNode polyMapSew -n "polyMapSew7";
	rename -uid "625928F1-F34C-9386-C058-3CBA8428CC9F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[23]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "5CC2CEF2-FD4D-3719-00FB-0DA746EE66E7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".uvtk[0:17]" -type "float2" -0.17337227 0.19227022 -0.20672542
		 -0.036908321 0.096049309 -0.069971122 0.22109103 0.041034758 0.095250875 0.24448678
		 -0.22679061 0.029445231 0.080266446 -0.0059657693 -0.47123262 0.42986572 0.14007306
		 0.035640121 -0.14873022 0.0744524 -0.14086175 -0.1638633 0.078638941 -0.25493014
		 0.2150898 -0.05503732 0.26395178 -0.033151925 0.29139251 -0.0082456172 0.20038462
		 0.063059807 0.16016793 -0.13624986 -0.47464338 -0.34593141;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "6C54B0E4-0B41-5CE2-4A31-3E93639491EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[25]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "B4152320-3242-C641-8DA3-8582C8228B6F";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.59222007 0.078944191 0.53515315
		 0.29250103 0.26611054 0.22998756 0.22773343 0.083702147 0.4030579 -0.022682503 0.70079327
		 -0.34268221 0.46618828 -0.28241193 0.86185157 -0.066545606 0.16856253 -0.1185261
		 0.37346715 -0.22572652 0.45419902 -0.043747962 0.32843122 -0.53297305 0.18701202
		 -0.032261431 0.061115563 0.073993504 0.12505287 0.028951585 0.032485008 -0.076477304
		 0.10538006 0.26321983 0.77850044 -0.68419796 0.45518899 -0.72161734 0.32756701 0.058755696;
	setAttr -s 2 ".uvtk";
	setAttr -av ".uvtk[10].tu";
	setAttr -av ".uvtk[10].tv";
	setAttr -av ".uvtk[19].tu";
	setAttr -av ".uvtk[19].tv";
createNode animCurveTL -n "pCylinderShape3_pnts_0__pntx";
	rename -uid "9D4CDAA7-2349-FD9C-3A38-38AFB6D7BE74";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_0__pnty";
	rename -uid "F071B1EE-4441-57F5-F98C-61B852CD14EC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_0__pntz";
	rename -uid "800FBCB3-594D-DE70-4CC0-E0BA73D176E4";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_10__pntx";
	rename -uid "FF8D1389-214E-705F-6161-EF9083F841E5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_10__pnty";
	rename -uid "F800FFE7-4745-108A-E140-BCBFE0370EE7";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_10__pntz";
	rename -uid "1E4E85E5-FB42-8031-0854-6DBA65A3B795";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_11__pntx";
	rename -uid "EA6E3548-D54D-79A0-252A-0E945FE7BAA3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_11__pnty";
	rename -uid "3DDA354D-ED49-D9D7-DD3E-4F95013649E3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_11__pntz";
	rename -uid "D9BB3477-F449-75E6-AA52-8AA7BFC95FC5";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_12__pntx";
	rename -uid "FCB39FD7-8E45-03ED-B509-A3AE056F4848";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_12__pnty";
	rename -uid "C7E6E34A-2A40-94BC-9190-FD849033D5AC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_12__pntz";
	rename -uid "BF37F258-3840-023C-CBCA-EA8C5952A343";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_13__pntx";
	rename -uid "FF5F89A8-0C44-A362-8FE6-89B5509DA67E";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_13__pnty";
	rename -uid "A829971B-A842-BA6D-9326-199C1D5F5E91";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_13__pntz";
	rename -uid "A588CE82-6C42-9953-D428-2ABA7E6A164B";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_14__pntx";
	rename -uid "CDD35285-D449-F9F5-28A1-D2B97877E982";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_14__pnty";
	rename -uid "18370E2A-A140-983C-900C-5584244C1106";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_14__pntz";
	rename -uid "09E0E736-2B4B-3BD1-2466-5BB82BB545BA";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_15__pntx";
	rename -uid "5AA9D1BA-8B4E-70C5-D1A2-22855F98220D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_15__pnty";
	rename -uid "ED5C0AA8-6A4F-25E2-B2DF-588FEF7DA06A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_15__pntz";
	rename -uid "7DE0B6B3-594A-37E6-4F71-E4800616C969";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_16__pntx";
	rename -uid "3F21EAB1-8E4D-2F84-FD70-64899B5F569C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_16__pnty";
	rename -uid "E709EF1E-F941-A82E-E8A1-A48A953D9C65";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_16__pntz";
	rename -uid "D3FA8422-034C-4083-D9E8-D592661E46EB";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_17__pntx";
	rename -uid "C06BB060-DD49-109A-48A3-8FA0C489FE19";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_17__pnty";
	rename -uid "633A56B0-E54F-5BAD-9C80-A5B81DE7E165";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_17__pntz";
	rename -uid "D03F8FF6-B745-402F-2D74-78AD5E0920C3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_1__pntx";
	rename -uid "69905449-0B48-32F2-FA89-EE8BEFD20DFE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_1__pnty";
	rename -uid "6A24591A-B041-2729-E9B1-54AB74F5E692";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_1__pntz";
	rename -uid "907CA3AE-6D4A-D944-3ECB-BD9203D12FDC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_2__pntx";
	rename -uid "7C61BF03-3A44-4D64-5373-098F81E6DC2C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_2__pnty";
	rename -uid "EA311E48-DA4F-BC29-F47E-729E1BE62606";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_2__pntz";
	rename -uid "892088E5-304E-BC69-D54C-3BA64AD1E8BF";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_3__pntx";
	rename -uid "AAD6F90A-0A45-17F6-D664-00AE4252E550";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_3__pnty";
	rename -uid "FCB31CAA-BC4C-56D0-7E5C-43A3ED643E50";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_3__pntz";
	rename -uid "0D9B844C-2142-27B5-51CB-07BDC594F468";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_4__pntx";
	rename -uid "D3F560A7-C445-514E-0DFD-57BC2E4D2F81";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_4__pnty";
	rename -uid "FBEF532D-F646-A25F-5A11-868B8D81F1EE";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_4__pntz";
	rename -uid "EE36FB15-2B4E-0001-667E-87921BA3A5F3";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_5__pntx";
	rename -uid "5A79AEFD-2C4D-6087-9DAC-2083BB271224";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_5__pnty";
	rename -uid "AD14E0CC-B344-CAAA-1DB3-888393074899";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_5__pntz";
	rename -uid "1274A3D2-1F4A-BF79-5EC2-09B1998572EC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_6__pntx";
	rename -uid "1916D829-5B45-4185-97A0-2CA8DCA759D9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_6__pnty";
	rename -uid "725BE47C-E44C-61B0-17D4-3B8E1D1BFD5C";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_6__pntz";
	rename -uid "CD0BD729-984B-21EB-ED1E-76980681F693";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_7__pntx";
	rename -uid "47DC38D7-6D46-1AF8-6368-A1BE9432C145";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_7__pnty";
	rename -uid "BCB006D4-7C43-E030-8205-8F96AF5AE335";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_7__pntz";
	rename -uid "5552D028-A244-AAA1-E1DB-79862D167957";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_8__pntx";
	rename -uid "E547983A-DD42-778F-295F-F6811DB04A6A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_8__pnty";
	rename -uid "9F6985BC-7144-C246-B010-ACBDF98F394D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_8__pntz";
	rename -uid "F1BF99C8-FB48-6373-2D9F-E8A805C67247";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_9__pntx";
	rename -uid "3310F5F3-4847-86C6-DE25-D59C66BE7D3D";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_9__pnty";
	rename -uid "44C8B4F5-4D4E-82F2-8BF7-8BA5F33B0BD0";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCylinderShape3_pnts_9__pntz";
	rename -uid "3CE81F65-B843-55A4-039D-6FB9523BA676";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCylinder3_rotateX";
	rename -uid "7E433004-1C41-093E-15C7-69B4711A54A8";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCylinder3_rotateY";
	rename -uid "6039D156-394A-6A22-D860-E792F87D44DC";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCylinder3_rotateZ";
	rename -uid "F86A0A46-A840-411A-C66E-9FB8E9F961D9";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "polyTweakUV4_uvTweak_10__uvTweakU";
	rename -uid "786FB375-BA4A-0C6B-8A0C-568A3D346925";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.12709891796112061;
createNode animCurveTU -n "polyTweakUV4_uvTweak_10__uvTweakV";
	rename -uid "EAC54F3A-BF43-B44C-EBAC-5A972CCE9152";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.36455380916595459;
createNode animCurveTU -n "polyTweakUV4_uvTweak_19__uvTweakU";
	rename -uid "7F2AEAE4-D740-6383-37AC-55BCDC0BDB26";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 -0.096477657556533813;
createNode animCurveTU -n "polyTweakUV4_uvTweak_19__uvTweakV";
	rename -uid "72E963F5-4648-50EF-2399-E6B9155A398A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  1 0.51024043560028076;
createNode polyCylProj -n "polyCylProj3";
	rename -uid "498B70D1-604F-4824-5F01-E0AAF217AFBB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 1.5143653154373169 -2.9802322387695312e-08 ;
	setAttr ".ps" -type "double2" 180 1.7129051685333252 ;
	setAttr ".r" 2.2911498546600342;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "A3F75380-D04D-94DF-5D89-3886A0FB177A";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.99793315 0.67370623 1.081601977
		 -0.10570425 -0.65045232 -0.50400251 0.57694125 0.58035463 0.68997073 -0.16961682
		 0.18705994 0.46545953 0.31450129 -0.24944267 -0.16714588 0.3391152 -0.032177627 -0.33645251
		 -0.48351455 0.21218707 -0.35551447 -0.42426294 -0.74492985 -0.80254948 0.9035399
		 -0.44744366 0.5718441 -0.51909673 0.19149381 -0.61491472 -0.1205036 -0.69557756 -0.43529433
		 -0.74035197 -0.76352644 0.095759518 -1.011838198 0 -0.92524868 -0.56993258;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "877E8291-8A49-AD54-A516-8B98E0BCA477";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.81152800108262912 0 1;
	setAttr ".s" -type "double3" 1.7946720123291016 1.7946720123291016 1.7946720123291016 ;
	setAttr ".o" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSew -n "polyMapSew8";
	rename -uid "F9453BEB-5941-78C5-1D3C-C58387AF9A43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:23]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "5D48056C-524F-652A-25C8-C3BE1251AE15";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" -0.16406336 -0.20849594 -0.23588338
		 -0.2262585 -0.48815703 -0.19112782 -0.2707414 -0.073443919 -0.41310364 -0.044732481
		 -0.15259063 -0.37221292 -0.33490539 0.041184574 -0.60630304 -0.50299519 -0.16024679
		 -0.2940098 -0.24779172 -0.82252777 -0.014404476 -0.092285618 -0.36986974 -0.162233
		 -0.6479131 0.30181304;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "DF4B5F72-5343-3F19-8188-B8AEB0BC57EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweak -n "polyTweak9";
	rename -uid "E651F039-964C-D484-ED91-1E89074E23A4";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr -s 18 ".tk";
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "4F11A967-774E-E500-4759-799B6AC346A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "0D4BE802-8440-C5DF-9F62-7A9C1CDC8159";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".l" 1;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
	setAttr ".rbf" 1;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "6B6E4BB6-9A4D-89DA-AFB2-8C96C699DAF8";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.096049532 0.235333 -0.081802398
		 0.12404278 0.072278231 -0.049053252 0.28621969 -0.048740625 0.30697012 0.19950709
		 0.16751133 0.51161885 0.36935103 0.44068354 -0.043381006 0.40584511 0.16914886 -0.60944462
		 0.050750703 -0.82676917 0.28700733 -0.86934859 0.47156966 0.66785938 0.37078041 -0.5379203
		 0.096880496 -0.3333689 0.30769563 -0.29692709 -0.051305741 -0.52796996 -0.1036028
		 -0.20257878 0.057856619 0.73058629 0.28461054 0.77186573 0.47366202 -0.76479667;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "B270CA9E-7644-4DA0-B807-41B9892B69CB";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" -0.083795846 -0.35878569
		 -0.1283541 -0.3023743 -0.093531549 -0.090258539 -0.037112854 -0.30907083 -0.096345752
		 -0.26833734 -0.0069979522 -0.24788284 -0.075345889 -0.22582567 0.0041178465 -0.18059751
		 -0.067760184 -0.17948812 -0.0049168319 -0.1130013 -0.074045405 -0.13272424 -0.13510481
		 -0.094448671 -0.13220701 -0.26209006 -0.11548415 -0.23505631 -0.10491994 -0.19506422
		 -0.10557693 -0.16212171 -0.11504963 -0.12760077 -0.033313364 -0.05099722 -0.078592077
		 0 -0.12470576 -0.055147134;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "E1D71C85-6E48-C8D7-1792-B29874FA9458";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk[0:12]" -type "float2" -0.26872376 0.49926525 -0.066486396
		 0.49982822 -0.18042266 0.63095516 -0.36935499 0.32384109 -0.43211994 0.48990887 -0.065511383
		 0.14954281 -0.26774868 0.14897984 -0.17006865 -0.0018930319 0.035119772 0.32496685
		 0.11402796 0.15745124 -0.1658304 0.32518312 0.10880963 0.48967707 -0.44070584 0.15457648;
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "9A5C8945-6C4B-10D6-17C1-10853D419C1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "08AB74BE-7741-F989-662A-CC99EC200EEB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:11]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "8F162B17-9D4D-2CAB-3473-DE82A3EA9082";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.024201792 -0.085280821
		 0.017410435 -0.089516059 0.023278277 -0.096128404 0.031439859 -0.09612897 0.032245953
		 -0.086659983 0.026944082 -0.074745134 0.034639794 -0.077463053 0.018892653 -0.078767978
		 0.026940953 -0.11751223 0.022411536 -0.12579595 0.031421829 -0.12743405 0.038552724
		 -0.068802617 0.034637053 -0.11479545 0.024200153 -0.1069761 0.032244582 -0.10559822
		 0.018535711 -0.11439119 0.016559668 -0.10197499 0.022773754 -0.06638547 0.031426448
		 -0.064823888 0.03854873 -0.1234565;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "FF88D17C-8944-1277-A128-5EA9B1D78896";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.027283452 0.065633126 0.03488807
		 0.055656482 0.028173514 0.018751316 0.018988516 0.057099629 0.029200803 0.049814131
		 0.013549764 0.046514269 0.025408708 0.042459834 0.011407726 0.03480773 0.023945585
		 0.03439771 0.012780532 0.022986412 0.024901442 0.026219416 0.03543983 0.019357227
		 0.035439026 0.048616048 0.032439809 0.043949518 0.030476134 0.037003536 0.030491572
		 0.031253688 0.032040428 0.025201965 0.01754842 0.012082377 0.025295042 0.0030480563
		 0.033507075 0.012531222;
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
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV11.out" "pCylinderShape1.i";
connectAttr "polyTweakUV11.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "polyTweakUV9.out" "pCylinderShape2.i";
connectAttr "polyTweakUV9.uvtk[0]" "pCylinderShape2.uvst[0].uvtw";
connectAttr "pCylinder3_rotateX.o" "pCylinder3.rx";
connectAttr "pCylinder3_rotateY.o" "pCylinder3.ry";
connectAttr "pCylinder3_rotateZ.o" "pCylinder3.rz";
connectAttr "polyTweakUV10.out" "pCylinderShape3.i";
connectAttr "polyTweakUV10.uvtk[0]" "pCylinderShape3.uvst[0].uvtw";
connectAttr "polyTweakUV1.out" "pPlaneShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "pPlane2_translateX.o" "pPlane2.tx";
connectAttr "pPlane2_translateY.o" "pPlane2.ty";
connectAttr "pPlane2_translateZ.o" "pPlane2.tz";
connectAttr "pPlane2_rotateX.o" "pPlane2.rx";
connectAttr "pPlane2_rotateY.o" "pPlane2.ry";
connectAttr "pPlane2_rotateZ.o" "pPlane2.rz";
connectAttr "pPlane2_visibility.o" "pPlane2.v";
connectAttr "pPlane2_scaleX.o" "pPlane2.sx";
connectAttr "pPlane2_scaleY.o" "pPlane2.sy";
connectAttr "pPlane2_scaleZ.o" "pPlane2.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "polyTweak2.out" "polySplitEdge1.ip";
connectAttr "deleteComponent1.og" "polyTweak2.ip";
connectAttr "|pCylinder2|polySurfaceShape1.o" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak3.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak3.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert6.mp";
connectAttr "polyTweak4.out" "polySoftEdge1.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge1.mp";
connectAttr "polySplitEdge1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySoftEdge2.ip";
connectAttr "pCylinderShape2.wm" "polySoftEdge2.mp";
connectAttr "polyMergeVert6.out" "polyTweak5.ip";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polySurfaceShape2.o" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak6.out" "polySoftEdge3.ip";
connectAttr "pCylinderShape3.wm" "polySoftEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak6.ip";
connectAttr "polySoftEdge1.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyDelEdge1.ip";
connectAttr "polyTweak7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "pCylinder3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "polyTweak4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr ":defaultArnoldDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "polyTweak6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "polyTweak5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr ":defaultArnoldDisplayDriver.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "polySoftEdge3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "polyNormal1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "polySoftEdge1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "|pCylinder3|polySurfaceShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "deleteComponent2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "polyDelEdge1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "polySurfaceShape2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr ":defaultArnoldFilter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "pCylinderShape3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "polyExtrudeEdge2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr ":defaultArnoldRenderOptions.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "polySoftEdge2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "polyPlane1.out" "polyTweakUV1.ip";
connectAttr "polyTweak8.out" "polyMapSew1.ip";
connectAttr "polySoftEdge2.out" "polyTweak8.ip";
connectAttr "polyMapSew1.out" "polyMapSew2.ip";
connectAttr "polySoftEdge3.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapSew3.ip";
connectAttr "polyMapSew3.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyCylProj1.ip";
connectAttr "pCylinderShape3.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyAutoProj1.ip";
connectAttr "pCylinderShape3.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyCylProj2.ip";
connectAttr "pCylinderShape3.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyAutoProj2.ip";
connectAttr "pCylinderShape3.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyMapSew5.ip";
connectAttr "polyMapSew5.out" "polyMapSew6.ip";
connectAttr "polyMapSew6.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSew7.ip";
connectAttr "polyMapSew7.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4_uvTweak_10__uvTweakU.o" "polyTweakUV4.uvtk[10].tu";
connectAttr "polyTweakUV4_uvTweak_10__uvTweakV.o" "polyTweakUV4.uvtk[10].tv";
connectAttr "polyTweakUV4_uvTweak_19__uvTweakU.o" "polyTweakUV4.uvtk[19].tu";
connectAttr "polyTweakUV4_uvTweak_19__uvTweakV.o" "polyTweakUV4.uvtk[19].tv";
connectAttr "polyDelEdge1.out" "polyCylProj3.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj3.mp";
connectAttr "polyCylProj3.out" "polyTweakUV5.ip";
connectAttr "polyMapSew2.out" "polyAutoProj3.ip";
connectAttr "pCylinderShape2.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyMapSew8.ip";
connectAttr "polyMapSew8.out" "polyTweakUV6.ip";
connectAttr "polyTweak9.out" "polyLayoutUV1.ip";
connectAttr "polyTweakUV4.out" "polyTweak9.ip";
connectAttr "pCylinderShape3_pnts_0__pntx.o" "polyTweak9.tk[0].tx";
connectAttr "pCylinderShape3_pnts_0__pnty.o" "polyTweak9.tk[0].ty";
connectAttr "pCylinderShape3_pnts_0__pntz.o" "polyTweak9.tk[0].tz";
connectAttr "pCylinderShape3_pnts_1__pntx.o" "polyTweak9.tk[1].tx";
connectAttr "pCylinderShape3_pnts_1__pnty.o" "polyTweak9.tk[1].ty";
connectAttr "pCylinderShape3_pnts_1__pntz.o" "polyTweak9.tk[1].tz";
connectAttr "pCylinderShape3_pnts_2__pntx.o" "polyTweak9.tk[2].tx";
connectAttr "pCylinderShape3_pnts_2__pnty.o" "polyTweak9.tk[2].ty";
connectAttr "pCylinderShape3_pnts_2__pntz.o" "polyTweak9.tk[2].tz";
connectAttr "pCylinderShape3_pnts_3__pntx.o" "polyTweak9.tk[3].tx";
connectAttr "pCylinderShape3_pnts_3__pnty.o" "polyTweak9.tk[3].ty";
connectAttr "pCylinderShape3_pnts_3__pntz.o" "polyTweak9.tk[3].tz";
connectAttr "pCylinderShape3_pnts_4__pntx.o" "polyTweak9.tk[4].tx";
connectAttr "pCylinderShape3_pnts_4__pnty.o" "polyTweak9.tk[4].ty";
connectAttr "pCylinderShape3_pnts_4__pntz.o" "polyTweak9.tk[4].tz";
connectAttr "pCylinderShape3_pnts_5__pntx.o" "polyTweak9.tk[5].tx";
connectAttr "pCylinderShape3_pnts_5__pnty.o" "polyTweak9.tk[5].ty";
connectAttr "pCylinderShape3_pnts_5__pntz.o" "polyTweak9.tk[5].tz";
connectAttr "pCylinderShape3_pnts_6__pntx.o" "polyTweak9.tk[6].tx";
connectAttr "pCylinderShape3_pnts_6__pnty.o" "polyTweak9.tk[6].ty";
connectAttr "pCylinderShape3_pnts_6__pntz.o" "polyTweak9.tk[6].tz";
connectAttr "pCylinderShape3_pnts_7__pntx.o" "polyTweak9.tk[7].tx";
connectAttr "pCylinderShape3_pnts_7__pnty.o" "polyTweak9.tk[7].ty";
connectAttr "pCylinderShape3_pnts_7__pntz.o" "polyTweak9.tk[7].tz";
connectAttr "pCylinderShape3_pnts_8__pntx.o" "polyTweak9.tk[8].tx";
connectAttr "pCylinderShape3_pnts_8__pnty.o" "polyTweak9.tk[8].ty";
connectAttr "pCylinderShape3_pnts_8__pntz.o" "polyTweak9.tk[8].tz";
connectAttr "pCylinderShape3_pnts_9__pntx.o" "polyTweak9.tk[9].tx";
connectAttr "pCylinderShape3_pnts_9__pnty.o" "polyTweak9.tk[9].ty";
connectAttr "pCylinderShape3_pnts_9__pntz.o" "polyTweak9.tk[9].tz";
connectAttr "pCylinderShape3_pnts_10__pntx.o" "polyTweak9.tk[10].tx";
connectAttr "pCylinderShape3_pnts_10__pnty.o" "polyTweak9.tk[10].ty";
connectAttr "pCylinderShape3_pnts_10__pntz.o" "polyTweak9.tk[10].tz";
connectAttr "pCylinderShape3_pnts_11__pntx.o" "polyTweak9.tk[11].tx";
connectAttr "pCylinderShape3_pnts_11__pnty.o" "polyTweak9.tk[11].ty";
connectAttr "pCylinderShape3_pnts_11__pntz.o" "polyTweak9.tk[11].tz";
connectAttr "pCylinderShape3_pnts_12__pntx.o" "polyTweak9.tk[12].tx";
connectAttr "pCylinderShape3_pnts_12__pnty.o" "polyTweak9.tk[12].ty";
connectAttr "pCylinderShape3_pnts_12__pntz.o" "polyTweak9.tk[12].tz";
connectAttr "pCylinderShape3_pnts_13__pntx.o" "polyTweak9.tk[13].tx";
connectAttr "pCylinderShape3_pnts_13__pnty.o" "polyTweak9.tk[13].ty";
connectAttr "pCylinderShape3_pnts_13__pntz.o" "polyTweak9.tk[13].tz";
connectAttr "pCylinderShape3_pnts_14__pntx.o" "polyTweak9.tk[14].tx";
connectAttr "pCylinderShape3_pnts_14__pnty.o" "polyTweak9.tk[14].ty";
connectAttr "pCylinderShape3_pnts_14__pntz.o" "polyTweak9.tk[14].tz";
connectAttr "pCylinderShape3_pnts_15__pntx.o" "polyTweak9.tk[15].tx";
connectAttr "pCylinderShape3_pnts_15__pnty.o" "polyTweak9.tk[15].ty";
connectAttr "pCylinderShape3_pnts_15__pntz.o" "polyTweak9.tk[15].tz";
connectAttr "pCylinderShape3_pnts_16__pntx.o" "polyTweak9.tk[16].tx";
connectAttr "pCylinderShape3_pnts_16__pnty.o" "polyTweak9.tk[16].ty";
connectAttr "pCylinderShape3_pnts_16__pntz.o" "polyTweak9.tk[16].tz";
connectAttr "pCylinderShape3_pnts_17__pntx.o" "polyTweak9.tk[17].tx";
connectAttr "pCylinderShape3_pnts_17__pnty.o" "polyTweak9.tk[17].ty";
connectAttr "pCylinderShape3_pnts_17__pntz.o" "polyTweak9.tk[17].tz";
connectAttr "polyTweakUV5.out" "polyLayoutUV2.ip";
connectAttr "polyTweakUV6.out" "polyLayoutUV3.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV7.ip";
connectAttr "polyLayoutUV2.out" "polyTweakUV8.ip";
connectAttr "polyLayoutUV3.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV7.out" "polyLayoutUV4.ip";
connectAttr "polyTweakUV8.out" "polyLayoutUV5.ip";
connectAttr "polyLayoutUV4.out" "polyTweakUV10.ip";
connectAttr "polyLayoutUV5.out" "polyTweakUV11.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape6.iog" ":initialShadingGroup.dsm" -na;
// End of Plant_Fern_B.ma
