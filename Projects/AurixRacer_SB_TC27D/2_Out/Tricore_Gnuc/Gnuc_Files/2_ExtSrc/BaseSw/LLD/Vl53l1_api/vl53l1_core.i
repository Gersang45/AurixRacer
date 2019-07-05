# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
# 1 "D:\\MinKyu_AurixRacer\\Projects\\AurixRacer_SB_TC27D//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
# 70 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h" 1
# 74 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h" 1
# 73 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h" 1
# 81 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 1 3
# 41 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
typedef signed char int8_t ;
typedef unsigned char uint8_t ;




typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
# 67 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
typedef int16_t int_least16_t;
typedef uint16_t uint_least16_t;
# 79 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
typedef signed long int32_t;
typedef unsigned long uint32_t;
# 97 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
typedef int32_t int_least32_t;
typedef uint32_t uint_least32_t;
# 119 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
typedef signed long long int64_t;
typedef unsigned long long uint64_t;
# 129 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
typedef int64_t int_least64_t;
typedef uint64_t uint_least64_t;
# 159 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
  typedef signed int int_fast8_t;
  typedef unsigned int uint_fast8_t;




  typedef signed int int_fast16_t;
  typedef unsigned int uint_fast16_t;




  typedef signed int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 213 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
  typedef int_least64_t int_fast64_t;
  typedef uint_least64_t uint_fast64_t;







  typedef long long int intmax_t;
# 231 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
  typedef long long unsigned int uintmax_t;
# 243 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h" 3
typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;
# 82 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 83 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 2 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\_ansi.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);
# 100 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\string.h" 1 3
# 101 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h" 2 3


# 84 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 1 3
# 34 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 35 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 1 3 4
# 40 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 1 3
# 69 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 70 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\types.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 92 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\features.h" 1 3
# 262 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\types.h" 2 3
# 47 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\sys\\stdio.h" 1 3
# 66 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 2 3
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 246 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 361 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h" 3

# 85 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 1 3
# 10 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\ieeefp.h" 1 3
# 11 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 2 3




# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\machine\\stdlib.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 2 3
# 27 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *))



                                                         ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);
# 111 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size) ;



void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);
# 198 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);



extern long double strtold (const char *, char **);
extern long double wcstold (const wchar_t *, wchar_t **);



# 86 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h" 2
# 147 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h"
typedef uint32_t FixPoint1616_t;
# 74 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_user_config.h" 1
# 75 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h" 2
# 89 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_WaitMethod;
# 101 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceState;
# 125 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DevicePresetModes;
# 150 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceMeasurementModes;
# 165 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_OffsetCalibrationMode;
# 182 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_OffsetCorrectionMode;
# 198 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceSequenceConfig;
# 217 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceInterruptPolarity;
# 232 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceGpioMode;
# 254 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceError;
# 292 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceReportStatus;
# 314 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceDssMode;
# 332 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceConfigLevel;
# 369 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceResultsLevel;
# 391 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceTestMode;
# 434 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_DeviceSscArray;
# 540 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint8_t VL53L1_GPIO_Interrupt_Mode;
# 563 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
typedef uint16_t VL53L1_TuningParms;
# 75 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_codes.h" 1
# 89 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_codes.h"
typedef int8_t VL53L1_Error;
# 76 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h" 1
# 72 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_map.h" 1
# 73 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h" 2
# 128 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t i2c_slave__device_address;
# 139 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__vhv_ref_sel_vddpix;
# 149 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__vhv_ref_sel_vquench;
# 159 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__reg_avdd1v2_sel;
# 169 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__fast_osc__trim;
# 179 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t osc_measured__fast_osc__frequency;
# 189 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t vhv_config__timeout_macrop_loop_bound;
# 200 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t vhv_config__count_thresh;
# 210 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t vhv_config__offset;
# 220 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t vhv_config__init;
# 231 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_static_nvm_managed_t;
# 243 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t global_config__spad_enables_ref_0;
# 254 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_ref_1;
# 264 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_ref_2;
# 274 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_ref_3;
# 284 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_ref_4;
# 294 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_ref_5;
# 304 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__ref_en_start_select;
# 314 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ref_spad_man__num_requested_ref_spads;
# 324 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ref_spad_man__ref_location;
# 334 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t algo__crosstalk_compensation_plane_offset_kcps;
# 344 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int16_t algo__crosstalk_compensation_x_plane_gradient_kcps;
# 354 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int16_t algo__crosstalk_compensation_y_plane_gradient_kcps;
# 364 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t ref_spad_char__total_rate_target_mcps;
# 374 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int16_t algo__part_to_part_range_offset_mm;
# 384 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int16_t mm_config__inner_offset_mm;
# 394 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int16_t mm_config__outer_offset_mm;
# 404 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_customer_nvm_managed_t;
# 416 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint16_t dss_config__target_total_rate_mcps;
# 427 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t debug__ctrl;
# 437 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t test_mode__ctrl;
# 447 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t clk_gating__ctrl;
# 460 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t nvm_bist__ctrl;
# 471 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t nvm_bist__num_nvm_words;
# 481 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t nvm_bist__start_address;
# 491 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t host_if__status;
# 501 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t pad_i2c_hv__config;
# 516 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t pad_i2c_hv__extsup_config;
# 526 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gpio_hv_pad__ctrl;
# 537 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gpio_hv_mux__ctrl;
# 548 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gpio__tio_hv_status;
# 559 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gpio__fio_hv_status;
# 569 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__spad_sel_pswidth;
# 579 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__vcsel_pulse_width_offset;
# 589 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__fast_osc__config_ctrl;
# 599 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sigma_estimator__effective_pulse_width_ns;
# 609 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sigma_estimator__effective_ambient_width_ns;
# 619 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sigma_estimator__sigma_ref_mm;
# 629 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t algo__crosstalk_compensation_valid_height_mm;
# 639 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t spare_host_config__static_config_spare_0;
# 649 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t spare_host_config__static_config_spare_1;
# 659 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t algo__range_ignore_threshold_mcps;
# 669 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t algo__range_ignore_valid_height_mm;
# 679 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t algo__range_min_clip;
# 690 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t algo__consistency_check__tolerance;
# 700 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t spare_host_config__static_config_spare_2;
# 710 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__reset_stages_msb;
# 720 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__reset_stages_lsb;
# 731 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_static_config_t;
# 743 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t gph_config__stream_count_update_value;
# 754 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__stream_divider;
# 764 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__interrupt_config_gpio;
# 779 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t cal_config__vcsel_start;
# 789 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t cal_config__repeat_rate;
# 799 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__vcsel_width;
# 809 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t phasecal_config__timeout_macrop;
# 819 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t phasecal_config__target;
# 829 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t phasecal_config__override;
# 839 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_config__roi_mode_control;
# 850 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t system__thresh_rate_high;
# 860 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t system__thresh_rate_low;
# 870 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t dss_config__manual_effective_spads_select;
# 880 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_config__manual_block_select;
# 890 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_config__aperture_attenuation;
# 900 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_config__max_spads_limit;
# 910 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_config__min_spads_limit;
# 920 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_general_config_t;
# 932 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t mm_config__timeout_macrop_a_hi;
# 943 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t mm_config__timeout_macrop_a_lo;
# 953 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t mm_config__timeout_macrop_b_hi;
# 963 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t mm_config__timeout_macrop_b_lo;
# 973 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__timeout_macrop_a_hi;
# 983 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__timeout_macrop_a_lo;
# 993 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__vcsel_period_a;
# 1003 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__timeout_macrop_b_hi;
# 1013 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__timeout_macrop_b_lo;
# 1023 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__vcsel_period_b;
# 1033 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t range_config__sigma_thresh;
# 1043 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t range_config__min_count_rate_rtn_limit_mcps;
# 1053 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__valid_phase_low;
# 1063 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t range_config__valid_phase_high;
# 1073 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t system__intermeasurement_period;
# 1083 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__fractional_enable;
# 1093 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_timing_config_t;
# 1105 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t system__grouped_parameter_hold_0;
# 1117 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t system__thresh_high;
# 1127 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t system__thresh_low;
# 1137 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__enable_xtalk_per_quadrant;
# 1147 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__seed_config;
# 1158 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__woi_sd0;
# 1168 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__woi_sd1;
# 1178 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__initial_phase_sd0;
# 1188 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__initial_phase_sd1;
# 1198 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__grouped_parameter_hold_1;
# 1209 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__first_order_select;
# 1220 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sd_config__quantifier;
# 1230 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t roi_config__user_roi_centre_spad;
# 1240 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t roi_config__user_roi_requested_global_xy_size;
# 1250 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__sequence_config;
# 1267 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__grouped_parameter_hold;
# 1278 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_dynamic_config_t;
# 1290 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t power_management__go1_power_force;
# 1301 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__stream_count_ctrl;
# 1311 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t firmware__enable;
# 1321 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__interrupt_clear;
# 1332 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__mode_start;
# 1347 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_system_control_t;
# 1359 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t result__interrupt_status;
# 1372 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t result__range_status;
# 1385 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t result__report_status;
# 1395 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t result__stream_count;
# 1405 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__dss_actual_effective_spads_sd0;
# 1415 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__peak_signal_count_rate_mcps_sd0;
# 1425 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__ambient_count_rate_mcps_sd0;
# 1435 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__sigma_sd0;
# 1445 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__phase_sd0;
# 1455 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__final_crosstalk_corrected_range_mm_sd0;
# 1465 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0;
# 1475 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__mm_inner_actual_effective_spads_sd0;
# 1485 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__mm_outer_actual_effective_spads_sd0;
# 1495 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__avg_signal_count_rate_mcps_sd0;
# 1505 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__dss_actual_effective_spads_sd1;
# 1515 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__peak_signal_count_rate_mcps_sd1;
# 1525 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__ambient_count_rate_mcps_sd1;
# 1535 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__sigma_sd1;
# 1545 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__phase_sd1;
# 1555 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__final_crosstalk_corrected_range_mm_sd1;
# 1565 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__spare_0_sd1;
# 1575 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__spare_1_sd1;
# 1585 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__spare_2_sd1;
# 1595 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t result__spare_3_sd1;
# 1605 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t result__thresh_info;
# 1616 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_system_results_t;
# 1628 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint32_t result_core__ambient_window_events_sd0;
# 1639 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t result_core__ranging_total_events_sd0;
# 1649 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int32_t result_core__signal_total_events_sd0;
# 1659 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t result_core__total_periods_elapsed_sd0;
# 1669 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t result_core__ambient_window_events_sd1;
# 1679 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t result_core__ranging_total_events_sd1;
# 1689 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int32_t result_core__signal_total_events_sd1;
# 1699 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t result_core__total_periods_elapsed_sd1;
# 1709 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t result_core__spare_0;
# 1719 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_core_results_t;
# 1731 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint16_t phasecal_result__reference_phase;
# 1742 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t phasecal_result__vcsel_start;
# 1752 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ref_spad_char_result__num_actual_ref_spads;
# 1762 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ref_spad_char_result__ref_location;
# 1772 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t vhv_result__coldboot_status;
# 1782 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t vhv_result__search_result;
# 1792 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t vhv_result__latest_setting;
# 1802 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t result__osc_calibrate_val;
# 1812 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__powerdown_go1;
# 1823 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__ref_bg_ctrl;
# 1834 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__regdvdd1v2_ctrl;
# 1846 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__osc_slow_ctrl;
# 1858 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t test_mode__status;
# 1868 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t firmware__system_status;
# 1879 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t firmware__mode_status;
# 1889 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t firmware__secondary_mode_status;
# 1899 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t firmware__cal_repeat_rate_counter;
# 1909 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t gph__system__thresh_high;
# 1919 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t gph__system__thresh_low;
# 1929 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__system__enable_xtalk_per_quadrant;
# 1939 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__spare_0;
# 1951 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__sd_config__woi_sd0;
# 1961 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__sd_config__woi_sd1;
# 1971 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__sd_config__initial_phase_sd0;
# 1981 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__sd_config__initial_phase_sd1;
# 1991 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__sd_config__first_order_select;
# 2002 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__sd_config__quantifier;
# 2012 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__roi_config__user_roi_centre_spad;
# 2022 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__roi_config__user_roi_requested_global_xy_size;
# 2032 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__system__sequence_config;
# 2049 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__gph_id;
# 2059 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t system__interrupt_set;
# 2070 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t interrupt_manager__enables;
# 2084 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t interrupt_manager__clear;
# 2098 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t interrupt_manager__status;
# 2112 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t mcu_to_host_bank__wr_access_en;
# 2122 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t power_management__go1_reset_status;
# 2132 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t pad_startup_mode__value_ro;
# 2143 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t pad_startup_mode__value_ctrl;
# 2156 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t pll_period_us;
# 2166 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t interrupt_scheduler__data_out;
# 2176 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t nvm_bist__complete;
# 2186 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t nvm_bist__status;
# 2196 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_debug_results_t;
# 2208 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t identification__model_id;
# 2219 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t identification__module_type;
# 2229 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t identification__revision_id;
# 2240 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t identification__module_id;
# 2250 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__fast_osc__trim_max;
# 2260 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__fast_osc__freq_set;
# 2270 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__vcsel_trim;
# 2280 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__vcsel_selion;
# 2290 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t ana_config__vcsel_selion_max;
# 2300 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t protected_laser_safety__lock_bit;
# 2310 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t laser_safety__key;
# 2320 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t laser_safety__key_ro;
# 2330 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t laser_safety__clip;
# 2340 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t laser_safety__mult;
# 2350 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_0;
# 2360 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_1;
# 2370 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_2;
# 2380 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_3;
# 2390 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_4;
# 2400 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_5;
# 2410 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_6;
# 2420 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_7;
# 2430 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_8;
# 2440 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_9;
# 2450 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_10;
# 2460 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_11;
# 2470 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_12;
# 2480 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_13;
# 2490 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_14;
# 2500 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_15;
# 2510 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_16;
# 2520 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_17;
# 2530 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_18;
# 2540 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_19;
# 2550 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_20;
# 2560 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_21;
# 2570 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_22;
# 2580 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_23;
# 2590 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_24;
# 2600 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_25;
# 2610 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_26;
# 2620 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_27;
# 2630 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_28;
# 2640 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_29;
# 2650 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_30;
# 2660 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t global_config__spad_enables_rtn_31;
# 2670 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t roi_config__mode_roi_centre_spad;
# 2680 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t roi_config__mode_roi_xy_size;
# 2690 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_nvm_copy_data_t;
# 2702 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t prev_shadow_result__interrupt_status;
# 2715 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t prev_shadow_result__range_status;
# 2728 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t prev_shadow_result__report_status;
# 2738 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t prev_shadow_result__stream_count;
# 2748 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__dss_actual_effective_spads_sd0;
# 2758 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__peak_signal_count_rate_mcps_sd0;
# 2768 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__ambient_count_rate_mcps_sd0;
# 2778 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__sigma_sd0;
# 2788 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__phase_sd0;
# 2798 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__final_crosstalk_corrected_range_mm_sd0;
# 2808 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0;
# 2818 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__mm_inner_actual_effective_spads_sd0;
# 2828 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__mm_outer_actual_effective_spads_sd0;
# 2838 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__avg_signal_count_rate_mcps_sd0;
# 2848 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__dss_actual_effective_spads_sd1;
# 2858 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__peak_signal_count_rate_mcps_sd1;
# 2868 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__ambient_count_rate_mcps_sd1;
# 2878 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__sigma_sd1;
# 2888 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__phase_sd1;
# 2898 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__final_crosstalk_corrected_range_mm_sd1;
# 2908 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__spare_0_sd1;
# 2918 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__spare_1_sd1;
# 2928 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__spare_2_sd1;
# 2938 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t prev_shadow_result__spare_3_sd1;
# 2948 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_prev_shadow_system_results_t;
# 2960 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint32_t prev_shadow_result_core__ambient_window_events_sd0;
# 2971 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t prev_shadow_result_core__ranging_total_events_sd0;
# 2981 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int32_t prev_shadow_result_core__signal_total_events_sd0;
# 2991 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t prev_shadow_result_core__total_periods_elapsed_sd0;
# 3001 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t prev_shadow_result_core__ambient_window_events_sd1;
# 3011 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t prev_shadow_result_core__ranging_total_events_sd1;
# 3021 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int32_t prev_shadow_result_core__signal_total_events_sd1;
# 3031 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t prev_shadow_result_core__total_periods_elapsed_sd1;
# 3041 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t prev_shadow_result_core__spare_0;
# 3051 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_prev_shadow_core_results_t;
# 3063 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t result__debug_status;
# 3074 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t result__debug_stage;
# 3084 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_patch_debug_t;
# 3096 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint16_t gph__system__thresh_rate_high;
# 3107 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t gph__system__thresh_rate_low;
# 3117 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__system__interrupt_config_gpio;
# 3132 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_gph_general_config_t;
# 3144 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t gph__dss_config__roi_mode_control;
# 3156 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t gph__dss_config__manual_effective_spads_select;
# 3166 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__dss_config__manual_block_select;
# 3176 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__dss_config__max_spads_limit;
# 3186 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__dss_config__min_spads_limit;
# 3196 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_gph_static_config_t;
# 3208 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t gph__mm_config__timeout_macrop_a_hi;
# 3219 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__mm_config__timeout_macrop_a_lo;
# 3229 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__mm_config__timeout_macrop_b_hi;
# 3239 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__mm_config__timeout_macrop_b_lo;
# 3249 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__timeout_macrop_a_hi;
# 3259 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__timeout_macrop_a_lo;
# 3269 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__vcsel_period_a;
# 3279 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__vcsel_period_b;
# 3289 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__timeout_macrop_b_hi;
# 3299 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__timeout_macrop_b_lo;
# 3309 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t gph__range_config__sigma_thresh;
# 3319 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t gph__range_config__min_count_rate_rtn_limit_mcps;
# 3329 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__valid_phase_low;
# 3339 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t gph__range_config__valid_phase_high;
# 3349 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_gph_timing_config_t;
# 3361 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t firmware__internal_stream_count_div;
# 3372 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t firmware__internal_stream_counter_val;
# 3382 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_fw_internal_t;
# 3394 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t dss_calc__roi_ctrl;
# 3406 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__spare_1;
# 3416 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__spare_2;
# 3426 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__spare_3;
# 3436 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__spare_4;
# 3446 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__spare_5;
# 3456 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__spare_6;
# 3466 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__spare_7;
# 3476 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_0;
# 3486 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_1;
# 3496 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_2;
# 3506 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_3;
# 3516 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_4;
# 3526 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_5;
# 3536 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_6;
# 3546 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_7;
# 3556 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_8;
# 3566 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_9;
# 3576 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_10;
# 3586 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_11;
# 3596 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_12;
# 3606 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_13;
# 3616 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_14;
# 3626 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_15;
# 3636 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_16;
# 3646 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_17;
# 3656 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_18;
# 3666 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_19;
# 3676 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_20;
# 3686 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_21;
# 3696 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_22;
# 3706 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_23;
# 3716 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_24;
# 3726 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_25;
# 3736 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_26;
# 3746 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_27;
# 3756 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_28;
# 3766 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_29;
# 3776 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_30;
# 3786 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_spad_en_31;
# 3796 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_0;
# 3806 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__user_roi_1;
# 3816 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__mode_roi_0;
# 3826 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_calc__mode_roi_1;
# 3836 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t sigma_estimator_calc__spare_0;
# 3846 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t vhv_result__peak_signal_rate_mcps;
# 3856 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t vhv_result__signal_total_events_ref;
# 3866 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t phasecal_result__phase_output_ref;
# 3876 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t dss_result__total_rate_per_spad;
# 3886 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t dss_result__enabled_blocks;
# 3896 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t dss_result__num_requested_spads;
# 3906 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t mm_result__inner_intersection_rate;
# 3916 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t mm_result__outer_complement_rate;
# 3926 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t mm_result__total_offset;
# 3936 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t xtalk_calc__xtalk_for_enabled_spads;
# 3946 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t xtalk_result__avg_xtalk_user_roi_kcps;
# 3956 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t xtalk_result__avg_xtalk_mm_inner_roi_kcps;
# 3966 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t xtalk_result__avg_xtalk_mm_outer_roi_kcps;
# 3976 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t range_result__accum_phase;
# 3986 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t range_result__offset_corrected_range;
# 3996 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_patch_results_t;
# 4008 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint8_t shadow_phasecal_result__vcsel_start;
# 4019 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_result__interrupt_status;
# 4031 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_result__range_status;
# 4044 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_result__report_status;
# 4054 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_result__stream_count;
# 4064 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__dss_actual_effective_spads_sd0;
# 4074 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__peak_signal_count_rate_mcps_sd0;
# 4084 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__ambient_count_rate_mcps_sd0;
# 4094 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__sigma_sd0;
# 4104 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__phase_sd0;
# 4114 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__final_crosstalk_corrected_range_mm_sd0;
# 4124 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0;
# 4134 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__mm_inner_actual_effective_spads_sd0;
# 4144 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__mm_outer_actual_effective_spads_sd0;
# 4154 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__avg_signal_count_rate_mcps_sd0;
# 4164 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__dss_actual_effective_spads_sd1;
# 4174 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__peak_signal_count_rate_mcps_sd1;
# 4184 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__ambient_count_rate_mcps_sd1;
# 4194 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__sigma_sd1;
# 4204 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__phase_sd1;
# 4214 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__final_crosstalk_corrected_range_mm_sd1;
# 4224 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__spare_0_sd1;
# 4234 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__spare_1_sd1;
# 4244 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint16_t shadow_result__spare_2_sd1;
# 4254 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_result__spare_3_sd1;
# 4264 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_result__thresh_info;
# 4275 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_phasecal_result__reference_phase_hi;
# 4285 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_phasecal_result__reference_phase_lo;
# 4295 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_shadow_system_results_t;
# 4307 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
typedef struct {
 uint32_t shadow_result_core__ambient_window_events_sd0;
# 4318 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t shadow_result_core__ranging_total_events_sd0;
# 4328 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int32_t shadow_result_core__signal_total_events_sd0;
# 4338 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t shadow_result_core__total_periods_elapsed_sd0;
# 4348 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t shadow_result_core__ambient_window_events_sd1;
# 4358 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t shadow_result_core__ranging_total_events_sd1;
# 4368 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 int32_t shadow_result_core__signal_total_events_sd1;
# 4378 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint32_t shadow_result_core__total_periods_elapsed_sd1;
# 4388 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
 uint8_t shadow_result_core__spare_0;
# 4398 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
} VL53L1_shadow_core_results_t;
# 77 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h" 2

# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_user_defines.h" 1
# 79 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_exceptions.h" 1
# 80 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h" 2
# 157 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {
 uint32_t ll_revision;
 uint8_t ll_major;
 uint8_t ll_minor;
 uint8_t ll_build;
} VL53L1_ll_version_t;





typedef struct {

 uint8_t device_test_mode;
 uint8_t vcsel_period;
 uint32_t timeout_us;
 uint16_t target_count_rate_mcps;

 uint16_t min_count_rate_limit_mcps;

 uint16_t max_count_rate_limit_mcps;


} VL53L1_refspadchar_config_t;






typedef struct {

 VL53L1_DeviceSscArray array_select;



 uint8_t vcsel_period;

 uint8_t vcsel_start;

 uint8_t vcsel_width;

 uint32_t timeout_us;

 uint16_t rate_limit_mcps;




} VL53L1_ssc_config_t;





typedef struct {


 uint32_t algo__crosstalk_compensation_plane_offset_kcps;

 int16_t algo__crosstalk_compensation_x_plane_gradient_kcps;

 int16_t algo__crosstalk_compensation_y_plane_gradient_kcps;

 uint32_t nvm_default__crosstalk_compensation_plane_offset_kcps;

 int16_t nvm_default__crosstalk_compensation_x_plane_gradient_kcps;

 int16_t nvm_default__crosstalk_compensation_y_plane_gradient_kcps;

 uint8_t global_crosstalk_compensation_enable;

 int16_t lite_mode_crosstalk_margin_kcps;





 uint8_t crosstalk_range_ignore_threshold_mult;

 uint16_t crosstalk_range_ignore_threshold_rate_mcps;




} VL53L1_xtalk_config_t;
# 254 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {


 uint16_t tp_tuning_parm_version;


 uint16_t tp_tuning_parm_key_table_version;



 uint16_t tp_tuning_parm_lld_version;



 uint8_t tp_init_phase_rtn_lite_long;



 uint8_t tp_init_phase_rtn_lite_med;



 uint8_t tp_init_phase_rtn_lite_short;



 uint8_t tp_init_phase_ref_lite_long;



 uint8_t tp_init_phase_ref_lite_med;



 uint8_t tp_init_phase_ref_lite_short;




 uint8_t tp_consistency_lite_phase_tolerance;



 uint8_t tp_phasecal_target;


 uint16_t tp_cal_repeat_rate;



 uint8_t tp_lite_min_clip;




 uint16_t tp_lite_long_sigma_thresh_mm;



 uint16_t tp_lite_med_sigma_thresh_mm;



 uint16_t tp_lite_short_sigma_thresh_mm;




 uint16_t tp_lite_long_min_count_rate_rtn_mcps;



 uint16_t tp_lite_med_min_count_rate_rtn_mcps;



 uint16_t tp_lite_short_min_count_rate_rtn_mcps;




 uint8_t tp_lite_sigma_est_pulse_width_ns;


 uint8_t tp_lite_sigma_est_amb_width_ns;


 uint8_t tp_lite_sigma_ref_mm;


 uint8_t tp_lite_seed_cfg;


 uint8_t tp_timed_seed_cfg;



 uint8_t tp_lite_quantifier;


 uint8_t tp_lite_first_order_select;



 uint16_t tp_dss_target_lite_mcps;


 uint16_t tp_dss_target_timed_mcps;



 uint32_t tp_phasecal_timeout_lite_us;



 uint32_t tp_phasecal_timeout_timed_us;



 uint32_t tp_mm_timeout_lite_us;


 uint32_t tp_mm_timeout_timed_us;


 uint32_t tp_mm_timeout_lpa_us;



 uint32_t tp_range_timeout_lite_us;


 uint32_t tp_range_timeout_timed_us;


 uint32_t tp_range_timeout_lpa_us;



} VL53L1_tuning_parm_storage_t;







typedef struct {

 uint8_t x_centre;
 uint8_t y_centre;

} VL53L1_optical_centre_t;






typedef struct {

 uint8_t x_centre;
 uint8_t y_centre;
 uint8_t width;
 uint8_t height;

} VL53L1_user_zone_t;
# 430 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {


 VL53L1_GPIO_Interrupt_Mode intr_mode_distance;


 VL53L1_GPIO_Interrupt_Mode intr_mode_rate;




 uint8_t intr_new_measure_ready;


 uint8_t intr_no_target;





 uint8_t intr_combined_mode;







 uint16_t threshold_distance_high;


 uint16_t threshold_distance_low;


 uint16_t threshold_rate_high;


 uint16_t threshold_rate_low;

} VL53L1_GPIO_interrupt_config_t;
# 480 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {





 uint8_t vhv_loop_bound;


 uint8_t is_low_power_auto_mode;



 uint8_t low_power_auto_range_count;


 uint8_t saved_interrupt_config;


 uint8_t saved_vhv_init;


 uint8_t saved_vhv_timeout;


 uint8_t first_run_phasecal_result;


 uint32_t dss__total_rate_per_spad_mcps;


 uint16_t dss__required_spads;

} VL53L1_low_power_auto_data_t;
# 523 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {



 uint8_t range_id;

 uint32_t time_stamp;


 uint16_t width;

 uint8_t woi;


 uint16_t fast_osc_frequency;

 uint16_t zero_distance_phase;

 uint16_t actual_effective_spads;


 uint32_t total_periods_elapsed;


 uint32_t peak_duration_us;


 uint32_t woi_duration_us;





 uint32_t ambient_window_events;

 uint32_t ranging_total_events;


 int32_t signal_total_events;





 uint16_t peak_signal_count_rate_mcps;

 uint16_t avg_signal_count_rate_mcps;

 uint16_t ambient_count_rate_mcps;

 uint16_t total_rate_per_spad_mcps;

 uint32_t peak_rate_per_spad_kcps;




 uint16_t sigma_mm;




 uint16_t median_phase;




 int16_t median_range_mm;






 uint8_t range_status;

} VL53L1_range_data_t;
# 608 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 VL53L1_DeviceState cfg_device_state;

 VL53L1_DeviceState rd_device_state;

 uint8_t stream_count;


 uint8_t device_status;


 VL53L1_range_data_t data[2];


} VL53L1_range_results_t;
# 633 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 uint8_t preset_mode;

 uint8_t dss_config__roi_mode_control;

 uint16_t dss_config__manual_effective_spads_select;

 uint8_t no_of_samples;

 uint32_t effective_spads;

 uint32_t peak_rate_mcps;

 uint32_t sigma_mm;

 int32_t median_range_mm;


 int32_t range_mm_offset;


} VL53L1_offset_range_data_t;
# 665 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 int16_t cal_distance_mm;

 VL53L1_Error cal_status;

 uint8_t cal_report;

 uint8_t max_results;


 uint8_t active_results;

 VL53L1_offset_range_data_t data[3];


} VL53L1_offset_range_results_t;
# 692 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 uint16_t result__mm_inner_actual_effective_spads;

 uint16_t result__mm_outer_actual_effective_spads;

 uint16_t result__mm_inner_peak_signal_count_rtn_mcps;

 uint16_t result__mm_outer_peak_signal_count_rtn_mcps;


} VL53L1_additional_offset_cal_data_t;
# 714 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 int16_t cal_distance_mm;

 uint16_t max_samples;

 uint16_t width;

 uint16_t height;

 uint16_t peak_rate_mcps[25];


} VL53L1_cal_peak_rate_map_t;
# 737 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 uint16_t standard_ranging_gain_factor;


} VL53L1_gain_calibration_data_t;
# 752 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 VL53L1_DeviceState cfg_device_state;

 uint8_t cfg_stream_count;


 uint8_t cfg_gph_id;

 uint8_t cfg_timing_status;


 VL53L1_DeviceState rd_device_state;

 uint8_t rd_stream_count;

 uint8_t rd_gph_id;

 uint8_t rd_timing_status;


} VL53L1_ll_driver_state_t;




typedef struct {

 uint16_t dss_config__target_total_rate_mcps;


 uint32_t phasecal_config_timeout_us;


 uint32_t range_config_timeout_us;


 uint32_t mm_config_timeout_us;



 uint8_t pre_num_of_samples;


 uint8_t mm1_num_of_samples;


 uint8_t mm2_num_of_samples;



} VL53L1_offsetcal_config_t;
# 814 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 uint8_t wait_method;

 VL53L1_DevicePresetModes preset_mode;

 VL53L1_DeviceMeasurementModes measurement_mode;

 VL53L1_OffsetCalibrationMode offset_calibration_mode;

 VL53L1_OffsetCorrectionMode offset_correction_mode;

 uint32_t phasecal_config_timeout_us;

 uint32_t mm_config_timeout_us;

 uint32_t range_config_timeout_us;

 uint32_t inter_measurement_period_ms;

 uint16_t dss_config__target_total_rate_mcps;


 uint32_t fw_ready_poll_duration_ms;

 uint8_t fw_ready;

 uint8_t debug_mode;



 VL53L1_ll_version_t version;


 VL53L1_ll_driver_state_t ll_state;


 VL53L1_GPIO_interrupt_config_t gpio_interrupt_config;


 VL53L1_customer_nvm_managed_t customer;
 VL53L1_cal_peak_rate_map_t cal_peak_rate_map;
 VL53L1_additional_offset_cal_data_t add_off_cal_data;
 VL53L1_gain_calibration_data_t gain_cal;
 VL53L1_user_zone_t mm_roi;
 VL53L1_optical_centre_t optical_centre;


 VL53L1_tuning_parm_storage_t tuning_parms;


 uint8_t rtn_good_spads[32];


 VL53L1_refspadchar_config_t refspadchar;
 VL53L1_ssc_config_t ssc_cfg;
 VL53L1_xtalk_config_t xtalk_cfg;
 VL53L1_offsetcal_config_t offsetcal_cfg;


 VL53L1_static_nvm_managed_t stat_nvm;
 VL53L1_static_config_t stat_cfg;
 VL53L1_general_config_t gen_cfg;
 VL53L1_timing_config_t tim_cfg;
 VL53L1_dynamic_config_t dyn_cfg;
 VL53L1_system_control_t sys_ctrl;
 VL53L1_system_results_t sys_results;
 VL53L1_nvm_copy_data_t nvm_copy_data;


 VL53L1_offset_range_results_t offset_results;


 VL53L1_core_results_t core_results;
 VL53L1_debug_results_t dbg_results;



 VL53L1_low_power_auto_data_t low_power_auto_data;
# 904 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
} VL53L1_LLDriverData_t;
# 914 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {


 VL53L1_range_results_t range_results;

} VL53L1_LLDriverResults_t;
# 928 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 uint32_t struct_version;
 VL53L1_customer_nvm_managed_t customer;
 VL53L1_additional_offset_cal_data_t add_off_cal_data;
 VL53L1_optical_centre_t optical_centre;
 VL53L1_gain_calibration_data_t gain_cal;
 VL53L1_cal_peak_rate_map_t cal_peak_rate_map;

} VL53L1_calibration_data_t;
# 947 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {
 uint16_t vl53l1_tuningparm_version;
 uint16_t vl53l1_tuningparm_key_table_version;
 uint16_t vl53l1_tuningparm_lld_version;
 uint8_t vl53l1_tuningparm_consistency_lite_phase_tolerance;
 uint8_t vl53l1_tuningparm_phasecal_target;
 uint16_t vl53l1_tuningparm_lite_cal_repeat_rate;
 uint16_t vl53l1_tuningparm_lite_ranging_gain_factor;
 uint8_t vl53l1_tuningparm_lite_min_clip_mm;
 uint16_t vl53l1_tuningparm_lite_long_sigma_thresh_mm;
 uint16_t vl53l1_tuningparm_lite_med_sigma_thresh_mm;
 uint16_t vl53l1_tuningparm_lite_short_sigma_thresh_mm;
 uint16_t vl53l1_tuningparm_lite_long_min_count_rate_rtn_mcps;
 uint16_t vl53l1_tuningparm_lite_med_min_count_rate_rtn_mcps;
 uint16_t vl53l1_tuningparm_lite_short_min_count_rate_rtn_mcps;
 uint8_t vl53l1_tuningparm_lite_sigma_est_pulse_width;
 uint8_t vl53l1_tuningparm_lite_sigma_est_amb_width_ns;
 uint8_t vl53l1_tuningparm_lite_sigma_ref_mm;
 uint8_t vl53l1_tuningparm_lite_rit_mult;
 uint8_t vl53l1_tuningparm_lite_seed_config;
 uint8_t vl53l1_tuningparm_lite_quantifier;
 uint8_t vl53l1_tuningparm_lite_first_order_select;
 int16_t vl53l1_tuningparm_lite_xtalk_margin_kcps;
 uint8_t vl53l1_tuningparm_initial_phase_rtn_lite_long_range;
 uint8_t vl53l1_tuningparm_initial_phase_rtn_lite_med_range;
 uint8_t vl53l1_tuningparm_initial_phase_rtn_lite_short_range;
 uint8_t vl53l1_tuningparm_initial_phase_ref_lite_long_range;
 uint8_t vl53l1_tuningparm_initial_phase_ref_lite_med_range;
 uint8_t vl53l1_tuningparm_initial_phase_ref_lite_short_range;
 uint8_t vl53l1_tuningparm_timed_seed_config;
 uint8_t vl53l1_tuningparm_vhv_loopbound;
 uint8_t vl53l1_tuningparm_refspadchar_device_test_mode;
 uint8_t vl53l1_tuningparm_refspadchar_vcsel_period;
 uint32_t vl53l1_tuningparm_refspadchar_phasecal_timeout_us;
 uint16_t vl53l1_tuningparm_refspadchar_target_count_rate_mcps;
 uint16_t vl53l1_tuningparm_refspadchar_min_countrate_limit_mcps;
 uint16_t vl53l1_tuningparm_refspadchar_max_countrate_limit_mcps;
 uint16_t vl53l1_tuningparm_offset_cal_dss_rate_mcps;
 uint32_t vl53l1_tuningparm_offset_cal_phasecal_timeout_us;
 uint32_t vl53l1_tuningparm_offset_cal_mm_timeout_us;
 uint32_t vl53l1_tuningparm_offset_cal_range_timeout_us;
 uint8_t vl53l1_tuningparm_offset_cal_pre_samples;
 uint8_t vl53l1_tuningparm_offset_cal_mm1_samples;
 uint8_t vl53l1_tuningparm_offset_cal_mm2_samples;
 uint8_t vl53l1_tuningparm_spadmap_vcsel_period;
 uint8_t vl53l1_tuningparm_spadmap_vcsel_start;
 uint16_t vl53l1_tuningparm_spadmap_rate_limit_mcps;
 uint16_t vl53l1_tuningparm_lite_dss_config_target_total_rate_mcps;
 uint16_t vl53l1_tuningparm_timed_dss_config_target_total_rate_mcps;
 uint32_t vl53l1_tuningparm_lite_phasecal_config_timeout_us;
 uint32_t vl53l1_tuningparm_timed_phasecal_config_timeout_us;
 uint32_t vl53l1_tuningparm_lite_mm_config_timeout_us;
 uint32_t vl53l1_tuningparm_timed_mm_config_timeout_us;
 uint32_t vl53l1_tuningparm_lite_range_config_timeout_us;
 uint32_t vl53l1_tuningparm_timed_range_config_timeout_us;
 uint8_t vl53l1_tuningparm_lowpowerauto_vhv_loop_bound;
 uint32_t vl53l1_tuningparm_lowpowerauto_mm_config_timeout_us;
 uint32_t vl53l1_tuningparm_lowpowerauto_range_config_timeout_us;
} VL53L1_tuning_parameters_t;
# 1019 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 uint8_t spad_type;

 uint16_t buffer_size;

 uint16_t rate_data[256];

 uint16_t no_of_values;

 uint8_t fractional_bits;

 uint8_t error_status;


} VL53L1_spad_rate_data_t;
# 1046 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
typedef struct {

 VL53L1_DevicePresetModes preset_mode;

 VL53L1_DeviceMeasurementModes measurement_mode;


 uint32_t phasecal_config_timeout_us;

 uint32_t mm_config_timeout_us;

 uint32_t range_config_timeout_us;

 uint32_t inter_measurement_period_ms;

 uint16_t dss_config__target_total_rate_mcps;


} VL53L1_additional_data_t;
# 71 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c" 2

# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h" 1
# 68 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_log.h" 1
# 69 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h" 2


# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_user_data.h" 1
# 67 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_user_data.h"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h" 1
# 101 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef struct {
 uint32_t revision;
 uint8_t major;
 uint8_t minor;
 uint8_t build;
} VL53L1_Version_t;






typedef struct {
 char Name[32];

 char Type[32];

 char ProductId[32];



 uint8_t ProductType;

 uint8_t ProductRevisionMajor;

 uint8_t ProductRevisionMinor;

} VL53L1_DeviceInfo_t;







typedef uint8_t VL53L1_PresetModes;
# 150 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef uint8_t VL53L1_DistanceModes;
# 162 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef uint8_t VL53L1_XtalkCalibrationModes;
# 180 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef uint8_t VL53L1_OffsetCalibrationModes;
# 213 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef uint8_t VL53L1_ThresholdMode;
# 232 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef struct {
 VL53L1_ThresholdMode CrossMode;
 uint16_t High;
 uint16_t Low;
} VL53L1_DistanceThreshold_t;



typedef struct {
 VL53L1_ThresholdMode CrossMode;
 FixPoint1616_t High;
 FixPoint1616_t Low;
} VL53L1_RateThreshold_t;





typedef uint8_t VL53L1_DetectionMode;
# 276 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef struct {
 VL53L1_DetectionMode DetectionMode;
 uint8_t IntrNoTarget;
 VL53L1_DistanceThreshold_t Distance;
 VL53L1_RateThreshold_t Rate;
} VL53L1_DetectionConfig_t;




typedef struct {
 VL53L1_PresetModes PresetMode;

 VL53L1_DistanceModes DistanceMode;

 VL53L1_DistanceModes InternalDistanceMode;



 VL53L1_DistanceModes NewDistanceMode;



 uint32_t MeasurementTimingBudgetMicroSeconds;

 uint8_t LimitChecksEnable[2];

 uint8_t LimitChecksStatus[2];



 FixPoint1616_t LimitChecksValue[2];

 FixPoint1616_t LimitChecksCurrent[2];



} VL53L1_DeviceParameters_t;







typedef uint8_t VL53L1_State;
# 348 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef struct {
 uint32_t TimeStamp;




 uint8_t StreamCount;


 uint8_t RangeQualityLevel;




 FixPoint1616_t SignalRateRtnMegaCps;





 FixPoint1616_t AmbientRateRtnMegaCps;





 uint16_t EffectiveSpadRtnCount;




 FixPoint1616_t SigmaMilliMeter;


 int16_t RangeMilliMeter;




 uint8_t RangeFractionalPart;





 uint8_t RangeStatus;



} VL53L1_RangingMeasurementData_t;






typedef struct {

 uint8_t TopLeftX;
 uint8_t TopLeftY;
 uint8_t BotRightX;
 uint8_t BotRightY;

} VL53L1_UserRoi_t;
# 425 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef struct {
 uint8_t global_config__spad_enables_ref_0;
 uint8_t global_config__spad_enables_ref_1;
 uint8_t global_config__spad_enables_ref_2;
 uint8_t global_config__spad_enables_ref_3;
 uint8_t global_config__spad_enables_ref_4;
 uint8_t global_config__spad_enables_ref_5;
 uint8_t global_config__ref_en_start_select;
 uint8_t ref_spad_man__num_requested_ref_spads;
 uint8_t ref_spad_man__ref_location;
 uint32_t algo__crosstalk_compensation_plane_offset_kcps;
 int16_t algo__crosstalk_compensation_x_plane_gradient_kcps;
 int16_t algo__crosstalk_compensation_y_plane_gradient_kcps;
 uint16_t ref_spad_char__total_rate_target_mcps;
 int16_t algo__part_to_part_range_offset_mm;
 int16_t mm_config__inner_offset_mm;
 int16_t mm_config__outer_offset_mm;
} VL53L1_CustomerNvmManaged_t;







typedef struct {

 uint32_t struct_version;
 VL53L1_CustomerNvmManaged_t customer;
 VL53L1_additional_offset_cal_data_t add_off_cal_data;
 VL53L1_optical_centre_t optical_centre;
 VL53L1_gain_calibration_data_t gain_cal;
 VL53L1_cal_peak_rate_map_t cal_peak_rate_map;

} VL53L1_CalibrationData_t;
# 476 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef VL53L1_additional_data_t VL53L1_AdditionalData_t;


typedef uint8_t VL53L1_SequenceStepId;
# 546 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
typedef struct {
 VL53L1_LLDriverData_t LLData;


 VL53L1_LLDriverResults_t llresults;


 VL53L1_State PalState;
 VL53L1_DeviceParameters_t CurrentParameters;


} VL53L1_DevData_t;
# 68 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_user_data.h" 2






typedef struct {
    uint32_t dummy;
} I2C_HandleTypeDef;

typedef struct {

 VL53L1_DevData_t Data;

 uint8_t I2cDevAddr;
 uint8_t comms_type;
 uint16_t comms_speed_khz;
 uint32_t new_data_ready_poll_duration_ms;
 I2C_HandleTypeDef *I2cHandle;

} VL53L1_Dev_t;

typedef VL53L1_Dev_t *VL53L1_DEV;
# 72 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h" 2






extern uint32_t VL53L1_TickCount;

VL53L1_Error VL53L1_CommsInitialise(
 VL53L1_Dev_t *pdev,
 uint8_t comms_type,
 uint16_t comms_speed_khz);

VL53L1_Error VL53L1_CommsClose(
 VL53L1_Dev_t *pdev);

VL53L1_Error VL53L1_WriteMulti(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint8_t *pdata,
  uint32_t count);

VL53L1_Error VL53L1_ReadMulti(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint8_t *pdata,
  uint32_t count);

VL53L1_Error VL53L1_WrByte(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint8_t VL53L1_PRM_00005);

VL53L1_Error VL53L1_WrWord(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint16_t VL53L1_PRM_00005);

VL53L1_Error VL53L1_WrDWord(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint32_t VL53L1_PRM_00005);

VL53L1_Error VL53L1_RdByte(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint8_t *pdata);

VL53L1_Error VL53L1_RdWord(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint16_t *pdata);

VL53L1_Error VL53L1_RdDWord(
  VL53L1_Dev_t *pdev,
  uint16_t index,
  uint32_t *pdata);

VL53L1_Error VL53L1_WaitUs(
  VL53L1_Dev_t *pdev,
  int32_t wait_us);

VL53L1_Error VL53L1_WaitMs(
  VL53L1_Dev_t *pdev,
  int32_t wait_ms);

VL53L1_Error VL53L1_GetTimerFrequency(int32_t *ptimer_freq_hz);

VL53L1_Error VL53L1_GetTimerValue(int32_t *ptimer_count);

VL53L1_Error VL53L1_GpioSetMode(uint8_t pin, uint8_t mode);

VL53L1_Error VL53L1_GpioSetValue(uint8_t pin, uint8_t value);

VL53L1_Error VL53L1_GpioGetValue(uint8_t pin, uint8_t *pvalue);

VL53L1_Error VL53L1_GpioXshutdown(uint8_t value);

VL53L1_Error VL53L1_GpioCommsSelect(uint8_t value);

VL53L1_Error VL53L1_GpioPowerEnable(uint8_t value);

VL53L1_Error VL53L1_GpioInterruptEnable(void (*function)(void), uint8_t edge_type);

VL53L1_Error VL53L1_GpioInterruptDisable(void);

VL53L1_Error VL53L1_GetTickCount(
 uint32_t *ptime_ms);

VL53L1_Error VL53L1_WaitValueMaskEx(
  VL53L1_Dev_t *pdev,
  uint32_t timeout_ms,
  uint16_t index,
  uint8_t value,
  uint8_t mask,
  uint32_t poll_delay_ms);
# 73 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c" 2

# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h" 1
# 89 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_encode_static_nvm_managed(
 VL53L1_static_nvm_managed_t *pdata,
 uint16_t buf_size,
 uint8_t *pbuffer);
# 108 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_static_nvm_managed(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_static_nvm_managed_t *pdata);
# 127 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_set_static_nvm_managed(
 VL53L1_DEV Dev,
 VL53L1_static_nvm_managed_t *pdata);
# 145 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_get_static_nvm_managed(
 VL53L1_DEV Dev,
 VL53L1_static_nvm_managed_t *pdata);
# 160 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_encode_customer_nvm_managed(
 VL53L1_customer_nvm_managed_t *pdata,
 uint16_t buf_size,
 uint8_t *pbuffer);
# 179 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_customer_nvm_managed(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_customer_nvm_managed_t *pdata);
# 198 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_set_customer_nvm_managed(
 VL53L1_DEV Dev,
 VL53L1_customer_nvm_managed_t *pdata);
# 216 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_get_customer_nvm_managed(
 VL53L1_DEV Dev,
 VL53L1_customer_nvm_managed_t *pdata);
# 231 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_encode_static_config(
 VL53L1_static_config_t *pdata,
 uint16_t buf_size,
 uint8_t *pbuffer);
# 250 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_static_config(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_static_config_t *pdata);
# 269 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_set_static_config(
 VL53L1_DEV Dev,
 VL53L1_static_config_t *pdata);
# 304 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_encode_general_config(
 VL53L1_general_config_t *pdata,
 uint16_t buf_size,
 uint8_t *pbuffer);
# 323 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_general_config(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_general_config_t *pdata);
# 342 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_set_general_config(
 VL53L1_DEV Dev,
 VL53L1_general_config_t *pdata);
# 377 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_encode_timing_config(
 VL53L1_timing_config_t *pdata,
 uint16_t buf_size,
 uint8_t *pbuffer);
# 454 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_encode_dynamic_config(
 VL53L1_dynamic_config_t *pdata,
 uint16_t buf_size,
 uint8_t *pbuffer);
# 494 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_set_dynamic_config(
 VL53L1_DEV Dev,
 VL53L1_dynamic_config_t *pdata);
# 528 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_encode_system_control(
 VL53L1_system_control_t *pdata,
 uint16_t buf_size,
 uint8_t *pbuffer);
# 568 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_set_system_control(
 VL53L1_DEV Dev,
 VL53L1_system_control_t *pdata);
# 624 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_system_results(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_system_results_t *pdata);
# 663 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_get_system_results(
 VL53L1_DEV Dev,
 VL53L1_system_results_t *pdata);
# 699 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_core_results(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_core_results_t *pdata);
# 775 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_debug_results(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_debug_results_t *pdata);
# 849 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_i2c_decode_nvm_copy_data(
 uint16_t buf_size,
 uint8_t *pbuffer,
 VL53L1_nvm_copy_data_t *pdata);
# 887 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
VL53L1_Error VL53L1_get_nvm_copy_data(
 VL53L1_DEV Dev,
 VL53L1_nvm_copy_data_t *pdata);
# 75 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_settings.h" 1
# 76 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h" 1
# 89 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_init_refspadchar_config_struct(
 VL53L1_refspadchar_config_t *pdata);
# 103 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_init_ssc_config_struct(
 VL53L1_ssc_config_t *pdata);
# 116 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_init_xtalk_config_struct(
  VL53L1_customer_nvm_managed_t *pnvm,
  VL53L1_xtalk_config_t *pdata);
# 130 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_init_offset_cal_config_struct(
 VL53L1_offsetcal_config_t *pdata);
# 144 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_init_tuning_parm_storage_struct(
 VL53L1_tuning_parm_storage_t *pdata);
# 162 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_standard_ranging(
 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 185 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_standard_ranging_short_range(
 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 209 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_standard_ranging_long_range(
 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 233 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_standard_ranging_mm1_cal(
 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 259 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_standard_ranging_mm2_cal(
 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 284 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_timed_ranging(

 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 308 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_timed_ranging_short_range(

 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 332 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_timed_ranging_long_range(

 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 357 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_low_power_auto_ranging(

 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms,
 VL53L1_low_power_auto_data_t *plpadata);
# 383 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_low_power_auto_short_ranging(

 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms,
 VL53L1_low_power_auto_data_t *plpadata);
# 409 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_low_power_auto_long_ranging(

 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms,
 VL53L1_low_power_auto_data_t *plpadata);
# 435 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_olt(
 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 458 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
VL53L1_Error VL53L1_preset_mode_singleshot_ranging(

 VL53L1_static_config_t *pstatic,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_system_control_t *psystem,
 VL53L1_tuning_parm_storage_t *ptuning_parms);
# 77 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h" 1
# 73 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.h" 1
# 88 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.h"
uint32_t VL53L1_calc_pll_period_us(
 uint16_t fast_osc_frequency);
# 201 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.h"
uint8_t VL53L1_decode_vcsel_period(
 uint8_t vcsel_period_reg);
# 213 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.h"
void VL53L1_decode_row_col(
 uint8_t spad_number,
 uint8_t *prow,
 uint8_t *pcol);
# 74 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h" 2
# 86 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_init_version(
 VL53L1_DEV Dev);
# 97 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_init_ll_driver_state(
 VL53L1_DEV Dev,
 VL53L1_DeviceState ll_state);
# 111 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_update_ll_driver_rd_state(
 VL53L1_DEV Dev);
# 125 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_check_ll_driver_rd_state(
 VL53L1_DEV Dev);
# 138 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_update_ll_driver_cfg_state(
 VL53L1_DEV Dev);
# 149 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_copy_rtn_good_spads_to_buffer(
 VL53L1_nvm_copy_data_t *pdata,
 uint8_t *pbuffer);
# 163 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_init_system_results(
 VL53L1_system_results_t *pdata);
# 173 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void V53L1_init_zone_dss_configs(
 VL53L1_DEV Dev);
# 187 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_i2c_encode_uint16_t(
 uint16_t ip_value,
 uint16_t count,
 uint8_t *pbuffer);
# 204 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint16_t VL53L1_i2c_decode_uint16_t(
 uint16_t count,
 uint8_t *pbuffer);
# 219 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_i2c_encode_int16_t(
 int16_t ip_value,
 uint16_t count,
 uint8_t *pbuffer);
# 236 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
int16_t VL53L1_i2c_decode_int16_t(
 uint16_t count,
 uint8_t *pbuffer);
# 251 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_i2c_encode_uint32_t(
 uint32_t ip_value,
 uint16_t count,
 uint8_t *pbuffer);
# 268 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_i2c_decode_uint32_t(
 uint16_t count,
 uint8_t *pbuffer);
# 287 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_i2c_decode_with_mask(
 uint16_t count,
 uint8_t *pbuffer,
 uint32_t bit_mask,
 uint32_t down_shift,
 uint32_t offset);
# 305 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_i2c_encode_int32_t(
 int32_t ip_value,
 uint16_t count,
 uint8_t *pbuffer);
# 322 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
int32_t VL53L1_i2c_decode_int32_t(
 uint16_t count,
 uint8_t *pbuffer);
# 338 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_start_test(
 VL53L1_DEV Dev,
 uint8_t test_mode__ctrl);
# 357 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_set_firmware_enable_register(
 VL53L1_DEV Dev,
 uint8_t value);
# 371 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_enable_firmware(
 VL53L1_DEV Dev);
# 386 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_disable_firmware(
 VL53L1_DEV Dev);
# 403 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_set_powerforce_register(
 VL53L1_DEV Dev,
 uint8_t value);
# 423 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_enable_powerforce(
 VL53L1_DEV Dev);
# 439 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_disable_powerforce(
 VL53L1_DEV Dev);
# 453 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_clear_interrupt(
 VL53L1_DEV Dev);
# 488 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_calc_macro_period_us(
 uint16_t fast_osc_frequency,
 uint8_t vcsel_period);
# 508 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint16_t VL53L1_calc_range_ignore_threshold(
 uint32_t central_rate,
 int16_t x_gradient,
 int16_t y_gradient,
 uint8_t rate_mult);
# 525 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_calc_timeout_mclks(
 uint32_t timeout_us,
 uint32_t macro_period_us);
# 539 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint16_t VL53L1_calc_encoded_timeout(
 uint32_t timeout_us,
 uint32_t macro_period_us);
# 554 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_calc_timeout_us(
 uint32_t timeout_mclks,
 uint32_t macro_period_us);
# 568 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_calc_decoded_timeout_us(
 uint16_t timeout_encoded,
 uint32_t macro_period_us);
# 581 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint16_t VL53L1_encode_timeout(
 uint32_t timeout_mclks);
# 594 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_decode_timeout(
 uint16_t encoded_timeout);
# 615 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_calc_timeout_register_values(
 uint32_t phasecal_config_timeout_us,
 uint32_t mm_config_timeout_us,
 uint32_t range_config_timeout_us,
 uint16_t fast_osc_frequency,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming);
# 633 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint8_t VL53L1_encode_vcsel_period(
 uint8_t vcsel_period_pclks);
# 649 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_decode_unsigned_integer(
 uint8_t *pbuffer,
 uint8_t no_of_bytes);
# 663 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_encode_unsigned_integer(
 uint32_t ip_value,
 uint8_t no_of_bytes,
 uint8_t *pbuffer);
# 683 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_spad_number_to_byte_bit_index(
 uint8_t spad_number,
 uint8_t *pbyte_index,
 uint8_t *pbit_index,
 uint8_t *pbit_mask);
# 700 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_encode_row_col(
 uint8_t row,
 uint8_t col,
 uint8_t *pspad_number);
# 715 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_decode_zone_size(
 uint8_t encoded_xy_size,
 uint8_t *pwidth,
 uint8_t *pheight);
# 730 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_encode_zone_size(
 uint8_t width,
 uint8_t height,
 uint8_t *pencoded_xy_size);
# 750 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_decode_zone_limits(
 uint8_t encoded_xy_centre,
 uint8_t encoded_xy_size,
 int16_t *px_ll,
 int16_t *py_ll,
 int16_t *px_ur,
 int16_t *py_ur);
# 768 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint8_t VL53L1_is_aperture_location(
 uint8_t row,
 uint8_t col);
# 789 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
void VL53L1_calc_mm_effective_spads(
 uint8_t encoded_mm_roi_centre,
 uint8_t encoded_mm_roi_size,
 uint8_t encoded_zone_centre,
 uint8_t encoded_zone_size,
 uint8_t *pgood_spads,
 uint16_t aperture_attenuation,
 uint16_t *pmm_inner_effective_spads,
 uint16_t *pmm_outer_effective_spads);
# 809 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_save_cfg_data(
 VL53L1_DEV Dev);
# 820 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint8_t VL53L1_encode_GPIO_interrupt_config(
 VL53L1_GPIO_interrupt_config_t *pintconf);
# 830 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_GPIO_interrupt_config_t VL53L1_decode_GPIO_interrupt_config(
 uint8_t system__interrupt_config);
# 841 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_set_GPIO_distance_threshold(
 VL53L1_DEV Dev,
 uint16_t threshold_high,
 uint16_t threshold_low);
# 854 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_set_GPIO_rate_threshold(
 VL53L1_DEV Dev,
 uint16_t threshold_high,
 uint16_t threshold_low);
# 867 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_set_GPIO_thresholds_from_struct(
 VL53L1_DEV Dev,
 VL53L1_GPIO_interrupt_config_t *pintconf);
# 903 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_set_ref_spad_char_config(
 VL53L1_DEV Dev,
 uint8_t vcsel_period_a,
 uint32_t phasecal_timeout_us,
 uint16_t total_rate_target_mcps,
 uint16_t max_count_rate_rtn_limit_mcps,
 uint16_t min_count_rate_rtn_limit_mcps,
 uint16_t fast_osc_frequency);
# 951 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_set_ssc_config(
 VL53L1_DEV Dev,
 VL53L1_ssc_config_t *pssc_cfg,
 uint16_t fast_osc_frequency);
# 984 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_get_spad_rate_data(
 VL53L1_DEV Dev,
 VL53L1_spad_rate_data_t *pspad_rates);
# 1003 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
uint32_t VL53L1_calc_crosstalk_plane_offset_with_margin(
  uint32_t plane_offset_kcps,
  int16_t margin_offset_kcps);
# 1018 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_low_power_auto_data_init(
 VL53L1_DEV Dev
 );
# 1033 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_low_power_auto_data_stop_range(
 VL53L1_DEV Dev
 );
# 1051 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_config_low_power_auto_mode(
 VL53L1_general_config_t *pgeneral,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_low_power_auto_data_t *plpadata
 );
# 1069 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_low_power_auto_setup_manual_calibration(
 VL53L1_DEV Dev);
# 1083 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
VL53L1_Error VL53L1_low_power_auto_update_DSS(
 VL53L1_DEV Dev);
# 78 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c" 2
# 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_tuning_parm_defaults.h" 1
# 79 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c" 2
# 99 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
void VL53L1_init_version(
 VL53L1_DEV Dev)
{




 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 pdev->version.ll_major = 1;
 pdev->version.ll_minor = 2;
 pdev->version.ll_build = 10;
 pdev->version.ll_revision = 1840;
}


void VL53L1_init_ll_driver_state(
 VL53L1_DEV Dev,
 VL53L1_DeviceState device_state)
{




 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);
 VL53L1_ll_driver_state_t *pstate = &(pdev->ll_state);

 pstate->cfg_device_state = device_state;
 pstate->cfg_stream_count = 0;
 pstate->cfg_gph_id = 0x02;
 pstate->cfg_timing_status = 0;

 pstate->rd_device_state = device_state;
 pstate->rd_stream_count = 0;
 pstate->rd_gph_id = 0x02;
 pstate->rd_timing_status = 0;

}


VL53L1_Error VL53L1_update_ll_driver_rd_state(
 VL53L1_DEV Dev)
{
# 151 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 VL53L1_Error status = ((VL53L1_Error) 0);
 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);
 VL53L1_ll_driver_state_t *pstate = &(pdev->ll_state);



 ;





 if ((pdev->sys_ctrl.system__mode_start &
  0xF0) == 0x00) {

  pstate->rd_device_state = ((VL53L1_DeviceState) 3);
  pstate->rd_stream_count = 0;
  pstate->rd_gph_id = 0x02;
  pstate->rd_timing_status = 0;

 } else {





  if (pstate->rd_stream_count == 0xFF) {
   pstate->rd_stream_count = 0x80;
  } else {
   pstate->rd_stream_count++;
  }






  pstate->rd_gph_id ^= 0x02;



  switch (pstate->rd_device_state) {

  case ((VL53L1_DeviceState) 3):

   if ((pdev->dyn_cfg.system__grouped_parameter_hold &
    0x02) > 0) {
    pstate->rd_device_state =
     ((VL53L1_DeviceState) 6);
   } else {
    pstate->rd_device_state =
     ((VL53L1_DeviceState) 8);
   }

   pstate->rd_stream_count = 0;
   pstate->rd_timing_status = 0;

  break;

  case ((VL53L1_DeviceState) 6):

   pstate->rd_stream_count = 0;
   pstate->rd_device_state =
    ((VL53L1_DeviceState) 8);

  break;

  case ((VL53L1_DeviceState) 7):

   pstate->rd_device_state =
    ((VL53L1_DeviceState) 8);

  break;

  case ((VL53L1_DeviceState) 8):

   pstate->rd_timing_status ^= 0x01;

   pstate->rd_device_state =
    ((VL53L1_DeviceState) 8);

  break;

  default:

   pstate->rd_device_state =
    ((VL53L1_DeviceState) 3);
   pstate->rd_stream_count = 0;
   pstate->rd_gph_id = 0x02;
   pstate->rd_timing_status = 0;

  break;
  }
 }





 ;

 return status;
}


VL53L1_Error VL53L1_check_ll_driver_rd_state(
 VL53L1_DEV Dev)
{







 VL53L1_Error status = ((VL53L1_Error) 0);
 VL53L1_LLDriverData_t *pdev =
   (&Dev->Data.LLData);

 VL53L1_ll_driver_state_t *pstate = &(pdev->ll_state);
 VL53L1_system_results_t *psys_results = &(pdev->sys_results);

 uint8_t device_range_status = 0;
 uint8_t device_stream_count = 0;
 uint8_t device_gph_id = 0;

 ;





 device_range_status =
   psys_results->result__range_status &
   0x1F;

 device_stream_count = psys_results->result__stream_count;


 device_gph_id = (psys_results->result__interrupt_status &
  0x20) >> 4;



 if ((pdev->sys_ctrl.system__mode_start &
  ((VL53L1_DeviceMeasurementModes) 0x20)) ==
  ((VL53L1_DeviceMeasurementModes) 0x20)) {
# 307 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
  if (pstate->rd_device_state ==
   ((VL53L1_DeviceState) 6)) {

   if (device_range_status !=
    ((VL53L1_DeviceError) 18)) {
    status = ((VL53L1_Error) - 17);
   }
  } else {
   if (pstate->rd_stream_count != device_stream_count) {
    status = ((VL53L1_Error) - 18);
   }





  if (pstate->rd_gph_id != device_gph_id) {
   status = ((VL53L1_Error) - 19);






   } else {






   }

  }

 }

 ;

 return status;
}


VL53L1_Error VL53L1_update_ll_driver_cfg_state(
 VL53L1_DEV Dev)
{




 VL53L1_Error status = ((VL53L1_Error) 0);
 VL53L1_LLDriverData_t *pdev =
   (&Dev->Data.LLData);

 VL53L1_ll_driver_state_t *pstate = &(pdev->ll_state);

 ;







 if ((pdev->sys_ctrl.system__mode_start &
  0xF0) == 0x00) {

  pstate->cfg_device_state = ((VL53L1_DeviceState) 3);
  pstate->cfg_stream_count = 0;
  pstate->cfg_gph_id = 0x02;
  pstate->cfg_timing_status = 0;

 } else {





  if (pstate->cfg_stream_count == 0xFF) {
   pstate->cfg_stream_count = 0x80;
  } else {
   pstate->cfg_stream_count++;
  }





  pstate->cfg_gph_id ^= 0x02;





  switch (pstate->cfg_device_state) {

  case ((VL53L1_DeviceState) 3):

   pstate->cfg_timing_status ^= 0x01;
   pstate->cfg_stream_count = 1;

   pstate->cfg_device_state = ((VL53L1_DeviceState) 4);
  break;

  case ((VL53L1_DeviceState) 4):

   pstate->cfg_timing_status ^= 0x01;

  break;

  default:

   pstate->cfg_device_state = ((VL53L1_DeviceState) 3);
   pstate->cfg_stream_count = 0;
   pstate->cfg_gph_id = 0x02;
   pstate->cfg_timing_status = 0;

  break;
  }
 }





 ;

 return status;
}


void VL53L1_copy_rtn_good_spads_to_buffer(
 VL53L1_nvm_copy_data_t *pdata,
 uint8_t *pbuffer)
{




 *(pbuffer + 0) = pdata->global_config__spad_enables_rtn_0;
 *(pbuffer + 1) = pdata->global_config__spad_enables_rtn_1;
 *(pbuffer + 2) = pdata->global_config__spad_enables_rtn_2;
 *(pbuffer + 3) = pdata->global_config__spad_enables_rtn_3;
 *(pbuffer + 4) = pdata->global_config__spad_enables_rtn_4;
 *(pbuffer + 5) = pdata->global_config__spad_enables_rtn_5;
 *(pbuffer + 6) = pdata->global_config__spad_enables_rtn_6;
 *(pbuffer + 7) = pdata->global_config__spad_enables_rtn_7;
 *(pbuffer + 8) = pdata->global_config__spad_enables_rtn_8;
 *(pbuffer + 9) = pdata->global_config__spad_enables_rtn_9;
 *(pbuffer + 10) = pdata->global_config__spad_enables_rtn_10;
 *(pbuffer + 11) = pdata->global_config__spad_enables_rtn_11;
 *(pbuffer + 12) = pdata->global_config__spad_enables_rtn_12;
 *(pbuffer + 13) = pdata->global_config__spad_enables_rtn_13;
 *(pbuffer + 14) = pdata->global_config__spad_enables_rtn_14;
 *(pbuffer + 15) = pdata->global_config__spad_enables_rtn_15;
 *(pbuffer + 16) = pdata->global_config__spad_enables_rtn_16;
 *(pbuffer + 17) = pdata->global_config__spad_enables_rtn_17;
 *(pbuffer + 18) = pdata->global_config__spad_enables_rtn_18;
 *(pbuffer + 19) = pdata->global_config__spad_enables_rtn_19;
 *(pbuffer + 20) = pdata->global_config__spad_enables_rtn_20;
 *(pbuffer + 21) = pdata->global_config__spad_enables_rtn_21;
 *(pbuffer + 22) = pdata->global_config__spad_enables_rtn_22;
 *(pbuffer + 23) = pdata->global_config__spad_enables_rtn_23;
 *(pbuffer + 24) = pdata->global_config__spad_enables_rtn_24;
 *(pbuffer + 25) = pdata->global_config__spad_enables_rtn_25;
 *(pbuffer + 26) = pdata->global_config__spad_enables_rtn_26;
 *(pbuffer + 27) = pdata->global_config__spad_enables_rtn_27;
 *(pbuffer + 28) = pdata->global_config__spad_enables_rtn_28;
 *(pbuffer + 29) = pdata->global_config__spad_enables_rtn_29;
 *(pbuffer + 30) = pdata->global_config__spad_enables_rtn_30;
 *(pbuffer + 31) = pdata->global_config__spad_enables_rtn_31;
}


void VL53L1_init_system_results(
  VL53L1_system_results_t *pdata)
{





 pdata->result__interrupt_status = 0xFF;
 pdata->result__range_status = 0xFF;
 pdata->result__report_status = 0xFF;
 pdata->result__stream_count = 0xFF;

 pdata->result__dss_actual_effective_spads_sd0 = 0xFFFF;
 pdata->result__peak_signal_count_rate_mcps_sd0 = 0xFFFF;
 pdata->result__ambient_count_rate_mcps_sd0 = 0xFFFF;
 pdata->result__sigma_sd0 = 0xFFFF;
 pdata->result__phase_sd0 = 0xFFFF;
 pdata->result__final_crosstalk_corrected_range_mm_sd0 = 0xFFFF;
 pdata->result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0 =
   0xFFFF;
 pdata->result__mm_inner_actual_effective_spads_sd0 = 0xFFFF;
 pdata->result__mm_outer_actual_effective_spads_sd0 = 0xFFFF;
 pdata->result__avg_signal_count_rate_mcps_sd0 = 0xFFFF;

 pdata->result__dss_actual_effective_spads_sd1 = 0xFFFF;
 pdata->result__peak_signal_count_rate_mcps_sd1 = 0xFFFF;
 pdata->result__ambient_count_rate_mcps_sd1 = 0xFFFF;
 pdata->result__sigma_sd1 = 0xFFFF;
 pdata->result__phase_sd1 = 0xFFFF;
 pdata->result__final_crosstalk_corrected_range_mm_sd1 = 0xFFFF;
 pdata->result__spare_0_sd1 = 0xFFFF;
 pdata->result__spare_1_sd1 = 0xFFFF;
 pdata->result__spare_2_sd1 = 0xFFFF;
 pdata->result__spare_3_sd1 = 0xFF;

}


void VL53L1_i2c_encode_uint16_t(
 uint16_t ip_value,
 uint16_t count,
 uint8_t *pbuffer)
{





 uint16_t i = 0;
 uint16_t data = 0;

 data = ip_value;

 for (i = 0; i < count ; i++) {
  pbuffer[count-i-1] = (uint8_t)(data & 0x00FF);
  data = data >> 8;
 }
}

uint16_t VL53L1_i2c_decode_uint16_t(
 uint16_t count,
 uint8_t *pbuffer)
{





 uint16_t value = 0x00;

 while (count-- > 0) {
  value = (value << 8) | (uint16_t)*pbuffer++;
 }

 return value;
}


void VL53L1_i2c_encode_int16_t(
 int16_t ip_value,
 uint16_t count,
 uint8_t *pbuffer)
{





 uint16_t i = 0;
 int16_t data = 0;

 data = ip_value;

 for (i = 0; i < count ; i++) {
  pbuffer[count-i-1] = (uint8_t)(data & 0x00FF);
  data = data >> 8;
 }
}

int16_t VL53L1_i2c_decode_int16_t(
 uint16_t count,
 uint8_t *pbuffer)
{





 int16_t value = 0x00;


 if (*pbuffer >= 0x80) {
  value = 0xFFFF;
 }

 while (count-- > 0) {
  value = (value << 8) | (int16_t)*pbuffer++;
 }

 return value;
}

void VL53L1_i2c_encode_uint32_t(
 uint32_t ip_value,
 uint16_t count,
 uint8_t *pbuffer)
{





 uint16_t i = 0;
 uint32_t data = 0;

 data = ip_value;

 for (i = 0; i < count ; i++) {
  pbuffer[count-i-1] = (uint8_t)(data & 0x00FF);
  data = data >> 8;
 }
}

uint32_t VL53L1_i2c_decode_uint32_t(
 uint16_t count,
 uint8_t *pbuffer)
{





 uint32_t value = 0x00;

 while (count-- > 0) {
  value = (value << 8) | (uint32_t)*pbuffer++;
 }

 return value;
}


uint32_t VL53L1_i2c_decode_with_mask(
 uint16_t count,
 uint8_t *pbuffer,
 uint32_t bit_mask,
 uint32_t down_shift,
 uint32_t offset)
{





 uint32_t value = 0x00;


 while (count-- > 0) {
  value = (value << 8) | (uint32_t)*pbuffer++;
 }


 value = value & bit_mask;
 if (down_shift > 0) {
  value = value >> down_shift;
 }


 value = value + offset;

 return value;
}


void VL53L1_i2c_encode_int32_t(
 int32_t ip_value,
 uint16_t count,
 uint8_t *pbuffer)
{





 uint16_t i = 0;
 int32_t data = 0;

 data = ip_value;

 for (i = 0; i < count ; i++) {
  pbuffer[count-i-1] = (uint8_t)(data & 0x00FF);
  data = data >> 8;
 }
}

int32_t VL53L1_i2c_decode_int32_t(
 uint16_t count,
 uint8_t *pbuffer)
{





 int32_t value = 0x00;


 if (*pbuffer >= 0x80) {
  value = 0xFFFFFFFF;
 }

 while (count-- > 0) {
  value = (value << 8) | (int32_t)*pbuffer++;
 }

 return value;
}



VL53L1_Error VL53L1_start_test(
 VL53L1_DEV Dev,
 uint8_t test_mode__ctrl)
{




 VL53L1_Error status = ((VL53L1_Error) 0);

 ;

 if (status == ((VL53L1_Error) 0)) {
  status = VL53L1_WrByte(
     Dev,
     0x0027,
     test_mode__ctrl);
 }

 ;

 return status;
}



VL53L1_Error VL53L1_set_firmware_enable_register(
 VL53L1_DEV Dev,
 uint8_t value)
{




 VL53L1_Error status = ((VL53L1_Error) 0);
 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 pdev->sys_ctrl.firmware__enable = value;

 status = VL53L1_WrByte(
    Dev,
    0x0085,
    pdev->sys_ctrl.firmware__enable);

 return status;
}

VL53L1_Error VL53L1_enable_firmware(
 VL53L1_DEV Dev)
{




 VL53L1_Error status = ((VL53L1_Error) 0);

 ;

 status = VL53L1_set_firmware_enable_register(Dev, 0x01);

 ;

 return status;
}


VL53L1_Error VL53L1_disable_firmware(
 VL53L1_DEV Dev)
{




 VL53L1_Error status = ((VL53L1_Error) 0);

 ;

 status = VL53L1_set_firmware_enable_register(Dev, 0x00);

 ;

 return status;
}


VL53L1_Error VL53L1_set_powerforce_register(
 VL53L1_DEV Dev,
 uint8_t value)
{




 VL53L1_Error status = ((VL53L1_Error) 0);
 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 pdev->sys_ctrl.power_management__go1_power_force = value;

 status = VL53L1_WrByte(
   Dev,
   0x0083,
   pdev->sys_ctrl.power_management__go1_power_force);

 return status;
}


VL53L1_Error VL53L1_enable_powerforce(
 VL53L1_DEV Dev)
{




 VL53L1_Error status = ((VL53L1_Error) 0);

 ;

 status = VL53L1_set_powerforce_register(Dev, 0x01);

 ;

 return status;
}


VL53L1_Error VL53L1_disable_powerforce(
 VL53L1_DEV Dev)
{




 VL53L1_Error status = ((VL53L1_Error) 0);

 ;

 status = VL53L1_set_powerforce_register(Dev, 0x00);

 ;

 return status;
}


VL53L1_Error VL53L1_clear_interrupt(
 VL53L1_DEV Dev)
{




 VL53L1_Error status = ((VL53L1_Error) 0);
 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 ;

 pdev->sys_ctrl.system__interrupt_clear = 0x01;

 status = VL53L1_WrByte(
     Dev,
     0x0086,
     pdev->sys_ctrl.system__interrupt_clear);

 ;

 return status;
}
# 921 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
uint32_t VL53L1_calc_macro_period_us(
 uint16_t fast_osc_frequency,
 uint8_t vcsel_period)
{







 uint32_t pll_period_us = 0;
 uint8_t vcsel_period_pclks = 0;
 uint32_t macro_period_us = 0;

 ;





 pll_period_us = VL53L1_calc_pll_period_us(fast_osc_frequency);





 vcsel_period_pclks = VL53L1_decode_vcsel_period(vcsel_period);
# 962 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 macro_period_us =
   (uint32_t)(256 + 2048) *
   pll_period_us;
 macro_period_us = macro_period_us >> 6;

 macro_period_us = macro_period_us * (uint32_t)vcsel_period_pclks;
 macro_period_us = macro_period_us >> 6;
# 982 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 ;

 return macro_period_us;
}


uint16_t VL53L1_calc_range_ignore_threshold(
 uint32_t central_rate,
 int16_t x_gradient,
 int16_t y_gradient,
 uint8_t rate_mult)
{
# 1008 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 int32_t range_ignore_thresh_int = 0;
 uint16_t range_ignore_thresh_kcps = 0;
 int32_t central_rate_int = 0;
 int16_t x_gradient_int = 0;
 int16_t y_gradient_int = 0;

 ;



 central_rate_int = ((int32_t)central_rate * (1 << 4)) / (1000);

 if (x_gradient < 0) {
  x_gradient_int = x_gradient * -1;
 }

 if (y_gradient < 0) {
  y_gradient_int = y_gradient * -1;
 }





 range_ignore_thresh_int = (8 * x_gradient_int * 4) + (8 * y_gradient_int * 4);



 range_ignore_thresh_int = range_ignore_thresh_int / 1000;



 range_ignore_thresh_int = range_ignore_thresh_int + central_rate_int;



 range_ignore_thresh_int = (int32_t)rate_mult * range_ignore_thresh_int;

 range_ignore_thresh_int = (range_ignore_thresh_int + (1<<4)) / (1<<5);



 if (range_ignore_thresh_int > 0xFFFF) {
  range_ignore_thresh_kcps = 0xFFFF;
 } else {
  range_ignore_thresh_kcps = (uint16_t)range_ignore_thresh_int;
 }







 ;

 return range_ignore_thresh_kcps;
}


uint32_t VL53L1_calc_timeout_mclks(
 uint32_t timeout_us,
 uint32_t macro_period_us)
{
# 1081 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 uint32_t timeout_mclks = 0;

 ;

 timeout_mclks =
   ((timeout_us << 12) + (macro_period_us>>1)) /
   macro_period_us;

 ;

 return timeout_mclks;
}


uint16_t VL53L1_calc_encoded_timeout(
 uint32_t timeout_us,
 uint32_t macro_period_us)
{
# 1108 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 uint32_t timeout_mclks = 0;
 uint16_t timeout_encoded = 0;

 ;

 timeout_mclks =
  VL53L1_calc_timeout_mclks(timeout_us, macro_period_us);

 timeout_encoded =
  VL53L1_encode_timeout(timeout_mclks);
# 1128 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 ;

 return timeout_encoded;
}


uint32_t VL53L1_calc_timeout_us(
 uint32_t timeout_mclks,
 uint32_t macro_period_us)
{
# 1147 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 uint32_t timeout_us = 0;
 uint64_t tmp = 0;

 ;

 tmp = (uint64_t)timeout_mclks * (uint64_t)macro_period_us;
 tmp += 0x00800;
 tmp = tmp >> 12;

 timeout_us = (uint32_t)tmp;
# 1168 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 ;

 return timeout_us;
}

uint32_t VL53L1_calc_crosstalk_plane_offset_with_margin(
  uint32_t plane_offset_kcps,
  int16_t margin_offset_kcps)
{
 uint32_t plane_offset_with_margin = 0;
 int32_t plane_offset_kcps_temp = 0;

 ;

 plane_offset_kcps_temp =
  (int32_t)plane_offset_kcps +
  (int32_t)margin_offset_kcps;

 if (plane_offset_kcps_temp < 0) {
  plane_offset_kcps_temp = 0;
 } else {
  if (plane_offset_kcps_temp > 0x3FFFF) {
   plane_offset_kcps_temp = 0x3FFFF;
  }
 }

 plane_offset_with_margin = (uint32_t) plane_offset_kcps_temp;

 ;

 return plane_offset_with_margin;

}

uint32_t VL53L1_calc_decoded_timeout_us(
 uint16_t timeout_encoded,
 uint32_t macro_period_us)
{
# 1215 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 uint32_t timeout_mclks = 0;
 uint32_t timeout_us = 0;

 ;

 timeout_mclks =
  VL53L1_decode_timeout(timeout_encoded);

 timeout_us =
  VL53L1_calc_timeout_us(timeout_mclks, macro_period_us);

 ;

 return timeout_us;
}


uint16_t VL53L1_encode_timeout(uint32_t timeout_mclks)
{




 uint16_t encoded_timeout = 0;
 uint32_t ls_byte = 0;
 uint16_t ms_byte = 0;

 if (timeout_mclks > 0) {
  ls_byte = timeout_mclks - 1;

  while ((ls_byte & 0xFFFFFF00) > 0) {
   ls_byte = ls_byte >> 1;
   ms_byte++;
  }

  encoded_timeout = (ms_byte << 8)
    + (uint16_t) (ls_byte & 0x000000FF);
 }

 return encoded_timeout;
}


uint32_t VL53L1_decode_timeout(uint16_t encoded_timeout)
{





 uint32_t timeout_macro_clks = 0;

 timeout_macro_clks = ((uint32_t) (encoded_timeout & 0x00FF)
   << (uint32_t) ((encoded_timeout & 0xFF00) >> 8)) + 1;

 return timeout_macro_clks;
}


VL53L1_Error VL53L1_calc_timeout_register_values(
 uint32_t phasecal_config_timeout_us,
 uint32_t mm_config_timeout_us,
 uint32_t range_config_timeout_us,
 uint16_t fast_osc_frequency,
 VL53L1_general_config_t *pgeneral,
 VL53L1_timing_config_t *ptiming)
{







 VL53L1_Error status = ((VL53L1_Error) 0);

 uint32_t macro_period_us = 0;
 uint32_t timeout_mclks = 0;
 uint16_t timeout_encoded = 0;

 ;

 if (fast_osc_frequency == 0) {
  status = ((VL53L1_Error) - 15);
 } else {

  macro_period_us =
    VL53L1_calc_macro_period_us(
     fast_osc_frequency,
     ptiming->range_config__vcsel_period_a);


  timeout_mclks =
   VL53L1_calc_timeout_mclks(
    phasecal_config_timeout_us,
    macro_period_us);


  if (timeout_mclks > 0xFF)
   timeout_mclks = 0xFF;

  pgeneral->phasecal_config__timeout_macrop =
    (uint8_t)timeout_mclks;


  timeout_encoded =
   VL53L1_calc_encoded_timeout(
    mm_config_timeout_us,
    macro_period_us);

  ptiming->mm_config__timeout_macrop_a_hi =
    (uint8_t)((timeout_encoded & 0xFF00) >> 8);
  ptiming->mm_config__timeout_macrop_a_lo =
    (uint8_t) (timeout_encoded & 0x00FF);


  timeout_encoded =
   VL53L1_calc_encoded_timeout(
    range_config_timeout_us,
    macro_period_us);

  ptiming->range_config__timeout_macrop_a_hi =
    (uint8_t)((timeout_encoded & 0xFF00) >> 8);
  ptiming->range_config__timeout_macrop_a_lo =
    (uint8_t) (timeout_encoded & 0x00FF);


  macro_period_us =
    VL53L1_calc_macro_period_us(
     fast_osc_frequency,
     ptiming->range_config__vcsel_period_b);


  timeout_encoded =
    VL53L1_calc_encoded_timeout(
     mm_config_timeout_us,
     macro_period_us);

  ptiming->mm_config__timeout_macrop_b_hi =
    (uint8_t)((timeout_encoded & 0xFF00) >> 8);
  ptiming->mm_config__timeout_macrop_b_lo =
    (uint8_t) (timeout_encoded & 0x00FF);


  timeout_encoded = VL53L1_calc_encoded_timeout(
       range_config_timeout_us,
       macro_period_us);

  ptiming->range_config__timeout_macrop_b_hi =
    (uint8_t)((timeout_encoded & 0xFF00) >> 8);
  ptiming->range_config__timeout_macrop_b_lo =
    (uint8_t) (timeout_encoded & 0x00FF);
 }

 ;

 return status;

}


uint8_t VL53L1_encode_vcsel_period(uint8_t vcsel_period_pclks)
{





 uint8_t vcsel_period_reg = 0;

 vcsel_period_reg = (vcsel_period_pclks >> 1) - 1;

 return vcsel_period_reg;
}


uint32_t VL53L1_decode_unsigned_integer(
 uint8_t *pbuffer,
 uint8_t no_of_bytes)
{




 uint8_t i = 0;
 uint32_t decoded_value = 0;

 for (i = 0 ; i < no_of_bytes ; i++) {
  decoded_value = (decoded_value << 8) + (uint32_t)pbuffer[i];
 }

 return decoded_value;
}


void VL53L1_encode_unsigned_integer(
 uint32_t ip_value,
 uint8_t no_of_bytes,
 uint8_t *pbuffer)
{




 uint8_t i = 0;
 uint32_t data = 0;

 data = ip_value;
 for (i = 0; i < no_of_bytes ; i++) {
  pbuffer[no_of_bytes-i-1] = data & 0x00FF;
  data = data >> 8;
 }
}


void VL53L1_spad_number_to_byte_bit_index(
 uint8_t spad_number,
 uint8_t *pbyte_index,
 uint8_t *pbit_index,
 uint8_t *pbit_mask)
{
# 1445 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
    *pbyte_index = spad_number >> 3;
    *pbit_index = spad_number & 0x07;
    *pbit_mask = 0x01 << *pbit_index;

}


void VL53L1_encode_row_col(
 uint8_t row,
 uint8_t col,
 uint8_t *pspad_number)
{




 if (row > 7) {
  *pspad_number = 128 + (col << 3) + (15-row);
 } else {
  *pspad_number = ((15-col) << 3) + row;
 }
}


void VL53L1_decode_zone_size(
 uint8_t encoded_xy_size,
 uint8_t *pwidth,
 uint8_t *pheight)
{
# 1484 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 *pheight = encoded_xy_size >> 4;
 *pwidth = encoded_xy_size & 0x0F;

}


void VL53L1_encode_zone_size(
 uint8_t width,
 uint8_t height,
 uint8_t *pencoded_xy_size)
{
# 1504 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 *pencoded_xy_size = (height << 4) + width;

}


void VL53L1_decode_zone_limits(
 uint8_t encoded_xy_centre,
 uint8_t encoded_xy_size,
 int16_t *px_ll,
 int16_t *py_ll,
 int16_t *px_ur,
 int16_t *py_ur)
{
# 1525 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 uint8_t x_centre = 0;
 uint8_t y_centre = 0;
 uint8_t width = 0;
 uint8_t height = 0;



 VL53L1_decode_row_col(
  encoded_xy_centre,
  &y_centre,
  &x_centre);

 VL53L1_decode_zone_size(
  encoded_xy_size,
  &width,
  &height);



 *px_ll = (int16_t)x_centre - ((int16_t)width + 1) / 2;
 if (*px_ll < 0)
  *px_ll = 0;

 *px_ur = *px_ll + (int16_t)width;
 if (*px_ur > (16 -1))
  *px_ur = 16 -1;

 *py_ll = (int16_t)y_centre - ((int16_t)height + 1) / 2;
 if (*py_ll < 0)
  *py_ll = 0;

 *py_ur = *py_ll + (int16_t)height;
 if (*py_ur > (16 -1))
  *py_ur = 16 -1;
}


uint8_t VL53L1_is_aperture_location(
 uint8_t row,
 uint8_t col)
{




 uint8_t is_aperture = 0;
 uint8_t mod_row = row % 4;
 uint8_t mod_col = col % 4;

 if (mod_row == 0 && mod_col == 2)
  is_aperture = 1;

 if (mod_row == 2 && mod_col == 0)
  is_aperture = 1;

 return is_aperture;
}


void VL53L1_calc_mm_effective_spads(
 uint8_t encoded_mm_roi_centre,
 uint8_t encoded_mm_roi_size,
 uint8_t encoded_zone_centre,
 uint8_t encoded_zone_size,
 uint8_t *pgood_spads,
 uint16_t aperture_attenuation,
 uint16_t *pmm_inner_effective_spads,
 uint16_t *pmm_outer_effective_spads)
{






 int16_t x = 0;
 int16_t y = 0;

 int16_t mm_x_ll = 0;
 int16_t mm_y_ll = 0;
 int16_t mm_x_ur = 0;
 int16_t mm_y_ur = 0;

 int16_t zone_x_ll = 0;
 int16_t zone_y_ll = 0;
 int16_t zone_x_ur = 0;
 int16_t zone_y_ur = 0;

 uint8_t spad_number = 0;
 uint8_t byte_index = 0;
 uint8_t bit_index = 0;
 uint8_t bit_mask = 0;

 uint8_t is_aperture = 0;
 uint16_t spad_attenuation = 0;



 VL53L1_decode_zone_limits(
  encoded_mm_roi_centre,
  encoded_mm_roi_size,
  &mm_x_ll,
  &mm_y_ll,
  &mm_x_ur,
  &mm_y_ur);

 VL53L1_decode_zone_limits(
  encoded_zone_centre,
  encoded_zone_size,
  &zone_x_ll,
  &zone_y_ll,
  &zone_x_ur,
  &zone_y_ur);
# 1646 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 *pmm_inner_effective_spads = 0;
 *pmm_outer_effective_spads = 0;

 for (y = zone_y_ll ; y <= zone_y_ur ; y++) {
  for (x = zone_x_ll ; x <= zone_x_ur ; x++) {



   VL53L1_encode_row_col(
    (uint8_t)y,
    (uint8_t)x,
    &spad_number);







   VL53L1_spad_number_to_byte_bit_index(
    spad_number,
    &byte_index,
    &bit_index,
    &bit_mask);



   if ((pgood_spads[byte_index] & bit_mask) > 0) {


    is_aperture = VL53L1_is_aperture_location(
     (uint8_t)y,
     (uint8_t)x);

    if (is_aperture > 0)
     spad_attenuation = aperture_attenuation;
    else
     spad_attenuation = 0x0100;






    if (x >= mm_x_ll && x <= mm_x_ur &&
     y >= mm_y_ll && y <= mm_y_ur)
     *pmm_inner_effective_spads +=
      spad_attenuation;
    else
     *pmm_outer_effective_spads +=
      spad_attenuation;
   }
  }
 }
}






uint8_t VL53L1_encode_GPIO_interrupt_config(
 VL53L1_GPIO_interrupt_config_t *pintconf)
{
 uint8_t system__interrupt_config;

 system__interrupt_config = pintconf->intr_mode_distance;
 system__interrupt_config |= ((pintconf->intr_mode_rate) << 2);
 system__interrupt_config |= ((pintconf->intr_new_measure_ready) << 5);
 system__interrupt_config |= ((pintconf->intr_no_target) << 6);
 system__interrupt_config |= ((pintconf->intr_combined_mode) << 7);

 return system__interrupt_config;
}





VL53L1_GPIO_interrupt_config_t VL53L1_decode_GPIO_interrupt_config(
 uint8_t system__interrupt_config)
{
 VL53L1_GPIO_interrupt_config_t intconf;

 intconf.intr_mode_distance = system__interrupt_config & 0x03;
 intconf.intr_mode_rate = (system__interrupt_config >> 2) & 0x03;
 intconf.intr_new_measure_ready = (system__interrupt_config >> 5) & 0x01;
 intconf.intr_no_target = (system__interrupt_config >> 6) & 0x01;
 intconf.intr_combined_mode = (system__interrupt_config >> 7) & 0x01;


 intconf.threshold_rate_low = 0;
 intconf.threshold_rate_high = 0;
 intconf.threshold_distance_low = 0;
 intconf.threshold_distance_high = 0;

 return intconf;
}





VL53L1_Error VL53L1_set_GPIO_distance_threshold(
 VL53L1_DEV Dev,
 uint16_t threshold_high,
 uint16_t threshold_low)
{
 VL53L1_Error status = ((VL53L1_Error) 0);

 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 ;

 pdev->dyn_cfg.system__thresh_high = threshold_high;
 pdev->dyn_cfg.system__thresh_low = threshold_low;

 ;
 return status;
}





VL53L1_Error VL53L1_set_GPIO_rate_threshold(
 VL53L1_DEV Dev,
 uint16_t threshold_high,
 uint16_t threshold_low)
{
 VL53L1_Error status = ((VL53L1_Error) 0);

 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 ;

 pdev->gen_cfg.system__thresh_rate_high = threshold_high;
 pdev->gen_cfg.system__thresh_rate_low = threshold_low;

 ;
 return status;
}





VL53L1_Error VL53L1_set_GPIO_thresholds_from_struct(
 VL53L1_DEV Dev,
 VL53L1_GPIO_interrupt_config_t *pintconf)
{
 VL53L1_Error status = ((VL53L1_Error) 0);

 ;

 status = VL53L1_set_GPIO_distance_threshold(
   Dev,
   pintconf->threshold_distance_high,
   pintconf->threshold_distance_low);

 if (status == ((VL53L1_Error) 0)) {
  status =
   VL53L1_set_GPIO_rate_threshold(
    Dev,
    pintconf->threshold_rate_high,
    pintconf->threshold_rate_low);
 }

 ;
 return status;
}



VL53L1_Error VL53L1_set_ref_spad_char_config(
 VL53L1_DEV Dev,
 uint8_t vcsel_period_a,
 uint32_t phasecal_timeout_us,
 uint16_t total_rate_target_mcps,
 uint16_t max_count_rate_rtn_limit_mcps,
 uint16_t min_count_rate_rtn_limit_mcps,
 uint16_t fast_osc_frequency)
{





 VL53L1_Error status = ((VL53L1_Error) 0);
 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 uint8_t buffer[2];

 uint32_t macro_period_us = 0;
 uint32_t timeout_mclks = 0;

 ;




 macro_period_us =
  VL53L1_calc_macro_period_us(
   fast_osc_frequency,
   vcsel_period_a);





 timeout_mclks = phasecal_timeout_us << 12;
 timeout_mclks = timeout_mclks + (macro_period_us>>1);
 timeout_mclks = timeout_mclks / macro_period_us;

 if (timeout_mclks > 0xFF)
  pdev->gen_cfg.phasecal_config__timeout_macrop = 0xFF;
 else
  pdev->gen_cfg.phasecal_config__timeout_macrop =
    (uint8_t)timeout_mclks;

 pdev->tim_cfg.range_config__vcsel_period_a = vcsel_period_a;





 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrByte(
    Dev,
    0x004B,
    pdev->gen_cfg.phasecal_config__timeout_macrop);

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrByte(
    Dev,
    0x0060,
    pdev->tim_cfg.range_config__vcsel_period_a);






 buffer[0] = pdev->tim_cfg.range_config__vcsel_period_a;
 buffer[1] = pdev->tim_cfg.range_config__vcsel_period_a;

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WriteMulti(
    Dev,
    0x0078,
    buffer,
    2);





 pdev->customer.ref_spad_char__total_rate_target_mcps =
   total_rate_target_mcps;

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrWord(
    Dev,
    0x001C,
    total_rate_target_mcps);

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrWord(
    Dev,
    0x0064,
    max_count_rate_rtn_limit_mcps);

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrWord(
    Dev,
    0x0066,
    min_count_rate_rtn_limit_mcps);

 ;

 return status;
}


VL53L1_Error VL53L1_set_ssc_config(
 VL53L1_DEV Dev,
 VL53L1_ssc_config_t *pssc_cfg,
 uint16_t fast_osc_frequency)
{
# 1949 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
 VL53L1_Error status = ((VL53L1_Error) 0);
 uint8_t buffer[5];

 uint32_t macro_period_us = 0;
 uint16_t timeout_encoded = 0;

 ;




 macro_period_us =
  VL53L1_calc_macro_period_us(
   fast_osc_frequency,
   pssc_cfg->vcsel_period);




 timeout_encoded =
  VL53L1_calc_encoded_timeout(
   pssc_cfg->timeout_us,
   macro_period_us);



 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrByte(
    Dev,
    0x0047,
    pssc_cfg->vcsel_start);

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrByte(
    Dev,
    0x004A,
    pssc_cfg->vcsel_width);



    buffer[0] = (uint8_t)((timeout_encoded & 0x0000FF00) >> 8);
    buffer[1] = (uint8_t) (timeout_encoded & 0x000000FF);
    buffer[2] = pssc_cfg->vcsel_period;
    buffer[3] = (uint8_t)((pssc_cfg->rate_limit_mcps & 0x0000FF00) >> 8);
    buffer[4] = (uint8_t) (pssc_cfg->rate_limit_mcps & 0x000000FF);

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WriteMulti(
    Dev,
    0x0061,
    buffer,
    5);






    buffer[0] = pssc_cfg->vcsel_period;
    buffer[1] = pssc_cfg->vcsel_period;

 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WriteMulti(
    Dev,
    0x0078,
    buffer,
    2);





 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_WrByte(
    Dev,
    0x0029,
    pssc_cfg->array_select);

 ;

 return status;
}




VL53L1_Error VL53L1_get_spad_rate_data(
 VL53L1_DEV Dev,
 VL53L1_spad_rate_data_t *pspad_rates)
{





 VL53L1_Error status = ((VL53L1_Error) 0);
    int i = 0;

    uint8_t data[512];
    uint8_t *pdata = &data[0];

 ;



 if (status == ((VL53L1_Error) 0))
  status = VL53L1_disable_firmware(Dev);






 if (status == ((VL53L1_Error) 0))
  status =
   VL53L1_ReadMulti(
    Dev,
    0x0E00,
    pdata,
    512);


    pdata = &data[0];
    for (i = 0 ; i < 256 ; i++) {
  pspad_rates->rate_data[i] =
   (uint16_t)VL53L1_decode_unsigned_integer(pdata, 2);
  pdata += 2;
    }



    pspad_rates->buffer_size = 256;
    pspad_rates->no_of_values = 256;
    pspad_rates->fractional_bits = 15;



 if (status == ((VL53L1_Error) 0))
  status = VL53L1_enable_firmware(Dev);

 ;

 return status;
}




VL53L1_Error VL53L1_low_power_auto_data_init(
 VL53L1_DEV Dev
 )
{






 VL53L1_Error status = ((VL53L1_Error) 0);

 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 ;

 pdev->low_power_auto_data.vhv_loop_bound =
  ((uint8_t) 3);
 pdev->low_power_auto_data.is_low_power_auto_mode = 0;
 pdev->low_power_auto_data.low_power_auto_range_count = 0;
 pdev->low_power_auto_data.saved_interrupt_config = 0;
 pdev->low_power_auto_data.saved_vhv_init = 0;
 pdev->low_power_auto_data.saved_vhv_timeout = 0;
 pdev->low_power_auto_data.first_run_phasecal_result = 0;
 pdev->low_power_auto_data.dss__total_rate_per_spad_mcps = 0;
 pdev->low_power_auto_data.dss__required_spads = 0;

 ;

 return status;
}

VL53L1_Error VL53L1_low_power_auto_data_stop_range(
 VL53L1_DEV Dev
 )
{






 VL53L1_Error status = ((VL53L1_Error) 0);

 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);

 ;




 pdev->low_power_auto_data.low_power_auto_range_count = 0xFF;

 pdev->low_power_auto_data.first_run_phasecal_result = 0;
 pdev->low_power_auto_data.dss__total_rate_per_spad_mcps = 0;
 pdev->low_power_auto_data.dss__required_spads = 0;


 if (pdev->low_power_auto_data.saved_vhv_init != 0)
  pdev->stat_nvm.vhv_config__init =
   pdev->low_power_auto_data.saved_vhv_init;
 if (pdev->low_power_auto_data.saved_vhv_timeout != 0)
  pdev->stat_nvm.vhv_config__timeout_macrop_loop_bound =
   pdev->low_power_auto_data.saved_vhv_timeout;


 pdev->gen_cfg.phasecal_config__override = 0x00;

 ;

 return status;
}

VL53L1_Error VL53L1_config_low_power_auto_mode(
 VL53L1_general_config_t *pgeneral,
 VL53L1_dynamic_config_t *pdynamic,
 VL53L1_low_power_auto_data_t *plpadata
 )
{






 VL53L1_Error status = ((VL53L1_Error) 0);

 ;


 plpadata->is_low_power_auto_mode = 1;


 plpadata->low_power_auto_range_count = 0;


 pdynamic->system__sequence_config =
   0x01 |
   0x02 |
   0x08 |



   0x80;


 pgeneral->dss_config__manual_effective_spads_select = 200 << 8;
 pgeneral->dss_config__roi_mode_control =
  ((VL53L1_DeviceDssMode) 2);

 ;

 return status;
}

VL53L1_Error VL53L1_low_power_auto_setup_manual_calibration(
 VL53L1_DEV Dev)
{






 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);


 VL53L1_Error status = ((VL53L1_Error) 0);

 ;


 pdev->low_power_auto_data.saved_vhv_init =
  pdev->stat_nvm.vhv_config__init;
 pdev->low_power_auto_data.saved_vhv_timeout =
  pdev->stat_nvm.vhv_config__timeout_macrop_loop_bound;


 pdev->stat_nvm.vhv_config__init &= 0x7F;

 pdev->stat_nvm.vhv_config__timeout_macrop_loop_bound =
  (pdev->stat_nvm.vhv_config__timeout_macrop_loop_bound & 0x03) +
  (pdev->low_power_auto_data.vhv_loop_bound << 2);

 pdev->gen_cfg.phasecal_config__override = 0x01;
 pdev->low_power_auto_data.first_run_phasecal_result =
  pdev->dbg_results.phasecal_result__vcsel_start;
 pdev->gen_cfg.cal_config__vcsel_start =
  pdev->low_power_auto_data.first_run_phasecal_result;

 ;

 return status;
}

VL53L1_Error VL53L1_low_power_auto_update_DSS(
 VL53L1_DEV Dev)
{





 VL53L1_LLDriverData_t *pdev = (&Dev->Data.LLData);


 VL53L1_Error status = ((VL53L1_Error) 0);

 uint32_t utemp32a;

 ;




 utemp32a = pdev->sys_results.result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0 +
  pdev->sys_results.result__ambient_count_rate_mcps_sd0;


 if (utemp32a > 0xFFFF)
  utemp32a = 0xFFFF;



 utemp32a = utemp32a << 16;


 if (pdev->sys_results.result__dss_actual_effective_spads_sd0 == 0)
  status = ((VL53L1_Error) - 15);
 else {

  utemp32a = utemp32a /
   pdev->sys_results.result__dss_actual_effective_spads_sd0;

  pdev->low_power_auto_data.dss__total_rate_per_spad_mcps =
   utemp32a;



  utemp32a = (uint32_t)pdev->stat_cfg.dss_config__target_total_rate_mcps <<
   16;


  if (pdev->low_power_auto_data.dss__total_rate_per_spad_mcps == 0)
   status = ((VL53L1_Error) - 15);
  else {


   utemp32a = utemp32a /
    pdev->low_power_auto_data.dss__total_rate_per_spad_mcps;


   if (utemp32a > 0xFFFF)
    utemp32a = 0xFFFF;


   pdev->low_power_auto_data.dss__required_spads =
    (uint16_t)utemp32a;


   pdev->gen_cfg.dss_config__manual_effective_spads_select =
    pdev->low_power_auto_data.dss__required_spads;
   pdev->gen_cfg.dss_config__roi_mode_control =
    ((VL53L1_DeviceDssMode) 2);
  }

 }

 if (status == ((VL53L1_Error) - 15)) {




  pdev->low_power_auto_data.dss__required_spads = 0x8000;


  pdev->gen_cfg.dss_config__manual_effective_spads_select =
  pdev->low_power_auto_data.dss__required_spads;
  pdev->gen_cfg.dss_config__roi_mode_control =
  ((VL53L1_DeviceDssMode) 2);


  status = ((VL53L1_Error) 0);
 }

 ;

 return status;
}
