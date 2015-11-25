-- Test purpose:
-- Ensure that missing semigroup warnings are issued correctly if the warning
-- flag is enabled

{-# OPTIONS_GHC -fwarn-missing-semigroup-instance #-}

module MissingSemigroupWarnings where

import Data.Semigroup

data LacksSemigroup
instance Monoid LacksSemigroup where
    mempty = undefined
    mappend = undefined

data HasSemigroup
instance Semigroup HasSemigroup where
    (<>) = undefined
instance Monoid HasSemigroup where
    mempty = undefined
    mappend = undefined
