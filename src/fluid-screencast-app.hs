module Main where
import ScreenCast
import Graphics.UI.FLTK.LowLevel.FLTKHS
import qualified Graphics.UI.FLTK.LowLevel.FL as FL
import Graphics.UI.FLTK.LowLevel.Fl_Types
import Graphics.UI.FLTK.LowLevel.Fl_Enumerations

ui :: IO()
ui = makeWindow >>= showWidget

main :: IO ()
main = ui >> FL.run >> FL.flush

replMain :: IO ()
replMain = ui >> FL.replRun
