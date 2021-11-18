```
git clone https://github.com/jmichault/flash_cc2531.git

cd flash_cc2531
./cc_chipid # you should see ID=b524 anything else points to wrong wiring

./cc_erase
./cc_write /path/to/CC2531ZNP-Prod.hex
```
