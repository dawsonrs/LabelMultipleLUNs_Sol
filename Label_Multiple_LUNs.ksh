#!/bin/ksh

# Script to label multiple LUNs

# insert disk list below
# same as returned by the format command
# (note: controller disk and target entries only - no slice entry)

### e.g.
### 
### disks="
### cXtXdX
### cYtYdY
### cZtZdZ
### "

disks="

"

for d in $disks; do

	# write label
	printf "label\nyes\nquit\n" | format -d $d
					
	# check label
	printf "\n\n${d}\n\n"
	prtvtoc /dev/dsk/${d}s0 | egrep '^P |^ '
	echo "<CR> to continue: "
	read a

done

