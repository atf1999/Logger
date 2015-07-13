module Logger where
import Data.Time

init f =  writeFile f ""

currentTime = fmap show getCurrentTime
               

--f = file name 
--m = message to be concated to the file
debug f m = do
          time <- currentTime
          let msg = time ++ " DEBUG: " ++ m ++ "\n"
          appendFile f msg
          
       
