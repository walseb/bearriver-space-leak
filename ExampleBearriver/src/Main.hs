{-# LANGUAGE Arrows #-}

module Main where

import FRP.Yampa

main = do
    (reactimate (return NoEvent) (\ _ -> return (0.1, Nothing)) (\_ _ -> pure False) (constant ()))
