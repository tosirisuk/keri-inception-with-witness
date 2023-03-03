#!/bin/bash

# if [ ! -f '~/finema/keripy/keripy/bin/activate' ]; then
#     echo "Cannot activate keripy python virtual environment at ~/finema/keripy/keripy/bin/activate." >&2 ; 
#     return
# fi
# source ~/finema/keripy/keripy/bin/activate

if [ -z "$1" ]; then
    echo "Need controller name" >&2 ; 
    return
fi
base_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && cd scripts &> /dev/null && pwd )


export BASE_DIR="${base_dir}"
export KERI_SCRIPT_DIR="${script_dir}"
export NAME=$1
export SALT=0ADRKKBF1p_mRoZ9keSvSlbE

rm -rf -v "${BASE_DIR}/keri/$1"
rm -rf -v "${BASE_DIR}/keri/$1.json"

mkdir -p "${base_dir}/keri/"