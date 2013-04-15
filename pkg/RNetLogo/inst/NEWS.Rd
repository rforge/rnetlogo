\name{NEWS}
\title{RNetLogo News}
\encoding{UTF-8}


%\section{Changes in version 0.9-7}{
%
%  \subsection{BUG FIXES}{
%
%    \itemize{
%    }
%
%  } % bug fixes
%
%  \subsection{NEW FUNCTIONS}{
%    \itemize{
%
%
%    }
%  } % new functions
%
%  \subsection{NEW FEATURES}{
%    \itemize{
%    }
%
%  } % new features
%  
%  \subsection{INSTALLATION AND BUILDING}{
%    \itemize{    
%    }
%  } % installation and building
%  
%
%} % version 0.9-7


%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------


\section{Changes in version 0.9-6}{

  \subsection{BUG FIXES}{

    \itemize{

      \item \code{NLStart(<nl.path>, ...)} failed with: \code{Error in .jnew("nlcon/Preprocess") : java.lang.UnsupportedClassVersionError: nlcon/Preprocess : Unsupported major.minor version 51.0}. This happend when using Java versions before 7. The .jar files are now compiled with support up to Java 5. 

    }

  } % bug fixes

  \subsection{NEW FEATURES}{
    \itemize{

      \item Change.log moved to NEWS.Rd. Therefore, \code{news()} function is supported now.

    }

  } % new features

} % version 0.9-6


%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------


\section{Changes in version 0.9-5}{

  \subsection{BUG FIXES}{

    \itemize{

      \item Just a fix to fulfill CRAN policy: limit max. parallel processes in vignette parallelProcessing.Rnw to 2 core.

    }

  } % bug fixes

} % version 0.9-5


%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------


\section{Changes in version 0.9-4}{

  \subsection{BUG FIXES}{

    \itemize{

      \item Update of manual pages.
      \item Spelling corrections in parallelProcessing guide.
      \item Small corrections due to package building warnings.
      
    }

  } % bug fixes

  \subsection{NEW FUNCTIONS}{
    \itemize{
    
      \item \code{NLSetPatchSet} added, especially usefull for NetLogo 3D as an equivalent to NLSetPatches, which works only with NetLogo 2D.

    }
  } % new functions

  \subsection{NEW FEATURES}{
    \itemize{

      \item New argument \code{max.minutes} added to \code{NLDoCommandWhile} and \code{NLDoReportWhile}. It stops the execution after a defined number of minutes (default: 10), if it is > 0.
      \item parallelProcessing.pdf and performanceNotes.pdf moved to vignettes.
    }

  } % new features


} % version 0.9-4


%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------


\section{Changes in version 0.9-3}{

  \subsection{NEW FUNCTIONS}{
    \itemize{
    
      \item Experimental function \code{NLSetAgentSet} added (may change or be deleted in future).

    }
  } % new functions

  \subsection{NEW FEATURES}{
    \itemize{

      \item NetLogo 5.0 is default in NLStart (nl.version=5) --> NetLogo 5.0 is much more faster than NetLogo 4.1.x in sending values to R!
      \item Support of NetLogo 4.0.x added (use \code{nl.version=40} in NLStart).
      \item Rewrite of functions \code{NLGetAgentSet}, \code{NLGetPatches}, \code{NLGetGraph} for markable speed improvements.
      \item Default return type of \code{NLGetAgentSet} and \code{NLGetPatches} is a \code{data.frame} instead of a list.
      \item Document "performanceNotes.pdf" added.
      \item Document "parallelProcessing.pdf" added.
      
    }

  } % new features

} % version 0.9-3



%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------


\section{Changes in version 0.9-2}{

  \subsection{BUG FIXES}{

    \itemize{

      \item Typo in manual fixed (order of arguments in \code{NLDoCommand}).
      
    }

  } % bug fixes

  \subsection{NEW FEATURES}{
    \itemize{

      \item Support for NetLogo 3D added (extra boolean argument \code{is3d} in \code{NLStart}).
      \item Better clean up at NLQuit (but this is still a problem. NetLogo offers no clean up for all threads, they just do a System.exit, which can not be used with rJava, because it will terminate the JVM, therefore also rJava and finally R as well.)
  
    }

  } % new features


} % version 0.9-2


%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------


\section{Changes in version 0.9-1}{

  \subsection{BUG FIXES}{

    \itemize{

      \item JARs compiled against Java 1.5 now instead of Java 1.6.
      
    }

  } % bug fixes

} % version 0.9-1

