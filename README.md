personal zirconium-hawaii-jackrabbit image with a few fixes for the 2025 ROG Flow Z13.

Currently does the following:
- adds z13ctl
- adds proper touchpad detection (allows for dwt in niri)
- workaround for low volume

If you for some reason also have a 2025 ROG Flow Z13 and want to run Zirconium Hawaii Jackrabbit (or any other Linux based OS for that matter), I also recommend enabling the two following kernel arguments
- amdgpu.abmlevel=0 (disables varibright, the worst amdgpu feature ever)
- amdgpu.dcdebugmask=0x410 (IMPORTANT, FIXES ARTIFACTING AND GAMESCOPE-SESSIONs)