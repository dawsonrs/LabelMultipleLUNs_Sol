# LabelMultipleLUNs_Sol
script to label multiple Solaris LUNs in 1 go
not a script designed to be run often but very useful when a large number of LUNs have been added and need labelled, e.g. when building Solaris clusters where it is not uncommon to have a large number of LUNs allocated at once.

how to use:
edit the "disks" variable section with the list of disks in question as returned from "echo | format" (note: controller disk and target entries only - no slice entry)
run the script by hand to label and test all the LUNs
