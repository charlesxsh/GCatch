
   
#!/bin/bash -x
DIRS="./..."
pkg_list=$(go list $DIRS)

for pkg in $pkg_list
do
    GO111MODULE=on GCatch -mod -mod-abs-path=$(realpath .) -mod-module-path=$pkg -compile-error
done