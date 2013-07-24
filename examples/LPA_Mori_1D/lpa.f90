!----------------------------------------------------------------------
!----------------------------------------------------------------------
!   Wave-Pinning Mori et al. 2008 in 1D, LPA
!----------------------------------------------------------------------
!----------------------------------------------------------------------

      SUBROUTINE FUNC(NDIM,U,ICP,PAR,IJAC,F,DFDU,DFDP)
!     ---------- ----

      IMPLICIT NONE
      INTEGER, INTENT(IN) :: NDIM, ICP(*), IJAC
      DOUBLE PRECISION, INTENT(IN) :: U(NDIM), PAR(*)
      DOUBLE PRECISION, INTENT(OUT) :: F(NDIM)
      DOUBLE PRECISION, INTENT(INOUT) :: DFDU(NDIM,NDIM), DFDP(NDIM,*)

      DOUBLE PRECISION k0,gamma,K,delta,tot,b,aL,aR,alpha,beta,g

      g(alpha, beta)=beta*(k0 + gamma*alpha*alpha/(K*K + alpha*alpha))-delta*alpha
      
      k0=PAR(1)
      gamma=PAR(2)
      K=PAR(3)
      delta=PAR(4)
      tot=PAR(5)

      aL=U(1)
      aR=U(2)

      b=tot-aR

      F(1)=g(aL,b)
      F(2)=g(aR,b)

      END SUBROUTINE FUNC

      SUBROUTINE STPNT(NDIM,U,PAR,T)
!     ---------- -----

      IMPLICIT NONE
      INTEGER, INTENT(IN) :: NDIM
      DOUBLE PRECISION, INTENT(INOUT) :: U(NDIM),PAR(*)
      DOUBLE PRECISION, INTENT(IN) :: T

      PAR(1)=0.067 ! k0
      PAR(2)=1.0   ! gamma
      PAR(3)=1.0   ! K
      PAR(4)=1.0   ! delta
      PAR(5)=2.2   ! tot
      
      U(1)=1.48478
      U(2)=0.23326

      END SUBROUTINE STPNT

      SUBROUTINE BCND
      END SUBROUTINE BCND

      SUBROUTINE ICND
      END SUBROUTINE ICND

      SUBROUTINE FOPT
      END SUBROUTINE FOPT

      SUBROUTINE PVLS
      END SUBROUTINE PVLS
