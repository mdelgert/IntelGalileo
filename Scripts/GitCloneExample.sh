#!/bin/bash

START_HERE="/usr/local/src/IntelGalileo/";

cd $START_HERE;

echo -e "\nPulling down latest for $START_HERE\n";

for d in $(find . -maxdepth 1 -mindepth 1 -type d); do
        echo -e "$d";
        cd $d;
        git remote -v;
        git pull;
        cd $START_HERE;
done

echo -e "\nComplete!\n";

# Related articles -
# http://www.heatxsink.com/entry/bash-script-to-pull-git-repositories
# https://gist.github.com/mintindeed/4600385
# http://rhnh.net/2014/04/26/bash-script-to-keep-a-git-clone-synced-with-a-remote