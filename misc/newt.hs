module Newt where

newtype Mass a = Mass a deriving Show

mass :: Num a => a -> Mass a
mass = Mass

newtype Distance a = Distance a deriving Show

distance :: Num a => a -> Distance a
distance = Distance

newtype Time a = Time a deriving Show

time :: Num a => a -> Time a
time = Time

newtype Velocity a = Velocity a deriving Show

velocity :: Fractional a => Distance a -> Time a -> Velocity a
velocity (Distance m) (Time s) = Velocity (m / s)

newtype Acelleration a = Acelleration a deriving Show

acelleration :: Fractional a => Velocity a -> Time a -> Acelleration a
acelleration (Velocity v) (Time s) = Acelleration (v / s)

newtype Force a = Force a deriving Show

force :: Num a => Mass a -> Acelleration a -> Force a
force (Mass m) (Acelleration a) = Force (m * a)

res :: Force Double
res = force 
        (mass 10) 
        (acelleration 
          (velocity 
            (distance 100) 
            (time 10)) 
        (time 10))