module Logger where
import Data.Time

--Intializes the file
init f =  writeFile f ""

currentTime = fmap show getCurrentTime
               
--Debug: Message used purely for debugging
--f = file name 
--m = message to be concatenated to the file
debug f m = do
          time <- currentTime
          let msg = time ++ " DEBUG: " ++ m ++ "\n"
          appendFile f msg
--Alert: Message used to show the programmer that an error or important event occurred
--f = file name
--m = message to be concatenated to the file 
alert f m = do
	  time <- currentTime
          let msg = time ++ " ALERT: " ++ m ++ "\n"
          appendFile f msg
--Deadly: If a scenario could occur that could cause the program to crash, use this method to tell you when it happens
--f = file name
--m = message to be concatenated to the file
deadly f m = do
            time <- currentTime
            let msg = time ++ " DEADLY: " ++ m ++ "\n"
            appendFile f msg
