local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\122\181","\85\84\155\200\164\171\115"),function(v42) if (v9(v42,2)==81) then local v101=0;while true do if (v101==0) then v30=v8(v11(v42,1,2 -1 ));return "";end end else local v102=0;local v103;while true do if (v102==0) then v103=v10(v8(v42,16));if v30 then local v132=0;local v133;while true do if (v132==0) then v133=v13(v103,v30);v30=nil;v132=1;end if (v132==1) then return v133;end end else return v103;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v104=0;local v105;while true do if (v104==0) then v105=(v43/(2^(v44-1)))%((5 -3)^(((v45-1) -(v44-1)) + 1)) ;return v105-(v105%1) ;end end else local v106=0;local v107;while true do if (0==v106) then v107=(3 -1)^(v44-1) ;return (((v43%(v107 + v107))>=v107) and 1) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (1==v46) then return v47;end if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51=0;local v52;local v53;local v54;local v55;while true do if (0==v51) then v52,v53,v54,v55=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;v51=1;end if (v51==1) then return (v55 * 16777216) + (v54 * 65536) + (v53 * 256) + v52 ;end end end local function v35() local v56=v34();local v57=v34();local v58=1;local v59=(v31(v57,1,20) * (2^32)) + v56 ;local v60=v31(v57,21,31);local v61=((v31(v57,32)==1) and  -1) or 1 ;if (v60==0) then if (v59==0) then return v61 * 0 ;else local v114=0;while true do if (v114==0) then v60=1;v58=0;break;end end end elseif (v60==2047) then return ((v59==0) and (v61 * (1/0))) or (v61 * NaN) ;end return v16(v61,v60-1023 ) * (v58 + (v59/(2^52))) ;end local function v36(v62) local v63=0;local v64;local v65;while true do if (2==v63) then v65={};for v115=2 -1 , #v64 do v65[v115]=v10(v9(v11(v64,v115,v115)));end v63=3;end if (v63==3) then return v14(v65);end if (v63==0) then v64=nil;if  not v62 then local v122=0;while true do if (0==v122) then v62=v34();if (v62==0) then return "";end break;end end end v63=1;end if (v63==1) then v64=v11(v27,v29,(v29 + v62) -1 );v29=v29 + v62 ;v63=2;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v66={};local v67={};local v68={};local v69={v66,v67,nil,v68};local v70=v34();local v71={};for v79=1,v70 do local v80=0;local v81;local v82;while true do if (v80==1) then if (v81==1) then v82=v32()~=0 ;elseif (v81==2) then v82=v35();elseif (v81==3) then v82=v36();end v71[v79]=v82;break;end if (v80==0) then v81=v32();v82=nil;v80=1;end end end v69[3]=v32();for v83=1,v34() do local v84=v32();if (v31(v84,1,620 -(555 + 64) )==0) then local v110=v31(v84,2,3);local v111=v31(v84,4,6);local v112={v33(),v33(),nil,nil};if (v110==0) then local v123=0;while true do if (v123==0) then v112[3]=v33();v112[4]=v33();break;end end elseif (v110==(932 -(857 + 74))) then v112[571 -(367 + 201) ]=v34();elseif (v110==2) then v112[3]=v34() -(2^16) ;elseif (v110==3) then local v138=0;while true do if (0==v138) then v112[3]=v34() -(2^16) ;v112[4]=v33();break;end end end if (v31(v111,928 -(214 + 713) ,1)==1) then v112[1 + 1 ]=v71[v112[2]];end if (v31(v111,2,2)==1) then v112[3]=v71[v112[3]];end if (v31(v111,3,3)==1) then v112[4]=v71[v112[4]];end v66[v83]=v112;end end for v85=1,v34() do v67[v85-1 ]=v39();end return v69;end local function v40(v73,v74,v75) local v76=v73[1];local v77=v73[2];local v78=v73[3];return function(...) local v87=v76;local v88=v77;local v89=v78;local v90=v38;local v91=1;local v92= -1;local v93={};local v94={...};local v95=v20("#",...) -1 ;local v96={};local v97={};for v108=0,v95 do if (v108>=v89) then v93[v108-v89 ]=v94[v108 + 1 ];else v97[v108]=v94[v108 + 1 ];end end local v98=(v95-v89) + 1 ;local v99;local v100;while true do local v109=0;while true do if (v109==1) then if (v100<=40) then if (v100<=19) then if (v100<=(2 + 7)) then if (v100<=(881 -(282 + 595))) then if (v100<=1) then if (v100>0) then local v141=0;local v142;local v143;local v144;local v145;while true do if (v141==0) then v142=v99[2];v143,v144=v90(v97[v142](v21(v97,v142 + 1 ,v92)));v141=1;end if (v141==2) then for v333=v142,v92 do local v334=0;while true do if (v334==0) then v145=v145 + 1 ;v97[v333]=v143[v145];break;end end end break;end if (v141==1) then v92=(v144 + v142) -1 ;v145=1637 -(1523 + 114) ;v141=2;end end else local v146=0;local v147;local v148;while true do if (0==v146) then v147=v99[2 + 0 ];v148={};v146=1;end if (v146==1) then for v335=1, #v96 do local v336=0;local v337;while true do if (v336==0) then v337=v96[v335];for v429=0, #v337 do local v430=v337[v429];local v431=v430[1];local v432=v430[2];if ((v431==v97) and (v432>=v147)) then local v446=0;while true do if (v446==0) then v148[v432]=v431[v432];v430[1]=v148;break;end end end end break;end end end break;end end end elseif (v100<=2) then v97[v99[2]]=v97[v99[3]] + v99[4] ;elseif (v100==3) then local v236=v99[2 -0 ];do return v97[v236](v21(v97,v236 + 1 ,v99[3]));end else local v237=0;local v238;while true do if (v237==0) then v238=v99[2];v97[v238]=v97[v238](v21(v97,v238 + (1066 -(68 + 997)) ,v99[1273 -(226 + 1044) ]));break;end end end elseif (v100<=6) then if (v100==5) then v97[v99[8 -6 ]]=v75[v99[3]];else for v234=v99[2],v99[3] do v97[v234]=nil;end end elseif (v100<=7) then if (v97[v99[2]]==v99[4]) then v91=v91 + 1 ;else v91=v99[3];end elseif (v100==8) then v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;else v91=v99[3];end elseif (v100<=14) then if (v100<=(128 -(32 + 85))) then if (v100==10) then do return;end else v97[v99[2]]=v97[v99[3]][v99[4]];end elseif (v100<=12) then v97[v99[2]]=v97[v99[3]]%v97[v99[4]] ;elseif (v100>13) then local v242=v99[2];do return v21(v97,v242,v92);end else v97[v99[2]][v99[3]]=v97[v99[4 + 0 ]];end elseif (v100<=(4 + 12)) then if (v100>15) then local v155=0;local v156;local v157;local v158;while true do if (1==v155) then v158={};v157=v18({},{[v7("\201\21\138\176\240\6\69","\61\150\74\227\222\148\99")]=function(v338,v339) local v340=0;local v341;while true do if (0==v340) then v341=v158[v339];return v341[1][v341[2]];end end end,[v7("\198\12\92\42\238\58\92\43\252\43","\79\153\83\50")]=function(v342,v343,v344) local v345=0;local v346;while true do if (v345==0) then v346=v158[v343];v346[1][v346[2]]=v344;break;end end end});v155=2;end if (v155==0) then v156=v88[v99[3]];v157=nil;v155=1;end if (v155==2) then for v347=1,v99[4] do local v348=0;local v349;while true do if (0==v348) then v91=v91 + 1 ;v349=v87[v91];v348=1;end if (v348==1) then if (v349[1]==71) then v158[v347-1 ]={v97,v349[3]};else v158[v347-1 ]={v74,v349[3]};end v96[ #v96 + 1 ]=v158;break;end end end v97[v99[2]]=v40(v156,v157,v75);break;end end else local v159=0;local v160;local v161;local v162;while true do if (v159==2) then for v350=1,v99[4] do local v351=0;local v352;while true do if (v351==0) then v91=v91 + 1 ;v352=v87[v91];v351=1;end if (v351==1) then if (v352[1]==71) then v162[v350-1 ]={v97,v352[3]};else v162[v350-1 ]={v74,v352[3]};end v96[ #v96 + 1 ]=v162;break;end end end v97[v99[2]]=v40(v160,v161,v75);break;end if (v159==1) then v162={};v161=v18({},{[v7("\228\114\84\248\223\72\69","\150\187\45\61")]=function(v353,v354) local v355=v162[v354];return v355[1][v355[2]];end,[v7("\35\76\165\118\11\122\165\119\25\107","\19\124\19\203")]=function(v356,v357,v358) local v359=0;local v360;while true do if (v359==0) then v360=v162[v357];v360[1][v360[2]]=v358;break;end end end});v159=2;end if (v159==0) then v160=v88[v99[960 -(892 + 65) ]];v161=nil;v159=1;end end end elseif (v100<=17) then v97[v99[2]]=v75[v99[3]];elseif (v100>18) then local v245=0;local v246;while true do if (v245==0) then v246=v99[4 -2 ];v97[v246]=v97[v246]();break;end end else v74[v99[3]]=v97[v99[2]];end elseif (v100<=29) then if (v100<=(43 -19)) then if (v100<=21) then if (v100>20) then local v165=0;local v166;while true do if (0==v165) then v166=v99[2];v97[v166](v21(v97,v166 + 1 ,v99[3]));break;end end else local v167=v99[2];v97[v167]=v97[v167](v21(v97,v167 + 1 ,v99[3]));end elseif (v100<=22) then local v169=0;local v170;local v171;while true do if (v169==0) then v170=v99[3 -1 ];v171=v97[v170];v169=1;end if (v169==1) then for v361=v170 + 1 ,v92 do v15(v171,v97[v361]);end break;end end elseif (v100>(373 -(87 + 263))) then local v249=0;local v250;while true do if (v249==0) then v250=v99[2];v97[v250](v97[v250 + 1 ]);break;end end else local v251=0;local v252;while true do if (0==v251) then v252=v99[2];v97[v252](v21(v97,v252 + 1 ,v99[3]));break;end end end elseif (v100<=26) then if (v100==25) then v97[v99[2]]= #v97[v99[3]];else v97[v99[182 -(67 + 113) ]][v97[v99[3]]]=v99[4];end elseif (v100<=27) then v97[v99[2]]= #v97[v99[3]];elseif (v100>28) then v97[v99[2]]= not v97[v99[3]];else local v254=0;local v255;local v256;local v257;while true do if (v254==1) then v257=v97[v255 + 2 ];if (v257>(0 + 0)) then if (v256>v97[v255 + 1 ]) then v91=v99[3];else v97[v255 + 3 ]=v256;end elseif (v256<v97[v255 + 1 ]) then v91=v99[3];else v97[v255 + 3 ]=v256;end break;end if (v254==0) then v255=v99[2];v256=v97[v255];v254=1;end end end elseif (v100<=34) then if (v100<=31) then if (v100==30) then do return v97[v99[4 -2 ]]();end else v74[v99[3 + 0 ]]=v97[v99[2]];end elseif (v100<=32) then local v178=0;local v179;local v180;local v181;while true do if (v178==1) then v181=v97[v179 + 2 ];if (v181>0) then if (v180>v97[v179 + 1 ]) then v91=v99[3];else v97[v179 + 3 ]=v180;end elseif (v180<v97[v179 + 1 ]) then v91=v99[3];else v97[v179 + 3 ]=v180;end break;end if (v178==0) then v179=v99[2];v180=v97[v179];v178=1;end end elseif (v100==33) then v97[v99[2]]=v97[v99[3]]%v99[4] ;else v97[v99[2]]=v99[3] + v97[v99[4]] ;end elseif (v100<=(147 -110)) then if (v100<=35) then local v182=0;local v183;local v184;local v185;local v186;while true do if (v182==0) then v183=v99[2];v184,v185=v90(v97[v183](v97[v183 + 1 ]));v182=1;end if (v182==1) then v92=(v185 + v183) -1 ;v186=0;v182=2;end if (2==v182) then for v362=v183,v92 do v186=v186 + 1 ;v97[v362]=v184[v186];end break;end end elseif (v100>36) then do return;end else local v260=0;local v261;local v262;local v263;local v264;while true do if (v260==1) then v92=(v263 + v261) -1 ;v264=0;v260=2;end if (v260==0) then v261=v99[2];v262,v263=v90(v97[v261](v21(v97,v261 + 1 ,v99[3])));v260=1;end if (v260==2) then for v397=v261,v92 do v264=v264 + 1 ;v97[v397]=v262[v264];end break;end end end elseif (v100<=38) then v97[v99[2]]=v97[v99[3]];elseif (v100>(991 -(802 + 150))) then v97[v99[2]]=v74[v99[3]];else local v267=0;local v268;while true do if (v267==0) then v268=v99[2];v97[v268]=v97[v268](v21(v97,v268 + (2 -1) ,v92));break;end end end elseif (v100<=60) then if (v100<=50) then if (v100<=45) then if (v100<=42) then if (v100==41) then v97[v99[2]]={};else local v190=0;local v191;while true do if (0==v190) then v191=v99[2];v97[v191]=v97[v191]();break;end end end elseif (v100<=43) then v97[v99[2]]=v97[v99[5 -2 ]][v99[4]];elseif (v100>44) then v97[v99[2]]=v97[v99[3 + 0 ]]%v99[1001 -(915 + 82) ] ;else local v270=0;local v271;while true do if (v270==0) then v271=v99[2];v97[v271](v21(v97,v271 + 1 ,v92));break;end end end elseif (v100<=47) then if (v100==46) then local v194=0;local v195;local v196;local v197;local v198;while true do if (v194==1) then v92=(v197 + v195) -1 ;v198=0;v194=2;end if (v194==2) then for v365=v195,v92 do local v366=0;while true do if (v366==0) then v198=v198 + 1 ;v97[v365]=v196[v198];break;end end end break;end if (0==v194) then v195=v99[2];v196,v197=v90(v97[v195](v21(v97,v195 + (2 -1) ,v99[3])));v194=1;end end else local v199=0;local v200;local v201;local v202;local v203;while true do if (v199==2) then for v367=v200,v92 do local v368=0;while true do if (v368==0) then v203=v203 + 1 ;v97[v367]=v201[v203];break;end end end break;end if (0==v199) then v200=v99[2];v201,v202=v90(v97[v200](v21(v97,v200 + 1 ,v92)));v199=1;end if (v199==1) then v92=(v202 + v200) -1 ;v203=0;v199=2;end end end elseif (v100<=48) then local v204=0;local v205;while true do if (v204==0) then v205=v99[2];do return v97[v205](v21(v97,v205 + 1 ,v99[3]));end break;end end elseif (v100==49) then local v272=0;local v273;local v274;while true do if (v272==0) then v273=v99[2];v274=v97[v273];v272=1;end if (v272==1) then for v400=v273 + 1 + 0 ,v92 do v15(v274,v97[v400]);end break;end end else v97[v99[2]]=v97[v99[3]] + v99[4] ;end elseif (v100<=(72 -17)) then if (v100<=52) then if (v100==(1238 -(1069 + 118))) then if v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end else v97[v99[2]]=v99[3];end elseif (v100<=53) then local v208=0;local v209;local v210;while true do if (v208==0) then v209=v99[2];v210=v97[v99[3]];v208=1;end if (v208==1) then v97[v209 + 1 ]=v210;v97[v209]=v210[v99[4]];break;end end elseif (v100==54) then local v277=0;local v278;local v279;local v280;local v281;while true do if (v277==1) then v92=(v280 + v278) -1 ;v281=0;v277=2;end if (2==v277) then for v401=v278,v92 do local v402=0;while true do if (0==v402) then v281=v281 + 1 ;v97[v401]=v279[v281];break;end end end break;end if (v277==0) then v278=v99[2];v279,v280=v90(v97[v278](v97[v278 + 1 ]));v277=1;end end else v97[v99[2]]=v99[3]~=0 ;end elseif (v100<=57) then if (v100==56) then v97[v99[2]]=v99[3] + v97[v99[8 -4 ]] ;else local v212=0;local v213;while true do if (0==v212) then v213=v99[2];do return v21(v97,v213,v92);end break;end end end elseif (v100<=58) then do return v97[v99[2]]();end elseif (v100>59) then if (v97[v99[2]]==v99[8 -4 ]) then v91=v91 + 1 + 0 ;else v91=v99[3];end elseif  not v97[v99[2]] then v91=v91 + (1 -0) ;else v91=v99[3];end elseif (v100<=(70 + 0)) then if (v100<=65) then if (v100<=62) then if (v100>61) then local v214=0;local v215;while true do if (v214==0) then v215=v99[2];v97[v215](v21(v97,v215 + (792 -(368 + 423)) ,v92));break;end end else v97[v99[2]][v97[v99[3]]]=v99[4];end elseif (v100<=63) then v97[v99[2]]= not v97[v99[3]];elseif (v100>(201 -137)) then v97[v99[20 -(10 + 8) ]]=v99[3]~=0 ;else local v284=0;local v285;local v286;local v287;while true do if (v284==2) then if (v286>0) then if (v287<=v97[v285 + 1 ]) then local v443=0;while true do if (v443==0) then v91=v99[3];v97[v285 + 3 ]=v287;break;end end end elseif (v287>=v97[v285 + 1 ]) then local v444=0;while true do if (0==v444) then v91=v99[11 -8 ];v97[v285 + 3 ]=v287;break;end end end break;end if (v284==1) then v287=v97[v285] + v286 ;v97[v285]=v287;v284=2;end if (v284==0) then v285=v99[2];v286=v97[v285 + 2 ];v284=1;end end end elseif (v100<=67) then if (v100==(508 -(416 + 26))) then v97[v99[2]][v97[v99[3]]]=v97[v99[4]];else local v221=v99[2];v97[v221](v97[v221 + (3 -2) ]);end elseif (v100<=68) then if v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end elseif (v100>69) then v91=v99[3];else local v290=0;local v291;local v292;while true do if (1==v290) then v97[v291 + 1 ]=v292;v97[v291]=v292[v99[4]];break;end if (v290==0) then v291=v99[2];v292=v97[v99[3]];v290=1;end end end elseif (v100<=75) then if (v100<=72) then if (v100==71) then v97[v99[2]]=v97[v99[3]];else v97[v99[2]]=v99[3];end elseif (v100<=73) then local v226=0;local v227;while true do if (v226==0) then v227=v99[2];v97[v227]=v97[v227](v21(v97,v227 + 1 ,v92));break;end end elseif (v100>74) then v97[v99[2]][v99[3]]=v97[v99[4]];else for v328=v99[2],v99[3] do v97[v328]=nil;end end elseif (v100<=78) then if (v100<=(33 + 43)) then v97[v99[2]]=v74[v99[3]];elseif (v100==77) then local v295=0;local v296;local v297;while true do if (1==v295) then for v403=1, #v96 do local v404=0;local v405;while true do if (v404==0) then v405=v96[v403];for v447=0, #v405 do local v448=0;local v449;local v450;local v451;while true do if (v448==0) then v449=v405[v447];v450=v449[1];v448=1;end if (1==v448) then v451=v449[2];if ((v450==v97) and (v451>=v296)) then local v464=0;while true do if (v464==0) then v297[v451]=v450[v451];v449[1 -0 ]=v297;break;end end end break;end end end break;end end end break;end if (v295==0) then v296=v99[2];v297={};v295=1;end end else v97[v99[2]]={};end elseif (v100<=79) then local v230=0;local v231;local v232;local v233;while true do if (v230==0) then v231=v99[2];v232=v97[v231 + (440 -(145 + 293)) ];v230=1;end if (v230==1) then v233=v97[v231] + v232 ;v97[v231]=v233;v230=2;end if (2==v230) then if (v232>0) then if (v233<=v97[v231 + 1 ]) then v91=v99[433 -(44 + 386) ];v97[v231 + 3 ]=v233;end elseif (v233>=v97[v231 + 1 ]) then local v428=0;while true do if (0==v428) then v91=v99[3];v97[v231 + (1489 -(998 + 488)) ]=v233;break;end end end break;end end elseif (v100==80) then if  not v97[v99[2]] then v91=v91 + 1 ;else v91=v99[3];end else v97[v99[2]][v97[v99[3]]]=v97[v99[2 + 2 ]];end v91=v91 + 1 ;break;end if (0==v109) then v99=v87[v91];v100=v99[1];v109=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012113Q00013Q00200B5Q0002001211000100013Q00200B000100010003001211000200013Q00200B000200020004001211000300053Q0006500003000A000100010004463Q000A0001001211000300063Q00200B000400030007001211000500083Q00200B000500050009001211000600083Q00200B00060006000A00061000073Q000100062Q00473Q00064Q00478Q00473Q00044Q00473Q00014Q00473Q00024Q00473Q00053Q001211000800013Q00200B00080008000B0012110009000C3Q001211000A000D3Q000610000B0001000100052Q00473Q00074Q00473Q00094Q00473Q00084Q00473Q000A4Q00473Q000B4Q0026000C000B4Q003A000C00014Q000E000C6Q00253Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q004E00025Q001248000300014Q001900045Q001248000500013Q0004200003002100012Q002800076Q0026000800024Q0028000900014Q0028000A00024Q0028000B00034Q0028000C00044Q0026000D6Q0026000E00063Q002032000F000600012Q002E000C000F4Q0049000B3Q00022Q0028000C00034Q0028000D00044Q0026000E00014Q0019000F00014Q0008000F0006000F001022000F0001000F2Q0019001000014Q00080010000600100010220010000100100020320010001000012Q002E000D00104Q002F000C6Q0049000A3Q000200202D000A000A00022Q00230009000A4Q002C00073Q000100044F0003000500012Q0028000300054Q0026000400024Q0003000300044Q000E00036Q00253Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006105Q000100012Q004C8Q0028000100014Q0028000200024Q0028000300024Q004E00046Q0028000500034Q002600066Q0006000700074Q002E000500074Q001600043Q000100200B000400040001001248000500024Q0004000300050002001248000400034Q002E000200044Q004900013Q000200260700010018000100040004463Q001800012Q002600016Q004E00026Q0003000100024Q000E00015Q0004463Q001B00012Q0028000100044Q003A000100014Q000E00016Q00253Q00013Q00013Q00323Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q7470476574033D3Q00EEAFD32FEF796A2QA9C628B2242CF2B3D23DE93020F4B8C831E8262BF2F5C430F16C36EEB7C227EB2237E3F4E82DF52C2BA9B6C636F26C36E9AED53CF903073Q004586DBA75F9C43030A3Q004D616B6557696E646F7703043Q00EBD24B3103073Q004AA5B32654D72903073Q00082FF3103EA92403063Q00DC464E9E307603043Q00FFF8A42A03053Q0072B69BCB4403173Q0061A7A6F9552576B1B7FC1C793CF1EAA0156527F0E7A11E03063Q005613C5DE9826030B3Q00D4497CE04D5433F1496DE803073Q00569C2018851D262Q0103073Q004D616B6554616203043Q0089844EAD03073Q0037C7E523C81D1C03043Q0059FBD53A03053Q0073149ABC5403043Q00F8DC822203063Q00DFB1BFED4CE103173Q0044CBB83B4323BE42C0A4601F7FEF0291F3690465E20F9103073Q00DB36A9C05A3050030B3Q007950052840570D0A474E1903043Q0045292260010003083Q00496E7374616E63652Q033Q006E6577030B3Q0095CED60D0709A9D7C3050C03063Q004BDCA3B76A6203043Q0053697A6503053Q005544696D32029A5Q99B93F028Q0003083Q00506F736974696F6E02CD5QCCDC3F03053Q00496D61676503173Q0010B89336CA11BF9F3EDD58F5C4618953E3DA638E55EFDD03053Q00B962DAEB5703103Q004261636B67726F756E64436F6C6F723303063Q00436F6C6F723303073Q0066726F6D52474203063Q00506172656E7403113Q004D6F75736542752Q746F6E31436C69636B03073Q00436F2Q6E65637403043Q00496E6974026Q00F03F01723Q0006333Q007000013Q0004463Q00700001001211000100013Q001211000200023Q0020350002000200032Q002800045Q001248000500043Q001248000600054Q002E000400064Q002F00026Q004900013Q00022Q00130001000100020020350002000100062Q004E00043Q00032Q002800055Q001248000600073Q001248000700084Q00040005000700022Q002800065Q001248000700093Q0012480008000A4Q00040006000800022Q00510004000500062Q002800055Q0012480006000B3Q0012480007000C4Q00040005000700022Q002800065Q0012480007000D3Q0012480008000E4Q00040006000800022Q00510004000500062Q002800055Q0012480006000F3Q001248000700104Q000400050007000200203D0004000500112Q00040002000400020020350003000200122Q004E00053Q00032Q002800065Q001248000700133Q001248000800144Q00040006000800022Q002800075Q001248000800153Q001248000900164Q00040007000900022Q00510005000600072Q002800065Q001248000700173Q001248000800184Q00040006000800022Q002800075Q001248000800193Q0012480009001A4Q00040007000900022Q00510005000600072Q002800065Q0012480007001B3Q0012480008001C4Q000400060008000200203D00050006001D2Q00040003000500020012110004001E3Q00200B00040004001F2Q002800055Q001248000600203Q001248000700214Q002E000500074Q004900043Q0002001211000500233Q00200B00050005001F001248000600243Q001248000700253Q001248000800243Q001248000900254Q000400050009000200100D000400220005001211000500233Q00200B00050005001F001248000600273Q001248000700253Q001248000800253Q001248000900254Q000400050009000200100D0004002600052Q002800055Q001248000600293Q0012480007002A4Q000400050007000200100D0004002800050012110005002C3Q00200B00050005002D001248000600253Q001248000700253Q001248000800254Q000400050008000200100D0004002B000500100D0004002E00022Q0037000500013Q00061000063Q000100022Q00473Q00054Q00473Q00023Q00200B00070004002F0020350007000700302Q0026000900064Q00170007000900010020350007000100312Q00180007000200014Q00015Q0004463Q0071000100200B00013Q00322Q00253Q00013Q00013Q00023Q00028Q0003073Q0056697369626C6500123Q0012483Q00014Q0006000100013Q0026073Q0002000100010004463Q00020001001248000100013Q00260700010005000100010004463Q000500012Q002800026Q003F000200024Q001200026Q0028000200014Q002800035Q00100D0002000200030004463Q001100010004463Q000500010004463Q001100010004463Q000200012Q00253Q00017Q00",v17(),...);
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--
