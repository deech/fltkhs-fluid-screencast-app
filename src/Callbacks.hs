{-# LANGUAGE OverloadedStrings #-}
module Callbacks where
import qualified Graphics.UI.FLTK.LowLevel.FL as FL
import qualified Graphics.UI.FLTK.LowLevel.Fl_Enumerations as FL
import Graphics.UI.FLTK.LowLevel.Fl_Types as FL
import Graphics.UI.FLTK.LowLevel.FLTKHS
import Data.Text as T

data UI =
  UI
  {
    fontList :: Ref Browser
  , sizeList :: Ref Browser
  , fontSizeList :: [(T.Text, (FL.Font, [FL.FontSize]))]
  , buffer :: Ref TextBuffer
  , output :: Ref TextEditor
  }

buttonCb :: Ref Button -> IO ()
buttonCb b' = do
  l' <- getLabel b'
  if (l' == "Hello World")
    then setLabel b' "Goodbye World"
    else setLabel b' "Hello World"
