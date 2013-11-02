#!/bin/bash

echo
echo "Next up:"
echo ">> RunBundler.sh"
sleep 2
RunBundler.sh
echo
echo "Next up:"
echo ">> Bundle2PMVS list.txt bundle/bundle.out"
sleep 2
Bundle2PMVS list.txt bundle/bundle.out
echo
echo "Next up:"
echo ">> sed -i 's/BUNDLER_BIN_PATH=.*/BUNDLER_BIN_PATH="\/home\/alexander\/Downloads\/bundler_sfm\/bin"/' pmvs/prep_pmvs.sh"
sleep 2
sed -i 's/BUNDLER_BIN_PATH=.*/BUNDLER_BIN_PATH="\/home\/alexander\/Downloads\/bundler_sfm\/bin"/' pmvs/prep_pmvs.sh
echo
echo "Next up:"
echo ">> sh pmvs/prep_pmvs.sh"
sleep 2
sh pmvs/prep_pmvs.sh
echo
echo "Next up:"
echo ">> pmvs2 pmvs/ pmvs_options.txt"
sleep 2
pmvs2 pmvs/ pmvs_options.txt
echo
echo "Next up:"
echo ">> meshlab pmvs_options.txt.ply"
sleep 2
cd pmvs/models
meshlab pmvs_options.txt.ply 2> /dev/null
cd ../..


