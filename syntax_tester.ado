*! version 1.12.0 January 8, 2012 @ 13:41:14
*! doesnt do anything but work for syntax testing
program def syntax_tester, eclass
   "does it understand strings?"
   `"does it understand "nested" strings?"'
   here is a `macro' that could be used 
   if this=="that" { 
      display foo
      }
   /* what about comments? */
   prog d fummel
   end
   program list foo
   program define bleen
   end
   pr droop foo
   end
   program bleen
   end
   pro dir
   program dir
   
   * a starting line comment
   14 * foobar // a non-comment
   
version 1.0
version 2            
version 2.0
version 2b0
version 2.1
version 2b1 
version 3.0
version 3.1
version 3.2
version 4
version 4.0
version 4.1
version 5
version 5.0
version 6
version 6.0
version 7
version 7.0
version 8
version 8.1
version 8.2
version 8.3
version 9
version 9.1
version 9.2
version 9.3
version 9.5
version 10
version 10.1
version 10.2
version 11
version 11.1
version 11.2
version 11.3
version 12
version 12.1
   
   /* this program does nothing - it merely has some things for testing syntax coloring */
   /* working with the syntax table */
   local dingle = this - that

   /* stuff from incremental updates which need to be moved when new manuals come out */
   include
   
   /* functions in the order of the manuals (for checking for obsolete functions... */
   /* some arbitrary usages */
   _b[foobar]
   _coef[bleen]
   _se[freeble]
   /* first... the general reference manuals */
   about
   adjust // obsolete in Stata 11
   adoupdate
   alpha
   ameans
   an ano anov anova
   // anova estat skipped because it matches regress
   areg
   asclogit
   asmprobit
   asroprobit
   binreg
   biprobit
   bitest bitesti
   bootstrap
   boxcox
   brier
   bsample
   bstat
   centile
   ci cii
   clog clogi clogit
   cloglog
   cnr cnre cnreg // obsolete as of Stata 11
   cnsreg
   /* constraint commands */
   /* first w/o anything */
   cons
   constra
   constraint
   cons def
   const defin 
   constr d
   constr dir
   constra drop
   cons l
   constrai list
   constrain get
   constraint free
   /* bad constraints -- should not highlight, except as mata reserves */
   /* oops... need to fix for the const abbreviations....*/
   const ge
   const fre
   /* end constraint */
   contrast
   copyright
   cor corr corre correl correla correlat correlate
   pwcorr
   cumul
   cusum
   db
   /* diagnostic plots */
   symplot
   quantile
   qqplot
   qnorm
   pnorm
   pchi
   qchi
   /* end... */
   di dis disp displ displa display
   do
   ru
   run
   doed doedi doedit
   dotplot
   dstdize  istdize
   dydx
   integ
   
   eivreg

   // common estat
   estat ic
   estat su
   estat summarize
   estat vce
   
   /* estimates */
   estimates `foo'
   est save
   est use
   est des
   est describe
   estim esample

   est sto
   esti store
   estimat res
   estimate restore
   estimates q
   estimates query
   estimates d /* no longer an acceptable abbrev in Stata 10 */
   estimates dir
   estimates drop
   estimates clear

   estima title
   estimates title:
   estimate note
   est notes
   esti note:
   esti notes:
   esti note l
   estimates notes list
   estimat notes drop

   estimates r
   estimates replay

   estimates t /* no longer good in Stata 10 */
   estimates tab
   estimates table
   estimates f // no longer good in Stata 11
   estimates for
   estimates st /* no longer good in Stata 10 */
   estima stat
   estimates stats
   estim ch // estimates change is not in Stata 11
   estima change
   /* end estimates */
   e // dumb abbreviation
   ex
   exi
   exit
   exlogistic
   expoisson
   
   fracpoly fracgen
   // fracpoly postestimation
   fracplot fracpred
   frontier
   fvrevar
   fvset b
   fvset base
   fvset d
   fvset design
   fvset report
   fvset clear
   
   gllamm
   glm
   blogit
   bprobit
   glogit
   gprobit
   gmm
   grmeanby

   hausman
   heckman
   heckprob
   h he hel help
   ch che chel chelp
   whelp
   hetprob
   hist histo histog histogr histogra histogram
   hsearch
   
   intreg
   ivprobit
   ivreg /* obsolete in Stata 10 */
   ivregress
   ivtobit

   jackknife

   kap
   kapwgt
   kappa
   kdensity
   ksmirnov
   kwallis

   ladder
   gladder
   qladder
   set l
   set level
   lfit // command is obsolete
   score // command is obsolete
   lincom
   linktest
   lnskew0
   bcskew0
   /* lookup is obsolete; test for conflict from log */
   lo
   loo
   lookup
   log
   log query
   log c
   log close
   log of
   log off
   cmdlog
   cmdlog c
   cmdlog close
   cmdlog of
   cmdlog off
   cmdlog on
   // undocumented
   cmdlog query
   
   set logtype t
   set logtype text
   set logtype s
   set logtype smcl
   set li
   set linesize
   logistic
   logi
   logit
   loneway
   lowess
   lpoly
   lrtest
   lv

   margins
   marginsplot
   set mat
   set matsize
   set maxiter
   mean
   // mfp is simple now; in Stata 11 it became a prefix command
   mfp
   // the old mfp non-prefix commands are not needed
   mfp logit
   mfp clogit
   mfp clogit() // absurd but should unhighlight clogit()
   
   // mfx is obsolete as of Stata 11
   mfx
   mfx c
   mfx compute
   mfx r
   mfx replay
   /* misstable */
   misstable sum
   misstable summarize
   misstable pat
   misstable patterns
   misstable tree
   misstable nest
   misstable nested
   mkspline
   /* ml commands */
   ml mod
   ml model
   ml clear
   ml cle // should not highlight
   ml q
   ml query
   ml check
   ml sea
   ml search
   ml pl
   ml plot
   ml init
   ml rep
   ml report
   ml trace
   ml count
   ml max
   ml maximize
   ml gr
   ml graph
   ml di
   ml display
   ml foot
   ml footnote
   ml score
   /* obsolete ml */
   ml b
   ml begin
   ml dep
   ml depname
   ml f
   ml function
   ml ml
   ml mlout
   * etc
   /* end ml */
   mlog mlogi mlogit
   set mo // should be off
   set mo on
   set more off
   set p // should be off
   set pa
   set pagesize
   mprobit
   mvreg
   
   nbreg
   gnbreg
   nestreg
   /* net commands */
   net from
   net cd
   net link
   net search
   net
   net d
   net describe
   net set ado
   net set other
   net q
   net query
   net ins
   net install
   net get
   net sj
   net stb
   ado
   ado dir
   ado d
   ado describe
   ado uninstall
   /* end net */
   net search
   /* netio, which is also in set */
   se httpproxy on
   set httpproxy off
   set httpproxyhost
   se httpproxyport
   set httpproxyauth on
   set httpproxyauth off
   set httpproxypw
   set timeout1
   set timeout2
   news
   nl
   nlinit
   nlcom
   nlogit
   nlogitgen
   nlogittree
   nlsur
   nptrend
   
   olog
   ologi
   ologit 

   on
   one
   onew
   onewa
   oneway

   oprob
   oprobi
   oprobit

   orthog
   orthpoly

   pcorr
   permute
   pkexamine
   pksumm
   pkshape
   pkcross
   pkequiv
   pkcollapse
   poisson
   poisgof
   predict
   predictnl
   prob
   probi
   probit
   dprobit // obsolete in Stata 11
   proportion
   prtest
   prtesti

   // pw commands
   pwcompare
   pwmean
   
   /* qc commands */
   cchart
   pchart
   rchart
   xchart
   shewhart
   /* end qc */
   // qreg commands
   qreg
   iqreg
   sqreg
   bsqreg
   _qreg
   // end qreg
   q
   query
   q mem
   qu memory
   que out
   quer output
   query inter
   query interface
   query graph
   query graphics
   query eff
   query efficiency
   quer net
   que network
   query up
   query update
   qu trace
   q mata
   q oth
   q other
   query `foo'

   ranksum
   median
   ratio
   reg3
   // highlights all -regress-es again?
   regress : regress : regress
   regress a b, vce(robust) 

   reg
   regr
   regre
   regres
   regress   

   #r #re #rev #revi #revie #review
   /* don't seem to be in manuals anymore */
   _rmcoll _huber
   roccomp
   rocgold
   rocfit
   // rocfit post-est
   rocplot
   rocreg
   rocregplot
   roctab
   
   rologit
   rreg
   runtest
   
   sampsi
   
   /* these should be in the programming section... */
   ret li
   retu list
   return `foo'
   eret li
   eretur list
   sret li
   sreturn list
   scobit
   sdtest
   sdtesti
   robvar
   search
   set searchdefault local /* rest under set */
   set searchdefault net
   set searchdefault all
   findit
   
   serrbar
   /* set commands */
   set a
   set adosize
   set autotabgraphs // win only
   set cformat // added in Stata 11.1
   set checksum on
   set checksum off
   set conren // unix only
   set conren clear
   set conren sf
   set conren bf
   set conren it
   set conren res
   set conren result
   set conren txt
   set conren text
   set conren inp
   set conren input
   set conren err
   set conren error
   set conren li
   set conren link
   set conren hi
   set conren hilite
   set conren ulon
   set conren ulof
   set conren uloff
   set conren reset 
   set copycolor auto
   set copycolor automatic
   set copycolor asis
   set copycolor gs1
   set copycolor gs2
   set copycolor gs3
   set dockable on
   set dockable off
   set dockingg on
   set dockingguides off
   set doublebuffer on
   set doublebuffer off
   set `foo'
   set dp com
   set dp comma
   set dp per
   set dp period
   set emptycells keep
   set emptycells drop
   set eolch mac
   set eolchar unix
   set fastscroll on
   set fastscroll off
   set floatresults on
   set floatresults off
   set floatwindows on
   set floatwindows off
   set g on
   set graphics off
   set httpproxy on
   set httpproxy off
   set httpproxya on
   set httpproxyauth off
   set httpproxyhost
   set httpproxyport
   set httpproxypw
   set httpproxyuser
   set icmap on // obsolete in Stata 10
   set icmap off // obsolete in Stata 10
   set include_bitmap on
   set include_bitmap off
   set l
   set level
   set lineg
   set linegap
   set li
   set linesize
   set locksplit on
   set locksplitters off
   set logt t
   set logtype text
   set logty s
   set logtype smcl
   set macgph quartz // obsolete in Stata 11
   set macgphengine quickdraw // obsolete in Stata 11
   set mat
   set matsize
   set max_memory
   set maxdb
   set maxiter
   set maxvar
   set mem
   set memory
   set min_memory
   set mo on
   set more off
   set niceness
   set notifyuser
   set ob
   set obs
   set odbcmg iodbc
   set odbcmgr unixodbc
   set ou proc
   set output p
   set outpu i
   set output inform
   set outp e
   set output error
   set pa
   set pagesize
   set persistfv on 
   set persistvtopic off 
   set pformat // added in Stata 11.1
   set piccom on // obsolete in Stata 11
   set piccomments off // obsolete in Stata 11
   set pinnable on
   set pinnable off
   set playsnd on
   set playsnd off
   set printcolor auto
   set printcolor automatic
   set printcolor asis
   set printcolor grayscale /* obsolete in Stata 9 */
   set printcolor gs1
   set printcolor gs2
   set printcolor gs3
   set processors
   set reventr
   set reventries
   set revkeyboard on
   set revkeyboard off
   set revwin nofloat // appears obsolete in Stata 11
   set revwindow float // appears obsolete in Stata 11
   set r on
   set rmsg off
   set scheme
   set scrollbufsize
   set searchd local
   set searchdefault net
   set searchdefault all
   set se
   set seed
   set segmentsize
   set sformat // added in Stata 11.1 
   set showbaselevels on
   set showbaselevels off
   set showbaselevels all
   set smalldlg on                      /* obsolete in Stata 10 */
   set showemptycells keep
   set showemptycells drop
   set showomitted on
   set showomitted off
   set smoothf on
   set smoothfonts off
   set smoothsize 12 // looks to be obsolete in Stata 12
   set timeout1
   set timeout2
set tr on
set trace off
   set traced
   set tracedepth
   set tracee on
   set traceexpand off
   set traceh
   set tracehilite
   set tracei off
   set traceindent on
   set tracen on
   set tracenumber off
   set traces off
   set tracesep on
   /* inconsistancy fixed in 0.99: needs float or double */
   set ty float
   set typ double
   set type // cannot prevent total lack of highlight 
   set update_interval
   set update_prompt on
   set update_prompt off
   set update_query on
   set update_query off
   set use_atsui_graph off // obsolete in Stata 11
   set use_qd_text on // obsolete in Stata 11
   set varabbrev on
   set varabbrev off
   set varkeyboard on
   set varkeyboard off
   set varlabelpos
   set varwin float // appears obsolete in Stata 11
   set varwindow nofloat // appears obsolete in Stata 11
   set virt on // obsolete in Stata 12
   set virtual off // obsolete in Stata 12
   /* undocumented starting in Stata 10, but still legal */
   set xptheme on
   // documented in -set- also, hence the duplication
   set cformat
   set pformat
   set sformat
   set_defaults
   /* end set commands */

   signrank
   signtest
   simulate
   sktest
   slogit
   smooth
   spearman
   ktau
   spikeplot
   ssc new
   ssc what // obsolete in Stata 11
   ssc whatsnew // obsolete in Stata 11
   ssc hot
   ssc d
   ssc `foo'
   ssc describe
   ssc inst
   ssc install
   ssc uninstall
   ssc type
   ssc copy
   stem
   /* stepwise or sw now has a syntax bad for highlighting */
   stepwise
   suest
   sw // should be neutral
   /* sw commands no longer exist, due to syntax changes */
   sw clogit
   sw cloglog
   sw `foo'
   sw clogit
   sw cloglog
   sw cnreg
   sw glm
   sw logistic
   sw logit
   sw nbreg
   sw ologit
   sw oprobit
   sw poisson
   sw probit
   sw qreg
   sw reg
   sw regr
   sw regre
   sw regres
   sw regress
   sw stcox
   sw streg
   sw tobit
   sw weibull
   sw gompertz                          /* out of date */
   /* end sw commands */
   suest 
   su sum summ summa summar summari summariz summarize
   sunflower
   sureg
   swilk
   sfrancia
   symmetry
   symmi

   table
   tabstat
   ta tab tabu tabul tabula tabulat tabulate
   tab1
   tab2
   tabi
   te tes test
   testparm
   testnl
   tetrachoric
   tnbreg // new in Stata 11.1
   tob tobi tobit
   total
   tpoisson // new in Stata 11.1
   print
   translate
   translator q
   translator query
   translator set
   translator reset
   translator `foo'
   transmap q
   transmap query
   transmap def
   transmap define
   transmap `foo'
   treatreg
   truncreg
   ttest
   ttesti

   update
   update from
   update q
   update query
   update ado // obsolete as of Stata 12
   update executable // obsolete as of Stata 12
   update utilities // obsolete as of Stata 12
   update swap // obsolete as of Stata 12
   update all
   update `foo'
   set update_query on
   set update_interval
   set update_prompt off
   
   view
   view file
   view browse
   view help
   view search
   view `foo'
   view news
   view net
   view ado
   view update
   view view_d
   view help_d
   view search_d
   view net_d
   view ado_d
   view update_d
   vwls
   
   which

   xi

   zinb
   zip
   ztnb // obsolete in Stata 12
   ztb  // obsolete in at least Stata 9---was this ever a Stata command?

   /* endless postestimation */
   // estat (from [R])
   // (some) obsolete versions included for testing
   estat alt
   estat alternatives  // asclogit ascprobit asroprobit nlogit
   archlm
   estat archlm // regress/ts
   estat bgo
   bgodfrey
   estat bgodfrey // regress/ts
   estat bootstrap // bootstrap
   estat clas // ivprobit
   estat classification // ivprobit logistic logit probit
   estat cor
   estat correlation // ascprobit asroprobit
   estat cov
   estat covariance // ascprobit asroprobit
   estat cv // added in Stata 11.1
   durbina
   estat dur
   estat durbinalt // regress/ts
   dwstat
   estat dwa
   estat dwatson // regress/ts
   estat endog
   estat endogenous // ivregress
   estat facw
   estat facweights // ascprobit asroprobit
   estat first
   estat firststage // ivregress
   estat gof // logistic logit poisson probit
   hettest
   estat hett
   estat hettest // anova regress
   imtest 
   estat imtest // anova regress
   estat mfx // asclogit ascprobit asroprobit
   estat nproc // rocreg
   estat over
   estat overid // gmm ivregress
   ovtest
   estat ovtest // anova regress
   estat predict // exlogistic
   estat se  // exlogistic expoisson
   szroeter
   estat szroeter // anova regress
   estat summarize
   vif
   estat vif // anova regress
   // regress postestimation
   adjust
   dfbeta
   acprplot
   avplot
   avplots
   cprplot
   lvr2plot
   rvfplot
   rvpplot
   
   /* types of commands, which have their own highlighting */
   estat 
   estimates
   /* end subcommand using postestimation */
   
   /* from [D] data management manual */
   ap app appe appen append
   append using
   as ass asse asser assert
   // all new in Stata 12
   bcal c
   bcal ch
   bcal check
   bcal dir
   bcal d
   bcal describe
   bcal load
   
   by
   bys byso bysor bysort
   cd
   pwd
   cf
   changeeol
   checksum
   se checksum on
   set checksum off
   clear
   clear mata
   clear results
   clear matrix
   clear programs
   clear ado
   clear all
   clear * /* cannot fix easily, because of special meaning of * in regexps */
   clonevar
   codebook
   collapse
   compare
   compress
   contract
   copy
   corr2data
   cou coun count
   cross using
   byte int long float double
   str str1 str80 str99 str100 str158 str235 str244 str245 str266
   datasig
   datasignature
   datasig set
   datasignature conf
   datasig confirm
   datasig rep
   datasignature report
   datasig conf using
   datasig repo using
   datasignature clear
   /* should there be date format highlighting? */
   /* date-time functions are in the functions */

   d de des desc descr descri describ describe
   destring
   tostring
   dir
   ls
   drawnorm
   drop keep
   ds
   /* duplicates */
   duplicates r
   duplicates report
   duplicates e
   duplicates examples
   duplicates l
   duplicates list
   duplicates b
   duplicates browse
   duplicates t
   duplicates tag
   duplicates drop
   /* end dup */
   ed edi edit
   b br bro brow brows browse
   /* endless egen & options */
   egen
   egen = any() // really was renamed in Stata 9 to anyvalue()
                //  highlights because of mata any() function
   egen breeble = anycount()
   egen = anymatch()
   egen = anyvalue()
   egen = concat() 
   egen = count()
   egen foo = cut(fie)
   egen = diff()
   /* eqany is now anymatch */
   egen = eqany()
   egen = ends()
   egen = fill()
   egen = group()
   egen = iqr()
   egen = kurt()
   /* ma still works, though undocumented through what could be a mistake*/
   egen = ma() /* seems to be obsolete in Stata 10 */
   egen = mad()
   egen = max()
   egen = mdev()
   egen = mean()
   egen = median()
   egen = min()
   egen = mode()
   egen = mtr()
   /* neqany mapped to anycount */
   egen = neqany()
   egen = pc()
   egen = pctile()
   egen = rank()
   /* all the rxxx have been renamed */
   egen = rfirst()
   egen = rlast()
   egen = rmax()
   egen = rmean()
   egen = rmin()
   egen = rmiss()
   egen = robs()
   egen = rsd()
   egen = rsum()
   /* end of obsolete names */
   egen = rowfirst()
   egen = rowlast()
   egen = rowmax()
   egen = rowmean()
   egen = rowmedian()
   egen = rowmin()
   egen = rowmiss()
   egen = rownonmiss()
   egen = rowpctile()
   egen = rowsd()
   egen = rowtotal()
   egen = sd()
   egen = seq()
   egen = skew()
   egen = std()
   egen = sum() // replaced with total
   egen = tag()
   egen = total()
   /* end egen */
   en enc enco encod encode
   dec deco decod decode
   erase rm
   expand
   expandcl
   // export commands
   export excel
   export sasxport
   // fda... commmands obsolete as of Stata 12
   fdasav fdasave
   fdause
   fdades fdadesc fdadescr fdadescri fdadescrib fdadescribe
   filef filefi filefil filefilt filefilte filefilter 
   fillin
   form forma format
   /* functions */
   /* math functions */
   abs()
   acos()
   acosh()
   asin()
   asinh()
   atan()
   atan2()
   atanh()
   ceil()
   cloglog()
   comb()
   cos()
   cosh()
   digamma()
   exp()
   floor()
   int()
   invcloglog()
   invlogit()
   ln()
   lnfact()  // obsolete
   lnfactorial()
   lngamma()
   log()
   log10()
   logit()
   max()
   min()
   mod()
   reldif()
   round()
   sign()
   sin()
   sinh()
   sqrt()
   sum()
   tan()
   tanh()
   trigamma()
   trunc()
   /* probability functions */
   /* beta density */
   ibeta()
   betaden()
   Binomial() /* finally changed to binomialtail in Stata 10 */
   ibetatail()
   invibeta()
   invibetatail()
   nibeta()
   nbetaden()
   invnibeta()
   binomial()
   binomialp()
   binomialtail()
   invbinomial()
   invbinomialtail()
   binorm()
   chi2()
   chi2tail()
   invchi2()
   invchi2tail()
   nchi2()
   invnchi2()
   npnchi2()
   dunnettprob()
   invdunnettprob()
   F()
   Fden()
   Ftail()
   invF()
   invFtail()
   nFden()
   nFtail()
   invnFtail()
   gammap()
   gammaden()
   gammaptail()
   invgammap()
   invgammaptail()
   dgammapda()
   dgammapdada()
   dgammapdadx()
   dgammapdx()
   dgammapdxdx()

   hypergeometric()
   hypergeometricp()

   nbinomial()
   nbinomialp()
   nbinomialtail()
   invnbinomial()
   invnbinomialtail()

   /* Normal and related */
   binormal()
   norm()  /* should be obsolete BUT mata function*/
   normal()
   normden()
   normalden()
   invnorm()
   invnormal()
   lnnormal()
   lnnormalden()
   /* Poisson */
   poisson()
   poissonp()
   poissontail()
   invpoisson()
   invpoissontail()
   /* random number functions */
   uniform()
	runiform()
   rbeta()
	rbinomial()
	rchi2()
	rgamma()
	rhypergeometric()
	rnbinomial()
	rnormal()
	rpoisson()
	rt()
   /* T */
   tden()
   ttail()
   invttail()
   /* Tukey */
   tukeyprob()
   invtukeyprob()
   /* string functions */ 
   abbrev()
   char()
   index()
   indexnot()
   itrim()
   length()
   lower()
   ltrim()
   match()
   plural()
   proper()
   real()
   regexm()
   regexr()
   regexs()
   reverse()
   rtrim()
   soundex()
   soundex_nara()
   string()
   strlen()
   strlower()
   strltrim()
   strmatch()
   strofreal()
   strpos()
   strproper()
   strreverse()
   strrtrim()
   strtoname()
   strtrim()
   strupper()
   subinstr()
   subinword()
   substr()
   trim()
   upper()
   word()
   wordcount()
   /* programming functions */
   autocode()
   byteorder()
   c()
   _caller()
   chop()
   clip()
   cond()
   e()
   epsdouble()
   epsfloat()
   float()
   fmtwidth()
   group()
   has_eprop()
   inlist()
   inrange()
   irecode()
   matrix()
   maxbyte()
   maxdouble()
   maxfloat()
   maxint()
   maxlong()
   mi()
   minbyte()
   mindouble()
   minfloat()
   minint()
   minlong()
   missing()
   r(this should not really highlight)
   recode()
   replay()
   return()
   s()
   scalar()
   smallestdouble()
   /* date functions */
   bofd()
   Cdhms()
   Chms()
   Clock()
   clock()
   Cmdyhms()
   Cofc()
   cofC()
   Cofd()
   cofd()
   date()
   day()
   dhms()
   dofb()
   dofC()
   dofc()
   dofh()
   dofm()
   dofq()
   dofw()
   dofy()
   dow()
   doy()
   halfyear()
   halfyearly()
   hh()
   hhC()
   hms()
   hofd()
   hours()
   mdy()
   mdyhms()
   minutes()
   mm()
   mmC()
   mofd()
   month()
   monthly()
   msofhours()
   msofminutes()
   msofseconds()
   qofd()
   quarter()
   quarterly()
   seconds()
   ss()
   ssC()
   tC()
   tc()
   td()
   th()
   tm()
   tq()
   tw()
   week()
   weekly()
   wofd()
   year()
   yearly()
   yh()
   ym()
   yofd()
   yq()
   yw()

   /* single-letter date fns---obsolete in Stata 10 */
   d()
   h()
   m()
   q()
   w()
   y()

   /* time series functions */
   tin()
   twithin()
   
   /* matrix to matrix */
   cholesky()
   corr()
   diag()
   get()
   hadamard()
   I()
   inv()
   invsym()
   J()
   matuniform()
   nullmat()
   sweep()
   syminv()
   vec()
   vecdiag()
   /* matrix to scalar */
   colnumb()
   colsof()
   det()
   diag0cnt()
   el()
   issym()
   issymmetric()
   matmissing()
   mreldif()
   rownumb()
   rowsof()
   trace()
   /* end functions */
   g ge gen gene gener genera generat generate
   replace
   set se
   set seed
   set ty
   set type float
   set type double
   set type foo
   gsort
   hexdump
   /* icd9 commands */
   icd9 check
   icd9p check
   icd9 clean
   icd9p clean
   icd9 gen
   icd9p generate
   icd9 l
   /* got to figure out how to fix the lookup here */
   icd9p lookup
   icd9 sea
   icd9p search
   icd9 q
   icd9 query
   // import commands
   import excel
   import sasxport
   impute
   inf using
   infile
   infix
   inp inpu input
   insheet
   ins insp inspe inspec inspect
   ipolate
   isid
   joinby
   /* label */
   la // incomplete
   la da
   label data
   la var
   label variable
   la display as error // bad subcommands
   /* inside of a comment label define aaahhh */
   la de
   label define
   la val
   lab val
   label values
   la di
   label dir
   la l
   label l
   label list
   label copy
   lab drop
   labe save
   /* end label */
   la lang
   label language
   labelbook
   numlabel
   uselabel
   l li lis list
   fl fli flis flist
   lookfor
   memory
   set mem 5b // obsolete in Stata 12
   q mem
   set vir on // obsolete in Stata 12
   set virtual off // obsolete in Stata 12
   mer 1:1
   merg m:1
   merge 1:m
   merge m:m
   mkdir
   mvencode
   mvdecode
   /* notes */
   notes: fjeje
   note list
   notes l
   note drop
   note search
   notes replace
   notes renumber
   set obs 12
   /* odbc */
   odbc 
   odbc li
   odbc list
   odbc q
   odbc query
   odbc des
   odbc describe
   odbc lo
   odbc load
   odbc in
   odbc insert
   odbc exe(needed)
   odbc exec(needed)
   odbc sql(needed)
   odbc sqlfile(needed)
   odbc sql // forgot paren
   set odbcm iodbc
   set odbcmgr unixodbc
   /* end odbc */
   order
   mov move aorder // obsolete in Stata 11
   ou out outf outfi outfil outfile
   outs outsh outshe outshee outsheet
   pctile
   xtile
   _pctile
   putmata
   getmata
   range
   recast
   recode
   ren rena renam rename renpfix
   /* reshape ... */
   reshape long
   reshape wide
   reshape error
   reshape i
   reshape j
   reshape xij
   reshape xi
   reshape
   reshape q
   reshape query
   reshape clear
   // end reshape
   rmdir
   sample
   sa save saveold
   separate
   sh she shel shell
   xsh xshe xshel xshell
   // snapshot
   snapshot save
   snapshot label
   snapshot restore
   snapshot list
   snapshot erase
   // end snapshot
   so sor sort
   split
   stack
   statsby
   sysuse auto
   sysuse dir
   ty typ type
   u us use
   varm varma varman varmana varmanag varmanage
   webuse
   webuse query
   webuse set
   xmlsav xmlsave
   xmluse
   xpose
   zipfile
   unzipfile
   /* end data management */

   /* from [MV] multivariate statistics */
   biplot
   ca
   camat
   cabiplot
   caprojection
   estat coordinates
   estat distances
   estat inertia
   estat loadings
   estat profiles
   estat summarize
   estat table
   screeplot

   candisc

   canon
   estat correlations
   estat loadings
   estat rotate
   estat rotatecompare
   screeplot
   
   /* cluster commands */
   /* now ordered by the manual */
   /* omnibus -cluster- entry ignored */
   
   clustermat s
   clustermat singlelinkage
   clustermat a
   clustermat averagelinkage
   clustermat c
   clustermat completelinkage
   clustermat wav
   clustermat waveragelinkage
   clustermat med
   clustermat `foo'
   clustermat medianlinkage
   clustermat cent
   clustermat centroidlinkage
   clustermat ward
   clustermat wardslinkage
   /* end clustermat commands */

   cluster 
   cluster dend
   cluster dendrogram
   /* cluster tree is listed in online help as synonym for cluster dendogram */
   cluster tr
   cluster tree

   cluster gen
   cluster generate 

   cluster k
   cluster kmeans
   cluster kmed
   cluster kmedians

   // cluster linkage
   cluster s
   cluster singlelinkage
   cluster a
   cluster averagelinkage
   cluster c
   cluster completelinkage
   cluster wav
   cluster waveragelinkage
   cluster med
   cluster `foo'
   cluster medianlinkage
   cluster cen
   cluster centroidlinkage
   cluster ward
   cluster wardslinkage

   cluster note
   cluster notes
   cluster notes drop
   /* cluster programming utilities */
   cluster query
   cluster set
   cluster del
   cluster delete
   cluster parsedist
   cluster parsedistance
   cluster measures

   /* cluster stop */
   cluster stop
   clustermat stop

   /* cluster utility */
   cluster dir
   cluster list
   cluster drop
   cluster use
   cluster rename
   cluster renamevar


   /* discrim commands from the discrim intro */
   discrim knn
   discrim lda
   discrim logistic
   discrim qda
   /* discrim estat */
   estat classtable
   estat errorrate
   estat grsummarize
   estat list
   estat summarize

   discrim knn
   estat classtable
   estat errorrate
   estat grsummarize
   estat list
   estat summarize

   discrim lda
   /* discrim lda postestimation */
   estat anova
   estat canontest
   estat classfunctions
   estat classtable
   estat correlations
   estat covariance
   estat errorrate
   estat grdistances
   estat grmeans
   estat grsummarize
   estat list
   estat loadings
   estat manova
   estat structure
   estat summarize
   loadingplot
   scoreplot
   screeplot

   discrim logistic
   estat classtable
   estat errorrate
   estat grsummarize
   estat list
   estat summarize

   discrim qda
   estat classtable
   estat correlations
   estat covariance
   estat errorrate
   estat grdistances
   estat grsummarize
   estat list
   estat summarize
   

   fac fact facto factor
   factormat
   /* uh oh, factor estat stuff */
   estat anti
   estat common
   estat factors
   estat kmo
   estat residuals
   estat rotatecompare
   estat smc
   estat structure
   estat summarize
   loadingplot
   rotate
   scoreplot
   screeplot
   /* end factor estat stuff */
   hotelling
   mano manov manova
   manovatest
   screeplot
   
   mat dis foo
   matrix dissimilarity bar

   mca
   /* mca postestimation */
   mcaplot
   mcaprojection
   estat coordinates
   estat subinertia
   estat summarize
   screeplot
   
   mds
   /* mds postestimation */
   estat config
   estat correlations
   estat pairwise
   estat quantiles
   estat stress
   estat summarize
   mdsconfig
   mdsshepard
   screeplot
   
   /* end mds postestimation */
   mdslong
   mdsmat

   mvtest corr
   mvtest correlations

   mvtest cov
   mvtest covariances

   mvtest m
   mvtest means

   mvtest norm
   mvtest normality
   
   /* score is now obsolete */
   sco scor score
   pca
   pcamat
   /* pca postestimation */
   estat anti
   estat kmo
   estat loadings
   estat residuals
   estat rotatecompare
   estat smc
   estat summarize
   loadingplot
   rotate
   scoreplot
   screeplot
   /* end pca postestimation */
   procrustes
   /* procrustes postestimation */
   estat compare
   estat mvreg
   estat summarize
   procoverlay

   rot rota rotat rotate
   rotatemat
   scoreplot
   loadingplot
   greigen /* obsolete in Stata 9 */
   screeplot

   /* from the [ST] survival analysis manual */ 
   
   ctset
   cttost
   
   ir
   iri
   cs
   csi
   cc
   cci
   tabodds
   mhodds
   mcc
   mcci
   
   ltable
   snapspan
   st_is 2 full // hmmm....
   st_is 2 analysis
   st_show
   st_ct
 
   stbase
   stci
   stcox
   /* stcox diagnostics */
   stphplot
   stcoxkm
   estat phtest
   /* stcox postestimation */
   estat con
   estat concor
   estat concordance
   estat phtest
   stcurve
   /* end stcox postestimation */
   stcrr stcrre stcrreg
   stphtest
   stcurve
   stdescribe
   stfill
   stgen
   stir
   /* stpower commands */
   stpow cox
   stpower cox
   stpowe exp
   stpowe exponential
   stpower logrank
   
   stptime

   strate
   stmh
   stmc

   streg
   /* skip over sts entry */
   sts gen
   sts generate
   sts
   sts g
   sts graph
   sts l
   sts list
   sts `foo'
   sts t
   sts test
   
   stset
   streset
   st
   
   stsplit
   stjoin

   stsum
   sttocc
   sttoct
   stvary

   /* from the [SVY] survey data manual */
   /* difficult to order, because of the manual */
   /* not using the intro for ordering */
   /* estat commands as listed under -estat- */
   estat svyset
   estat eff
   estat effects
   estat lceff
   estat lceffects
   estat size
   estat sd
   estat strata
   estat cv
   estat gof
   estat vce
   /* end estat commands */
   /* survey commands as listed in the order of the survey estimation section */
   brr

   svy: mean
   svy: proportion
   svy: ratio
   svy:total

   svy: cnreg // obsolete in Stata 11
   svy: cnsreg
   svy: glm
   svy: intreg
   svy: nl
   svy: reg
   svy: regress
   svy: tobit
   svy: treatreg
   svy: truncreg

   svy: stcox
   svy: streg

   svy: biprobit
   svy: cloglog
   svy: hetprob
   svy: logistic
   svy: logit
   svy: probit
   svy: scobit

   svy: clogit
   svy: mlogit
   svy: mprobit
   svy: ologit
   svy: oprobit
   svy: slogit
   
   svy: gnbreg
   svy: nbreg
   svy: poisson
   svy: zinb
   svy: zip
   svy: ztnb
   svy: ztb

   svy: ivprobit
   svy: ivregress
   svy: ivtobit
   
   svy: heckman
   svy: heckprob
   /* ivreg outdated as of Stata 10 */
   svy: ivreg
   
   svy jack: logistic
   svy linear: gnbreg
   svy bootstrap: logistic
   svy brr: gnbreg
   svy sdr: regress // added in Stata 11.1
   sdr: regress // added in Stata 11.1
   
   svy: tab
   svy: tabul
   svy: tabulate
   svydes svydescribe
   svymarkout
   svyset

   /* end of the survey stats book */

   /* [TS] time series */
   arch
   arfima
   psdensity
   arima
   
   corrgram
   ac
   pac

   cumsp
   dfactor
   dfgls
   dfuller
   dvech
   fcast c
   fcast com
   fcast compute
   fcast g
   fcast graph
   haver // incomplete
   haver des
   haver describe
   haver use
   /* irf commands ... starting Stata 8.2 */
   irf
   irf graph 
   irf a
   irf add
   irf `foo' 
   irf cg
   irf cgraph
   irf cr
   irf create
   irf ct
   irf ctable
   irf d
   irf describe
   /* irf dir is dead, even under version control? */
   irf di
   irf dir
   irf drop
   irf erase
   irf g
   irf gr irf
   irf graph oirf
   irf gr foo // foo should fail
   irf g dm
   irf gr cirf
   irf gr coirf
   irf gra cdm
   irf grap fevd
   irf graph sirf
   irf gr sfevd
   
   irf og
   irf ograph

   irf ren
   irf rename

   irf set
   irf t
   irf table
   irf tab cdm
   irf tab foo // foo should fail

   mgarch
   mgarch ccc // new in Stata 12 from here...
   mgarch dcc
   mgarch dvech 
   mgarch vcc // to here....

   newey
   pergram
   pperron
   prais
   psdensity
   rolling
   dwstat
   durbina
   bgodfrey
   archlm
   sspace
   /* should these options be required--no not never */
   tsappend, add(4) last(foo) tsfmt(string)
   tsfill

   tsfilter 

   tsfilter `foo' // should really decide what to do with commands
                  //  allowing subcommands
   tsfilter bk // new in Stata 12 to ...
   tsfilter bw
   tsfilter cf
   tsfilter hp // ... here

   tsline
   tw tsline
   twoway tsline
   graph twoway tsline
   tw tsrline
   twoway tsrline
   twoway lfit
   twoway ( scatter elfj jekl) (line ejfl ekk)

   tsreport
   tsrevar
   tsset

   tssmooth
   
   tssmooth `foo'
   tssmooth breeble // should tssmooth unhighlight?
   tssmooth d
   tssmooth dexponential
   tssmooth e
   tssmooth exponential
   tssmooth h
   tssmooth hwinters
   tssmooth ma
   tssmooth nl
   tssmooth s
   tssmooth shwinters

   ucm // new in Stata 12
   estat period
   psdensity
   
   var
   /* var post estimation commands */
   /* these seem to be common to var and svar */
   fcast compute
   fcast graph
   irf
   // could also be below varbasic below
   vargranger
   varlmar
   varnorm
   varsoc
   varstable
   varwle
   /* end var post estimation commands */
   svar
   varbasic
   /* varfcast is obsolete as of July 23, 2004 */
   /* varirf is obsolete as of July 23, 2004 */
   vargranger
   varlmar
   varnorm
   varsoc
   varstable
   varwle
   vec
   /* vec post estimation commands */
   veclmar
   vecnorm
   vecstable
   // end vec postestimation commands
   // now they show up again explicitly with an extra
   veclmar
   vecnorm
   vecrank
   vecstable
   wntestb
   wntestq
   xcorr
   /* end time-series */
   
   
   /* stuff from the crossectional timeseries book */
   /* now called the [XT] longitudinal/panel data book */

   /* iis, tis obsolete as of Stata 10 */
   iis
   tis
   quadchk
   xtabond
   
   estat abond
   estat sargan
   xtclog // obsolete as of Stata 7
   xtcloglog
   xtdata
   xtdes
   xtdescribe
   xtdpd
   xtdpdsys
   xtfrontier
   xtgee
   estat wcorrelation
   xtcorr  // estat wcorrelation replaced xtcorr 
   xtgls
   xthaus
   xthtaylor
   xtintreg
   xtivreg
   xtline
   xtlogit
   xtmelogit
   estat group
   estat recovariance
   xtmepoisson
   xtmixed
   estat group
   estat recovariance
   xtnbreg
   xtpcse
   xtpois // obsolete as of Stata 7
   xtpoisson
   xtprobit
   xtrc
   xtreg
   xttest0
   xtregar
   xtset
   xtsum
   xttab
   xttrans
   xttobit
   xtunitroot
   xtunitroot llc   
   xtunitroot ht
   xtunitroot breitung
   xtunitroot ips
   xtunitroot fisher
   xtunitroot hadri

   /* end stuff from crossectionaltime-series */

   /* [P] programming manual */
   nobreak
   break
   /* not highlighting byable() stuff, because an option */
   program dingle, rclass byable(recall)
   end
   program foobar, sclass byable(onecall)
   end
   cap
   capture
   char `foo'
   char
   char define
   char l
   char list
   char ren
   char rename
   // a meager attempt at highlighting class programming
   // really just highlighting the tails from the built-in functions
   a.bc.new
   ab.b.copy
   a.compress.ref
   a.objtype
   a.b.isa
   a.b.classname
   a.b.isofclass
   a.b.objkey
   a.c.uname
   a.b.ref_n
   a.b.arrnels
   a.b.arrindexof
   a.b.classmv
   a.b.instancemv
   a.b.dynamicmv
   a.b.superclass
   // built-in modifiers
   a.b.Declare
   a.b.Arrdropel
   a.b.Arrdropall
   a.b.Arrpop
   a.c.Arrpush

   // cannot seem to get these to work well
   //   making . highlight differently is really hard, because it shows
   //   up in too many contexts
   // will not ever fix, as these are supposedly withering
   
   .Global.foo.gringo
   .Local.d.e.f
   .Super.q.e.d
   4.2
   

   class fooey {
      classwide:
      instance:
      instancespecific:
      } 
   
   class exit
   class bl33n
   
   classutil drop
   classutil d
   classutil describe
   classutil dir
   classutil cdir
   classutil which
   classutil `foo' // fails on purpose

   /* confirm commands */
   conf e
   confi existence
   confir new f
   confirm file

   confirm `foo' // won't confirm because of need for subcommand
   confirm numeric var // ok
   confirm numeric var() // fails
   confirm numeric `var' // fails --- good? bad?
   conf numeric fo
   conf str for
   conf string form
   conf date forma
   /* confirm ts was replaced by confirm date in Stata 10,  */
   conf ts format
   conf name
   confi names
   confirm int number // should fail---no abbrev allowed for -integer-
   conf n
   confir integer n
   confirm number
   conf mat
   confirm matrix
   conf sca
   conf scalar
   conf new v
   conf numeric va
   confirm str var
   confirm string vari
   confirm byte varia
   confirm int variab
   conf long variabl
   conf float variable
   conf double v
   confirm str11 v
   confirm str9 var
   confirm str244 var
   confirm str455 var // fails on purpose

   continue

   /* oh no! the cclass stuff */
   cret l
   creturn list

   c( current_date )
   c(current_date)
   c(current_time)
   c(rmsg_time)
   c(stata_version)
   c(version)
   c(born_date)
   c(flavor)
   c(bit) // new in Stata 12
   c(SE)
   c(MP)
   c(processors)
   c(processors_lic)
   c(processors_mach)
   c(processors_max)
   c(mode)
   c(console)
   c(os)
   c(osdtl)
   c(machine_type)
   c(byteorder)
   c(username)

   c(sysdir_stata)
   c(sysdir_updates)
   c(sysdir_base)
   c(sysdir_site)
   c(sysdir_plus)
   c(sysdir_personal)
   c(sysdir_oldplace)
   c(tmpdir)
   c(adopath)
   c(pwd)
   c(dirsep)

   c(max_N_theory)
   c(max_N_current)  // obsolete in Stata 12
   c(max_k_theory)
   c(max_k_current) // obsolete in Stata 12
   c(max_width_theory)
   c(max_width_current) // obsolete in Stata 12
   c(max_matsize)
   c(min_matsize)
   c(max_macrolen)
   c(macrolen)
   c(max_cmdlen)
   c(cmdlen)
   c(namelen)
   c(eqlen)
   // numeric and string limits
   c(mindouble)
   c(maxdouble)
   c(epsdouble)
   c(smallestdouble)
   c(minfloat)
   c(maxfloat)
   c(epsfloat)
   c(minlong)
   c(maxlong)
   c(minint)
   c(maxint)
   c(minbyte)
   c(maxbyte)
   c(maxstrvarlen)
   // current dataset
   c(N)
   c(k)
   c(width)
   c(changed)
   c(filename)
   c(filedate)
   // memory
   c(memory)
   c(maxvar)
   c(matsize)
   c(niceness) // new in Stata 12
   c(min_memory) // new in Stata 12
   c(segmentsize) // new in Stata 12
   // output
   c(more)
   c(rmsg)
   c(dp)
   c(linesize)
   c(pagesize)
   c(logtype)
   c(noisily)
   c(eolchar)
   c(notifyuser)
   c(playsnd)
   c(icmap) // obsolete in Stata 10
   c(include_bitmap) // mac only new in Stata 12
   c(level)
   c(showbaselevels) // new in Stata 11.1
   c(showemptycells) // new in Stata 11.1
   c(showomitted) // new in Stata 11.1
   c(lstretch) // new in Stata 12
   c(cformat) // new in Stata 11.1
   c(sformat) // new in Stata 11.1
   c(pformat) // new in Stata 11.1
   // interface
   c(dockable)
   c(dockingguides)
   c(floatresults) // obsolete in Stata 10 or so
   c(floatwindows) // obsolete in Stata 10 or so
   c(locksplitters)
   c(persistfv)  // obsolete in Stata 12
   c(persistvtopic) // obsolete in Stata 12
   c(pinnable)
   c(doublebuffer)
   c(reventries)
   c(fastscroll) // not platform dep in Stata 10, Unix-only in 11
                 // Unix/Win only in 12
   c(revwindow) // obsolete in Stata 11 
   c(revkeyboard)
   c(varwindow) // obsolete in Stata 11 
   c(varkeyboard)
   c(smoothfonts)
   c(use_qd_text) // obsolete in Stata 11 
   c(smoothsize) // obsolete in Stata 11 
   c(use_atsui_graph) // obsolete in Stata 11 
   c(linegap)
   c(scrollbufsize)
   c(varlabelpos) // looks to be obsolete in Stata 11
   c(maxdb)
   /* obsolete in Stata 10 */
   c(smalldlg)
   c(xptheme)
   // graphics
   c(graphics)
   c(autotabgraphs)
   c(scheme)
   c(printcolor)
   c(copycolor)
   c(macgphengine)
   c(piccomments)
   // efficiency
   c(adosize)
   c(virtual)  // obsolete in Stata 12
   // network
   c(checksum)
   c(timeout1)
   c(timeout2)
   c(httpproxy)
   c(httpproxyhost)
   c(httpproxyport)
   c(httpproxyauth)
   c(httpproxyuser)
   c(httpproxypw)
   // update settings (not in Unix yet)
   c(update_query)
   c(update_interval)
   c(update_prompt)
   // trace settings
   c(trace)
   c(tracedepth)
   c(tracesep)
   c(traceindent)
   c(traceexpand)
   c(tracenumber)
   c(tracehilite)
   // mata
   c(matastrict)
   c(matalnum)
   c(mataoptimize)
   c(matafavor)
   c(matacache)
   c(matalibs)
   c(matamofirst)
   // other
   c(type)
   c(maxiter)
   c(searchdefault)
   c(seed)
   c(varabbrev)
   c(version_rng) // new in Stata 11.2
   c(emptycells) // new in Stata 12
   c(odbcmgr)
   c(`foo')
   // other, again (?)
   c(pi)
   c(alpha)
   c(ALPHA)
   c(Mons)
   c(Months)
   c(Wdays)
   c(Weekdays)
   c(rc)
   "`c(pi)'"

   /* end of that mess */
   _datasig
   _datasignature
   #d cr
#delimit ;

   this is another command;
   this is fine
     this is fine, too;
   this is ok;
#delimit cr
   this is ok /// this should look like a comment
     this is indented as a continuation
   here is something // this is a comment
   this is fine
   
#delimit ;
   
   this is funny?;
   this
     
     /* this */
     command
     continuation;
   
   this is a test /// this is a comment
     this is not a comment /// some more comments
     this is fine!;
   
   this is OK;
   
   commands 
     this should behave as a continuation?;
   this is a new line;
   if this==that {;
      this is an if clause
        another continuation;
      };  
   foo;       glue; silly;
   this is a continuation, it should indent properly
     this is ok;
   
   if this | that {;
      indent;
      }; 
   whooie!
     continuation;
   
   
#delimit cr
   
   this "#delim ;" is inside quotations, and hence is invalid

   if {
      test
      }   
   
#delimit cr

   /* all the dialog stuff is in syntax_tester.dlg, because the dlg stuff should really
be a separate mode ... ugh */
   discard
   di dis disp displ displa display
   display as text
   display as txt
   display as res
   display as result
   display as err
   display as error
   display as inp
   display as input
   display in smcl
   display _asis
   display _s(4)
   display _skip(3)
   display _col(4)
   display _column(2)
   display _n // displays as a constant because of system constant _n 
   display _new(3)
   display _newline(3)
   display _newline 
   display _c
   display _continue
   display _d(4)
   display _dup(3)
   display _r(fuggy)
   display _request(jiminy)
   display _char(4)
   display in blue
   display in red
   display in yellow
   

   /* ereturn... */
   eret loc bleen
   eret loca
   eretu sca
   eretur scalar bloor
   ereturn mat freen
   eret matrix
   eretu clear
   ereturn `foo' // should fail
   eretur li
   ereturn list
   eret post
   eretu repost
   eretur di
   ereturn display

   /* number not highlighted, because it can be an expression */
   err 444
   error 666

   _est h
   _esti hold
   _estim u
   _estima unhold
   _estimat dir
   _estimate clear
   _estimates drop
   _estimates `foo' // fails...should it?
   
   e // why is this a valid abbrev?
   exit

   file open
   file r
   file read
   file w
   file write
   file seek
   file set
   file close
   file q
   file query

   findfile

   foreach bleen // incomplete
   foreach grue in shadows {
      }
   foreach bleen of loc hooie {
      }
   foreach mike of local frantie {
      }
   foreach small of glo biggie {
      }
   foreach big of global smallie {
      }
   foreach var of var thevars {
      }
   foreach var of varlist thevars {
      }
   foreach makeme of new newvarlist {
      }
   foreach makeme of newlist newvarlist {
      }
   foreach number of num somenumlist {
      }
   foreach number of numlist somenumlist {
      }
   forv // incomplete
   forvalues bleen // incomplete
   forv fooie=1/4 {
      }
   forvalues aNum = 2(3)14 {
      }

   fvexpand

   gettoken foo : griminy, parse(" ,")
   gettoken bleeble bauble: foo, parse(",")
   gettoken (local) foo: complex
   gettoken (global) hey ho   : ho
   gettoken (local) bleen (global) hooie: gomp
   gettoken (local) bleen (local) bling : how

   if foo fuggy // because of the missing brace 
   if `this' that
   if `those' {
      something
      }
   if foo {
      fuggy
      }
   else `fortuna' // missing right brace
   else frantabulous
   else {
      frantabulous
      }
   // should not highlight as command
   bleen else bling

   include somefile.doh
   
   levelsof

   /* macro stuff */
   gl fooie
   global fooie
   global `l`fooie''
   display $fooie
   display $`bleen' // skip the highlight? 
   lo hmm // should be bad, because minabbrev is loc
   loc ``ooie''
   local fooie
   tempvar ding
   tempvar tmp1 foo4 
   tempname dong
   tempname ding dong
   tempfile the
   tempfile this is a test of many files
   /* right */
   loc ++witch
   local --is
   /* wrong --- will highlight with obsolete */
   loc which--
   local wrong++
   /* right, though this points to the need for highlighting operators */
   display `foo++'
   display `++foo'
   display `--foo'
   display `--`foo''
   display `+++foo' // wrong
   macro define bleen // obsolete
   ma di
   macro dir
   ma drop bleen
   macro drop 123 // illegal name
   ma l
   macro list
   ma s
   macro shift

   glo fooey : properties
   glo dingle : ty
   global dingle : type
   loc dingle : f
   local dingle : format
   gl h : val lab
   global h : value label
   loc h : var l
   local h: variable label
   gl h : data l
   global h: data label
   local h: sort
   local h: sortedby
   loc h : lab
   local h : label
   gl h : constraint
   global h: constraint
   loc h : char
   local h: char
   gl h : permname
   global h : permname
   local durn: adosubdir "howdy"
   loc h : dir
   local h: sysdir
   gl h : env
   global h : environment
   loc h : e(scalars)
   local h : e(macros)
   gl h: e(matrices)
   global h: e(functions)
   loc h : r(scalars)
   local h : r(macros)
   gl h: r(matrices)
   global h: r(functions)
   loc h: s(macros)
   global h: all globals
   global h: all scalars
   loc h: all matrices
   local h: all numeric scalars
   local h: all string scalars
   local h: all scalars
   local h: di
   local h: display
   gl h : list
   global h : rown
   gl h : rownames
   local h : coln
   local h :colnames
   local h : rowf
   local h : rowfullnames
   local h : colf
   local h : colfullnames
   local h : rowe
   local h : roweq
   local h : cole
   local h : coleq
   glo foo: tsnorm
   local h : copy local
   local b : copy global
   local h : word // should fail
   local h : word count
   /* maybe should change the number highlight? */
   loc h : word 43 of
   local h : word `foo' of bar
   /* should fail */
   local h : word me of you 
   local h : piece
   local h : length loc
   local h : length local
   local h : length gl
   local h : length global hii
   local h : subinstr gl
   local h : subinstr global hi
   local h : subinstr loc ho
   local h : subinstr local
   /* these have become undocumented  */
   local h : tempv
   local h : tempvar
   local h : tempf
   local h : tempfile
 
   /* macro lists */

   loc foo : list uniq bar
   global foo : list dups bar
   glob foo: list sort bar
   loca foo : list retok bar
   local foo:list retokenize bar
   glo foo : list clean bar
   glob foo : list a | b // perhaps operator highlighting would be good
   globa foo: list c & d
   global foo : list ding - dong
   global foo: list this == that
   global foo: list this === that
   loc foo: list hey in ho // perhaps 'in' should highlight as operator?
   local foo: list sizeof hey
   local foo: list posof "this is something" in hooie

   /* ahh the macros are over */

   makecns a
   matcproc a b // should not highlight because 3 matrices are needed
   matcproc a b c

   marksample hooie // hooie is a macro name
   mark
   markout
   markin
   svymarkout fiem // fiem is a variable name

   matlist
   
   /* matrix commands */
   mat ac m
   matr accum matt
   matri glsa matt
   matrix glsaccum matt
   mat opaccum matt
   matrix veca matt
   matrix vecaccum matt
   /* not listed but still accepted */
   matr makeCns foo // should be obsolete 
   matri dispCns // should be obsolete

   /* dangerous keyword highlighting which is unavoidable */
   mat def foo
   mat defin
   mat foo
   mat `foo'
   mat define bleen
   matrix in
   mat in blam
   mat input bling
   matrix jjj

   mat dis foo
   matrix dissimilarity bleen
   
   mat eigenval vgy mmk
   mat eigenvalues bleeble blob 
   /* nothing for matrix get */
   mat_put_rr bling
   
   mkmat
   svmat fooey
   svmat double noodle
   matname foo

   mat rown njk = kjj
   matrix rownames rrr = ccc
   mat coln ccc = rrr
   matrix colnames ccc = rrr
   mat rowe hi = ho
   mat roweq ho = hi
   mat cole ho = hi
   mat coleq ho = hi

   mat sco fooey
   matrix score fooey

   mat svd g h j

   mat syme jwjwk foo
   matrix symeigen jwjwk foo

   matrix d
   matrix dir
   mat l bleen
   matrix list bleen
   matrix ren foo bar
   matrix rename foo bar
   /* not quite right, but I'm really stumped. */
   matrix drop mat1 mat2 mat3 mat4
   matrix drop _all
   matrix `foo'
   
   /* phew, matrix is finally done */

   mor
   more

   numlist

pause on
pause off
pause "fuggy"

   /* don't know what would be different here */
   program fooey, plugin
      /* hmm.... */
   end
   
   postfile
   post
   postclose
   postutil dir
   postutil clear

   _predict
   preserve
   restore
   
   pr def foo
      pro bar
         "this is a string"
         display "local freddy hunh?"
      end
   end
   

   /* should fix the following (doesn't need to be flush left
   the problem really is that since define is now optional, it is hard
for the syntax to be corrected */
   pr di
   program dir

   program drop fooie
   pr l fooie
   program list fooie 
   
   qui blah
   quietly {
      n bling
      noisily blang
      }
   set ou p
   set output proc
   set output i
   set ou inform
   set ou e
   set output error

   _ret hold
   _retu res
   _retur restore
   _return drop
   _return dir
   _return `foo'

   return `foo' // highlights like mata
   ret li
   ret clear
   retu sca foo
   return sca foo
   ret loc foo
   return local foo
   /* the third item ought to be a matrix */
   ret mat matt hhh
   return matrix matt mmm
   ret add
   return add

   eretu li
   eretur list
   eret clear
   ereturn clear
   eret post m1 m2
   ereturn post
   eret sca
   ereturn scalar
   eret loc foo
   ereturn local foo
   ereturn matrix bleen
   eret repost
   ereturn repost

   sretu li
   sreturn list
   sret clear
   sret loc foo
   sreturn local foo
   /* end return commands */
   
   _rmcoll
   _rmdcoll
   
   set rmsg on
   set rmsg off
   
   _robust

   /* sca is an ambiguous abbreviation sc for scatterplot and sca for scalar ! */
   sca foo
   scalar define foo
   scalar foo
   scalar di
   scalar dir
   sca l
   sca list 
   scalar drop

   /* serset commands */

   serset cr
   serset create
   serset create_xmedians
   serset create_cspline
   serset set
   serset sort
   serset su
   serset summarize
   serset
   serset use
   serset reset_id
   serset drop
   serset clear
   serset dir
   file sersetwrite 
   file sersetread

   /* oops - Stata has extended macro functions just for serset */

   loc foo: serset id
   loc foo: serset k
   loc foo: serset N
   loc foo: serset varnum
   glo foo: serset type
   glo foo: serset format
   glo foo: serset varnames
   glo foo: serset min
   glo foo: serset max

   signestimationsample
   checkestimationsample
   
   sleep

   /* smcl */

   INCLUDE help
   /* syntax 1 and 2 */
   {sf}
   {sf:foo}
   {it}
   {it:foo}
   {bf}
   {bf:bar}
   {sf should fail} // should fail
   {sf should:fail} // should fail
   
   {input}
   {input:foo}
   {error}
   {error:hahah}
   {result}
   {result:shocking}
   {text}
   {text:for later reading}

   {inp} // should fail
   {inp:foo}
   {err}
   {err:hahah}
   {res}
   {res:shock}
   {txt}
   {txt:later}

   {cmd}
   {cmd:Go Home!}
   /* hybrid syntax */
   {cmdab:this:that}

   /* no checking for bad opt syntax */
   {opt fooey}
   {opt foo(bar)}
   {opt foo(bar,yah)}
   {opt foo(bar|yah)}
   {opt foo:bar}
   {opt foo:bar(3)}
   {opt foo:bar(from,to)}
   {opt foo:bar(this|that)}
   {opt foo(a,)} // really is wrong, but hey...

   /* syntax 1 & 2 */
   {hilite}
   {hilite:of the day}
   {hi}
   {hi:how are you}

   /* syntax 2 & 3 */
   {ul on}
   {ul:is no. 1 in basketball}
   {ul off}
   {ul bogus} // should fail

   /* syntax 2 & 3 (book says 2 & 4 but illustrates with 2 & 3) */
   {*:comment}
   {* this is a comment}

   {hline}
   {hline 20}
   {hline bogus} // should fail 
   {.-}
   {hline `this'}

   {dup 23:some}
   {dup `foo':some}
   {dup bogus:some} // should fail 

   {c 666}
   {char 333}
   {char bogus}

   {reset}
   
   /* link commands.... */
   {help someword}
   {help someword:clickable phrase}
   {helpb bold}
   {helpb bold:hack}
   {manhelp unix GS}
   {manhelp unix GS:eunuchs}
   {manhelp damn G:its own syntax}
   {manhelpi fooey Q:cakes}
   /* these should fail */
   {manhelp unix} // should fail 
   {manhelp this should fail:if I had time} // should fail 
   {manhelpi fooey} // should fail 
   /* need yet another @#@#$@ syntax for this hack */
   {help stata##anchors}
   {help stata##anchor|viewer}
   {help stata##anchor:subtext}
   {help stata##anchor|viewer:subtext}
   {marker jumphere}{...}
   {marker ...}
   {help_d:fooie}

   {newvar}
   {newvar:13}
   {var}
   {var:fooey}
   {varname}
   {varname:fooey}
   {vars}
   {vars:huey duey looie}
   {varlist}
   {varlist: huey duey looie}
   {depvar}
   {depvar:fooey gooey}
   {depvars}
   {depvars: ha ho}
   {depvarlist}
   {depvarlist: hee high ho}
   {indepvars}
   {indepvars: hoo who}
   {ifin}
   {weight}
   {dtype}
   {search goofay}
   {search goofus galant:clickable}
   {search_d:fooey}

   {dialog hello}
   {dialog hellp:clickable}
   {browse fooey}
   {browse fooey:click}
   {view fooey}
   {view fooey:click}
   {view_d:hahah}
   {manpage docs}
   {manpage docs:awfully unixy}
   {mansection dopey}
   {mansection dopey:droopy}
   {manlink hahahah}
   {manlinki R summarize}
   
   {news:is bad}
   {net fishing}
   {net fishing:wide}
   {net_d fail} // should fail
   {net_d:hello}
   {netfrom_d:howdydoody}
   {ado foo}
   {ado foo:bar}
   {ado_d : bar}
   {update howdy}
   {update howdy:doody}
   {update_d:morning}
   {back:and forth}
   {clearmore:fooey}
   {stata corp}
   {stata corp:click}
   {matacmd arrg}
   {matacmd arrg:ahoy}
   /* for line mode */
   {title:howdy doody}
   {center:middle}
   {centre:muggle}
   {center 35:bleen}
   {centre 42:voldemort}
   {center bogus:haha} // should fail
   {rcenter:teehee}
   {rcentre 33:friday!}

   {right:wing neocon}
   {lalign 69:ihtfp}
   {ralign 666:nationalist}
   // dlgtab is a pain b/c of 1 or 2 possible numbers
   {dlgtab 34:fooey}
   {dlgtab 4 2: hello} // should change numbers to variable-face
   {dlgtab 1 2 3: fails}
   {dlgtab : fooey}
   {...}
   {col bogus} // should fail 
   {col 32}
   {col `this'}
   {space bogus} // should fail 
   {space 43}
   {tab}

   /* for paragraph mode */
   {p}
   {p 4}
   {p bogus} // should fail 
   {p `hoo'}
   {p 3 4}
   {p 3 `foo' 5}
   {p 3 4 5 oh no} // should fail 
   /* uh oh, all sorts of equivalent directives */
   {pstd}
   {psee}
   {phang}
   {pmore}
   {pin}
   {phang2}
   {pmore2}
   {pin2}
   {phang3}
   {pmore3}
   {pin3}
   // back to odd syntax directives
   {p_end}
   {p2colset 1 2 `foo' 4}
   {p2colset 1 2 3 4 5} // should fail 
   {p2col 1 2 3 4:something goes here}
   {p2col: something goes here}
   {p2col 1 2:this is bad}
   {p2line 1 2}
   {p2line}
   {p2line 1 2 `bad'}
   {p2colreset}
   {p2colset 1 2 3 4}
   {p2col 2 3 4 5: fooey}
   {p2col : first col} // should fail ?
   {p2colreset}
   {synoptset}
   {synoptset 6}
   {synoptset `foo'}
   {synoptset 5 tabbed}
   {synoptset 12 notes}
   {synoptset 5 6} // should fail 
   {synopthdr}
   {synopthdr: damn}
   {syntab: this}
   {synopt: is}
   {p2coldent: no fun}
   {synoptline}

   {bind:all this together}
   {break}
   {asis}
   {s6hlp}
   {ccl} // could fix with an extra constant...
   // looks nice below, but not really full of testing
   {char 7}
   {c S|}
   {c -}
   {c |}
   {c +}
   {c TT}
   {c BT}
   {c LT}
   {c RT}
   {c TLC}
   {c TRC}
   {c BRC}
   {c BLC}

   // smcl allowed in graphs shown with the graph-specific stuff
   // smcl found in help files which is not documented
   {vieweralsosee "somename" "help somename"}
   {viewerdialog "somename" "help that"}
   {viewerjumpto "this" "help this"}
   
   /* end smcl, finally */

   args mac mactheknife
   args foo
   args foo1 foo2 foo3 foo4

   /* syntax */
   /* no attempt to get this to fontify properly, sadly enough, because there really is no grammar to the syntax statement */
   syntax

   varlist
   varname
   newvarlist
   newvarname
   exp
   weight
   if
   in
   using
   options

   /* back to things I can handle */
   sysdir
   sysdir l
   sysdir list
   sysdir set
   personal
   personal dir
   adopath
   // no subcommand highlighting...
   adopath + dingle 
   adopath ++ freeble
   adopath - foo
   set a 30
   set adosize 99

   tabdisp

   timer clear
   timer clear 3
   timer on 4
   timer off 14
   timer list 55
   timer off // should fail 

   token tokeni tokeniz tokenize

set tr on
set trace off
   /* perhaps should add numbers as trailing argument. Some other day. */
   set traced 44
   set tracedepth 34
   set tracee on
   set traceexpand off
   set tracesep on
   set traces off
   set tracei on
   set traceindent off
   set tracen on
   set tracenumber off
   set traceh "fooey"
   set tracehilite "hehe"

   unab lfoo : dingle
   tsunab lfoo : dongle
   fvunab bleen: doodle

   unabcmd
   novarabbrev
   varabbrev 

   /* more complicated version commands :<( */
vers 8
version 12: fooie
   viewsource

   while foo {
      this is some stuff
      }
   /* window commands... have been moved out of the manual?!?*/
   /*  so...maintenance will be cut down, because looking at help is bad */
   /* platform dependencies not highlighted */
   window
   win fop
   window fopen
   win
   win fs
   window fsave
   window manag // incomplete
   win man minimize
   window manage restore
   win manag prefs // incomplete
   win man prefs load
   win man prefs save
   win man prefs default
   win man update variable
   win man associate // windows only
   win man maintitle // not complete, but last word is indefinite 
   window man maintitle "fooey" // unix and windows
   windo manag maintitle reset // unix and windows
   window man forward // incomplete
   window manage forward command
   window manage forward doeditor
   window manage forward graph
   window manage forward help
   window manage forward results
   window manage forward review
   window manage forward variables
   window manage forward viewer

   wind mana print // incomplete
   win man print graph
   win man forward graph
   win man close graph
   win man rename graph

   win man print viewer
   win man forward viewer
   win man close viewer

   win menu // incomplete
   window m clear
   win menu append // incomplete
   win menu append submenu
   win m append item
   window menu append separator
   window menu refresh
   window menu add_recentfiles

   /* obsolete?? */
   window menu popout
   window menu set
   window menu append popout
   window menu append   string

   window push
   windo stop // incomplete
   window stop stop
   window stopbox note
   window stop rusure
   /* end programming manual */

   /* [G] the miserable graph commands... */
   gr7 using foo
   graph7 this that

   gr bar
   graph bar
   gr hbar
   graph hbar

   graph box
   graph hbox

   graph combine

   graph copy

   gr des
   graph describe

   graph dir

   graph di
   gr display

   graph dot

   graph drop
   graph drop _all

   gr export
   graph export

   // graph manipulation skipped as section; pieces already in sections
   
   graph matrix
   graph matrix foo // oops, this is bad

   graph set eps
   gr set ps
   gr set print
   
   graph set window fontface
   graph set window fontfacemono
   

   /* these /should/ be previous testing lines, since they are documented in other */
   /*  manuals. Still... they are repeated here */

   histogram
   symplot
   quantile
   qnorm
   pnorm
   qchi
   pchi
   qqplot
   gladder
   qladder
   spikeplot
   dotplot
   sunflower
   
   kdensity
   lowess
   lpoly
   
   avplot
   cprplot
   lvr2plot
   rvfplot
   rvpplot
   
   ac
   pac
   pergram
   cumsp
   xcorr
   wntestb

   varfcast graph
   varirf graph
   varirf ograph
   varirf cgraph

   fcast graph
   varstable
   vecstable
   irf graph
   irf ograph
   irf cgraph

   xtline

   sts graph
   strate
   ltable
   stci
   stphtest
   stphplot
   stcoxkm
   estat phtest
   stcurve
   
   roctab
   rocplot
   roccomp
   rocregplot
   lroc
   lsens

   biplot
   cluster dendrogram
   screeplot
   scoreplot
   loadingplot
   procoverlay
   cabiplot
   caprojection
   mcaplot
   mcaprojection
   mdsconfig
   mdsshepard

   cusum
   cchart
   pchart
   rchart
   xchart
   shewhart
   serrbar

   marginsplot
   tabodds
   pkexamine

   /* end of so-called graph other */
   gr pie
   graph pie

   graph play
   gr play

   graph print
   gr q
   graph query

   graph rename 
   gr save

   // !! graph set needs fixing...
   gr set print 
   graph set ps   
   graph set eps 
   graph set window fontface 
   graph set window fontfacemono
   graph set window fontfacesans 
   graph set window fontfaceserif
   graph set window fontfacesymbol

   // should the twoway's here be changed to command highlighting?
   gr twoway fee fie fo
   graph twoway (scatter bar foo) (lfitci bar fee) // should lfitci be a command?
   twoway bar foo || bar fee

   /* forget the stuff under twoway */
      /* redone in the order of the commands themselves to accommodate abbrevs */  

   gr tw scatter
   
   graph twoway area y
   twoway area
   gr twoway bar
   graph twoway bar y
   tw con
   two connected
   gr two con
   gr two connected
   two contour  // new in Stata 12 
   twoway contour  // new in Stata 12 
   gr two contour  // new in Stata 12 
   
   tw dot
   graph twoway dot y
   graph twoway dropline y
   graph twoway fpfit y
   graph twoway fpfitci y
   graph twoway function y
   graph twoway hist
   tw histogram
   graph twoway kdensity
   graph twoway lfit
   graph twoway lfitci
   gr two line
   twow line
   line foo bar // twoway optional for line
   graph twoway lowess
   tw lpoly
   two lpolyci
   graph twoway mband
   graph twoway mspline
   twoway pcarrow
   twoway pcbarrow
   two pcarrowi
   tw pcbarrowi
   two pccapsym
   twoway pci
   two pcscatter
   two pcspike
   graph twoway qfit
   graph twoway qfitci
   graph twoway rarea
   graph twoway rbar
   graph twoway rcap
   graph twoway rcapsym
   graph twoway rconnected
   tw rcon
   twow rl
   graph twoway rline
   twowa rsc
   graph twoway rscatter
   graph twoway rspike
   graph tw scatter
   two sc
   scat
   graph twowa scatteri
   graph twoway spike
   tsline
   twoway tsline
   two tsrline
   tsrline
   graph use
   gr use

   palette color
   palette line
   palette linepalette
   palette symbol
   palette symbolpalette

   q graph
   query graphics
   set graphics on
   set graphics off
   set g on
   set printcolor auto
   set printcolor automatic
   set printcolor asis
   set printcolor gs1
   set printcolor gs2
   set printcolor gs3
   set copycolor auto
   set copycolor automatic
   set copycolor asis
   set copycolor gs1
   set copycolor gs2
   set copycolor gs3

   set scheme

   /* now for some Mata content */
   /* first - all the reserved words */
   // these *should* have proper highlighting, but the mata
   //   highlighting is not very sophisticated, yet
   aggregate
   array

   boolean
   break /* used elsewhere */
   byte /* used elsewhere */

   case
   catch
   class
   colvector
   complex
   const // used elsewhere
   continue /* used elsewhere */
   
   default
   delegate
   delete
   do /* used elsewhere */ 
   double /* used elsewhere */

   else /* used elsewhere */
   eltypedef
   // end /* used elsewhere, commented out here because of indentation */
   enum
   explicit
   export
   external

   float /* used elsewhere */
   for /* used elsewhere */
   friend
   function
   
   global /* used elsewhere */ 
   goto

   if /* used elsewhere */
   inline
   int /* used elsewhere */

   local /* used elsewhere */
   long /* used elsewhere */

   mata /* always has subcommands? */
   matrix /* used elsewhere */

   namespace
   new
   NULL
   numeric

   operator
   orgtypedef

   pointer
   polymorphic
   pragma
   private
   protected
   public

   quad

   real
   return
   rowvector

   scalar /* used elsewhere */
   short
   signed
   static
   string
   struct
   super
   switch

   template
   this
   throw
   transmorphic
   try
   typedef
   typename

   union
   unsigned
   using /* used elsewhere */

   vector
version /* used elsewhere */
   virtual
   volatile
   void

   while /* used elsewhere */ 
   
   /* mata building blocks */
   for(hey; ho; wego) {
      hmmmm
      }

   /* trying to have some mata stuff */
   pragma unset
   pragma unused
   
   /* from "commands for controlling mata" */
   mata:
      this is mata code
   end

   mata
   this is mata code (which needs no end statement, as it really needs to be a block, I think.) Sheesh!
   what about this
   
   mata clear
   mata d
   mata describe
   mata drop
   mata help

   mata matsave aFile some names
   mata matuse bar
   mata matd breeble
   mata matd box
   mata matdescribe box

   mata memory

   mata mlib // incomplete
   mata mlib create foo
   mata mlib add bar
   mata mlib index
   mata mlib q
   mata mlib query

   mata mosave momoney()
   mata rename
   
   mata query
   mata set // incomplete
   mata set matacache
   mata set matalnum on
   mata set matalnum off
   mata set mataoptimize on
   mata set mataoptimize off
   mata set matafavor space
   mata set matafavor speed
   mata set matastrict on
   mata set matastrict off
   mata set matalibs
   mata set matamofirst on
   mata set matamofirst off

   mata stata
   mata which

   /* mata functions */
   /* now in M-5 order because M-4 has some functions missing */
   abbrev()
   abs()
   adosubdir()
   
   all()
   any()
   allof()
   anyof()

   args()
   // heaps (associative arrays)
   asarray_create()
   asarray()
   asarray_remove()
   asarray_contains()
   asarray_elements()
   asarray_keys()
   asarray_first()
   asarray_next()
   asarray_key()
   asarray_contents()
   asarray_notfound()

   ascii()
   char()

   assert()
   asserteq()

   blockdiag()

   bufio()
   bufbyteorder()
   bufmissingvalue()
   bufput()
   bufget()
   fbufput()
   fbufget()
   bufbfmtlen()
   bufbfmtisnum()

   byteorder()
   C()
   c()
   callersversion()
   cat()

   chdir()
   _chdir()
   mkdir()
   _mkdir()
   rmdir()
   _rmdir()
   pwd()
   
   cholesky()
   _cholesky()

   cholinv()
   _cholinv()

   cholsolve()
   _cholsolve()

   comb()
   cond()

   conj()
   _conj()

   corr()
   _corr()

   cross()
   crossdev()

   cvpermutesetup()
   cvpermute()

   /* date functions... */
   /* all the date functions... (which are normal functions, too */
   clock()
   mdyhms()
   dhms()
   hms()
   hh()
   mm()
   ss()
   dofc()

   Cofc()
   Clock()
   Cmdyhms()
   Cdhms()
   Chms()
   hhC()
   mmC()
   ssC()
   dofC()
   cofC()

   date()
   mdy()
   yw()
   ym()
   yq()
   yh()
   cofd()
   Cofd()
   dofb()
   bofd()
   
   month()
   day()
   year()
   dow()
   week()
   quarter()
   halfyear()
   doy()

   yearly()
   yofd()
   dofy()

   halfyearly()
   hofd()
   dofh()

   quarterly()
   qofd()
   dofq()

   monthly()
   mofd()
   dofm()

   weekly()
   wofd()
   dofw()

   hours()
   minutes()
   seconds()
   msofhours()
   msofminutes()
   msofseconds()

   /* end of mata date functions */
   // start of numerical derivatives
   deriv_init()
   deriv_init_evaluator()
   deriv_init_evaluatortype()
   deriv_init_params()
   deriv_init_argument()
   deriv_init_narguments()
   deriv_init_weights()
   deriv_init_h()
   deriv_init_scale()
   deriv_init_bounds()
   deriv_init_search()
   deriv_init_verbose()

   deriv()
   _deriv()

   deriv_result_value()
   deriv_result_values()
   _deriv_result_values()
   deriv_result_gradient()
   _deriv_result_gradient()
   deriv_result_scores()
   _deriv_result_scores()
   deriv_result_Jacobian()
   _deriv_result_Jacobian()
   deriv_result_Hessian()
   _deriv_result_Hessian()
   deriv_result_h()
   deriv_result_scale()
   deriv_result_delta()
   deriv_result_errorcode()
   deriv_result_errortext()
   deriv_result_returncode()
   deriv_query()
   // end of numerical derivatives
   designmatrix()
   det()
   dettriangular()
   _diag()
   diag()
   diag0cnt()
   diagonal()
   dir()
   direxists()
   direxternal()
   display()
   displayas()
   displayflush()
   Dmatrix()
   dsign()

   e()
   
   editmissing()
   _editmissing()
   
   edittoint()
   _edittoint()
   edittointtol()
   _edittointtol()

   edittozero()
   _edittozero()
   edittozerotol()
   _edittozerotol()

   editvalue()
   _editvalue()

   eigensystem()
   lefteigensystem()
   eigenvalues()
   symeigensystem()
   symeigenvalues()
   _eigensystem()
   _lefteigensystem()
   _eigenvalues()
   _symeigensystem()
   _symeigenvalues()

   eigensystemselectr()
   lefteigensystemselectr()
   eigensystemselecti()
   lefteigensystemselecti()
   eigensystemselectf()
   lefteigensystemselectf()
   symeigensystemselectr()
   symeigensystemselecti()
   // underscore versions, like _eigenselecti_1a are ignored
   //  because direct use is discouraged

   eltype()
   orgtype()

   epsilon()

   _equilrc()
   _equilr()
   _equilc()
   _perhapsequilrc()
   _perhapsequilr()
   _perhapsequilc()
   rowscalefactors()
   colscalefactors()

   error()
   _error()

   errprintf()
   exit()

   exp()
   ln()
   log()
   log10()

   factorial()
   lnfactorial() /* already regular function */
   gamma()
   lngamma() /* already regular function */
   digamma() /* already regular function */
   trigamma() /* already regular function */

   favorspeed()
   ferrortext()
   freturncode()

   fft()
   invfft()
   _fft()
   _invfft()
   convolve()
   deconvolve()
   Corr()
   ftperiodogram()
   ftpad()
   ftwrap()
   ftunwrap()
   ftretime()
   ftfreqs()

   fileexists()
   _fillmissing()

   findexternal()
   crexternal()
   rmexternal()
   nameexternal()

   findfile()
   floatround()
   fmtwidth()

   fopen()
   _fopen()
   fclose()
   _fclose()
   fget()
   _fget()
   fgetnl()
   _fgetnl()
   fread()
   _fread()
   fput()
   _fput()
   fwrite()
   _fwrite()
   fgetmatrix()
   _fgetmatrix()
   fputmatrix()
   _fputmatrix()
   fstatus()
   ftell()
   _ftell()
   fseek()
   _fseek()
   ftruncate()
   _ftruncate()

   fullsvd()
   fullsdiag()
   _fullsvd()
   _svd_la()

   geigensystem()
   leftgeigensystem()
   geigensystemelectr()
   leftgeigensystemelectr()
   geigensystemelecti()
   leftgeigensystemelecti()
   geigensystemelectf()
   leftgeigensystemelectf()
   // once again, the underscore versions are gone

   ghessenbergd()
   _ghessenbergd()

   ghk_init()
   ghk_init_method()
   ghk_init_start()
   ghk_init_pivot()
   ghk_init_antithetics()
   ghk_query_npts()
   ghk()
   
   ghkfastsetup() // this /looks/ obsolete in Stata 11?!
   ghkfast_init()
   ghkfast_init_pivot()
   ghkfast_init_antithetics()
   ghkfast_query_n()
   ghkfast_query_npts()
   ghkfast_query_dim()
   ghkfast_query_method()
   ghkfast_query_rseed()
   ghkfast_query_pointset_i()
   ghkfast()
   ghkfast_i()

   gschurd()
   _gschurd()
   gschurdgroupby()
   _gschurdgroupby()
   
   halton()
   _halton()

   hash1()

   hessenbergd()
   _hessenbergd()
   
   Hilbert()
   invHilbert()

   I()

   inbase()
   frombase()

   indexnot()

   invorder()
   revorder()

   invsym()
   _invsym()

   invtokens()
   isdiagonal()
   isfleeting()

   isreal()
   iscomplex()
   isstring()
   ispointer()

   isrealvalues()

   issymmetric()
   issymmetriconly()

   isview()

   J()

   Kmatrix()

   // crud, LAPACK direct calls
   _flopin()
   _flopout()
   LA_DGBMV()
   LA_DGEBAK()
   LA_DGEBAL()
   LA_DGEES()
   LA_DGEEV()
   LA_DGEHRD()
   LA_DGGBAK()
   LA_DGGBAL()
   LA_DGGHRD()
   LA_DHGEQZ()
   LA_DHSEIN()
   LA_DHSEQR()
   LA_DLAMCH()
   LA_DORGHR()
   LA_DSYEVX()
   LA_DTGSEN()
   LA_DTGEVC()
   LA_DTREVC()
   LA_DTRSEN()

   LA_ZGEBAK()
   LA_ZGEBAL()
   LA_ZGEES()
   LA_ZGEEV()
   LA_ZGEHRD()
   LA_ZGGBAK()
   LA_ZGGBAL()
   LA_ZGGHRD()
   LA_ZHGEQZ()
   LA_ZHSEIN()
   LA_ZHSEQR()
   LA_ZTGSEN()
   LA_ZTGEVC()
   LA_ZTREVC()
   LA_ZTRSEN()
   LA_ZUNGHR()
   // end LAPACK
   
   liststruct()

   Lmatrix()

   logit()
   invlogit()
   cloglog()
   invcloglog()

   lowertriangle()
   uppertriangle()
   _lowertriangle()
   _uppertriangle()

   lud()
   _lud()
   _lud_la()

   luinv()
   _luinv()
   _luinv_la()

   lusolve()
   _lusolve()
   _lusolve_la()

   makesymmetric()
   _makesymmetric()

   matexpsym()
   matlogsym()
   _matexpsym()
   _matlogsym()

   matpowersym()
   _matpowersym()

   mean()
   variance()
   quadvariance()
   meanvariance()
   quadmeanvariance()
   correlation()
   quadcorrelation()

   mindouble()
   maxdouble()
   smallestdouble()

   minindex()
   maxindex()

   /* many of these are egen functions */
   rowmin()
   colmin()
   min()
   rowmax()
   colmax()
   max()
   rowminmax()
   colminmax()
   minmax()
   rowmaxabs()
   colmaxabs()

   colmissing()
   rowmissing()
   missing()
   colnonmissing()
   rownonmissing()
   nonmissing()
   hasmissing()

   missingof()

   mod()

   // crap, moptimize monstrosity
   // moptimize_init functions
   moptimize_init() // obsolete in Stata 12
   moptimize_init_which()
   moptimize_init_evaluator()
   moptimize_init_evaluatortype()
   moptimize_init_negH()
   moptimize_init_touse()
   moptimize_init_view() // obsolete in Stata 12
   moptimize_init_ndepvars()
   moptimize_init_depvar()
   moptimize_init_eq_n()
   moptimize_init_eq_indepvars()
   moptimize_init_eq_cons()
   moptimize_init_eq_offset()
   moptimize_init_eq_exposure()
   moptimize_init_eq_name()
   moptimize_init_eq_colnames()
   moptimize_init_eq_coefs()
   moptimize_init_constraints()
   moptimize_init_search()
   moptimize_init_search_random()
   moptimize_init_search_repeat()
   moptimize_init_search_bounds()
   moptimize_init_search_rescale()
   moptimize_init_weight()
   moptimize_init_weighttype()
   moptimize_init_cluster()
   moptimize_init_svy()
   moptimize_init_by()
   moptimize_init_nuserinfo()
   moptimize_init_userinfo()
   moptimize_init_technique()
   moptimize_init_vcetype()
   moptimize_init_nmsimplexdeltas()
   moptimize_init_gnweightmatrix()
   moptimize_init_singularHmethod()
   moptimize_init_conv_maxiter()
   moptimize_init_conv_warning()
   moptimize_init_conv_ptol()
   moptimize_init_conv_vtol()
   moptimize_init_conv_nrtol()
   moptimize_init_conv_ignorenrtol()
   moptimize_init_iterid()
   moptimize_init_valueid()
   moptimize_init_tracelevel()
   moptimize_init_trace_ado()
   moptimize_init_trace_dots()
   moptimize_init_trace_value()
   moptimize_init_trace_tol()
   moptimize_init_trace_step()
   moptimize_init_trace_coefdiffs() // new in Stata 12
   moptimize_init_trace_coefs()
   moptimize_init_trace_gradient()
   moptimize_init_trace_Hessian()
   moptimize_init_evaluations()
   moptimize_init_verbose()
   // Step 3 functions
   moptimize()
   _moptimize()
   moptimize_evaluate()
   _moptimize_evaluate()
   // Step 4 functions
   moptimize_result_post()
   moptimize_result_display()
   moptimize_result_value()
   moptimize_result_value0()
   moptimize_result_eq_coefs() // new in Stata 12
   moptimize_result_coefs()
   moptimize_result_colstripe()
   moptimize_result_scores()
   moptimize_result_gradient()
   moptimize_result_Hessian()
   moptimize_result_V()
   moptimize_result_Vtype()
   moptimize_result_V_oim()
   moptimize_result_V_opg()
   moptimize_result_V_robust()
   moptimize_result_iterations()
   moptimize_result_converged()
   moptimize_result_iterationlog()
   moptimize_result_evaluations()
   moptimize_result_errorcode()
   moptimize_result_errortext()
   moptimize_result_returncode()
   moptimize_ado_cleanup()
   // moptimize utility functions
   moptimize_query()
   moptimize_util_eq_indices()
   moptimize_util_depvar()
   moptimize_util_xb()
   moptimize_util_sum()
   moptimize_util_vecsum()
   moptimize_util_matsum()
   moptimize_util_matbysum()
   moptimize_util_by() // new in Stata 12
   
   more()
   setmore()
   setmoreonexit()

   _negate()
   /* mostly regular stata functions */
   norm()
   // normal
   normalden()
   normal()
   invnormal()
   lnnormalden()
   lnnormal()
   // binormal
   binormal()
   // beta
   betaden()
   ibeta()
   ibetatail()
   invibeta()
   invibetatail()
   // binomial
   binomialp()
   binomial()
   binomialtail()
   invbinomial()
   invbinomialtail()
   // chi-squared
   chi2()
   chi2tail()
   invchi2()
   invchi2tail()
   // Dunnett's multiple range (new in Stata 12)
   dunnettprob()
   invdunnettprob()
   // F
   Fden()
   F()
   Ftail()
   invF()
   invFtail()
   // Gamma
   gammaden()
   gammap()
   gammaptail()
   invgammap()
   invgammaptail()
   dgammapda()
   dgammapdx()
   dgammapdada()
   dgammapdadx()
   dgammapdxdx()
   // Hypergeometric
   hypergeometricp()
   hypergeometric()
   // Negative binomial
   nbinomialp()
   nbinomial()
   nbinomialtail()
   invnbinomial()
   invnbinomialtail()
   // Noncentral beta
   nbetaden()
   nibeta()
   invnibeta()
   // Noncentral chi-squared
   nchi2()
   invnchi2()
   npnchi2()
   // Noncentral F
   nFden()
   nFtail()
   invnFtail()
   // Poisson
   poissonp()
   poisson()
   poissontail()
   invpoisson()
   invpoissontail()
   // Student's t
   tden()
   ttail()
   invttail()
   // Tukey Studentized Range (new in Stata 12)
   tukeyprob()
   invtukeyprob()

   /* phooey, optimize to the max */
   optimize_init()
   optimize_init_which()
   optimize_init_evaluator()
   optimize_init_evaluatortype()
   optimize_init_negH()
   optimize_init_type() // looks to be obsolete in Stata 11
   optimize_init_params()
   optimize_init_nmsimplexdeltas()
   optimize_init_argument()
   optimize_init_narguments()
   optimize_init_cluster()
   optimize_init_colstripe()
   optimize_init_technique()
   optimize_init_gnweightmatrix() // obsolete in Stata 12
   optimize_init_singularHmethod()
   optimize_init_conv_maxiter()
   optimize_init_conv_warning()
   optimize_init_conv_ptol()
   optimize_init_vtol()
   optimize_init_nrtol()
   optimize_init_ingnorenrtol()
   optimize_init_iterid()
   optimize_init_valueid()
   optimize_init_tracelevel()
   optimize_init_trace_dots()
   optimize_init_trace_value()
   optimize_init_trace_tol()
   optimize_init_trace_step()
   optimize_init_trace_paramdiffs() // new in Stata 12
   optimize_init_trace_params()
   optimize_init_trace_gradient()
   optimize_init_trace_Hessian()
   optimize_init_evaluations()
   optimize_init_constraints()
   optimize_init_verbose()

   optimize()
   _optimize()
   optimize_evaluate()
   _optimize_evaluate()

   optimize_result_params()
   optimize_result_value()
   optimize_result_value0()
   optimize_result_gradient()
   optimize_result_scores()
   optimize_result_Hessian()
   optimize_result_V()
   optimize_result_Vtype()
   optimize_result_V_oim()
   optimize_result_V_opg()
   optimize_result_V_robust()
   optimize_result_iterations()
   optimize_result_converged()
   optimize_result_iterationlog()
   optimize_result_evaluations() // new in Stata 12
   optimize_result_errorcode()
   optimize_result_errortext() // new in Stata 12
   optimize_result_returncode()

   optimize_query()

   panelsetup()
   panelstats()
   panelsubmatrix()
   panelsubview()

   pathjoin()
   pathsplit()
   pathbasename()
   pathsuffix()
   pathrmsuffix()
   pathisurl()
   pathisabs()
   pathasciisuffix()
   pathstatasuffix()
   pathlist()
   pathsubsysdir()
   pathsearchlist()

   pinv()
   _pinv()

   polyeval()
   polysolve()
   polytrim()
   polyderiv()
   polyinteg()
   polyadd()
   polymult()
   polydiv()
   polyroots()

   printf()
   sprintf()

   qrd()
   hqrd()
   _hqrd()
   hqrdmultq()
   hqrdmultqlt()
   hqrdq()
   hqrdq1()
   hqrdr()
   hqrdr1()
   qrdp()
   hqrdp()
   _hqrdp()
   _hqrdp_la()

   qrinv()
   _qrinv()

   qrsolve()
   _qrsolve()

   quadcross()
   quadcrossdev()

   range()
   rangen()
   
   rank()

   Re()
   Im()

   reldif()
   mreldif()
   mreldifsym()
   mreldifre()

   rows()
   cols()
   length()

   rowshape()
   colshape()

   // mata random number stuff
   runiform()
   rseed()
   rbeta()
   rbinomial()
   rchi2()
   rdiscrete()
   rgamma()
   rhypergeometric()
   rnbinomial()
   rnormal()
   rpoisson()
   rt()

   runningsum()
   quadrunningsum()
   _runningsum()
   _quadrunningsum()

   schurd()
   _schurd()

   select()
   st_select()

   setbreakintr()
   querybreakintr()
   breakkey()
   breakkeyreset()

   sign()
   quadrant()

   sin()
   cos()
   tan()
   asin()
   acos()
   atan()
   atan2()
   asinr() // obsolete in Stata 11?
   acosr() // obsolete in Stata 11? 
   atanr() // obsolete in Stata 11?
   arg() /* mata only */
   sinh() 
   cosh()
   tanh()
   asinh()
   acosh()
   atanh()
   pi() /* mata only */

   sizeof()
   
   solve_tol()

   solvelower()
   solveupper()
   _solvelower()
   _solveupper()
   
   sort()
   _sort()
   jumble()
   _jumble()
   order()
   unorder()
   _collate()

   soundex()
   soundex_nara()

   spline3()
   spline3eval()
   
   sqrt()

   st_addobs()
   _st_addobs()
   
   st_addvar()
   _st_addvar()
   
   st_data()
   _st_data()
   st_sdata()
   _st_sdata()

   st_dir()

   st_dropvar()
   st_dropobsin()
   st_dropobsif()
   st_keepvar()
   st_keepobsin()
   st_keepobsif()

   st_global()

   st_isfmt()
   st_isnumfmt()
   st_isstrfmt()

   st_isname()
   st_islmname()

   st_local()

   st_macroexpand()
   _st_macroexpand()

   st_matrix()
   st_matrixrowstripe()
   st_matrixcolstripe()
   st_replacematrix()

   st_numscalar()
   st_numscalar_hcat() // new in Stata 12
   st_strscalar()

   st_nvar()
   st_nobs()

   st_rclear()
   st_eclear()
   st_sclear()

   st_store()
   st_sstore()
   _st_store()
   _st_sstore()

   st_subview()

   st_tempname()
   st_tempfilename()

   st_tsrevar()
   _st_tsrevar()
   
   st_updata()

   st_varformat()
   st_varlabel()
   st_varvaluelabel()

   st_varindex()
   _st_varindex()
   
   st_varname()

   st_varrename()

   st_vartype()
   st_isnumvar()
   st_isstrvar()

   st_view()
   st_sview()

   st_viewvars()
   st_viewobs()

   st_vlexists()
   st_vldrop()
   st_vlmap()
   st_vlsearch()
   st_vlload()
   st_vlmodify()

   stata()
   _stata()

   stataversion()
   statasetversion()

   /* strdup() is not really a function --- use * */
   strlen()
   strmatch()
   strofreal()
   strpos()
   strreverse()
   strtoname()
   
   strtoreal()
   _strtoreal()

   stritrim()
   strltrim()
   strrtrim()
   strtrim()

   strupper()
   strlower()
   strproper()

   subinstr()
   subinword()

   sublowertriangle()
   _sublowertriangle()
   
   _substr()
   substr()

   rowsum()
   colsum()
   
   sum()
   quadrowsum()
   quadcolsum()
   quadsum()

   svd()
   svdsv()
   _svd()
   _svdsv()
   _svd_la()

   svsolve()
   _svsolve()

   swap()
   
   Toeplitz()
   
   tokeninit()
   tokeninitstata()
   tokenset()
   tokengetall()
   tokenget()
   tokenpeek()
   tokenrest()
   tokenoffset()
   tokenwchars()
   tokenpchars()
   tokenqchars()
   tokenallownum()
   tokenallowhex()

   tokens()
   
   trace()

   _transpose()

   _conj() // Obsolete in Stata 11?

   transposeonly()
   _transposeonly()

   trunc()
   floor()
   ceil()
   round()

   uniform()
   uniformseed()

   uniqrows()
   
   unitcircle()

   unlink()
   _unlink()

   valofexternal()

   Vandermonde()

   vec()
   vech()
   invvech()
   
   /* now for some things which give trouble... */

   // the [MI] multiple imputation manual...all new in Stata 11
   // ... and vastly expanded in Stata 12
   mi // incomplete
   mi add
   
   mi append using

   mi convert // incomplete
   mi convert w
   mi convert wide
   mi convert ml
   mi convert mlong
   mi convert fl
   mi convert flong
   mi convert flongs
   mi convert flongsep

   mi copy

   mi q
   mi query
   mi d
   mi describe

   mi erase

   mi est
   mi estimate

   // mi estimate postestimation moved to respective commands
   
   mi expand

   mi export // incomplete
   mi export ice
   mi export nhanes1

   mi extract

   mi import // incomplete
   mi import flong
   mi import flongsep
   mi import ice
   mi import nhanes1
   mi import wide

   mi imp // incomplete
   mi impute // incomplete
   mi imp chain // new in Stata 12 
   mi impute chained // new in Stata 12 
   mi imp intreg // new in Stata 12 
   mi impute intreg // new in Stata 12 
   mi imp logi
   mi impu logit
   mi imput mlog
   mi impute mlogit
   mi imp mon
   mi impute monotone
   mi imp mvn
   mi imp nbreg // new in Stata 12 
   mi impute olog
   mi impute ologit
   mi impu pmm
   mi imput poisson // new in Stata 12
   mi imput reg
   mi impute regress
   mi imp truncreg // new in Stata 12

   mi merge // incomplete
   mi merge 1:1
   mi merge 1:m
   mi merge m:1
   mi merge m:m

   mi misstab // incomplete
   mi misstab sum
   mi misstable summarize
   mi misstable pat
   mi misstable patterns
   mi misstab tree
   mi misstabl nest
   mi misstable nested

   mi passive:

   mi predict // new in Stata 12
   mi predictnl  // new in Stata 12 

   mi ptrace // incomplete
   mi ptrace d
   mi ptrace describe
   mi ptrace use

   mi rename
   mi replace0
   mi reset
   mi reshape long
   mi reshape wide

   mi select init
   mi select

   mi set // incomplete
   mi set w
   mi set wide
   mi set ml
   mi set mlong
   mi set fl
   mi set flong
   mi set flongs
   mi set flongsep
   mi set M
   mi set m
   // look carefully...on one line
   mi reg // incomplete, but regress is winning the battle here
   mi regi // incomplete
   mi reg imp
   mi regi imputed
   mi regis pas
   mi regist passive
   mi registe reg
   mi register regular
   mi unreg
   mi unregister
   mi set M
   mi set m
   mi unset

   mi stsplit

   mi test
   mi testtr
   mi testtransform

   mi update

   mi vary
   mi varying

   mi xeq: summarize
   mi xeq : tab

   mi fvset
   mi svyset
   mi stset
   mi streset
   mi st
   mi tsset
   mi xtset

   // new in Stata 12: SEM
   estat eqg
   estat eqgof
   estat eqt
   estat eqtest
   estat fra
   estat framework
   estat ggof
   estat gin
   estat ginvariant
   estat gof
   estat mi
   estat mindices
   estat res
   estat residuals
   estat score
   estat scoretests
   estat sta
   estat stable
   estat std :
   estat stdize :
   estat su
   estat summarize
   estat tef
   estat teffects

   sem

   ssd init
   ssd set
   ssd addgr
   ssd addgroup
   ssd unaddgr
   ssd unaddgroup
   ssd stat
   ssd status
   ssd build
   ssd d
   ssd describe
   ssd l
   ssd list
   ssd repair
   
   
   /* macros showing up inside other constructions */
   local ding `r(foo)'
   local dong "this is `bramble' and this is `r(foo)'"
   display as text "this is `r(foo)'"
   /* checking long wrapping */
#delimit ;
   reshape this whole thing as this is
     the start of a long command. ;
#delimit cr
   /* wrapping when comments wipe out the end of a line */
   reshape this whole thing as this is /* foo
*/ the start of a long command.
   
   here is a command with /* a following comment */
   here is - somethin regress

   /* now there appears to be no way to have the doubleslash */
   
   here is a comment... // fooey
   
   /* end a line properly, because the newline ends the comment... */
   
   here is something followed by a comment // this is a comment
   and this continues the command /// with an extended comment
     with, finally, a conclusion /// and a second long cmment
     hahaha
   // did this end /* this */
   
   here is a partial // this is ok
   hie
     
   reshape this whole thing /// hahah
     /// here is a following comment
     this is the test with the strange intervening line! ///
     worked just fine
   this is
   this is something new
   this has stuff // this is a comment
* this is a comment, just one that is not recognized
   this should be rarer ///
     * heirmj (but it falsely highlights as a comment)

   /* macro highlighting problem */

   append using `file`filenum'`fooie'' 
   append using ``file'' 
   this is a `2'
   split this line properly   

   /* should nesting be allowed? */
   /*  start multi line comment
   /* inline comment */
   stuff where ado-mode does not recognize its commentness (Needs a fix)
   the end of multi line comment
*/

   /* this is a multiliner
   which keeps going
   */

*## graph export foo.wmv

   ddd
   // this starts with a c++ comment

   /* new stuff from the 8.2 July 23, 2004 upgrade */
   vec foo
   veclmar foo
   vecnorm
   vecrank bar
   vecstable

   /* odds and ends */
   _merge
   _n
   _N
   _pi
   _rc
   // bad things
   foo_n
   _n1
   // ooooold obsolete stuff
   _result(10)
   _result(1)
   jknife
   parse
   whelp
   window menu popout
   local bleen : set graphics

   // more odds and ends
   
   `e(V)'
   `r(sum)'
   `s(foo)'
   

   /* varfcast made obsolete */
   varfcast clear
   varfcast c
   varfcast compute
   varfcast g
   varfcast graph
   /* replaced by fcast; some subcommands disappeared */
   fcast c
   fcast com
   fcast compu
   fcast compute
   fcast g
   fcast gra
   fcast graph
   

   /* varirf is obsolete as of July 23, 2004 */
   varirf a
   varirf add
   varirf
   varirf cg
   varirf cgraph
   varirf cr
   varirf create
   varirf ct
   varirf ctable
   varirf d
   varirf describe
   varirf di
   varirf dir
   varirf drop
   varirf erase
   varirf g
   varirf graph
   varirf og
   varirf ograph
   varirf ren
   varirf rename
   varirf set
   varirf t
   varirf table


   veclmar
   vecnorm
   vecstable

   /* comments and conditionals */
   if this {
      then this {
         though this
         }
      }
   
   /* the acid test for comments --- a legal stata command! */
   display 8*9 + /// comment text
     14 - 10 * /* comment mid line
     /* oops, a nested comment */
     /* and another
     which lasts
     and lasts
*/
  which continues */ 1 + /*
*/ 14 /* on And on */ /2 ///
     + 5 /*
*/ +1 
* this is a comment which has ///
     strange continuation
   display "hah"
   
   
   /* this is a test
   
   of how the indents would work
   /* this is much better */
   ahhh, this is great.
*/ this will screw up, but it is legal in stata
   is odd
   
   oops
   darn /* what will happen here? */
   /* this is a comment */ and here
   
   
   
   /*
   
   what happens now
   this
   
   would be nice to have this indented farther
   this is confusing
   /* Tricky start of new comment
   ahhh, indentation is ok
*/
   
   
   
   
   back to where it should be
*/ fooey
   outside the comment.
   
   /* things to  on */
   tempvar `foo
   
   /* problem children */
   "filo foen"
   
   // for testing ado-highlight-block
   
   foreach foo in this that {
      display "foo is `foo'" // silly display with end comment
      twoway bleen ///
        `foo', legend( /// comment (within continuation) with parens
           order(1 "confusing") ///
           ) // hmm
      {
         display "bleen"
         display "something for testign blocks"
         }
      }
   < these won't balance (not braces) >
   [ these will balance (square brackets) ]
   {
      foreach oops of local mistake {
         (here ///
              is something in parens) ///
           which continues
         (here are mismatched braces]
         display "Oh no, no closing brace"
         } // delete to test
      quietly(this is a test) // should distiguish between functions and commands
      }
   // a command from the outside world
   slog
   slog(this is bad) // should fail

   // for testing commands needing a subcommand
#delimit

   // various bugs which needed fixing
   // else ifs
   if foo {
      bar
      }
   else if bleen {
      bling
      }

   display "{hline}"

   file read handle `macname'

   // messy
   {synopt:{opt min:abbrev}}

   mat `foo' = (1 2 \ 3 4)
end
