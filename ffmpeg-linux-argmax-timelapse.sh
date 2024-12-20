exit 0
#this is seriously just notes. 
#this script is in development

#This Solution
# 1) Use : -pattern_type glob  then use -i 'Pattern*.jpg' 
# 2) Expand you glob with ARG_MAX
    getconf ARG_MAX
    echo '>$' ulimit -s 65536
# 3) notice the sensor sizes. Some of those attempts are examples.

# A Better Solution for the future
# There exists a more refined version I worked on which uses find then xargs to cat all the jpg files into the ffmpeg stream input butter set to binary .


#!/bin/bash

echo changinging dir
cd "/home/user/Pictures/DCIM-Cross/05-07/"

echo pwd
pwd


echo if you have argument too long issues
echo getconf ARG_MAX
getconf ARG_MAX
echo '>$' ulimit -s 65536
echo '^^^type^^^ above if issues.'


#ffmpeg -f image2 -framerate 60 -s 1014x760 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 30  ~/outfile.mp4
#ffmpeg -f image2 -framerate 60 -s 4056x3040 -i DCIM%014d.jpg -start_number 07140748 -s 4056x3040 -crf 15 -pix_fmt yuv420p outfile.mp4
#echo ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 10  ~/outfile.mp4

cd "/home/user/Pictures/DCIM-Cross/05-07/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-08/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-09/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-10/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-11/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-12/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-13/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-14/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-15/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 

cd "/home/user/Pictures/DCIM-Cross/05-16/"
ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -crf 12 a_timelapse_60fps_12crf.mp4 



#ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -b:v 10M -pass 1 ~/outfile1.mp4 
#ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -b:v 10M -pass 2 ~/outfile2.mp4 

#ffmpeg  -crf 15 -c:v libav1an ~/outfile.mkv
#ffmpeg -f image2 -framerate 60 -s 2028x1520 -pattern_type glob -i 'DCIM*.jpg' -start_number 07140748 -c:v libsvtav1 -preset 5 -crf 32 -g 240 -pix_fmt yuv420p10le -svtav1-params tune=0:film-grain=8 -c:a copy ~/outfile.mkv

if false ; then 
    echo two pass
    #very specifc TODO fix
    inputArguments=' -pattern_type glob -start_number 07140748 -f image2 -framerate 60'

    #Quite determinable by the photo itself.
    argumentsShared=" -s 2028x1520 -crf 15 -c:v libaom-av1 -b:v 2M "

    #two pass setup for first pass only
    firstOnly=" -pass 1 -an -f null" 
                                    #no audio = -an, 
                                    #null output for quickness path to second pass
    #two pass setup for second pass
    secondOnly=" -pass 2 -c:a libopus" 


    ffmpeg -i 'DCIM*.jpg' $inputArguments $argumentsShared $firstOnly  ~/here.av1
    #&& ffmpeg $inputArguments $argumentsShared $secondOnly

fi


#ls -l | wc -l 

#echo seems newest file is..
#newFile="`ls -t  | grep DCIM | grep -v json | head -n 1`"
#newSeq="`ls -t | grep DCIM | grep -v json | head -n 1 | cut -d '.' -f1 | cut -d '-' -f4 `"
#echo $newFile
#echo $newSeq


#echo seems oldest file is..
#oldFile="`ls -t -r | grep DCIM | grep -v json | head -n 1`"
#oldSeq="`ls -t -r | grep DCIM | grep -v json | head -n 1 | cut -d '.' -f1 | cut -d '-' -f4 `"
#echo $oldFile
#echo $oldSeq


#input=" -f image2 -pattern_type glob -framerate 60 -i DCIM202305*.jpg"
#input=" -f image2 -framerate 60 -s 4056x3040 -i DCIM%0d.jpg -start_number $oldSeq" 
#echo input is: $input
#options=" -s 4056x3040 -crf 15 -pix_fmt yuv420p"
#echo options is: $options

#echo ffmpeg $input $options outfile.mp4
#ffmpeg $input $options outfile.mp4 | tee -a ffmpeg.log

#ffmpeg -f image2 --patern_type glob --framerate 60 -i DCIM*.jpg -s 4056x3040 -crf 15 -pix_fmt yuv420p 

#ffmpeg -f image2 --patern_type glob --framerate 60 -i DCIM*.jpg -s 2028x1520 -crf 15 -pix_fmt yuv420p -c:v libaom-av1 -b:v 2000k

#two pass encoding

#optionPass1=" -c:v libaom-av1 -b:v 2M -pass 1" 
#optionPass2=" -c:v libaom-av1 -b:v 2M -pass 2"

#ffmpeg "$input" $optionPass1 && ^
#ffmpeg "$input" $optionPass2 DCIM-Cross.mkv 



#WxH 4056x3040 
# 2028x1520
#crf lower is better, 15 is good


#Building FFMPEG
#sudo apt-get install winff yuview qwinff mystiq octave-video libqtav1 libswscale-dev libswscale5 libxine2-ffmpeg libffmpeg-nvenc-dev libffmpeg-ocaml libffmpeg-ocaml-dev libavutil-dev ffcvt libffms2-dev libavcodec-dev libavcodec-extra libavformat-dev libavformat-extra libavutil-dev libavfilter-dev libavfilter-extra libavdevice-dev  libswresample-dev libswscale-dev build-essential make cmake g++ gcc nasm intel-media-va-driver-non-free intel-microcode intel2gas intel-gpu-tools intel-hdcp oggvideotools mpgtx  h264enc i965-va-driver-shaders x265 libx265-dev libmfx1 libmfx-gen1.2 libmfx-dev libheif1 libheif-dev libdavs2-dev  intel-vsc-dkms libva-dev libva-drm2 libva2




