module Main where
import Logger
main = do
       Logger.init "test.txt"
       Logger.debug "test.txt" "Debug"
