# CMake generated Testfile for 
# Source directory: /home/julian/Development/eos/contracts/identity
# Build directory: /home/julian/Development/eos/build/contracts/identity
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validate_identity_abi "/home/julian/Development/eos/build/scripts/abi_is_json.py" "/home/julian/Development/eos/contracts/identity/identity.abi")
subdirs("test")
