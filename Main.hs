module Main where
import Logger
main = do
       Logger.init "test.txt"
       Logger.debug "test.txt" "Debug info"
       Logger.alert "test.txt" "Something alerting happened"
       Logger.deadly "test.txt" "Something deadly, possibly program breaking happened"
       
