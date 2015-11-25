-- Test purpose:
-- Ensure that -Wcompat switches on the right warnings

{-# OPTIONS_GHC -Wcompat #-}
-- {-# OPTIONS_GHC -Wno-compat #-}

module WCompatWarningsOn where

monadFail :: Monad m => m a
monadFail = do
    Just _ <- undefined
    undefined

data LacksSemigroup
instance Monoid LacksSemigroup where
    mempty = undefined
    mappend = undefined
