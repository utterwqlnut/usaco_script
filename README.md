# usaco_script
## Facts
>This is a great bash script that makes writing competitive programming code easier <br />
>Only works for c++ <br />
> Confirmed to work on Mac and Linux
## Running
- You can run the script with 
```sh
bash pathToFile
or
sh pathToFile
```
- You can make it easier to run by making it an executable
## Usage
- First you are prompted to enter the global path
	- You should use the absolute file path. It should start with /
	- To find the absolute file path you can do:
	```sh
	readlink -f (relativePath)
	```
	example:
	```sh
	readlink -f ex.cpp
	```
- Next you enter your sample input (leave an empty line at the end)
- Then you enter your sample output (leave an empty line at the end)
### Commands
- You can run any normal terminal commands in this script
- There are a few special commands that you can only do in the script
	- **run**
	- **exit**
	- **new**
#### run
- This runs the program against the sample test case and shows the output if wrong
#### new
- This allows you to create a new sample test case for your program to run against
#### exit
- This exits you from the script

### Final Comments
Hope you enjoy this script and you do well in your practice and competitions
