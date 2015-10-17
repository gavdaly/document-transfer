# One time script for transferring directories from one program to another

The original program had the directories set up as `PN#/##/##` and always having 5 digits for the id. The new program had the files as `#` where the length was just the numerical value.

Added comments in the ruby file so you understand how it was transferred.

You will be left with a few empty directories in the base directory all starting with 'PN'. I didn't add an functionality to deal with this. Just delete the folders manually (there will be a max of 10).

As for programming, this was just a quick and dirty script instead of manually moving 11522 directories. I didn't worry about performance.
