#!/usr/bin/env stack
-- stack runghc --package reanimate
{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import           Reanimate
import           Reanimate.LaTeX
import           Reanimate.Builtin.Documentation

main :: IO ()
main = reanimate $ docEnv $ staticFrame 1 $
  center $ withStrokeWidth 0 $ withFillOpacity 1 $ scale 3 $
  latexCfg droidSans "droidSans"
