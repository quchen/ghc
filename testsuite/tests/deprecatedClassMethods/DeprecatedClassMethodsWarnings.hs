module DeprecatedClassMethodsWarnings where

data Proxy a = Proxy

instance Functor Proxy where
    fmap = undefined

instance Applicative Proxy where
    pure = undefined
    (<*>) = undefined

instance Monad Proxy where
    (>>=) = undefined

    return = undefined -- should emit a warning
    (>>) = undefined -- should emit a warning
