# Logger
Simple file logger for debugging in Haskell

To create the intial file, call the init function with the new file name
 ```haskell
  Logger.init "filename.txt"
 ```
 For Debugging, use the debug function
 ```haskell
  Logger.debug "filename.txt" "Debug info"
 ``` 
For an alert when an event that needs noticing but isn't really severe, use the alert function
 ```haskell 
  Logger.alert "filename.txt" "Alert info"
 ```
For an alert in which something deadly may occur, use the deadly function
 ```haskell
  Logger.deadly "filename.txt" "Deadly info"
 ``` 
See Main.hs for a working example and test.txt for the output
