# CMake generated Testfile for 
# Source directory: /home/julian/Development/eos/contracts/proxy
# Build directory: /home/julian/Development/eos/build/contracts/proxy
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_proxy_abi "/home/julian/Development/eos/build/scripts/abi_is_json.py" "/home/julian/Development/eos/contracts/proxy/proxy.abi")
