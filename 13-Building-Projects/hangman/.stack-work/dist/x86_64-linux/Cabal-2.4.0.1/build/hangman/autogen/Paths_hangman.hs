{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_hangman (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/stefan/dev/Haskell/HS-Programming-FFP/13-Building-Projects/hangman/.stack-work/install/x86_64-linux/ef77ec4d6a04e9791f13a6553bd9013b4dfb871b9a929f0b4f3ac0ea520c7960/8.6.5/bin"
libdir     = "/home/stefan/dev/Haskell/HS-Programming-FFP/13-Building-Projects/hangman/.stack-work/install/x86_64-linux/ef77ec4d6a04e9791f13a6553bd9013b4dfb871b9a929f0b4f3ac0ea520c7960/8.6.5/lib/x86_64-linux-ghc-8.6.5/hangman-0.1.0.0-FdPzYRNJl1F90eZp1oEOun-hangman"
dynlibdir  = "/home/stefan/dev/Haskell/HS-Programming-FFP/13-Building-Projects/hangman/.stack-work/install/x86_64-linux/ef77ec4d6a04e9791f13a6553bd9013b4dfb871b9a929f0b4f3ac0ea520c7960/8.6.5/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/stefan/dev/Haskell/HS-Programming-FFP/13-Building-Projects/hangman/.stack-work/install/x86_64-linux/ef77ec4d6a04e9791f13a6553bd9013b4dfb871b9a929f0b4f3ac0ea520c7960/8.6.5/share/x86_64-linux-ghc-8.6.5/hangman-0.1.0.0"
libexecdir = "/home/stefan/dev/Haskell/HS-Programming-FFP/13-Building-Projects/hangman/.stack-work/install/x86_64-linux/ef77ec4d6a04e9791f13a6553bd9013b4dfb871b9a929f0b4f3ac0ea520c7960/8.6.5/libexec/x86_64-linux-ghc-8.6.5/hangman-0.1.0.0"
sysconfdir = "/home/stefan/dev/Haskell/HS-Programming-FFP/13-Building-Projects/hangman/.stack-work/install/x86_64-linux/ef77ec4d6a04e9791f13a6553bd9013b4dfb871b9a929f0b4f3ac0ea520c7960/8.6.5/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hangman_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hangman_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "hangman_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "hangman_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hangman_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hangman_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
