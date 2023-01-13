function onCreate()
    makeLuaSprite('coverup', '', -750, -620 )
    makeGraphic('coverup', 960, 1620, '191C38');
    makeLuaSprite('bg', 'exe/normal/bg', -600, -620);
    scaleObject('bg', 1.5, 1.5);
    
    makeAnimatedLuaSprite('door', 'exe/normal/doorbangin', -735, -1415); -- knock knock its knuckles, the blow-tower
    scaleObject('door', 1.5, 1.5);
    addAnimationByIndices('door', 'closed', 'doorbangin', 1, 24);
    addAnimationByPrefix('door', 'meandyourmom', 'doorbangin', 24, false);

    makeLuaSprite('allofme', 'exe/normal/shadow', -600, -620); --CAN YOU SEE ALL OF ME, WALK INTO MY MYSTERY, STEP INSIDE AND HOLD ON FOR DEAR LIFE
    scaleObject('allofme', 1.5, 1.5);

    makeAnimatedLuaSprite('screen', 'exe/normal/bigscreen', 1845, -50);
    scaleObject('screen', 1.5, 1.5);
    addAnimationByPrefix('screen', 'idle', 'bigscreenstaticfinal', 24, true);

    makeAnimatedLuaSprite('egg', 'exe/normal/charactersappear', 1778, 603);
    scaleObject('egg', 1.5, 1.5);
    addAnimationByPrefix('egg', 'chaotix', 'Chaotix Appears', 24, true);
    addAnimationByPrefix('egg', 'curse', 'Curse Appears', 24, true);
    addAnimationByPrefix('egg', 'revived', 'Revived Appears', 24, true);
    addAnimationByPrefix('egg', 'rodent', 'Rodent Appears', 24, true);
    addAnimationByPrefix('egg', 'spoiled', 'Spoiled Appears', 24, true);

    makeLuaSprite('tv', 'exe/normal/tv', -600, -620);
    scaleObject('tv', 1.5, 1.5);

    makeLuaSprite('frontshit', 'exe/normal/front', -600, -620);
    scaleObject('frontshit', 1.5, 1.5);

    makeLuaSprite('blindness II', 'exe/normal/vignette', -600, -620);
    scaleObject('blindness II', 1.5, 1.5);

    --addLuaSprite('coverup', false);
    addLuaSprite('bg', false);
    addLuaSprite('door', true);
    addLuaSprite('allofme', false);
    addLuaSprite('screen', false)
    addLuaSprite('egg', false);
    addLuaSprite('tv', false);
    addLuaSprite('frontshit', false)
    addLuaSprite('blindness II', true);
end

--[[
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&8BB#%%%%WW%BaLccccccvccccccccccccccwbW%8
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%8%%@Wb%B%88M@BbcccccccXb&ccccccccccccczdd%o%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&%@mdb@o8WBBpUcccccccwad8XccccccccccccObk@M%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%WW@*CqbM@M&%kUcccccccJbqcQMLcccccccccccXdba@8%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%W%Bpcwbb@@BMYcvcccccc0MXccJkqcccccccccccUbb*B8%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%WBBLcXdbhBWLccccccccckZzccczbbcccccccccccOddMB8%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%&%#YczpbhWwzccccccccUoQcvccczp#cccccccccczddb8&%%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%&%WcccCbo#JvccccccccC*zcccccccmMUcccccccccJbbdBM%%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%8BBCcccp%OcvcccccccuQocvvccccccUoqcccccccccObbk@*%%
				   %%%%%%%%%%%%%%W8%&%%%%%%%%M@Occc0aUccccccccccQaXccccccccczdocccccccccqbbhBM%%
				   %%%%%%%%%%%%%WB&B8W8B%%%%&@accccOzccccccccccQ#zcvcccccccccm#ccccccccYbbb#8%%%
				   %%%%%%%%%%%%%oBmb8@@o8%%%W8cccccccvcccccccczovccccccccccccQoUcccccccQdbb#B%%%
				   %%%%%%%%%%%%8&WzCphM@B%oW@dvccccccccccccccccccccccccccccccYhbcccccccwbbb&%%%%
				   %%%%%%%%%%%%%@acczQpk#&B@Wqcccccccccccccccccccccccccccccccvw%zccccccpbbb8&MMM
				   %%%%%%%%%%%%%BdcccccYZqpkahmcccccccccccccccccccccccccccccccJMCccccczdddd&%%%%
				   %%%%%%%%%%%%%BmcccccccczzzccccccccccccccccccccccccccccccccczbmccccczbdpLXXXXX
				   %%%%%%%%%%%%8%mcccccccccccccccccccccccccccccccccccccccccXCzcZ*ccccccQJccccccc
				   %%%%%%%%%%%%8%Qccccccccccccccccccccccccccccccccccccccccc*@pcv#Ccccccccccccccc
				   %%%%%%%%%%%%8%QcccccccccccccccccccccccccccccccccccccccccO@WCcObcccccccccccccc
				   %%%%%%%8o%BBB@QcccccccccccccccccccccccccccccccccccccccccczYaQcwcccccccccccccc
				   %%%8&8&@B8#oaWQccccccccccccccccccccccccccccccccccccccccccccYMJccccccccccccccc
				   %%W&@@&d00000kQcccccccccccccccccccccccccccccczzUL00JXcvcccccz8Xcccccccccccccc
				   #%B8bm0000000h0ccccccccccccccccccccccccccccYdokmZOOmh#pXccccvk*cccccccccccccc
				   @&k0000000000wmccccccccccccccccccccccccccYqkZCCJCCCCCJd#aqzccU@dccccccccccccc
				   *000000000000mmvcccccccccccccccccccccvccQWCCCCCCCCCCCLCLM&#CZ*BBUcccccccccccc
				   #000000000000ZdcccccccccccccccccccccczcpdLCCCCCCCCCCCJJCCWBhB@@BWcccccccccccc
				   WbZwpwZZOO0000dcccccccccccccccccccccczqdCCCCCCCCCCJCCCCCJL&@@@Bo&LcccccccccYw
				   W%#ooooaaobwmOoccccccccccccccccccccccL#JCJCCCCXcnnrruxcYCJm@@@@*ohccccccccCdd
				   W&B*ooooooooaa#cccccccccccczcccccccvwWCJJCJU)+<<<<<>>><<~(X*@@@#*&UccccccOdbb
				   &&&%Moooooooa&0ccccccccccccvvccczCZM%hCCY|[><><>>>>>>>>>>>>|@@@W*Maccccccpbbb
				   &&&&%Wooooooo#cccccccX0mmmO0MOk&*#M@@CUr~<<]xuxj-<<>>>>>>>>+8@@B8&WccccccJbbb
				   &WW&&8%ooo*8BJccccvcJWqCCCb8@@%@@@@@*X!>~+mZII:1*C+<<>><><>>O@@@**W0ccccccZbb
				   B&&&&&&%%%@@&ccccccwhLJCCCCCd@@@@@@@C+>i]h}::::;;-m1<>>>><<>)@@@&*oWzvccccYbb
				   *8%&&&W&BB&@qcccccQoCCCJCJCJJL#@@@@@u>><CI:[1[l::;iL(>>>>>>>+B@@@*o#qccccccpd
				   oo*%%&&BB*M%ccccXY*CCCCCUc(<<<]B@@@@?>>~Y,<Mho8f;::!b~<<>>>><%@@@W##8Cccccc0b
				   oooo*%@@#%B#cvCZwMdCJCU{+>><><<[B@@@-<>u|;aO0L0wb:::_U<<>>>>>M@@@%MW8#cccccJb
				   %8&#o*BBW%BMcYB8@BQCCf+>>><<<~>>f@B@_>>01:M00QQQwbI;;p[<>>>><#@@@B***WZcccccd
				   &W&BBBq8B&#@mhB@@%CY[<><<<<QWWm1>X@@-><qI:#0Qw0QQkt::;v>>>>>>d@@@@#o*oMcccccq
				   &W&&&Wmw@@&#@@B@@&U+>>><>>)*LL0Wt+@@-><C):#OQ%p000*:;IC<>>>>>d@@@@#o*oWUccccm
				   &W&W%mZZqBW&@@@$@8?>>>><><t0a/MO*jt@?>>c/;*O0O@ZQQk|:;Z+>>>>>d@@$@#*o**qccccm
				   M888&ZZZmd@&WB@@@B_>>>>>>>tO#;>&Ob<#n>><Y;XqQQ&hQQLU;:C_>>>>>*@@@@Mo***Bccccm
				   mZmpoBqmZk@&%a@@@@j>>>><<>]M#_:>pq/kn>><w:Id0Qq#QQQJ:;C_>>>><%@$@&&M**o%Ycccm
				   ZZZZZZmZ#@M8%%&@@@L<><><>>+Bmx::mO&]n<<<X<;d0QQZQQLJ:;O<<>>>?@@@@#*WW**8Ucccm
				   ZZZZZZqMBW&8%%8&$@#~>><<>>>wmQ;:?od]<><>]wIvpQQQ0QOu:+c>>>><d@@@Wo**8&*WJcccm
				   mZZwwk@BoB%%%%%&%@@r>>>>>>>_hd+;I#0)>>><<U?;k00Q0Qh_;h[>><>?@@@%***oo8&&Jcccw
				   &88MaB%8%%%%%%%%&%@*~<>>>>>>qwM!I#O)<><>><b]i&OQLorIO/<><><U@@8*ao*o**&%Jvccq
				   LLLCLk8&%%%%%%%%%W8@u<>>>>>>-hOokq0{<<>>>><Of>vLJt_0u>><>>)B8a*hqppa**o@Xcczd
				   LLLLCZ@M%%%%%%%%%%&@B]<>>>>>>(#ZQO#~f#Mm}><<Xb({)Jd[<><>>{d*0Q0&0QQQOboBXccJb
				   LLLLCLB8%%%%%%%%%%%W@mi<<>>><<+J8m+thQ0ObM}><<---<>><<<>wMOQQQQZo0Q000Z8cccOb
				   LLLLCC&8%%%%%%%%%%%%*@J>>><>>>><~>to00000Zd#Lf<<<><<>t0Mb00QQQQQ*qQL0Qmmcczpb
				   LLLLCLWW%%%%%%%%%%%&B8&v+><<>><>_nM000000000qMB&ZOO&&8%#h00QQ0QQL#O0QQpYccUdb
				   LLLLLLo&%%%%%%%%%%%#@paW%c-<~_-b%a00000000Q0O0qWB8*kbhkQMmQQ0L00Lp*QQLacvcmbd
				   CCLLLCo8BB%%%%%%%%W@M0Oq*8BWW&odm0000000000000QOOZO0m#0QOWQQQQQQQQhdLOkccUbbb
				   CCCCmpM%%&8%%%%%%%&BZ0000mbdwOO00000000000000000000wM0Q0QbbQQQQQQ00#mbCzcwbbb
				   0LUX@@@&&@%*M&%%%8%Ww000000000000000000000000000Q0wM0QQ0LQ#OQQQQQQQ0MhccQdbbb
				   h?+~k@@#+>nb@@@@@@@@*00000000000000000000O00O00Zh%hOQQQQQQOMQQQQQQ0QbmcUddbbb
				   ]<~<(@@$BapW$@$$$@@8O000000000000000000Oko##*ahhq0o0QQQ0QQQkpQQQQQQQ#XYddbdbd
				   O/(f*@@$$$$$$$$$@$%@p00000000000000OOq#MpWQQQQQQQQapQQQQQ0QO%OQQ0Q0O0XpbbbkhW
				   h@@@8W&@$$$$$$$$Bo&*@p0000000000000O8bCQQmbQQQQ0Q00#Q0Q0Q0QQQo0QLQQ8zqbbdM%ab
				   @*%%8%8&&W&&&&&W8%%&%BbOO00000000OwohQ0Q0Q#m0QQQQQQpa0QQ0QQQQhdQ0QbQpba8#abbb
				   &%%%%%%%%%%%%%%%%%%%W8BkO00000000Z&ZWZQQQQL#00QQQQ0QomQQQQQ0QQ*OQmMboW8Wbdbbb
				   8%%%%%%%%%%%%%%%%%%%%%*@8mOQ00000w00mW0QQQ0kaQQQ0QQQO80Q0QQ0QQwWL&oBMoWbbbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%WBB*Z000000000qW0QQL0a0QQQ0Q0QpbQQQ0Q0Q0p8%#oo*8bbbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%W8%@oq00000000d*000QO&OQQ0QQ0Q*wQ0QQQQ0oMWooo&adbbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%&oBB%kZ00000OdaO0QQwkQLQQQ0QO#QQQQQQ&kbWoo##dbdbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%8&M&@%&*mO00Om&O0QL#q00QQQ0Qdk0QQw8&ado%8Mbdddbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#@##%M*ohkp8#O0Qo0QQQQQQQ*ZOh&oo8kbkhbbbbbbbbW
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%8%B*adbk&#&&WWhmq*0QQQQQ0mW8*oao*Wbdddbbbbbk%@
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%o@@adbh#ooooo*W%WdLCCpo%W*aooooo%qzXpbbbbbbk%
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&@kbbB*aooooaoo##MMM#*ooooaoooo8LccXqbbbbbbk
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%BBbbdBoooooooooooooooooaoooooaw#LcccQbbbbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%BdbbBoooooooooooooooooooooadO0MYcccYdbdbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Bbbb@oooooooooooooooooooadZ00OMcccvXbdbbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%BBbbb%*ooooooooooooooaahpZ0O00qZcccccddbbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%8@bdbkMooooooooooaoahbZ000000OMXcccczdbbbbbb
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%M@adbb8oaoooooooaqmO00000000OhOcccccYbbbbbbd
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%8Bobbd#Mooooooooh00000000000qkccccccCbbbbba&
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&Bbddd&*oooooooZ0000000000mazccccccZ#kbdaB@
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%k@o#bba%*ooooooO000000000mWXccccccccZM8adbk
				   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%W&@%*hbbda&ooooooO00000000wazccccccccYddkoW*b
--]]