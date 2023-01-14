# JTK-CYCLE-container
A docker container to run the code from 'alanlhutchison/empirical-JTK_CYCLE-with-asymmetry'

## Steps to run this container

### Step 1
Download and install Docker for Desktop from [here](https://www.docker.com/get-started/). After installation open Powershell or bash/zsh and run `docker version`. If you get a version number for client and server you are good to go.

### Step 2
Run `docker run -it <put package here>` in Powershell/bash/zsh. This should start your container and present to you the bash commandline from within it. This container has the the code from the [alanlhutchison/empirical-JTK_CYCLE-with-asymmetry](https://github.com/alanlhutchison/empirical-JTK_CYCLE-with-asymmetry) repository copied at `/home/empirical-JTK_CYCLE-with-asymmetry` with the cython code already compiled.

### Step 3
To test that the environment is setup correctly, run 
```./eJTK-CalcP.py -f example/TestInput4.txt -w ref_files/waveform_cosine.txt -p ref_files/period24.txt -s ref_files/phases_00-22_by2.txt -a ref_files/asymmetries_02-22_by2.txt -x cos24_ph00-22_by2_a02-22_by2_OTHERTEXT```
in the directory the container starts in. Afterwards you should get 3 new files in the `/home/empirical-JTK_CYCLE-with-asymmetry/example` directory with '_1' as suffix. Check their contents using `cat <filename>`.

### Steps to delete docker containers and images
Run `docker ps --all` to list the installed containers. Get the container name(s) and run `docker container rm <container-name>`. Then run `docker image prune -a` to delete the downloaded image(s).
To uninstall docker use the suitable methods for your OS after using the above two commands.
