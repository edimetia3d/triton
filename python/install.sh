SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
pushd $SCRIPT_DIR
pip install -e . -v  --config-settings editable_mode=compat
PYTHONPATH=$PWD/triton/_C/:$PYTHONPATH pybind11-stubgen libtriton -o $PWD/triton/_C  --ignore-all-error
popd
