Using proc report output dataset to touch up a report                                                                                         
                                                                                                                                              
You have a SAS dataset which is an image of the report you asked for.                                                                         
Since you have a dataset you can further 'touch' up a final report.                                                                           
                                                                                                                                              
Note proc print looks like your report.                                                                                                       
                                                                                                                                              
FYI: proc report output dataset is easier to manipulate than summary output;                                                                  
                                                                                                                                              
github                                                                                                                                        
https://tinyurl.com/y2u2r5ap                                                                                                                  
https://github.com/rogerjdeangelis/utl-using-proc-report-output-dataset-to-touch-up-a-report                                                  
                                                                                                                                              
SAS Forum                                                                                                                                     
https://tinyurl.com/y3ns3fja                                                                                                                  
https://communities.sas.com/t5/ODS-and-Base-Reporting/Proc-report-or-tabulate-for-multiple-groups-with-single-row/m-p/592358                  
                                                                                                                                              
*_                   _                                                                                                                        
(_)_ __  _ __  _   _| |_                                                                                                                      
| | '_ \| '_ \| | | | __|                                                                                                                     
| | | | | |_) | |_| | |_                                                                                                                      
|_|_| |_| .__/ \__,_|\__|                                                                                                                     
        |_|                                                                                                                                   
;                                                                                                                                             
                                                                                                                                              
data have;                                                                                                                                    
 informat Zone Region ZH RH $24.;                                                                                                             
 informat Zone Region ZH RH $11.;                                                                                                             
 input Zone Region ZH RH Thousands;                                                                                                           
cards4;                                                                                                                                       
Western Maharashtra MH Rahul 100                                                                                                              
Western Maharashtra MH Ajay 600                                                                                                               
Western Maharashtra MH Ajay 200                                                                                                               
Western Maharashtra NGP Rahul 400                                                                                                             
Western Maharashtra NGP Pankaj 450                                                                                                            
Western Gujarat AM Ashok 600                                                                                                                  
Western Gujarat AM Ajay 400                                                                                                                   
Western Gujarat GK Pankaj 300                                                                                                                 
Eastern Bengal AM Pavan 300                                                                                                                   
Eastern Bengal AM Rajesh 400                                                                                                                  
Eastern Tripura GK Rohan 300                                                                                                                  
;;;;                                                                                                                                          
run;quit;                                                                                                                                     
                                                                                                                                              
                                                                                                                                              
Up to 40 obs WORK.HAVE total obs=11                                                                                                           
                                                                                                                                              
Obs     ZONE      REGION         ZH       RH      THOUSANDS                                                                                   
                                                                                                                                              
  1    Western    Maharashtra    MH     Rahul        100                                                                                      
  2    Western    Maharashtra    MH     Ajay         600                                                                                      
  3    Western    Maharashtra    MH     Ajay         200                                                                                      
  4    Western    Maharashtra    NGP    Rahul        400                                                                                      
  5    Western    Maharashtra    NGP    Pankaj       450                                                                                      
  6    Western    Gujarat        AM     Ashok        600                                                                                      
  7    Western    Gujarat        AM     Ajay         400                                                                                      
  8    Western    Gujarat        GK     Pankaj       300                                                                                      
  9    Eastern    Bengal         AM     Pavan        300                                                                                      
 10    Eastern    Bengal         AM     Rajesh       400                                                                                      
 11    Eastern    Tripura        GK     Rohan        300                                                                                      
                                                                                                                                              
*            _               _                                                                                                                
  ___  _   _| |_ _ __  _   _| |_                                                                                                              
 / _ \| | | | __| '_ \| | | | __|                                                                                                             
| (_) | |_| | |_| |_) | |_| | |_                                                                                                              
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                             
                |_|                                                                                                                           
;                                                                                                                                             
                                                                                                                                              
SAS DATASET                                                                                                                                   
===========                                                                                                                                   
                                                                                                                                              
 WORK.HAVADD total obs=33                                                                                                                     
                                                                                                                                              
  ZONE           REGION             ZH         RH            THOUSANDS                                                                        
                                                                                                                                              
  Eastern        Bengal             AM         Pavan             300                                                                          
                                               Sum Pavan         300                                                                          
                                               Rajesh            400                                                                          
                                               Sum Rajesh        400                                                                          
                                    Sum AM                       700                                                                          
                 Sum Bengal                                      700                                                                          
                 Tripura            GK         Rohan             300                                                                          
                                               Sum Rohan         300                                                                          
                                    Sum GK                       300                                                                          
                 Sum Tripura                                     300                                                                          
  Sum Eastern                                                   1000                                                                          
  Western        Gujarat            AM         Ajay              400                                                                          
                                               Sum Ajay          400                                                                          
                                               Ashok             600                                                                          
                                               Sum Ashok         600                                                                          
                                    Sum AM                      1000                                                                          
                                    GK         Pankaj            300                                                                          
                                               Sum Pankaj        300                                                                          
                                    Sum GK                       300                                                                          
                 Sum Gujarat                                    1300                                                                          
                 Maharashtra        MH         Ajay              800                                                                          
                                               Sum Ajay          800                                                                          
                                               Rahul             100                                                                          
                                               Sum Rahul         100                                                                          
                                    Sum MH                       900                                                                          
                                    NGP        Pankaj            450                                                                          
                                               Sum Pankaj        450                                                                          
                                               Rahul             400                                                                          
                                               Sum Rahul         400                                                                          
                                    Sum NGP                      850                                                                          
                 Sum Maharashtra                                1750                                                                          
  Sum Western                                                   3050                                                                          
  Grand Total                                                   4050                                                                          
                                                                                                                                              
 *                                                                                                                                            
 _ __  _ __ ___   ___ ___  ___ ___                                                                                                            
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                                           
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                                           
| .__/|_|  \___/ \___\___||___/___/                                                                                                           
|_|                                                                                                                                           
;                                                                                                                                             
                                                                                                                                              
                                                                                                                                              
proc report data=have nowd missing out=havRpt;                                                                                                
cols ZONE REGION ZH RH THOUSANDS;                                                                                                             
define ZONE      / group;                                                                                                                     
define REGION    / group;                                                                                                                     
define ZH        / group;                                                                                                                     
define RH        / group;                                                                                                                     
define THOUSANDS / sum;                                                                                                                       
break after ZONE    / summarize;                                                                                                              
break after REGION  / summarize;                                                                                                              
break after ZH      / summarize;                                                                                                              
break after RH      / summarize;                                                                                                              
rbreak after/ summarize;                                                                                                                      
run;quit;                                                                                                                                     
                                                                                                                                              
* touch it up- you can easily add spacer lines and format thousands;                                                                          
data havAdd;                                                                                                                                  
  set  havRpt end=dne;;                                                                                                                       
  by ZONE REGION ZH RH  notsorted;                                                                                                            
  if not first.zone   then do; zs=zone  ; zone  =""; end;                                                                                     
  if not first.region then do; rs=region; region=""; end;                                                                                     
  if not first.zh     then do; zx=zh    ; zh    =""; end;                                                                                     
  if not first.rh     then do; rx=rh    ; rh    =""; end;                                                                                     
  if _break_="ZONE  " then ZONE  =catx(" ","Sum", zs);                                                                                        
  if _break_="REGION" then REGION=catx(" ","Sum", rs);                                                                                        
  if _break_="ZH    " then ZH    =catx(" ","Sum", zx);                                                                                        
  if _break_="RH    " then RH    =catx(" ","Sum", rx);                                                                                        
  if dne then zone="Grand Total";                                                                                                             
  drop  _break_--rx;                                                                                                                          
run;quit;                                                                                                                                     
                                                                                                                                              
