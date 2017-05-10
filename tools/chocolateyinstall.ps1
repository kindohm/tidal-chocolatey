refreshenv

write-host "Running stack setup"
stack setup

write-host "Running stack install tidal"
stack install tidal
