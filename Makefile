run_all:
	make -j test_android test_ios 

test_android:
	robot --variable platform:"android" --variable browserName:chrome --variable device:"Galaxy Note10 5G" --variable version:11 --variable ROBOT_BROWSER:chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_ios:
	robot --variable platform:"ios" --variable browserName:safari --variable device:"iPhone 12" --variable version:14 --variable ROBOT_BROWSER:safari --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

