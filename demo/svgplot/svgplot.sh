#!/bin/sh
cd svgplot/ && go build -o ../splot && cd ../
cd svgrid/ && go build -o ../sgrid && cd ../

gopts="-bx=50 -by=20 -width=460 -height=130 -pw=400 -ph=90 -barsize=3 -fontsize=11"
data="test.d"
## opt
./splot $gopts -showbg -connect=f -label=showbg $data > f00.svg
./splot $gopts -connect -label=connect $data > f01.svg
./splot $gopts -showbar -connect=f -label=showbar $data > f02.svg
./splot $gopts -area -connect=f -label=area $data > f03.svg
./splot $gopts -showdot -connect=f -label=showdot $data > f04.svg
./splot $gopts -showx -label=showx $data > f05.svg
./splot $gopts -showy -label=showy $data > f06.svg
./splot $gopts -showfile -label=showfile $data > f07.svg

# attr
./splot $gopts -bgcolor=lightsteelblue -label=bgcolor $data > f08.svg
./splot $gopts -linecolor=red -label=linecolor $data > f09.svg
./splot $gopts -barcolor=red -showbar -connect=f -label=barcolor $data > f10.svg
./splot $gopts -areacolor=red -area -connect=f -label=hcolor $data > f11.svg
./splot $gopts -showdot -dotcolor=red -connect=f -label=dotcolor $data > f12.svg
./splot $gopts -label=labelcolor -labelcolor=red $data > f13.svg
./splot $gopts -label=fontsize $data > f14.svg
./splot $gopts -font=Courier -label="font" $data > f15.svg

./sgrid -h 1200 -w 1024 -r=f -x=50 -y=50 -g 10 -c 8 f??.svg > ./svgplot.svg

# clean
rm f??*.svg
rm splot
rm sgrid
