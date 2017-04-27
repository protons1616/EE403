#line 1 "src\\TransformFunctions\\arm_rfft_q15.c"







































 

#line 1 ".\\inc\\arm_math.h"






































 



















































































































 




 








 









 



 






































































 



 



 



 


 






 



 





#line 1 ".\\inc\\core_cm4.h"
 







 

























 
























 




 


 

 













#line 110 ".\\inc\\core_cm4.h"



 
#line 125 ".\\inc\\core_cm4.h"

#line 186 ".\\inc\\core_cm4.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 188 ".\\inc\\core_cm4.h"
#line 1 ".\\inc\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 











 









 









 









 











 











 











 







 










 










 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}









 









 









 









 









 









 





#line 877 ".\\inc\\core_cmInstr.h"

   

#line 189 ".\\inc\\core_cm4.h"
#line 1 ".\\inc\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 634 ".\\inc\\core_cmFunc.h"

 

#line 190 ".\\inc\\core_cm4.h"
#line 1 ".\\inc\\core_cmSimd.h"
 







 

























 
















 


 



 


 
#line 122 ".\\inc\\core_cmSimd.h"











#line 689 ".\\inc\\core_cmSimd.h"

 






#line 191 ".\\inc\\core_cm4.h"







#line 290 ".\\inc\\arm_math.h"
#line 301 ".\\inc\\arm_math.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 304 ".\\inc\\arm_math.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );






 
extern __declspec(__nothrow) double exp2(double  );  
extern __declspec(__nothrow) float exp2f(float  );
__declspec(__nothrow) long double exp2l(long double );
extern __declspec(__nothrow) double fdim(double  , double  );
extern __declspec(__nothrow) float fdimf(float  , float  );
__declspec(__nothrow) long double fdiml(long double , long double );
#line 803 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) double fma(double  , double  , double  );
extern __declspec(__nothrow) float fmaf(float  , float  , float  );

inline __declspec(__nothrow) long double fmal(long double __x, long double __y, long double __z)     { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __declspec(__nothrow) __attribute__((const)) double fmax(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fmaxf(float  , float  );
__declspec(__nothrow) long double fmaxl(long double , long double );
extern __declspec(__nothrow) __attribute__((const)) double fmin(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fminf(float  , float  );
__declspec(__nothrow) long double fminl(long double , long double );
extern __declspec(__nothrow) double log2(double  );  
extern __declspec(__nothrow) float log2f(float  );
__declspec(__nothrow) long double log2l(long double );
extern __declspec(__nothrow) long lrint(double  );
extern __declspec(__nothrow) long lrintf(float  );

inline __declspec(__nothrow) long lrintl(long double __x)     { return lrint((double)__x); }


extern __declspec(__nothrow) long long llrint(double  );
extern __declspec(__nothrow) long long llrintf(float  );

inline __declspec(__nothrow) long long llrintl(long double __x)     { return llrint((double)__x); }


extern __declspec(__nothrow) long lround(double  );
extern __declspec(__nothrow) long lroundf(float  );

inline __declspec(__nothrow) long lroundl(long double __x)     { return lround((double)__x); }


extern __declspec(__nothrow) long long llround(double  );
extern __declspec(__nothrow) long long llroundf(float  );

inline __declspec(__nothrow) long long llroundl(long double __x)     { return llround((double)__x); }


extern __declspec(__nothrow) __attribute__((const)) double nan(const char * );
extern __declspec(__nothrow) __attribute__((const)) float nanf(const char * );

inline __declspec(__nothrow) __attribute__((const)) long double nanl(const char *__t)     { return (long double)nan(__t); }
#line 856 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) __attribute__((const)) double nearbyint(double  );
extern __declspec(__nothrow) __attribute__((const)) float nearbyintf(float  );
__declspec(__nothrow) long double nearbyintl(long double );
extern  double remquo(double  , double  , int * );
extern  float remquof(float  , float  , int * );

inline long double remquol(long double __x, long double __y, int *__q)     { return (long double)remquo((double)__x, (double)__y, __q); }


extern __declspec(__nothrow) __attribute__((const)) double round(double  );
extern __declspec(__nothrow) __attribute__((const)) float roundf(float  );
__declspec(__nothrow) long double roundl(long double );
extern __declspec(__nothrow) double tgamma(double  );  
extern __declspec(__nothrow) float tgammaf(float  );
__declspec(__nothrow) long double tgammal(long double );
extern __declspec(__nothrow) __attribute__((const)) double trunc(double  );
extern __declspec(__nothrow) __attribute__((const)) float truncf(float  );
__declspec(__nothrow) long double truncl(long double );






#line 896 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 305 ".\\inc\\arm_math.h"






  

 

#line 321 ".\\inc\\arm_math.h"

  

 

#line 333 ".\\inc\\arm_math.h"

  

 
   
   


  

 
#line 353 ".\\inc\\arm_math.h"

  

 

  typedef enum
  {
    ARM_MATH_SUCCESS = 0,                 
    ARM_MATH_ARGUMENT_ERROR = -1,         
    ARM_MATH_LENGTH_ERROR = -2,           
    ARM_MATH_SIZE_MISMATCH = -3,          
    ARM_MATH_NANINF = -4,                 
    ARM_MATH_SINGULAR = -5,               
    ARM_MATH_TEST_FAILURE = -6            
  } arm_status;

  

 
  typedef int8_t q7_t;

  

 
  typedef int16_t q15_t;

  

 
  typedef int32_t q31_t;

  

 
  typedef int64_t q63_t;

  

 
  typedef float float32_t;

  

 
  typedef double float64_t;

  

 
#line 417 ".\\inc\\arm_math.h"








#line 435 ".\\inc\\arm_math.h"


   

 


#line 454 ".\\inc\\arm_math.h"


  

 
  static __inline q31_t clip_q63_to_q31(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFFFFFF ^ ((q31_t) (x >> 63)))) : (q31_t) x;
  }

  

 
  static __inline q15_t clip_q63_to_q15(
  q63_t x)
  {
    return ((q31_t) (x >> 32) != ((q31_t) x >> 31)) ?
      ((0x7FFF ^ ((q15_t) (x >> 63)))) : (q15_t) (x >> 15);
  }

  

 
  static __inline q7_t clip_q31_to_q7(
  q31_t x)
  {
    return ((q31_t) (x >> 24) != ((q31_t) x >> 23)) ?
      ((0x7F ^ ((q7_t) (x >> 31)))) : (q7_t) x;
  }

  

 
  static __inline q15_t clip_q31_to_q15(
  q31_t x)
  {
    return ((q31_t) (x >> 16) != ((q31_t) x >> 15)) ?
      ((0x7FFF ^ ((q15_t) (x >> 31)))) : (q15_t) x;
  }

  

 

  static __inline q63_t mult32x64(
  q63_t x,
  q31_t y)
  {
    return ((((q63_t) (x & 0x00000000FFFFFFFF) * y) >> 32) +
            (((q63_t) (x >> 32) * y)));
  }






#line 536 ".\\inc\\arm_math.h"

  

 

  static __inline uint32_t arm_recip_q31(
  q31_t in,
  q31_t * dst,
  q31_t * pRecipTable)
  {

    uint32_t out, tempVal;
    uint32_t index, i;
    uint32_t signBits;

    if(in > 0)
    {
      signBits = __clz(in) - 1;
    }
    else
    {
      signBits = __clz(-in) - 1;
    }

     
    in = in << signBits;

     
    index = (uint32_t) (in >> 24u);
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0u; i < 2u; i++)
    {
      tempVal = (q31_t) (((q63_t) in * out) >> 31u);
      tempVal = 0x7FFFFFFF - tempVal;
       
      
      out = (q31_t) clip_q63_to_q31(((q63_t) out * tempVal) >> 30u);
    }

     
    *dst = out;

     
    return (signBits + 1u);

  }

  

 
  static __inline uint32_t arm_recip_q15(
  q15_t in,
  q15_t * dst,
  q15_t * pRecipTable)
  {

    uint32_t out = 0, tempVal = 0;
    uint32_t index = 0, i = 0;
    uint32_t signBits = 0;

    if(in > 0)
    {
      signBits = __clz(in) - 17;
    }
    else
    {
      signBits = __clz(-in) - 17;
    }

     
    in = in << signBits;

     
    index = in >> 8;
    index = (index & 0x0000003F);

     
    out = pRecipTable[index];

     
     
    for (i = 0; i < 2; i++)
    {
      tempVal = (q15_t) (((q31_t) in * out) >> 15);
      tempVal = 0x7FFF - tempVal;
       
      out = (q15_t) (((q31_t) out * tempVal) >> 14);
    }

     
    *dst = out;

     
    return (signBits + 1);

  }


  

 
#line 682 ".\\inc\\arm_math.h"



  

 
#line 1065 ".\\inc\\arm_math.h"


  

 
  typedef struct
  {
    uint16_t numTaps;         
    q7_t *pState;             
    q7_t *pCoeffs;            
  } arm_fir_instance_q7;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q15_t *pState;             
    q15_t *pCoeffs;            
  } arm_fir_instance_q15;

  

 
  typedef struct
  {
    uint16_t numTaps;          
    q31_t *pState;             
    q31_t *pCoeffs;            
  } arm_fir_instance_q31;

  

 
  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
  } arm_fir_instance_f32;


  






 
  void arm_fir_q7(
  const arm_fir_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  







 
  void arm_fir_init_q7(
  arm_fir_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  uint32_t blockSize);


  






 
  void arm_fir_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 
  void arm_fir_fast_q15(
  const arm_fir_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  








 

  arm_status arm_fir_init_q15(
  arm_fir_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 
  void arm_fir_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 
  void arm_fir_fast_q31(
  const arm_fir_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  







 
  void arm_fir_init_q31(
  arm_fir_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);

  






 
  void arm_fir_f32(
  const arm_fir_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  







 
  void arm_fir_init_f32(
  arm_fir_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  

 
  typedef struct
  {
    int8_t numStages;          
    q15_t *pState;             
    q15_t *pCoeffs;            
    int8_t postShift;          

  } arm_biquad_casd_df1_inst_q15;


  

 
  typedef struct
  {
    uint32_t numStages;       
    q31_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        

  } arm_biquad_casd_df1_inst_q31;

  

 
  typedef struct
  {
    uint32_t numStages;          
    float32_t *pState;           
    float32_t *pCoeffs;          


  } arm_biquad_casd_df1_inst_f32;



  






 

  void arm_biquad_cascade_df1_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  







 

  void arm_biquad_cascade_df1_init_q15(
  arm_biquad_casd_df1_inst_q15 * S,
  uint8_t numStages,
  q15_t * pCoeffs,
  q15_t * pState,
  int8_t postShift);


  






 

  void arm_biquad_cascade_df1_fast_q15(
  const arm_biquad_casd_df1_inst_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_df1_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df1_fast_q31(
  const arm_biquad_casd_df1_inst_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  







 

  void arm_biquad_cascade_df1_init_q31(
  arm_biquad_casd_df1_inst_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q31_t * pState,
  int8_t postShift);

  






 

  void arm_biquad_cascade_df1_f32(
  const arm_biquad_casd_df1_inst_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df1_init_f32(
  arm_biquad_casd_df1_inst_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float32_t *pData;      
  } arm_matrix_instance_f32;


  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    float64_t *pData;      
  } arm_matrix_instance_f64;

  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q15_t *pData;          

  } arm_matrix_instance_q15;

  

 

  typedef struct
  {
    uint16_t numRows;      
    uint16_t numCols;      
    q31_t *pData;          

  } arm_matrix_instance_q31;



  






 

  arm_status arm_mat_add_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_add_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  






 

  arm_status arm_mat_add_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_cmplx_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_cmplx_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pScratch);

  






 

  arm_status arm_mat_cmplx_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  





 

  arm_status arm_mat_trans_f32(
  const arm_matrix_instance_f32 * pSrc,
  arm_matrix_instance_f32 * pDst);


  





 

  arm_status arm_mat_trans_q15(
  const arm_matrix_instance_q15 * pSrc,
  arm_matrix_instance_q15 * pDst);

  





 

  arm_status arm_mat_trans_q31(
  const arm_matrix_instance_q31 * pSrc,
  arm_matrix_instance_q31 * pDst);


  






 

  arm_status arm_mat_mult_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  







 

  arm_status arm_mat_mult_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  







 

  arm_status arm_mat_mult_fast_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst,
  q15_t * pState);

  






 

  arm_status arm_mat_mult_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_mult_fast_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);


  






 

  arm_status arm_mat_sub_f32(
  const arm_matrix_instance_f32 * pSrcA,
  const arm_matrix_instance_f32 * pSrcB,
  arm_matrix_instance_f32 * pDst);

  






 

  arm_status arm_mat_sub_q15(
  const arm_matrix_instance_q15 * pSrcA,
  const arm_matrix_instance_q15 * pSrcB,
  arm_matrix_instance_q15 * pDst);

  






 

  arm_status arm_mat_sub_q31(
  const arm_matrix_instance_q31 * pSrcA,
  const arm_matrix_instance_q31 * pSrcB,
  arm_matrix_instance_q31 * pDst);

  






 

  arm_status arm_mat_scale_f32(
  const arm_matrix_instance_f32 * pSrc,
  float32_t scale,
  arm_matrix_instance_f32 * pDst);

  







 

  arm_status arm_mat_scale_q15(
  const arm_matrix_instance_q15 * pSrc,
  q15_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q15 * pDst);

  







 

  arm_status arm_mat_scale_q31(
  const arm_matrix_instance_q31 * pSrc,
  q31_t scaleFract,
  int32_t shift,
  arm_matrix_instance_q31 * pDst);


  






 

  void arm_mat_init_q31(
  arm_matrix_instance_q31 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q31_t * pData);

  






 

  void arm_mat_init_q15(
  arm_matrix_instance_q15 * S,
  uint16_t nRows,
  uint16_t nColumns,
  q15_t * pData);

  






 

  void arm_mat_init_f32(
  arm_matrix_instance_f32 * S,
  uint16_t nRows,
  uint16_t nColumns,
  float32_t * pData);



  

 
  typedef struct
  {
    q15_t A0;     




    q31_t A1;            

    q15_t state[3];        
    q15_t Kp;            
    q15_t Ki;            
    q15_t Kd;            
  } arm_pid_instance_q15;

  

 
  typedef struct
  {
    q31_t A0;             
    q31_t A1;             
    q31_t A2;             
    q31_t state[3];       
    q31_t Kp;             
    q31_t Ki;             
    q31_t Kd;             

  } arm_pid_instance_q31;

  

 
  typedef struct
  {
    float32_t A0;           
    float32_t A1;           
    float32_t A2;           
    float32_t state[3];     
    float32_t Kp;                
    float32_t Ki;                
    float32_t Kd;                
  } arm_pid_instance_f32;



  




 
  void arm_pid_init_f32(
  arm_pid_instance_f32 * S,
  int32_t resetStateFlag);

  



 
  void arm_pid_reset_f32(
  arm_pid_instance_f32 * S);


  




 
  void arm_pid_init_q31(
  arm_pid_instance_q31 * S,
  int32_t resetStateFlag);


  



 

  void arm_pid_reset_q31(
  arm_pid_instance_q31 * S);

  




 
  void arm_pid_init_q15(
  arm_pid_instance_q15 * S,
  int32_t resetStateFlag);

  



 
  void arm_pid_reset_q15(
  arm_pid_instance_q15 * S);


  

 
  typedef struct
  {
    uint32_t nValues;            
    float32_t x1;                
    float32_t xSpacing;          
    float32_t *pYData;           
  } arm_linear_interp_instance_f32;

  

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    float32_t *pData;    
  } arm_bilinear_interp_instance_f32;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q31_t *pData;        
  } arm_bilinear_interp_instance_q31;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q15_t *pData;        
  } arm_bilinear_interp_instance_q15;

   

 

  typedef struct
  {
    uint16_t numRows;    
    uint16_t numCols;    
    q7_t *pData;                 
  } arm_bilinear_interp_instance_q7;


  






 

  void arm_mult_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_mult_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);






  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                      
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q15;

 
  arm_status arm_cfft_radix2_init_q15(
  arm_cfft_radix2_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q15(
  const arm_cfft_radix2_instance_q15 * S,
  q15_t * pSrc);



  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q15_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q15;

 
  arm_status arm_cfft_radix4_init_q15(
  arm_cfft_radix4_instance_q15 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_q15(
  const arm_cfft_radix4_instance_q15 * S,
  q15_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                      
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix2_instance_q31;

 
  arm_status arm_cfft_radix2_init_q31(
  arm_cfft_radix2_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_q31(
  const arm_cfft_radix2_instance_q31 * S,
  q31_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                  
    uint8_t ifftFlag;                 
    uint8_t bitReverseFlag;           
    q31_t *pTwiddle;                  
    uint16_t *pBitRevTable;           
    uint16_t twidCoefModifier;        
    uint16_t bitRevFactor;            
  } arm_cfft_radix4_instance_q31;

 
  void arm_cfft_radix4_q31(
  const arm_cfft_radix4_instance_q31 * S,
  q31_t * pSrc);

 
  arm_status arm_cfft_radix4_init_q31(
  arm_cfft_radix4_instance_q31 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;                  
  } arm_cfft_radix2_instance_f32;

 
  arm_status arm_cfft_radix2_init_f32(
  arm_cfft_radix2_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix2_f32(
  const arm_cfft_radix2_instance_f32 * S,
  float32_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    uint8_t ifftFlag;                   
    uint8_t bitReverseFlag;             
    float32_t *pTwiddle;                
    uint16_t *pBitRevTable;             
    uint16_t twidCoefModifier;          
    uint16_t bitRevFactor;              
    float32_t onebyfftLen;                  
  } arm_cfft_radix4_instance_f32;

 
  arm_status arm_cfft_radix4_init_f32(
  arm_cfft_radix4_instance_f32 * S,
  uint16_t fftLen,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

 
  void arm_cfft_radix4_f32(
  const arm_cfft_radix4_instance_f32 * S,
  float32_t * pSrc);

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const q15_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q15;

void arm_cfft_q15( 
    const arm_cfft_instance_q15 * S, 
    q15_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);  

  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const q31_t *pTwiddle;              
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_q31;

void arm_cfft_q31( 
    const arm_cfft_instance_q31 * S, 
    q31_t * p1,
    uint8_t ifftFlag,
    uint8_t bitReverseFlag);  
  
  

 

  typedef struct
  {
    uint16_t fftLen;                    
    const float32_t *pTwiddle;          
    const uint16_t *pBitRevTable;       
    uint16_t bitRevLength;              
  } arm_cfft_instance_f32;

  void arm_cfft_f32(
  const arm_cfft_instance_f32 * S,
  float32_t * p1,
  uint8_t ifftFlag,
  uint8_t bitReverseFlag);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                       
    uint8_t ifftFlagR;                         
    uint8_t bitReverseFlagR;                   
    uint32_t twidCoefRModifier;                
    q15_t *pTwiddleAReal;                      
    q15_t *pTwiddleBReal;                      
    const arm_cfft_instance_q15 *pCfft;        
  } arm_rfft_instance_q15;

  arm_status arm_rfft_init_q15(
  arm_rfft_instance_q15 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q15(
  const arm_rfft_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                         
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                  
    q31_t *pTwiddleAReal;                        
    q31_t *pTwiddleBReal;                        
    const arm_cfft_instance_q31 *pCfft;          
  } arm_rfft_instance_q31;

  arm_status arm_rfft_init_q31(
  arm_rfft_instance_q31 * S,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_q31(
  const arm_rfft_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst);

  

 

  typedef struct
  {
    uint32_t fftLenReal;                         
    uint16_t fftLenBy2;                          
    uint8_t ifftFlagR;                           
    uint8_t bitReverseFlagR;                     
    uint32_t twidCoefRModifier;                      
    float32_t *pTwiddleAReal;                    
    float32_t *pTwiddleBReal;                    
    arm_cfft_radix4_instance_f32 *pCfft;         
  } arm_rfft_instance_f32;

  arm_status arm_rfft_init_f32(
  arm_rfft_instance_f32 * S,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint32_t fftLenReal,
  uint32_t ifftFlagR,
  uint32_t bitReverseFlag);

  void arm_rfft_f32(
  const arm_rfft_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst);

  

 

typedef struct
  {
    arm_cfft_instance_f32 Sint;       
    uint16_t fftLenRFFT;                         
	float32_t * pTwiddleRFFT;					 
  } arm_rfft_fast_instance_f32 ;

arm_status arm_rfft_fast_init_f32 (
	arm_rfft_fast_instance_f32 * S,
	uint16_t fftLen);

void arm_rfft_fast_f32(
  arm_rfft_fast_instance_f32 * S,
  float32_t * p, float32_t * pOut,
  uint8_t ifftFlag);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    float32_t normalize;                 
    float32_t *pTwiddle;                 
    float32_t *pCosFactor;               
    arm_rfft_instance_f32 *pRfft;         
    arm_cfft_radix4_instance_f32 *pCfft;  
  } arm_dct4_instance_f32;

  








 

  arm_status arm_dct4_init_f32(
  arm_dct4_instance_f32 * S,
  arm_rfft_instance_f32 * S_RFFT,
  arm_cfft_radix4_instance_f32 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  float32_t normalize);

  





 

  void arm_dct4_f32(
  const arm_dct4_instance_f32 * S,
  float32_t * pState,
  float32_t * pInlineBuffer);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    q31_t normalize;                     
    q31_t *pTwiddle;                     
    q31_t *pCosFactor;                   
    arm_rfft_instance_q31 *pRfft;         
    arm_cfft_radix4_instance_q31 *pCfft;  
  } arm_dct4_instance_q31;

  








 

  arm_status arm_dct4_init_q31(
  arm_dct4_instance_q31 * S,
  arm_rfft_instance_q31 * S_RFFT,
  arm_cfft_radix4_instance_q31 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q31_t normalize);

  





 

  void arm_dct4_q31(
  const arm_dct4_instance_q31 * S,
  q31_t * pState,
  q31_t * pInlineBuffer);

  

 

  typedef struct
  {
    uint16_t N;                          
    uint16_t Nby2;                       
    q15_t normalize;                     
    q15_t *pTwiddle;                     
    q15_t *pCosFactor;                   
    arm_rfft_instance_q15 *pRfft;         
    arm_cfft_radix4_instance_q15 *pCfft;  
  } arm_dct4_instance_q15;

  








 

  arm_status arm_dct4_init_q15(
  arm_dct4_instance_q15 * S,
  arm_rfft_instance_q15 * S_RFFT,
  arm_cfft_radix4_instance_q15 * S_CFFT,
  uint16_t N,
  uint16_t Nby2,
  q15_t normalize);

  





 

  void arm_dct4_q15(
  const arm_dct4_instance_q15 * S,
  q15_t * pState,
  q15_t * pInlineBuffer);

  






 

  void arm_add_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_add_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_sub_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_scale_f32(
  float32_t * pSrc,
  float32_t scale,
  float32_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q7(
  q7_t * pSrc,
  q7_t scaleFract,
  int8_t shift,
  q7_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q15(
  q15_t * pSrc,
  q15_t scaleFract,
  int8_t shift,
  q15_t * pDst,
  uint32_t blockSize);

  







 

  void arm_scale_q31(
  q31_t * pSrc,
  q31_t scaleFract,
  int8_t shift,
  q31_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 

  void arm_abs_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t blockSize,
  float32_t * result);

  






 

  void arm_dot_prod_q7(
  q7_t * pSrcA,
  q7_t * pSrcB,
  uint32_t blockSize,
  q31_t * result);

  






 

  void arm_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  






 

  void arm_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t blockSize,
  q63_t * result);

  






 

  void arm_shift_q7(
  q7_t * pSrc,
  int8_t shiftBits,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_shift_q15(
  q15_t * pSrc,
  int8_t shiftBits,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_shift_q31(
  q31_t * pSrc,
  int8_t shiftBits,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_f32(
  float32_t * pSrc,
  float32_t offset,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q7(
  q7_t * pSrc,
  q7_t offset,
  q7_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q15(
  q15_t * pSrc,
  q15_t offset,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_offset_q31(
  q31_t * pSrc,
  q31_t offset,
  q31_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 

  void arm_negate_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  





 
  void arm_copy_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q7(
  q7_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_copy_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);
  





 
  void arm_fill_f32(
  float32_t value,
  float32_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q7(
  q7_t value,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q15(
  q15_t value,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_fill_q31(
  q31_t value,
  q31_t * pDst,
  uint32_t blockSize);









 

  void arm_conv_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


  









 


  void arm_conv_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);










 

  void arm_conv_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  







 

  void arm_conv_fast_q15(
			  q15_t * pSrcA,
			 uint32_t srcALen,
			  q15_t * pSrcB,
			 uint32_t srcBLen,
			 q15_t * pDst);

  









 

  void arm_conv_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  







 

  void arm_conv_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  







 

  void arm_conv_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);


    









 

  void arm_conv_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);



  







 

  void arm_conv_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  









 

  arm_status arm_conv_partial_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

    











 

  arm_status arm_conv_partial_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);












 

  arm_status arm_conv_partial_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);

  









 

  arm_status arm_conv_partial_fast_q15(
				        q15_t * pSrcA,
				       uint32_t srcALen,
				        q15_t * pSrcB,
				       uint32_t srcBLen,
				       q15_t * pDst,
				       uint32_t firstIndex,
				       uint32_t numPoints);


  











 

  arm_status arm_conv_partial_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);


  









 

  arm_status arm_conv_partial_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  









 

  arm_status arm_conv_partial_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);


  











 

  arm_status arm_conv_partial_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints,
  q15_t * pScratch1,
  q15_t * pScratch2);












 

  arm_status arm_conv_partial_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  uint32_t firstIndex,
  uint32_t numPoints);



  

 

  typedef struct
  {
    uint8_t M;                       
    uint16_t numTaps;                
    q15_t *pCoeffs;                   
    q15_t *pState;                    
  } arm_fir_decimate_instance_q15;

  

 

  typedef struct
  {
    uint8_t M;                   
    uint16_t numTaps;            
    q31_t *pCoeffs;               
    q31_t *pState;                

  } arm_fir_decimate_instance_q31;

  

 

  typedef struct
  {
    uint8_t M;                           
    uint16_t numTaps;                    
    float32_t *pCoeffs;                   
    float32_t *pState;                    

  } arm_fir_decimate_instance_f32;



  






 

  void arm_fir_decimate_f32(
  const arm_fir_decimate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_decimate_init_f32(
  arm_fir_decimate_instance_f32 * S,
  uint16_t numTaps,
  uint8_t M,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_fast_q15(
  const arm_fir_decimate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  









 

  arm_status arm_fir_decimate_init_q15(
  arm_fir_decimate_instance_q15 * S,
  uint16_t numTaps,
  uint8_t M,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_q31(
  const arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_decimate_fast_q31(
  arm_fir_decimate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_decimate_init_q31(
  arm_fir_decimate_instance_q31 * S,
  uint16_t numTaps,
  uint8_t M,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);



  

 

  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q15_t *pCoeffs;                  
    q15_t *pState;                   
  } arm_fir_interpolate_instance_q15;

  

 

  typedef struct
  {
    uint8_t L;                       
    uint16_t phaseLength;            
    q31_t *pCoeffs;                   
    q31_t *pState;                    
  } arm_fir_interpolate_instance_q31;

  

 

  typedef struct
  {
    uint8_t L;                      
    uint16_t phaseLength;           
    float32_t *pCoeffs;              
    float32_t *pState;               
  } arm_fir_interpolate_instance_f32;


  






 

  void arm_fir_interpolate_q15(
  const arm_fir_interpolate_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);


  









 

  arm_status arm_fir_interpolate_init_q15(
  arm_fir_interpolate_instance_q15 * S,
  uint8_t L,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  






 

  void arm_fir_interpolate_q31(
  const arm_fir_interpolate_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  









 

  arm_status arm_fir_interpolate_init_q31(
  arm_fir_interpolate_instance_q31 * S,
  uint8_t L,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  






 

  void arm_fir_interpolate_f32(
  const arm_fir_interpolate_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  









 

  arm_status arm_fir_interpolate_init_f32(
  arm_fir_interpolate_instance_f32 * S,
  uint8_t L,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint8_t numStages;        
    q63_t *pState;            
    q31_t *pCoeffs;           
    uint8_t postShift;        

  } arm_biquad_cas_df1_32x64_ins_q31;


  





 

  void arm_biquad_cas_df1_32x64_q31(
  const arm_biquad_cas_df1_32x64_ins_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cas_df1_32x64_init_q31(
  arm_biquad_cas_df1_32x64_ins_q31 * S,
  uint8_t numStages,
  q31_t * pCoeffs,
  q63_t * pState,
  uint8_t postShift);



  

 

  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f32;



  

 

  typedef struct
  {
    uint8_t numStages;          
    float32_t *pState;          
    float32_t *pCoeffs;         
  } arm_biquad_cascade_stereo_df2T_instance_f32;



  

 

  typedef struct
  {
    uint8_t numStages;          
    float64_t *pState;          
    float64_t *pCoeffs;         
  } arm_biquad_cascade_df2T_instance_f64;


  






 

  void arm_biquad_cascade_df2T_f32(
  const arm_biquad_cascade_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_stereo_df2T_f32(
  const arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  






 

  void arm_biquad_cascade_df2T_f64(
  const arm_biquad_cascade_df2T_instance_f64 * S,
  float64_t * pSrc,
  float64_t * pDst,
  uint32_t blockSize);


  






 

  void arm_biquad_cascade_df2T_init_f32(
  arm_biquad_cascade_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  






 

  void arm_biquad_cascade_stereo_df2T_init_f32(
  arm_biquad_cascade_stereo_df2T_instance_f32 * S,
  uint8_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);


  






 

  void arm_biquad_cascade_df2T_init_f64(
  arm_biquad_cascade_df2T_instance_f64 * S,
  uint8_t numStages,
  float64_t * pCoeffs,
  float64_t * pState);



  

 

  typedef struct
  {
    uint16_t numStages;                           
    q15_t *pState;                                
    q15_t *pCoeffs;                               
  } arm_fir_lattice_instance_q15;

  

 

  typedef struct
  {
    uint16_t numStages;                           
    q31_t *pState;                                
    q31_t *pCoeffs;                               
  } arm_fir_lattice_instance_q31;

  

 

  typedef struct
  {
    uint16_t numStages;                   
    float32_t *pState;                    
    float32_t *pCoeffs;                   
  } arm_fir_lattice_instance_f32;

  






 

  void arm_fir_lattice_init_q15(
  arm_fir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pCoeffs,
  q15_t * pState);


  






 
  void arm_fir_lattice_q15(
  const arm_fir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  






 

  void arm_fir_lattice_init_q31(
  arm_fir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pCoeffs,
  q31_t * pState);


  






 

  void arm_fir_lattice_q31(
  const arm_fir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);








 

  void arm_fir_lattice_init_f32(
  arm_fir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pCoeffs,
  float32_t * pState);

  






 

  void arm_fir_lattice_f32(
  const arm_fir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  

 
  typedef struct
  {
    uint16_t numStages;                          
    q15_t *pState;                               
    q15_t *pkCoeffs;                             
    q15_t *pvCoeffs;                             
  } arm_iir_lattice_instance_q15;

  

 
  typedef struct
  {
    uint16_t numStages;                          
    q31_t *pState;                               
    q31_t *pkCoeffs;                             
    q31_t *pvCoeffs;                             
  } arm_iir_lattice_instance_q31;

  

 
  typedef struct
  {
    uint16_t numStages;                          
    float32_t *pState;                           
    float32_t *pkCoeffs;                         
    float32_t *pvCoeffs;                         
  } arm_iir_lattice_instance_f32;

  






 

  void arm_iir_lattice_f32(
  const arm_iir_lattice_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  








 

  void arm_iir_lattice_init_f32(
  arm_iir_lattice_instance_f32 * S,
  uint16_t numStages,
  float32_t * pkCoeffs,
  float32_t * pvCoeffs,
  float32_t * pState,
  uint32_t blockSize);


  






 

  void arm_iir_lattice_q31(
  const arm_iir_lattice_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  








 

  void arm_iir_lattice_init_q31(
  arm_iir_lattice_instance_q31 * S,
  uint16_t numStages,
  q31_t * pkCoeffs,
  q31_t * pvCoeffs,
  q31_t * pState,
  uint32_t blockSize);


  






 

  void arm_iir_lattice_q15(
  const arm_iir_lattice_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);











 

  void arm_iir_lattice_init_q15(
  arm_iir_lattice_instance_q15 * S,
  uint16_t numStages,
  q15_t * pkCoeffs,
  q15_t * pvCoeffs,
  q15_t * pState,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    float32_t *pState;    
    float32_t *pCoeffs;   
    float32_t mu;         
  } arm_lms_instance_f32;

  








 

  void arm_lms_f32(
  const arm_lms_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  








 

  void arm_lms_init_f32(
  arm_lms_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    q15_t *pState;        
    q15_t *pCoeffs;       
    q15_t mu;             
    uint32_t postShift;   
  } arm_lms_instance_q15;


  









 

  void arm_lms_init_q15(
  arm_lms_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  








 

  void arm_lms_q15(
  const arm_lms_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  

 

  typedef struct
  {
    uint16_t numTaps;     
    q31_t *pState;        
    q31_t *pCoeffs;       
    q31_t mu;             
    uint32_t postShift;   

  } arm_lms_instance_q31;

  








 

  void arm_lms_q31(
  const arm_lms_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  









 

  void arm_lms_init_q31(
  arm_lms_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint32_t postShift);

  

 

  typedef struct
  {
    uint16_t numTaps;      
    float32_t *pState;     
    float32_t *pCoeffs;    
    float32_t mu;         
    float32_t energy;     
    float32_t x0;         
  } arm_lms_norm_instance_f32;

  








 

  void arm_lms_norm_f32(
  arm_lms_norm_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pRef,
  float32_t * pOut,
  float32_t * pErr,
  uint32_t blockSize);

  








 

  void arm_lms_norm_init_f32(
  arm_lms_norm_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  float32_t mu,
  uint32_t blockSize);


  

 
  typedef struct
  {
    uint16_t numTaps;      
    q31_t *pState;         
    q31_t *pCoeffs;        
    q31_t mu;              
    uint8_t postShift;     
    q31_t *recipTable;     
    q31_t energy;          
    q31_t x0;              
  } arm_lms_norm_instance_q31;

  








 

  void arm_lms_norm_q31(
  arm_lms_norm_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pRef,
  q31_t * pOut,
  q31_t * pErr,
  uint32_t blockSize);

  









 

  void arm_lms_norm_init_q31(
  arm_lms_norm_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  q31_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  

 

  typedef struct
  {
    uint16_t numTaps;     
    q15_t *pState;         
    q15_t *pCoeffs;        
    q15_t mu;             
    uint8_t postShift;    
    q15_t *recipTable;    
    q15_t energy;         
    q15_t x0;             
  } arm_lms_norm_instance_q15;

  








 

  void arm_lms_norm_q15(
  arm_lms_norm_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pRef,
  q15_t * pOut,
  q15_t * pErr,
  uint32_t blockSize);


  









 

  void arm_lms_norm_init_q15(
  arm_lms_norm_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  q15_t mu,
  uint32_t blockSize,
  uint8_t postShift);

  







 

  void arm_correlate_f32(
  float32_t * pSrcA,
  uint32_t srcALen,
  float32_t * pSrcB,
  uint32_t srcBLen,
  float32_t * pDst);


   








 
  void arm_correlate_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);


  







 

  void arm_correlate_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst);

  







 

  void arm_correlate_fast_q15(
			       q15_t * pSrcA,
			      uint32_t srcALen,
			       q15_t * pSrcB,
			      uint32_t srcBLen,
			      q15_t * pDst);



  








 

  void arm_correlate_fast_opt_q15(
  q15_t * pSrcA,
  uint32_t srcALen,
  q15_t * pSrcB,
  uint32_t srcBLen,
  q15_t * pDst,
  q15_t * pScratch);

  







 

  void arm_correlate_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);

  







 

  void arm_correlate_fast_q31(
  q31_t * pSrcA,
  uint32_t srcALen,
  q31_t * pSrcB,
  uint32_t srcBLen,
  q31_t * pDst);



 









 

  void arm_correlate_opt_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst,
  q15_t * pScratch1,
  q15_t * pScratch2);


  







 

  void arm_correlate_q7(
  q7_t * pSrcA,
  uint32_t srcALen,
  q7_t * pSrcB,
  uint32_t srcBLen,
  q7_t * pDst);


  

 
  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    float32_t *pState;             
    float32_t *pCoeffs;            
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_f32;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q31_t *pState;                 
    q31_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q31;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q15_t *pState;                 
    q15_t *pCoeffs;                
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q15;

  

 

  typedef struct
  {
    uint16_t numTaps;              
    uint16_t stateIndex;           
    q7_t *pState;                  
    q7_t *pCoeffs;                 
    uint16_t maxDelay;             
    int32_t *pTapDelay;            
  } arm_fir_sparse_instance_q7;

  







 

  void arm_fir_sparse_f32(
  arm_fir_sparse_instance_f32 * S,
  float32_t * pSrc,
  float32_t * pDst,
  float32_t * pScratchIn,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_f32(
  arm_fir_sparse_instance_f32 * S,
  uint16_t numTaps,
  float32_t * pCoeffs,
  float32_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  







 

  void arm_fir_sparse_q31(
  arm_fir_sparse_instance_q31 * S,
  q31_t * pSrc,
  q31_t * pDst,
  q31_t * pScratchIn,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_q31(
  arm_fir_sparse_instance_q31 * S,
  uint16_t numTaps,
  q31_t * pCoeffs,
  q31_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  








 

  void arm_fir_sparse_q15(
  arm_fir_sparse_instance_q15 * S,
  q15_t * pSrc,
  q15_t * pDst,
  q15_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);


  









 

  void arm_fir_sparse_init_q15(
  arm_fir_sparse_instance_q15 * S,
  uint16_t numTaps,
  q15_t * pCoeffs,
  q15_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);

  








 

  void arm_fir_sparse_q7(
  arm_fir_sparse_instance_q7 * S,
  q7_t * pSrc,
  q7_t * pDst,
  q7_t * pScratchIn,
  q31_t * pScratchOut,
  uint32_t blockSize);

  









 

  void arm_fir_sparse_init_q7(
  arm_fir_sparse_instance_q7 * S,
  uint16_t numTaps,
  q7_t * pCoeffs,
  q7_t * pState,
  int32_t * pTapDelay,
  uint16_t maxDelay,
  uint32_t blockSize);


  





 

  void arm_sin_cos_f32(
  float32_t theta,
  float32_t * pSinVal,
  float32_t * pCcosVal);

  





 

  void arm_sin_cos_q31(
  q31_t theta,
  q31_t * pSinVal,
  q31_t * pCosVal);


  





 

  void arm_cmplx_conj_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_conj_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_conj_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);



  





 

  void arm_cmplx_mag_squared_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_squared_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_squared_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);


 

 

  






















































 

  


 

  




 

  static __inline float32_t arm_pid_f32
  (
  arm_pid_instance_f32 * S,
  float32_t in)
  {
    float32_t out;

     
    out = (S->A0 * in) +
      (S->A1 * S->state[0]) + (S->A2 * S->state[1]) + (S->state[2]);

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  












 

  static __inline q31_t arm_pid_q31(
  arm_pid_instance_q31 * S,
  q31_t in)
  {
    q63_t acc;
    q31_t out;

     
    acc = (q63_t) S->A0 * in;

     
    acc += (q63_t) S->A1 * S->state[0];

     
    acc += (q63_t) S->A2 * S->state[1];

     
    out = (q31_t) (acc >> 31u);

     
    out += S->state[2];

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  













 

  static __inline q15_t arm_pid_q15(
  arm_pid_instance_q15 * S,
  q15_t in)
  {
    q63_t acc;
    q15_t out;


    int32_t __packed *vstate;

     

     
    acc = (q31_t) __smuad(S->A0, in);

     
    vstate = ((int32_t __packed *)(S->state));
    acc = __smlald(S->A1, (q31_t) *vstate, acc);

#line 5199 ".\\inc\\arm_math.h"

     
    acc += (q31_t) S->state[2] << 15;

     
    out = (q15_t) (__ssat((acc >> 15), 16));

     
    S->state[1] = S->state[0];
    S->state[0] = in;
    S->state[2] = out;

     
    return (out);

  }

  

 


  





 

  arm_status arm_mat_inverse_f32(
  const arm_matrix_instance_f32 * src,
  arm_matrix_instance_f32 * dst);


  





 

  arm_status arm_mat_inverse_f64(
  const arm_matrix_instance_f64 * src,
  arm_matrix_instance_f64 * dst);



  

 


  



















 

  


 

  







 

  static __inline void arm_clarke_f32(
  float32_t Ia,
  float32_t Ib,
  float32_t * pIalpha,
  float32_t * pIbeta)
  {
     
    *pIalpha = Ia;

     
    *pIbeta =
      ((float32_t) 0.57735026919 * Ia + (float32_t) 1.15470053838 * Ib);

  }

  












 

  static __inline void arm_clarke_q31(
  q31_t Ia,
  q31_t Ib,
  q31_t * pIalpha,
  q31_t * pIbeta)
  {
    q31_t product1, product2;                     

     
    *pIalpha = Ia;

     
    product1 = (q31_t) (((q63_t) Ia * 0x24F34E8B) >> 30);

     
    product2 = (q31_t) (((q63_t) Ib * 0x49E69D16) >> 30);

     
    *pIbeta = __qadd(product1, product2);
  }

  

 

  





 
  void arm_q7_to_q31(
  q7_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);




  

 

  













 

  


 

   






 


  static __inline void arm_inv_clarke_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pIa,
  float32_t * pIb)
  {
     
    *pIa = Ialpha;

     
    *pIb = -0.5 * Ialpha + (float32_t) 0.8660254039 *Ibeta;

  }

  












 

  static __inline void arm_inv_clarke_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pIa,
  q31_t * pIb)
  {
    q31_t product1, product2;                     

     
    *pIa = Ialpha;

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (0x40000000)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (0x6ED9EBA1)) >> 31);

     
    *pIb = __qsub(product2, product1);

  }

  

 

  





 
  void arm_q7_to_q15(
  q7_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);



  

 

  





















 

  


 

  











 

  static __inline void arm_park_f32(
  float32_t Ialpha,
  float32_t Ibeta,
  float32_t * pId,
  float32_t * pIq,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pId = Ialpha * cosVal + Ibeta * sinVal;

     
    *pIq = -Ialpha * sinVal + Ibeta * cosVal;

  }

  














 


  static __inline void arm_park_q31(
  q31_t Ialpha,
  q31_t Ibeta,
  q31_t * pId,
  q31_t * pIq,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Ialpha) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Ibeta) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Ialpha) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Ibeta) * (cosVal)) >> 31);

     
    *pId = __qadd(product1, product2);

     
    *pIq = __qsub(product4, product3);
  }

  

 

  





 
  void arm_q7_to_float(
  q7_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  

 

  














 

  


 

   








 

  static __inline void arm_inv_park_f32(
  float32_t Id,
  float32_t Iq,
  float32_t * pIalpha,
  float32_t * pIbeta,
  float32_t sinVal,
  float32_t cosVal)
  {
     
    *pIalpha = Id * cosVal - Iq * sinVal;

     
    *pIbeta = Id * sinVal + Iq * cosVal;

  }


  














 


  static __inline void arm_inv_park_q31(
  q31_t Id,
  q31_t Iq,
  q31_t * pIalpha,
  q31_t * pIbeta,
  q31_t sinVal,
  q31_t cosVal)
  {
    q31_t product1, product2;                     
    q31_t product3, product4;                     

     
    product1 = (q31_t) (((q63_t) (Id) * (cosVal)) >> 31);

     
    product2 = (q31_t) (((q63_t) (Iq) * (sinVal)) >> 31);


     
    product3 = (q31_t) (((q63_t) (Id) * (sinVal)) >> 31);

     
    product4 = (q31_t) (((q63_t) (Iq) * (cosVal)) >> 31);

     
    *pIalpha = __qsub(product1, product2);

     
    *pIbeta = __qadd(product4, product3);

  }

  

 


  





 
  void arm_q31_to_float(
  q31_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);

  

 

  





























 

  


 

  





 

  static __inline float32_t arm_linear_interp_f32(
  arm_linear_interp_instance_f32 * S,
  float32_t x)
  {

    float32_t y;
    float32_t x0, x1;                             
    float32_t y0, y1;                             
    float32_t xSpacing = S->xSpacing;             
    int32_t i;                                    
    float32_t *pYData = S->pYData;                

     
    i = (int32_t) ((x - S->x1) / xSpacing);

    if(i < 0)
    {
       
      y = pYData[0];
    }
    else if((uint32_t)i >= S->nValues)
    {
       
      y = pYData[S->nValues - 1];
    }
    else
    {
       
      x0 = S->x1 + i * xSpacing;
      x1 = S->x1 + (i + 1) * xSpacing;

       
      y0 = pYData[i];
      y1 = pYData[i + 1];

       
      y = y0 + (x - x0) * ((y1 - y0) / (x1 - x0));

    }

     
    return (y);
  }

   











 


  static __inline q31_t arm_linear_interp_q31(
  q31_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q31_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & 0xFFF00000) >> 20);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {

       
       
      fract = (x & 0x000FFFFF) << 11;

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((q31_t) ((q63_t) y0 * (0x7FFFFFFF - fract) >> 32));

       
      y += ((q31_t) (((q63_t) y1 * fract) >> 32));

       
      return (y << 1u);

    }

  }

  











 


  static __inline q15_t arm_linear_interp_q15(
  q15_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q63_t y;                                      
    q15_t y0, y1;                                 
    q31_t fract;                                  
    int32_t index;                                

     
     
     
    index = ((x & 0xFFF00000) >> 20u);

    if(index >= (int32_t)(nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else if(index < 0)
    {
      return (pYData[0]);
    }
    else
    {
       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((q63_t) y0 * (0xFFFFF - fract));

       
      y += ((q63_t) y1 * (fract));

       
      return (y >> 20);
    }


  }

  










 


  static __inline q7_t arm_linear_interp_q7(
  q7_t * pYData,
  q31_t x,
  uint32_t nValues)
  {
    q31_t y;                                      
    q7_t y0, y1;                                  
    q31_t fract;                                  
    uint32_t index;                               

     
     
     
    if (x < 0)
    {
      return (pYData[0]);
    }
    index = (x >> 20) & 0xfff;


    if(index >= (nValues - 1))
    {
      return (pYData[nValues - 1]);
    }
    else
    {

       
       
      fract = (x & 0x000FFFFF);

       
      y0 = pYData[index];
      y1 = pYData[index + 1u];

       
      y = ((y0 * (0xFFFFF - fract)));

       
      y += (y1 * fract);

       
      return (y >> 20u);

    }

  }
  

 

  



 

  float32_t arm_sin_f32(
  float32_t x);

  



 

  q31_t arm_sin_q31(
  q31_t x);

  



 

  q15_t arm_sin_q15(
  q15_t x);

  



 

  float32_t arm_cos_f32(
  float32_t x);

  



 

  q31_t arm_cos_q31(
  q31_t x);

  



 

  q15_t arm_cos_q15(
  q15_t x);


  

 


  

















 


  


 

  





 

  static __inline arm_status arm_sqrt_f32(
  float32_t in,
  float32_t * pOut)
  {
    if(in > 0)
    {



      *pOut = __sqrtf(in);




      return (ARM_MATH_SUCCESS);
    }
    else
    {
      *pOut = 0.0f;
      return (ARM_MATH_ARGUMENT_ERROR);
    }

  }


  





 
  arm_status arm_sqrt_q31(
  q31_t in,
  q31_t * pOut);

  





 
  arm_status arm_sqrt_q15(
  q15_t in,
  q15_t * pOut);

  

 






  

 

  static __inline void arm_circularWrite_f32(
  int32_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const int32_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_f32(
  int32_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  int32_t * dst,
  int32_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;
    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (int32_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }

  

 

  static __inline void arm_circularWrite_q15(
  q15_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q15_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_q15(
  q15_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q15_t * dst,
  q15_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q15_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  

 

  static __inline void arm_circularWrite_q7(
  q7_t * circBuffer,
  int32_t L,
  uint16_t * writeOffset,
  int32_t bufferInc,
  const q7_t * src,
  int32_t srcInc,
  uint32_t blockSize)
  {
    uint32_t i = 0u;
    int32_t wOffset;

    
 
    wOffset = *writeOffset;

     
    i = blockSize;

    while(i > 0u)
    {
       
      circBuffer[wOffset] = *src;

       
      src += srcInc;

       
      wOffset += bufferInc;
      if(wOffset >= L)
        wOffset -= L;

       
      i--;
    }

     
    *writeOffset = wOffset;
  }



  

 
  static __inline void arm_circularRead_q7(
  q7_t * circBuffer,
  int32_t L,
  int32_t * readOffset,
  int32_t bufferInc,
  q7_t * dst,
  q7_t * dst_base,
  int32_t dst_length,
  int32_t dstInc,
  uint32_t blockSize)
  {
    uint32_t i = 0;
    int32_t rOffset, dst_end;

    
 
    rOffset = *readOffset;

    dst_end = (int32_t) (dst_base + dst_length);

     
    i = blockSize;

    while(i > 0u)
    {
       
      *dst = circBuffer[rOffset];

       
      dst += dstInc;

      if(dst == (q7_t *) dst_end)
      {
        dst = dst_base;
      }

       
      rOffset += bufferInc;

      if(rOffset >= L)
      {
        rOffset -= L;
      }

       
      i--;
    }

     
    *readOffset = rOffset;
  }


  





 

  void arm_power_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  





 

  void arm_power_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_power_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q63_t * pResult);

  





 

  void arm_power_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_mean_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult);

  





 
  void arm_mean_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 
  void arm_mean_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 
  void arm_mean_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_var_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_var_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_var_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_rms_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_rms_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_rms_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_std_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult);

  





 

  void arm_std_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult);

  





 

  void arm_std_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult);

  





 

  void arm_cmplx_mag_f32(
  float32_t * pSrc,
  float32_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_q31(
  q31_t * pSrc,
  q31_t * pDst,
  uint32_t numSamples);

  





 

  void arm_cmplx_mag_q15(
  q15_t * pSrc,
  q15_t * pDst,
  uint32_t numSamples);

  







 

  void arm_cmplx_dot_prod_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  uint32_t numSamples,
  q31_t * realResult,
  q31_t * imagResult);

  







 

  void arm_cmplx_dot_prod_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  uint32_t numSamples,
  q63_t * realResult,
  q63_t * imagResult);

  







 

  void arm_cmplx_dot_prod_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  uint32_t numSamples,
  float32_t * realResult,
  float32_t * imagResult);

  






 

  void arm_cmplx_mult_real_q15(
  q15_t * pSrcCmplx,
  q15_t * pSrcReal,
  q15_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_real_q31(
  q31_t * pSrcCmplx,
  q31_t * pSrcReal,
  q31_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_real_f32(
  float32_t * pSrcCmplx,
  float32_t * pSrcReal,
  float32_t * pCmplxDst,
  uint32_t numSamples);

  






 

  void arm_min_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * result,
  uint32_t * index);

  






 

  void arm_min_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);

  






 
  void arm_min_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);

  






 

  void arm_min_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q7(
  q7_t * pSrc,
  uint32_t blockSize,
  q7_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q15(
  q15_t * pSrc,
  uint32_t blockSize,
  q15_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_q31(
  q31_t * pSrc,
  uint32_t blockSize,
  q31_t * pResult,
  uint32_t * pIndex);








 

  void arm_max_f32(
  float32_t * pSrc,
  uint32_t blockSize,
  float32_t * pResult,
  uint32_t * pIndex);

  






 

  void arm_cmplx_mult_cmplx_q15(
  q15_t * pSrcA,
  q15_t * pSrcB,
  q15_t * pDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_cmplx_q31(
  q31_t * pSrcA,
  q31_t * pSrcB,
  q31_t * pDst,
  uint32_t numSamples);

  






 

  void arm_cmplx_mult_cmplx_f32(
  float32_t * pSrcA,
  float32_t * pSrcB,
  float32_t * pDst,
  uint32_t numSamples);

  





 
  void arm_float_to_q31(
  float32_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);

  





 
  void arm_float_to_q15(
  float32_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_float_to_q7(
  float32_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q31_to_q15(
  q31_t * pSrc,
  q15_t * pDst,
  uint32_t blockSize);

  





 
  void arm_q31_to_q7(
  q31_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);

  





 
  void arm_q15_to_float(
  q15_t * pSrc,
  float32_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q15_to_q31(
  q15_t * pSrc,
  q31_t * pDst,
  uint32_t blockSize);


  





 
  void arm_q15_to_q7(
  q15_t * pSrc,
  q7_t * pDst,
  uint32_t blockSize);


  

 

  

















































 

  


 

  






 


  static __inline float32_t arm_bilinear_interp_f32(
  const arm_bilinear_interp_instance_f32 * S,
  float32_t X,
  float32_t Y)
  {
    float32_t out;
    float32_t f00, f01, f10, f11;
    float32_t *pData = S->pData;
    int32_t xIndex, yIndex, index;
    float32_t xdiff, ydiff;
    float32_t b1, b2, b3, b4;

    xIndex = (int32_t) X;
    yIndex = (int32_t) Y;

     
     
    if(xIndex < 0 || xIndex > (S->numRows - 1) || yIndex < 0
       || yIndex > (S->numCols - 1))
    {
      return (0);
    }

     
    index = (xIndex - 1) + (yIndex - 1) * S->numCols;


     
    f00 = pData[index];
    f01 = pData[index + 1];

     
    index = (xIndex - 1) + (yIndex) * S->numCols;


     
    f10 = pData[index];
    f11 = pData[index + 1];

     
    b1 = f00;
    b2 = f01 - f00;
    b3 = f10 - f00;
    b4 = f00 - f01 - f10 + f11;

     
    xdiff = X - xIndex;

     
    ydiff = Y - yIndex;

     
    out = b1 + b2 * xdiff + b3 * ydiff + b4 * xdiff * ydiff;

     
    return (out);

  }

  






 

  static __inline q31_t arm_bilinear_interp_q31(
  arm_bilinear_interp_instance_q31 * S,
  q31_t X,
  q31_t Y)
  {
    q31_t out;                                    
    q31_t acc = 0;                                
    q31_t xfract, yfract;                         
    q31_t x1, x2, y1, y2;                         
    int32_t rI, cI;                               
    q31_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  


     
     
     
    rI = ((X & 0xFFF00000) >> 20u);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20u);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF) << 11u;

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];

     
     
    yfract = (Y & 0x000FFFFF) << 11u;

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     
    out = ((q31_t) (((q63_t) x1 * (0x7FFFFFFF - xfract)) >> 32));
    acc = ((q31_t) (((q63_t) out * (0x7FFFFFFF - yfract)) >> 32));

     
    out = ((q31_t) ((q63_t) x2 * (0x7FFFFFFF - yfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (xfract) >> 32));

     
    out = ((q31_t) ((q63_t) y1 * (0x7FFFFFFF - xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    out = ((q31_t) ((q63_t) y2 * (xfract) >> 32));
    acc += ((q31_t) ((q63_t) out * (yfract) >> 32));

     
    return (acc << 2u);

  }

  





 

  static __inline q15_t arm_bilinear_interp_q15(
  arm_bilinear_interp_instance_q15 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q15_t x1, x2, y1, y2;                         
    q31_t xfract, yfract;                         
    int32_t rI, cI;                               
    q15_t *pYData = S->pData;                     
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & 0xFFF00000) >> 20);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF);

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


     
     
    yfract = (Y & 0x000FFFFF);

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     

     
     
    out = (q31_t) (((q63_t) x1 * (0xFFFFF - xfract)) >> 4u);
    acc = ((q63_t) out * (0xFFFFF - yfract));

     
    out = (q31_t) (((q63_t) x2 * (0xFFFFF - yfract)) >> 4u);
    acc += ((q63_t) out * (xfract));

     
    out = (q31_t) (((q63_t) y1 * (0xFFFFF - xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
    out = (q31_t) (((q63_t) y2 * (xfract)) >> 4u);
    acc += ((q63_t) out * (yfract));

     
     
    return (acc >> 36);

  }

  





 

  static __inline q7_t arm_bilinear_interp_q7(
  arm_bilinear_interp_instance_q7 * S,
  q31_t X,
  q31_t Y)
  {
    q63_t acc = 0;                                
    q31_t out;                                    
    q31_t xfract, yfract;                         
    q7_t x1, x2, y1, y2;                          
    int32_t rI, cI;                               
    q7_t *pYData = S->pData;                      
    uint32_t nCols = S->numCols;                  

     
     
     
    rI = ((X & 0xFFF00000) >> 20);

     
     
     
    cI = ((Y & 0xFFF00000) >> 20);

     
     
    if(rI < 0 || rI > (S->numRows - 1) || cI < 0 || cI > (S->numCols - 1))
    {
      return (0);
    }

     
     
    xfract = (X & 0x000FFFFF);

     
    x1 = pYData[(rI) + nCols * (cI)];
    x2 = pYData[(rI) + nCols * (cI) + 1u];


     
     
    yfract = (Y & 0x000FFFFF);

     
    y1 = pYData[(rI) + nCols * (cI + 1)];
    y2 = pYData[(rI) + nCols * (cI + 1) + 1u];

     
    out = ((x1 * (0xFFFFF - xfract)));
    acc = (((q63_t) out * (0xFFFFF - yfract)));

     
    out = ((x2 * (0xFFFFF - yfract)));
    acc += (((q63_t) out * (xfract)));

     
    out = ((y1 * (0xFFFFF - xfract)));
    acc += (((q63_t) out * (yfract)));

     
    out = ((y2 * (yfract)));
    acc += (((q63_t) out * (xfract)));

     
    return (acc >> 40);

  }

  

 
   





























#line 7469 ".\\inc\\arm_math.h"


#line 7477 ".\\inc\\arm_math.h"







#line 7526 ".\\inc\\arm_math.h"

extern void arm_bitreversal_32(
    uint32_t * pSrc,
    const uint16_t bitRevLen,
    const uint16_t * pBitRevTable);














 
#line 43 "src\\TransformFunctions\\arm_rfft_q15.c"



 

void arm_split_rfft_q15(
    q15_t * pSrc,
    uint32_t fftLen,
    q15_t * pATable,
    q15_t * pBTable,
    q15_t * pDst,
    uint32_t modifier);

void arm_split_rifft_q15(
    q15_t * pSrc,
    uint32_t fftLen,
    q15_t * pATable,
    q15_t * pBTable,
    q15_t * pDst,
    uint32_t modifier);




 

















 

void arm_rfft_q15(
    const arm_rfft_instance_q15 * S,
    q15_t * pSrc,
    q15_t * pDst)
{
    const arm_cfft_instance_q15 *S_CFFT = S->pCfft;
    uint32_t i;
    uint32_t L2 = S->fftLenReal >> 1;

     
    if(S->ifftFlagR == 1u)
    {
         
        arm_split_rifft_q15(pSrc, L2, S->pTwiddleAReal,
                            S->pTwiddleBReal, pDst, S->twidCoefRModifier);
        
         
        arm_cfft_q15(S_CFFT, pDst, S->ifftFlagR, S->bitReverseFlagR);
        
        for(i=0;i<S->fftLenReal;i++)
        {
            pDst[i] = pDst[i] << 1;
        }
    }
    else
    {
         
        
         
        arm_cfft_q15(S_CFFT, pSrc, S->ifftFlagR, S->bitReverseFlagR);

         
        arm_split_rfft_q15(pSrc, L2, S->pTwiddleAReal,
                            S->pTwiddleBReal, pDst, S->twidCoefRModifier);
    }
}



 











 

void arm_split_rfft_q15(
    q15_t * pSrc,
    uint32_t fftLen,
    q15_t * pATable,
    q15_t * pBTable,
    q15_t * pDst,
    uint32_t modifier)
{
    uint32_t i;                                     
    q31_t outR, outI;                               
    q15_t *pCoefA, *pCoefB;                         
    q15_t *pSrc1, *pSrc2;

    q15_t *pD1, *pD2;


    
    

    pCoefA = &pATable[modifier * 2u];
    pCoefB = &pBTable[modifier * 2u];

    pSrc1 = &pSrc[2];
    pSrc2 = &pSrc[(2u * fftLen) - 2u];



     
    i = 1u;
    pD1 = pDst + 2;
    pD2 = pDst + (4u * fftLen) - 2;

    for(i = fftLen - 1; i > 0; i--)
    {
        



 

        

 




         
        outR = __smusd(*(*(int32_t __packed * *) & (pSrc1)), *(*(int32_t __packed * *) & (pCoefA)));

#line 196 "src\\TransformFunctions\\arm_rfft_q15.c"

        
 
        outR = __smlad(*(*(int32_t __packed * *) & (pSrc2)), *(*(int32_t __packed * *) & (pCoefB)), outR) >> 16u;

        
 



        outI = __smusdx(*(*(int32_t __packed * *) & (pSrc2))--, *(*(int32_t __packed * *) & (pCoefB)));







         
        outI = __smladx(*(*(int32_t __packed * *) & (pSrc1))++, *(*(int32_t __packed * *) & (pCoefA)), outI);

         
        *pD1++ = (q15_t) outR;
        *pD1++ = outI >> 16u;

         
        pD2[0] = (q15_t) outR;
        pD2[1] = -(outI >> 16u);
        pD2 -= 2;

         
        pCoefB = pCoefB + (2u * modifier);
        pCoefA = pCoefA + (2u * modifier);
    }

    pDst[2u * fftLen] = (pSrc[0] - pSrc[1]) >> 1;
    pDst[(2u * fftLen) + 1u] = 0;

    pDst[0] = (pSrc[0] + pSrc[1]) >> 1;
    pDst[1] = 0;

#line 292 "src\\TransformFunctions\\arm_rfft_q15.c"
}












 
void arm_split_rifft_q15(
    q15_t * pSrc,
    uint32_t fftLen,
    q15_t * pATable,
    q15_t * pBTable,
    q15_t * pDst,
    uint32_t modifier)
{
    uint32_t i;                                     
    q31_t outR, outI;                               
    q15_t *pCoefA, *pCoefB;                         
    q15_t *pSrc1, *pSrc2;
    q15_t *pDst1 = &pDst[0];

    pCoefA = &pATable[0];
    pCoefB = &pBTable[0];

    pSrc1 = &pSrc[0];
    pSrc2 = &pSrc[2u * fftLen];



     
    i = fftLen;

    while(i > 0u)
    {
        







 




        
 
        outR = __smusd(*(*(int32_t __packed * *) & (pSrc2)), *(*(int32_t __packed * *) & (pCoefB)));

#line 357 "src\\TransformFunctions\\arm_rfft_q15.c"

        
 
        outR = __smlad(*(*(int32_t __packed * *) & (pSrc1)), *(*(int32_t __packed * *) & (pCoefA)), outR) >> 16u;

        

 
        outI = __smuadx(*(*(int32_t __packed * *) & (pSrc2))--, *(*(int32_t __packed * *) & (pCoefB)));

         



        outI = __smlsdx(*(*(int32_t __packed * *) & (pCoefA)), *(*(int32_t __packed * *) & (pSrc1))++, -outI);






         



        *(*(int32_t __packed * *) & (pDst1))++ = ( ((((uint32_t)(outR)) ) & 0x0000FFFFUL) | ((((uint32_t)((outI >> 16u))) << (16)) & 0xFFFF0000UL) );







         
        pCoefB = pCoefB + (2u * modifier);
        pCoefA = pCoefA + (2u * modifier);

        i--;
    }
#line 439 "src\\TransformFunctions\\arm_rfft_q15.c"
}
