#/usr/bin/env bash

echo "Running system maintenance..."

# Clean caches
sudo dnf clean all

# Clean old journal entries
sudo journalctl --vacuum-time=7d

sudo ./remove_old_kernel.sh

echo "Maintenance complete!"
