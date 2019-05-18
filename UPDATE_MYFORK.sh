#!/bin/bash


# only once
git remote add upstream https://github.com/MarlinFirmware/Marlin

# get updates
git fetch upstream

# from the branch we're interested in
git checkout bugfix-2.0.x
git merge upstream/bugfix-2.0.x

# move to our branch
git checkout bugfix-2.0.x-Ender3-SKRv1.3

# and import updates from the udpated branch
git rebase bugfix-2.0.x

# if all goes well, push updates back to origin
git push origin
