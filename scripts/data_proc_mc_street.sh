# # MatrixCity, Street View, block A
# mkdir data/matrix_city/street/train/block_A
# mkdir data/matrix_city/street/test/block_A_test
# mkdir data/matrix_city/street/train/block_A/input
# mkdir data/matrix_city/street/test/block_A_test/input
# cp data/matrix_city/street/pose/block_A/transforms_train.json data/matrix_city/street/train/block_A/transforms.json
# cp data/matrix_city/street/pose/block_A/transforms_test.json data/matrix_city/street/test/block_A_test/transforms.json

# # Gather images and initialize sparse folder
# python tools/transform_json2txt_mc_street.py --source_path data/matrix_city/street/train/block_A --intrinsic_path data/matrix_city/street/pose/block_A/transforms_train.json
# python tools/transform_json2txt_mc_street.py --source_path data/matrix_city/street/test/block_A_test --intrinsic_path data/matrix_city/street/pose/block_A/transforms_test.json

# # Remove the old sparse folder and use the downloaded one
# rm -rf data/matrix_city/street/train/block_A/sparse
# rm -rf data/matrix_city/street/test/block_A_test/sparse

# mv data/colmap_results/matrix_city_street/train/sparse data/matrix_city/street/train/block_A
# mv data/colmap_results/matrix_city_street/test/sparse data/matrix_city/street/test/block_A_test



# MatrixCity, Street View, block A
mkdir data/matrix_city/street/train/block_A
mkdir data/matrix_city/street/test/block_A_test
mkdir data/matrix_city/street/train/block_A/input
mkdir data/matrix_city/street/test/block_A_test/input
cp data/matrix_city/street/pose/block_A/transforms_train.json data/matrix_city/street/train/block_A/transforms.json
cp data/matrix_city/street/pose/block_A/transforms_test.json data/matrix_city/street/test/block_A_test/transforms.json

# Gather images and initialize sparse folder
python tools/transform_json2txt_mc_street.py --source_path data/matrix_city/street/train/block_A --intrinsic_path data/matrix_city/street/pose/block_A/transforms_train.json
python tools/transform_json2txt_mc_street.py --source_path data/matrix_city/street/test/block_A_test --intrinsic_path data/matrix_city/street/pose/block_A/transforms_test.json

# Remove the old sparse folder and use the downloaded one
rm -rf data/matrix_city/street/train/block_A/sparse
rm -rf data/matrix_city/street/test/block_A_test/sparse

mv data/colmap_results/matrix_city_street/train/sparse data/matrix_city/street/train/block_A
mv data/colmap_results/matrix_city_street/test/sparse data/matrix_city/street/test/block_A_test