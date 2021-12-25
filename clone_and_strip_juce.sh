# clone repo
# save latest commit message to message.txt
# remove files not needed for build
# move everything to current repo
# commit changes

git clone https://github.com/juce-framework/JUCE
#cp -r ../JUCEREPO .
#mv JUCEREPO JUCE
cd JUCE
git log -1 > message.txt
cd ..
rm -rf JUCE/.git
rm -rf JUCE/docs
rm -rf JUCE/extras/AudioPerformanceTest
rm -rf JUCE/extras/AudioPluginHost
rm -rf JUCE/extras/BinaryBuilder
rm -rf JUCE/extras/NetworkGraphicsDemo
rm -rf JUCE/extras/Projucer
rm -rf JUCE/extras/UnitTestRunner
rm -rf JUCE/extras/WindowsDLL
rm -rf JUCE/examples
rm JUCE/README.md
rsync -a JUCE/* .
mv LICENSE.md JUCE_LICENSE
rm -rf JUCE
git add .
git commit -a -F message.txt
