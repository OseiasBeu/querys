SELECT TOP(70) *
--'BDP669|00001/'+NSORTE+'|2019-02-25|2023-02-25' 
FROM CAPITALIZACAO_HOMOLOGACAO..RANGE_MILHAO 
WHERE NSORTE NOT IN(
'000119',
'000360',
'001266',
'002262',
'004882',
'005970',
'007746',
'009393',
'011083',
'011105',
'011654',
'012269',
'012835',
'012935',
'014357',
'014668',
'015427',
'016324',
'017853',
'017991',
'018041',
'018235',
'018351',
'019638',
'020643',
'023050',
'023089',
'023993',
'024011',
'024418',
'024526',
'027544',
'028040',
'030207',
'030342',
'031874',
'032959',
'033667',
'034525',
'035749',
'036012',
'036915',
'037878',
'037956',
'039184',
'040359',
'042561',
'042713',
'043748',
'043954',
'045686',
'046820',
'048818',
'048934',
'049695',
'050111',
'051054',
'051464',
'051791',
'053809',
'054116',
'055886',
'056717',
'060568',
'061413',
'063946',
'065246',
'066518',
'068097',
'068372',
'068440',
'072414',
'074158',
'075724',
'075997',
'078807',
'079444',
'079463',
'080886',
'081483',
'082016',
'082504',
'084047',
'086143',
'086813',
'088218',
'088514',
'088535',
'088544',
'089212',
'089386',
'092972',
'093442',
'093723',
'094953',
'095576',
'096419',
'097106',
'097550',
'097689',
'098098',
'098208',
'098826',
'099014',
'101143',
'101625',
'101651',
'101746',
'102664',
'103443',
'104981',
'105623',
'107406',
'107524',
'109053',
'109346',
'110218',
'110402',
'110998',
'112818',
'112923',
'113085',
'113223',
'113468',
'113956',
'115136',
'115896',
'116820',
'117456',
'117548',
'117756',
'117780',
'118432',
'118571',
'118751',
'118888',
'118935',
'119407',
'119790',
'120158',
'120409',
'120433',
'121951',
'122084',
'122654',
'123724',
'123905',
'124904',
'125459',
'125467',
'125623',
'126475',
'127353',
'128075',
'128200',
'129831',
'130505',
'130517',
'130991',
'132617',
'133437',
'133922',
'135351',
'135881',
'137214',
'137587',
'139681',
'142247',
'142685',
'142853',
'143142',
'143296',
'146118',
'147418',
'147615',
'148204',
'150475',
'150692',
'152578',
'154247',
'154533',
'155821',
'156893',
'158171',
'158856',
'158964',
'162406',
'163551',
'163924',
'164054',
'164563',
'165230',
'165681',
'166008',
'167752',
'170718',
'171073',
'171624',
'173415',
'173745',
'174456',
'175204',
'175918',
'177333',
'178429',
'178665',
'180389',
'181257',
'181730',
'182278',
'184957',
'185499',
'186338',
'187041',
'187165',
'188293',
'188673',
'188956',
'190577',
'193858',
'194950',
'195585',
'196073',
'196197',
'196703',
'198245',
'198298',
'198895',
'199150',
'199314',
'200414',
'203961',
'207600',
'207867',
'208450',
'208875',
'211115',
'212334',
'212459',
'213971',
'215382',
'215617',
'216557',
'219232',
'219475',
'220091',
'220743',
'221733',
'224278',
'227493',
'228292',
'228944',
'229249',
'229464',
'229518',
'229930',
'231776',
'231905',
'232441',
'232467',
'232827',
'232936',
'233855',
'235862',
'237367',
'238912',
'240213',
'242358',
'243430',
'244968',
'245233',
'245615',
'246040',
'247076',
'249512',
'249532',
'250210',
'250601',
'250712',
'251494',
'251564',
'254430',
'254533',
'257753',
'258789',
'259971',
'261168',
'261932',
'262356',
'264881',
'264965',
'265084',
'266070',
'266767',
'269776',
'271234',
'271996',
'272289',
'274931',
'274962',
'275539',
'275855',
'282973',
'286578',
'286812',
'287149',
'290007',
'290686',
'291474',
'292852',
'293055',
'293706',
'294300',
'296324',
'297053',
'297075',
'297333',
'301753',
'303785',
'304132',
'304503',
'305262',
'305577',
'306338',
'306846',
'307156',
'307871',
'309957',
'311685',
'312232',
'313263',
'313739',
'314328',
'314366',
'316693',
'317182',
'317866',
'319641',
'319781',
'320817',
'320961',
'321174',
'321179',
'322009',
'322525',
'323262',
'324199',
'324921',
'326158',
'326302',
'326421',
'327866',
'328332',
'328969',
'329004',
'329447',
'330146',
'330188',
'331879',
'331938',
'332339',
'333608',
'333783',
'335185',
'335252',
'337164',
'338836',
'341008',
'342545',
'343868',
'344084',
'345613',
'345836',
'346433',
'347004',
'349773',
'349857',
'349960',
'351664',
'351796',
'352595',
'354230',
'355238',
'356070',
'357087',
'357585',
'358283',
'358503',
'359186',
'359585',
'361479',
'362031',
'363052',
'363941',
'364445',
'364695',
'365755',
'366081',
'366085',
'366177',
'367719',
'368286',
'370771',
'371681',
'375844',
'377617',
'377858',
'378357',
'378393',
'379537',
'379875',
'379946',
'380734',
'381401',
'382030',
'383580',
'384461',
'384594',
'384926',
'386052',
'386444',
'387057',
'387992',
'388391',
'388858',
'389206',
'392405',
'394179',
'394525',
'394627',
'395654',
'396021',
'396718',
'397340',
'398876',
'400356',
'401226',
'402064',
'402515',
'403253',
'405611',
'406470',
'408548',
'410370',
'410529',
'410759',
'412227',
'412630',
'413773',
'415281',
'416136',
'416590',
'416598',
'419225',
'420285',
'420772',
'422056',
'424593',
'425233',
'427138',
'427318',
'428172',
'428323',
'428768',
'433719',
'434357',
'434474',
'435558',
'436898',
'437854',
'438061',
'439944',
'440530',
'441411',
'441661',
'441781',
'441792',
'441944',
'442315',
'442653',
'445536',
'445642',
'445879',
'446242',
'447685',
'449216',
'451423',
'452516',
'452894',
'455625',
'455853',
'456623',
'456709',
'457509',
'457577',
'458224',
'458790',
'459294',
'460750',
'460788',
'461087',
'462624',
'463654',
'464630',
'466879',
'467000',
'467393',
'467747',
'468927',
'468972',
'470378',
'470627',
'471398',
'471443',
'471866',
'472552',
'474455',
'476507',
'476874',
'479451',
'479822',
'480183',
'481137',
'482437',
'484157',
'485502',
'485963',
'486972',
'488076',
'488612',
'488823',
'489842',
'490581',
'491087',
'491985',
'493406',
'494722',
'496286',
'497200',
'497519',
'498072',
'499378',
'500702',
'501092',
'501128',
'501648',
'502496',
'502616',
'502825',
'503497',
'503710',
'504918',
'505609',
'505860',
'507008',
'507814',
'508058',
'510170',
'510345',
'513995',
'514034',
'517298',
'519563',
'520204',
'522990',
'523122',
'525557',
'527337',
'527927',
'528021',
'528456',
'529272',
'529750',
'530287',
'531615',
'531960',
'532138',
'532609',
'533868',
'533925',
'534097',
'534728',
'535317',
'536767',
'536801',
'540678',
'543282',
'544150',
'545650',
'545931',
'547661',
'549300',
'549514',
'550783',
'550839',
'551274',
'551732',
'552027',
'552367',
'552416',
'553046',
'553601',
'554995',
'555394',
'555444',
'555474',
'557252',
'558457',
'558600',
'559012',
'560053',
'560107',
'561383',
'561434',
'561438',
'562418',
'564552',
'567533',
'567999',
'568023',
'569943',
'571767',
'572593',
'572726',
'573750',
'573817',
'573820',
'574433',
'574984',
'577140',
'577218',
'577238',
'578108',
'578159',
'578640',
'580711',
'583020',
'584873',
'585832',
'586113',
'588065',
'588294',
'589576',
'589735',
'591140',
'591902',
'592882',
'593127',
'593172',
'594373',
'595583',
'595848',
'597061',
'598060',
'598477',
'598828',
'599137',
'601070',
'601274',
'604263',
'604389',
'605322',
'605516',
'608281',
'608323',
'609257',
'609509',
'609782',
'610383',
'610885',
'610998',
'612488',
'613244',
'614297',
'615400',
'615697',
'615699',
'617587',
'618593',
'618604',
'618708',
'619704',
'622741',
'622778',
'623036',
'623281',
'623391',
'623564',
'625015',
'625479',
'626669',
'629256',
'630936',
'632651',
'633012',
'633283',
'633435',
'634256',
'636143',
'636651',
'638961',
'639295',
'642402',
'643002',
'647480',
'647657',
'647736',
'648174',
'648178',
'648732',
'650384',
'651704',
'653439',
'653779',
'654430',
'655844',
'656170',
'656980',
'657676',
'658187',
'658838',
'659748',
'660465',
'664058',
'664909',
'667325',
'667908',
'667953',
'668012',
'670729',
'671528',
'674079',
'674625',
'674823',
'675687',
'677271',
'678613',
'678636',
'681045',
'683349',
'683865',
'684298',
'685314',
'687524',
'687897',
'688564',
'689765',
'689792',
'691248',
'691260',
'691765',
'693535',
'694467',
'694816',
'695847',
'696073',
'697307',
'697607',
'699341',
'701101',
'703776',
'704764',
'705056',
'705197',
'706861',
'707098',
'707524',
'709144',
'712054',
'712520',
'713089',
'713695',
'714032',
'714220',
'715630',
'717622',
'718132',
'718786',
'719280',
'719390',
'720878',
'721017',
'721181',
'721992',
'724641',
'725433',
'725921',
'727532',
'728186',
'729710',
'730599',
'731493',
'732102',
'732527',
'732610',
'734103',
'736055',
'737004',
'737196',
'738021',
'738508',
'738515',
'739520',
'739633',
'740291',
'742373',
'742483',
'743233',
'743734',
'743820',
'744589',
'745756',
'747829',
'748195',
'749012',
'750599',
'752420',
'752511',
'753542',
'754613',
'755657',
'756024',
'757744',
'757942',
'760550',
'761581',
'762090',
'765299',
'765384',
'765960',
'766554',
'767695',
'768195',
'769168',
'769734',
'771016',
'772207',
'773277',
'773980',
'775512',
'777077',
'777468',
'777484',
'778537',
'779670',
'780332',
'781399',
'782033',
'782081',
'782411',
'784325',
'785364',
'785577',
'786484',
'787695',
'787739',
'787753',
'788713',
'789114',
'789494',
'790268',
'791874',
'792403',
'793564',
'794392',
'794960',
'795976',
'797326',
'797738',
'798560',
'798715',
'799455',
'800249',
'801089',
'801284',
'801435',
'802267',
'803398',
'804715',
'805309',
'805387',
'805906',
'808346',
'808595',
'809421',
'810155',
'810380',
'811369',
'812378',
'812651',
'812764',
'812999',
'813029',
'815121',
'816724',
'816787',
'816822',
'816896',
'817918',
'817969',
'819325',
'819617',
'820854',
'821887',
'821967',
'823255',
'823833',
'825752',
'827181',
'827452',
'828561',
'828867',
'829826',
'830620',
'830883',
'833304',
'833714',
'834682',
'836213',
'837392',
'839273',
'841852',
'842289',
'842599',
'842651',
'843425',
'844646',
'846810',
'847857',
'849108',
'849222',
'849486',
'850568',
'850608',
'851945',
'854195',
'858490',
'858624',
'861751',
'862328',
'864328',
'864809',
'864837',
'865521',
'866002',
'866736',
'867592',
'868563',
'868979',
'870223',
'870519',
'871301',
'872540',
'873234',
'876155',
'876997',
'877169',
'879471',
'880522',
'881308',
'882062',
'883681',
'883812',
'884272',
'885162',
'886369',
'888373',
'888957',
'889348',
'890302',
'893175',
'893406',
'896696',
'896812',
'898407',
'900077',
'901675',
'902201',
'904617',
'904789',
'904825',
'906600',
'908137',
'908561',
'912112',
'912313',
'912761',
'913395',
'913659',
'915085',
'915303',
'916386',
'917125',
'917790',
'918149',
'918558',
'918853',
'919206',
'920155',
'920231',
'921444',
'921837',
'924057',
'924527',
'926878',
'927873',
'928351',
'928475',
'929332',
'930060',
'931526',
'932879',
'934846',
'934988',
'935644',
'936045',
'936282',
'938269',
'938776',
'941023',
'942236',
'943212',
'946668',
'947088',
'947377',
'948431',
'948818',
'948887',
'948954',
'949287',
'949451',
'949510',
'950713',
'951143',
'952165',
'953939',
'954073',
'954677',
'955713',
'956548',
'957558',
'958971',
'960537',
'961359',
'964521',
'965890',
'967002',
'967121',
'968439',
'969254',
'969463',
'970017',
'970181',
'970876',
'971080',
'971502',
'971775',
'972529',
'973151',
'973229',
'973525',
'973877',
'976589',
'978218',
'978770',
'978988',
'979070',
'980420',
'982942',
'984589',
'985685',
'986482',
'987213',
'987322',
'987324',
'988591',
'990805',
'991995',
'992901',
'994129',
'995277',
'997078',
'998726',
'999633',
'999883',
'999920')
ORDER BY NEWID() DESC
 