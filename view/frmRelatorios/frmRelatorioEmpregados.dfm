object formRelatorioDepartamentos: TformRelatorioDepartamentos
  Left = 0
  Top = 0
  Caption = 'formRelatorioDepartmentos'
  ClientHeight = 642
  ClientWidth = 1146
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object relDeptoEmpregado: TRLReport
    Left = 0
    Top = 0
    Width = 1123
    Height = 794
    DataSource = formRelatorios.dataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object rbHeader: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 42
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rlDate: TRLSystemInfo
        Left = 3
        Top = 10
        Width = 39
        Height = 16
        Text = ''
      end
      object rlHour: TRLSystemInfo
        Left = 1005
        Top = 0
        Width = 39
        Height = 16
        Alignment = taRightJustify
        Info = itHour
        Text = ''
      end
      object RLImage1: TRLImage
        Left = 434
        Top = 3
        Width = 138
        Height = 35
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000008A0000
          002308060000004B9492420000000467414D410000B18E7CFB519300000A2F69
          4343504943432050726F66696C65000048C79D96775454D71687CFBD777AA1CD
          30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A8404411110145
          90A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979EFE5
          E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A38D3
          578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809FC8B
          DE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9224E
          CA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951CCEC
          641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B5833
          4998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F17200
          70A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCDA07B
          723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9A222
          5B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787EDAFFC
          52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBFF1C5
          7968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D23F1
          76BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4FF38
          F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379FFA9
          89FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950DCF5
          DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE712184C67
          09F9198B6BE26B09D08000240115C80315A001748121300356C016380237B002
          F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA412368
          01274007380D2E80CBE03AB809EE800760048C83E76006BC01F3100461213244
          81E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016A808
          2A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9B032
          AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005F83A
          7C071E819FC3B3084088080D51430C1106E282F82111482CC247362085483952
          87B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A436D40
          15A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C3A13
          5D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A4C31
          E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31EC39
          EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879BC14
          5E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F274813740876846042026133
          A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE23C9
          90F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9917C
          91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B95632
          47B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4A9B4
          9F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1A0B8
          5058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2A1B2
          59B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B26349
          CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE41F29
          A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F4950295
          D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256654A
          95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15AAD5A
          BFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D3573357B3
          59F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E8E4E
          B3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF4AFF
          86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1A811
          CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C5798
          E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283CBEE
          5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F4631
          E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED759CE
          595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8E1C8
          766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EAE15A
          E8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E76ECF
          612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C61DF
          15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F5015
          F034D0343037B03788121415D414F426D839B824F841886E8830A43B54323432
          B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3ABDD
          56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A198D8E
          0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63C729
          E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A12E6
          12FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483D482
          D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319F619
          55196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B572D
          7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B7FC8
          33C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D56C47
          6DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2AB85
          9DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65F4B2
          C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C657DE
          A972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED67AD4
          B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C1C0D
          3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5ADB4D6
          A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1F6EC
          F6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E2939
          4B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013DFD97
          BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D167D
          6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEBF26D
          AFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0E921
          FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1C69E
          FF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EAF3F9
          E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8EBC5E
          F6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC878A
          8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E00000009704859730000
          0EC400000EC401952B0E1B000024E64944415478DABD5C099CCCE5FF7FCF7DEC
          EC7DDF6B6DEE9B1C252A1DE456214AA8144A424889A888484A2414951C898A54
          5249874849B9EF5DF6B2E7EC313BF7FFFD3C33B33B7BB8FAD5FFEB357666BEDF
          EF73BE3FEFCFFBF3799EEF28DC3CC043FEC74301BFC3EDF747E139E7E2CBCE5B
          9C2E275F6E7EF65CA414972814502995502B55507BCB72D72CF38A479D2DB9FA
          C35555B14B096FDBEA2AD3ED7D29AFAE4C5F272FD3BE4BF5B5DAEDD5FAE82DE7
          2ABBECF22BA37699571ECB6B9F0BBF56FA805267C57EF554F0435EA919B96579
          C83717A3B8AC0C15560B1C048CB84CA35643AFD12128C084305320C20C9E5790
          2E409679F58D747AAFBC8A09BCC251D5271F7A14755C71ADF55C7A8AAEBE3467
          D5C08A3BAE6ED6FFE108889157FDE3DEFA0EC5A518C537B10EBECE14E7E274D6
          79641717C0622FE709B2864603B55A05120894FCACE41B855B01258B53F166B5
          428540BD01D12191880F8F46B05A5FD54851A5E252B071D76881E212D778CECB
          D67BCB525CA2A4CACECAAADD92F93C6DF067140F98DC7EA554BDBB14D0FCCFFB
          5A7435365EA316DF0C287C2DBEB6E9BC3CC755F5D1C53E2B15FF8C532A8152D7
          61E5EBBBBFF7E14C610E2C2E07D45A0D546A8F6BD10A60B04EAD4A2541C24FFC
          AC940D51C9E6F11F5D93E8BB496D44FDE878A484C678D9FB7240F10DBC0F28CA
          CB9E77BB9595237425E8D5068AFF5D4EEFB5AA3A207A25DF5083212E73D42CC9
          E572C9F1ABE58EAEE1A85D2601A1AC0336BEBE5FE69A4B1DB55D8F7794D22D25
          F8E6B79F91575102954E031D5D8B8A40D06A080C8570352A59918ACC217489E8
          AC8A8D50CA062825407C1874385C02CE88098D40ABA4C6D0F92A54566FFCA50F
          EF24BA0846965D758F1B55D65E7D82AA97EB94F54B0A669B39379209E16D870B
          9EC9724B4B775596E1627DE2FB4ACAF655250A502971796AF7014FDCA2F20344
          D5390F9B5401FDF21EC85797EFA3CAEF627F77EDF23382BAAEF50D90D363AC42
          C8D55161F5F6FA338A1720A239C7F2B3F1CD9FBFA2C2ED404272324A8A0A61D4
          EBE1B43A101E168CA2E222E17D24405442B82A941EB0B0620D0B31F05A25BFB7
          DB6D64212D81E28492CC535850880863285AD56F089342233B24FB7409645F4A
          D7B8D90985F20A962BAFB99CEBF2BD557840A554D459DFFF2200AFB63FBEB3D5
          99E1DFAAF5DFE94F2DA09C321760DBFEDDC8B796213E2A1A6EAB9D02350036AB
          0DA6C040D86C16E8E882AC762B81419070C2342A0FAB0846D1A81430EA0C70DA
          5DD4316A5E6F230B6950566125EE5D2829B5203E24022D131AC0C0FBAED472AB
          8391152751E16DA3DE6B1CFC1A82A838CF9205592DDB52C7FD3C77FA6C26416B
          4768481012A342BDDD7541E173307E6D387FD18CB31919D0EB75888F8B456C48
          406559EC927C29943E37C6BAD91E5D1DEDAEF092868FF80401A9F9DECAEFED4E
          0FDB09ACEB54B5B8D0031AB7A216D35638FD3CB6D0812A1F9779CE09D2142E45
          44A482119C4EA774FF2A7A83B0006D35A054383C64E6FBB2763BEA028ADB33E0
          42932CDDB9190515E574375A6A0B3552E21260319722303000E58C74E2626291
          999D0995860CC2DE6B39522A858759A45E6161010623BFD74890E8038C282D2B
          95FAA5B0B49413E780DBE644FDA804348EAD07AD3F4A2A27ACCAB61E18330D65
          0EBA32951A65C5F9D8F4EEAB08D0E9F0C917DFE1DD75DBA00E0886D362C6809E
          5D30FCDEDE952EC7C222DE5FBF1D3B76FD82BCFC12B29A0346830E717161786A
          F408B4488DAD36104515362C5ABE1E3FFEFA0719B3141ABAD8101A46837A71B8
          B7D72DE8747D4B2C5CFA0176EFFB0B6A19C939BD69030582838CE8755B57F4BD
          AD839C388BCD8EC9B3172323A7002A1599D369C3DD3DBA6048FFEE98F2E2621C
          3E9D25F59ED473EC57805E8DFAF512D1B9437BDCDCAE81772C5CB26CB717CEBB
          F61FC62BAFAF84D16892E363A5E1F667992307DE252F9F34EB759C4CCF26F834
          048C4B0A57C1AA9EF740EB86C99839650CE705D8BE6B2FDE5CB9017A6320AB70
          CAB2FA75BF090F0DEC7905A0B83CE8DA46E1FADDA9839C5C13F4EC725A4212CA
          0AF29140B014F16F5454240A2FE621382C140525851E0651ABA44E110257C34E
          1B08A0E08020D82D76E80D7A1431940E080E447E21DD95703F65663281304DA0
          53C3E6883584782101541703901FD23AF54791830E8D035E947B1E7987BF4230
          5DDBA2951F63C6AB2BA0098E86BD341FE347F6C30B131E9677E59756E0E109B3
          B1E78FE32C420DB74A23CB179646C4203A4C8F97A78E46EF5B3BCAEBCBF8DD53
          D35FC796AF7FA601E864142787852F5BB91923FA77C582594F63C4D373F1A9B8
          866D56293C7924858C941CD0B96D18764F6FBC387924CA6D0E741FFC148E9CCB
          62F574C38E323C39F21E4C1B3B14770E9D807D8733A0D1792D5C182941A79501
          8213A9712158F5D64224471AFD2D07E3672FC3BB1BBEE0E40649905610D83D6F
          6983375E9A88D0003D6E1BFC04F61FCB26DBEB7987832CAC92CE4C25FA406649
          61791B96BF82FA095118F4D8547CF9F371E88C013C4FA0D0A03B344FC6F6350B
          AE00141E87F372B0EEC71DB06815AC4C4D3A552248634093060D909F93859888
          68E4E7E6A159D346F8FBE86138D56EAFDB517B126CD2F590C2943A049B4C08D1
          07A0A8A418465A65417E01147A0D0A8A0B6171D861978D73224C69C42D2DDAB3
          2E6F2A4F02C527C82039BE49D7C12876B0F30464514E06720F6D8791807BF383
          4F3163C12AE883636037E7E189E1BD317DDC70D9A9EE43C663EF917330058448
          ABB5B9EC923255B43637637787B51C3174292B164C43BBA6F5F1F18EDF30FCF1
          A908894EA41877414F1E16A2D65C5A0E73411E8EFEB809D1D1A1183B6D013EFB
          7A0FB4A650285C56D8090827874FC7497793298BF372F1FE9239E87E6B5B741F
          F4148E67E4D23768A176583076445F4C19751F7A8D9882FD47CE9395749EA4A0
          C843B14EE11E14B47E5B85057AA503BBBE781FC9E11EB7576277A249A70170E9
          83C9E26AF99D93BE3732C085354B66A2E575F570E79027B0EF680E0C64730D7D
          B1D30B14B7D3810A6ACBFA31267CBC6A3E748620DCD6F77EE45B4404ABF20085
          C31D1DACC5FB8B9F47F3B44478C4B1AA9A389740A9E09B4FF6FD80BDE74F414B
          7A16118E9E15D58F4D829D6E232224140E6A8CB0D0509497964063D020AFB498
          63AFA066F0824480869F0D1A3DC20343A0A08025AFA2D4520E9D468B224B191C
          0A17DD8F5902C5E674C15D6E43A706AD512F24B2067EAB18A549D7415EA050E7
          304CFF72C3128492A1D66CD88AE5EF7F0A0DC16023BB8DF30265E7BE63E83774
          3442625338990A6AA512A4C4C770503438773E0B4E21A239D816BAB1098F0CC2
          B363EFC3C3531762DBCE5FA03406C365ADC04D1D5BE1CEDB6FC6D9B36790773E
          034BE74C80854D1AF7DC027CBEE357A839D82A57053AB66B86C8C8086CFE7C27
          14B4643B5DF61D37B6C0F2D79EC55D8326E058460EDB6D808A6D183BA29F0728
          C3A7E2B723E91C4323DC14FB91E141D0D3CD9DC9B8000D8D8BE6C7A0C18C8177
          DD80D7673C254761C357FBF0E8A419080C8D96DA4566C9E9022ACC3998FBC244
          8CEC7733C63D3B1747D30B5158528E9CFC62B814642C1A4844B01151E1C14808
          3362F1BC6974D9DF63C6FC15B0A98CD23C550485DDAD86C669C194B103316668
          BF4B03E5646101D6FEBC03B92E0B0C5A1D41A28696931E4E7FD83031896EA710
          61C1210449199213E2702AE30CB5062319024A2B812244AC47CC6A156A84921E
          4D7A03CA2C16024F8F12B3192E0E46418919E5F60AD86839765A91834239C618
          823B1A5F5F43A6F80365208162E080D3926899A989F104A51B85D41179C5E5FC
          5E4B0D55842725501EC4D819AF63E3B6DDD0D1FD396D56A4C647E09D45D324C5
          AFFD783BD66EFA0636328B83E2B66DC3786C7EEF158C9AB8005F7F4FA09842E4
          E425C484A04DB3EB909818839EDD6E41CBD4085408A03CBB009FEEFC956E2390
          D35981D56FCF4644580C6EEE3994F585527B95A3714A0C3E5FB78840998863D4
          0C0A8D914031D7028A9AA0B09715632875D5F0C1B763F547DBF1FEA66D045008
          DB5D8656D7C5E3A3E5F3116A50E0EEC79EC74FBF9F8096CCA5667F854815BA43
          3063A7364DB07ED9F3C8BB584016D160E5BAAD58B9762BDF1BE8FE4B3064C09D
          1833BC2F02387C1151E11833E5156CFDFE00CB62C04120C99C974AC76BCDB8AB
          4B3BBC3167324C1A0F44441DBE805441EA747F7FEE28B6FCFC039C813A183921
          3AB28981BEBA4D83C6C8A655354EBD0E7979F948494CC685F433884D4C2058CE
          D23A5D92BE441656EB0D8F437446444744C15C5C0C135D506E5E1EC2697559F9
          7950D2A5E514E5D3153825E5DA499F2A9B1B77B5B911A174733E2E51C888C407
          14E17A74122822A3215C9627625050F57BC49E853AE88911BD31838CD277E464
          FC7A484C848916578059531EC798C1B7CAD232F2CAD06BC8385C2C133AD18610
          0EC8EEEDABB0E3BB0378F889A7111853DF1BA5507F58ADD45F0A025E89CFD72C
          66DF233096CCB3F9DB3D64944068A84992E222190D3A1929155243E9602D2FC1
          6DED1BE3DD2533A446397E2E9740A9CD28FB8F66D0231960A5B61AF7F07D983E
          66200E9C48C7C0C7A6A3D4461B76D868A06158F5C62CC4D3E535ED721FCA5D5A
          298A5B366BC4C8B104A758B6C87358E8760FFDB41931811AD9C737D67C8679CB
          D6511A102864FDB123EFC5CCC707C9737F9E3883C7A62CC0999C522859568776
          2D51515E8683874FC1CD798C0934E0ED054FE3FA2669D21D0AD7EF8BB214658C
          A7DEFFF55BFC71EE04230803F4BC41475610E22A8C747A539B76387BEA3492E2
          1371313B1B4D1A3742D6F9F388888CC4B9CC4CBA163302183E3B2908C34CC148
          8A89476E6E36053119A5A40CE15111B87021935AC284CCDC5C9438AC52543A68
          1576E14319A7B54D6E8C96B1C91E99E215B3CABA80E2155E22F1A6A6685653A4
          0A2616407972441FC92803C73C875DBF9D845600A5B410CF3C3912131EF4A8F9
          83272F60E8E8E9F4CF2EA9F68D64D05D5FAC445C7030E62EDB88D51F6F83CDEE
          F6809122D44D30DA68F56DD242F1E5BAB7316ADA426CF9E617BA088A59D8E022
          D09D5ED0BAD82F0781F2E15BAFA0EB8D4DD1831AE5687A6DA0F4168C2280428B
          B696505B1128CF8F1984DF0F9FC6A0D1CF13108C5AC86ACDEA45E0A3550BF1CD
          8EEF3179CE3B70B21C7B7929463F3294A1BB01AF2D5E019D2950F67DD223F762
          EA98C1B28F8B576FC6FCB73772E20D6C7B21460F1B80994FDE2F0D6FE9479FE3
          F9792BA10D8C8482EE6DCAC4E1525FCE59F81E5CEC6F39DDF1B4712330E9A17E
          5E055045298A029BD5BD78C766649517B3F13AA93974743D015A2D5AD4BF0EA5
          3979484C48808D6E27222C1CC54545F47BA144B71B51044BC6850C996F2825CA
          83028371916010202965A7F48C4E4AA871F446037DA7194E324056619E14804E
          DE6FE3C4BB189AA586C6E29686ADA929FC80522966AB5C8FABA20C37776C0D2D
          35CF998C0C9C4AA706A026B2941561DC83BDF03C3BF9C29B1F61F1AAF5309AC2
          480C7684912537AE9A4B91A7C73C86979F7EFD0B07D12827B65E94095BD72E62
          D86FC7E11367111491808BD441B3E72EC1859C22C9124E47055223F4D8F1F94A
          3C356D3E3EF9662FDD6908D414B3364EA8D3EE4080518FB888200CE87DAB8C6E
          2AF85DAFFB2753A3644BC0A9EC6592FEA73E3A4402659FD0287A9D8CA8860DBA
          1B03FB76C6F2559FE2D31DBBA0A5E672B09F37B64CC1A6E573F0C8A4D9F86CF7
          DFBC3E90FD2F45D79B3A209CF3B0690BDD148DC149571E17A2C6BEEDABE584BE
          FEDE16BCBA7C03258660B8223C3AEC6ECC26500ACB2BF0E894F9D8B5F7900CEF
          B504FA0DEDAF8731C0889DBB7693E5194BD11D374D0997E3156A30F887A15064
          5794BB676F7E1F36D2AC5A443B147A5A0A3F232D259AA2F4BA844458A8FE2382
          82E9C7AC54FF9128339748B038A8FA4D86005828E2C444D8A9095442B8320416
          2EA942287882A480E012D4965F520433C5A2C32D92412E11C491E26DA4BC70F4
          68D6119A3A813288E1B1072825B91790FED776705CB068CD36BCB490561544FD
          40CBF10065380E53D075BCA33F82A352A5D876DB44E23082831B8AA3274FB34E
          460334040BDDD22383EEC2DCA9A3F0FCC2B558B9660DEEEC7E171A35A987AFA8
          438E9C3827435B87B50C6DD3C2B1EDC33730EA9905D822340AA30FB5AB1CFDBA
          DF88B6CDD260E4A03666E4D12435415AAE99DAABEFB029384AA02869D90A7B39
          A332463D8F0E96AE67DFD1F3D4083A199144461018B60A64D320F5A6201A3145
          A4A518931F1D8041F7DD8BA12326E248461EE7462F19D5466088249A4E4F312C
          579EE9262D45F8ECA36568775D4C25505C14ABB6F2023C46461140F9FB4C167A
          DE3F1E0E250303B28892519A9D632FB68968490AD40552C7D98A73F0F9474BD0
          A1497275A05C282F733FBBE11D68A82754B4781D41A2A1EF0BA12A171A25F7DC
          5934A89786D26233E263E26408181519052B41101B198BCCF40B888B8B237398
          111814880BD959080B0F93791343808EDA46E45DC2915B980F25C3CE74328E10
          B2227963A7FB11A2323A300CDD9B77420095BC5BE149662B65C24985C6C2F5D8
          3DE1B139371D5907B7C244C1FDE69A4F306BE16A6882D816BA982787F7AA0C8F
          874F78099BBFD983A090304F28E9745786A06E96E9A0C88B8D3061E5C2E968DB
          B81E526FBC8F510D41E5F46433C5C02959878B8D2929C8C19C8923E83AEEC6A8
          A914B3DFEEA5B152A3B84AB074EE44DC7553FB1AD19A1225044AEF07264B31AB
          A4165112288F0FEF2781D253BA9EF3D0687532A9E692D909A79C3C315315A5A5
          488B0BC32FDBDE21C3FC84A75F584AD9ACF16CF5E01857307A742BDCD01B4C64
          8320CF6A171968E4C0EE7871D2482C7E6F335E7D7B3D1C6A135DA10728B30894
          A51F6CC534463B013470998761A051565222C307BD310001A62009BC0A1AF323
          43FBE2E5490F56CBE328CE9795BA27AF5D065D88496E1BD05255EB68C922E116
          494BB9B563679C3C7A841A250145F905689AD618E72868E3E2A25194578CB8D8
          586453BB8830B18060888C8821582E2090216C5E7E3EA262A29191711EA6D020
          9CC9BA20358A08939D22C52C1884341D690C44F756372088619A4B519D511ADC
          D81FC556EA1302B8F86206B20EED9009B7D7DFFD18335F5D0E6D5024451B8132
          B23F663CF588EC5471B915E39E998F1D3FEEA36FD7B31CAD4C8C29443E85AFA4
          E8202C9E33051D9A37C445464E0DDA7643404422994E2533C89E143A1BE0B422
          2D21123F6E795B66ADC74C9E47D7B55B462C6AF663F14BE331E0CEAEA8CC9C79
          57A38B2BACE83D743C8E9ECD213875325A1B37F26E3C33F601F4B8FF29EC3D7C
          0E3A02C5CD715088A49D4A212D5CE9B6A34BFBD658F2DA0B08246E9E7EF12DAC
          5ABF8DEE2848A00193C78EC023F7F7A1860256AFFF0C2FBEBA54465B2EB24C8B
          B4587CB5610996BCF731E6BD410FA1A15B2ACBC3E32306E3850923D06DE068FC
          7522132AEA1B078D7C408FAE78F3E5097283D9BC955B3077D1721A7620DC0EA7
          8C7A4EFCF249B5D5150994A9A42D75A0091A8D5AAEDB683858214459C7C62D71
          E1D449D26A039414162299A172EE850B88898A21255720363A0EE919E9488C8D
          83991A24383808E914B8216161282E2E64C546645ECC4544041985518F5BAB21
          A364496DE214EE47CC45850DB181A1E8D1FA4604BA559E755085DB477878E98D
          55B03AD51E8B2A2D9269681199EDFAF500BEDEF52BADDBC860A09403DC127776
          BDA13207208E2DD4131F6FFD92AC26F20A0A0453D5776AD78AA0BABB728D441C
          E78B6CF870FD26FCFADB5FB088C51C82D84837DCA9432B8C7B6420440E55AC2B
          6DDAB613078F9DA641E9A0743930A06757346F58DFC32562B5D5BB08544161BF
          E283CDECB359669495D44A9D3BB544B71BDAE1ED0F3EC1994C4680C2AE59868A
          E31D44A19F562F059DAE6F8BF8104FC6B6B0A4141F7FBE83E359401DA661786A
          458F5B3BA263ABE6F27C667E3196AE5C87321905BA101912806183FBE3CCD9F3
          F866F71E8E021991DAA8738736E8DEA53D66CC5F2ADDA093DE42A40DEEEDD50D
          AD1AA7CAB22EE49762C9CAF7291F4CD2784B1949CD9BFE54B5B51F45B6A5DCFD
          DCC6954420C35C5AAD56ED59E413B9946843109AA6D6477161014521C5140720
          213A566A94A8D070D838C99E35A01204B0122B3F2B0DD422049558CB3033F412
          69FC42B1DACC81CF2D2A84D966F182C4ED6115BB1309149EFDDA7481D6BB9420
          B7DA78D79F2EB5F67B2D2BA025368FEB09D2ABFCCA7079D3EF8A6A65D93C3861
          F4E75FC255EE0DFB5FB690F917E2B7F5A0AEBEE31AFB7FA9C3ED1DC8AB294B51
          60B7BAE76E5D8F4CB176C349D5AA9432D31AC070AC55FD0628CFBD28A31E0BC1
          211604CD7427D11111A4281702C34371961A26292909666A9288506A938B79D0
          89241BA31E1DA3819C9C5C848687E3629148082990C9A84764667D8B554E8B1D
          8DA212D0B3797B4FD4A3F06C6AF2DF77E6B7C8596B07DEA507EF929B146A0E41
          E5B575DEE1B7B7C31F546EEFB96A2BBC7E05D42CEB72FB6E6AED7A135B1F70A5
          7D3AEEAAE6D5B8CE57D7E50C4A5E83ABA9C73B4A652EA77BF94F5F61CFF12374
          3F4686C76AA838A15A927338557F8F5BBAE2D081BF502F291917B372D1BE752B
          9C38791CD1F1B13844B7545C6A86916ECAC1503126381C4DAE6B88B3274F213A
          26061999E948A0BB3A75FA2CC2A22370FCDC19943A19522A3C6CE210FED9E240
          9746ADD031A9BEC798BC40A905883AADB5FAC6A1CB1D3507ADE6C69CEADF39EB
          2CF35A09C3BF8E2B6DD0AAB969A9FA6EB4DA6DBD6C5FAF6A33D8B51D3233FBD5
          C94358BBFB6BD88D3A6895224456C24051DBB16973641E3B85562D9B239BDAA3
          6593663878E02012EA2563DFE1BFE052BB655A59440B728718FF8652E5372758
          0A73296CA3A371E4F8515CD7A0014E9D3D030DA3A03339D9B07358C47E122759
          4943D733FCD6DE8811A2F35FA1EECBCD9C28DFB7BBAC6A2F8CF8231280C2E556
          0E367C3B1E3CC07579374BD51EFEBA4175A949AB73126B5062CD6BFC41E47BAF
          707B04772DB0FB5D5BB5975729F7A9A8FC3688599D2E4F1DA2FF2E8F26D4A83C
          77D9C539B1F2AC52558959B1D673AC200FCB776E4546452943438A59B1658057
          C49A82D1A6613364655E40787030ACE516344C4BC3EF87FF4601AF153B67942A
          85DC8FE2D9B4CBF09A952445C521222804054542D00650D816516DEB7021EF22
          F542B9D86120436497CD8194E0080CEB749B54DFFFEA76B23A674D94EFF48A1F
          6565E63123270FDBBEF80623EEBF173A6AB54327CEE28F3F8FA0CF5DB722C8A8
          BB4C59DEC9707BF7BCD6B559BBD235F85C85DB931AAF5696778FA5D75D785C9A
          EFA4A2FA9E5FBF6768EA762FFEDF546D0A5FB5FE0BCE472986328C8E65043A7E
          FAEB64FB18DC74437B7CF9CD0F3019B59838EA3E98ED6E2C7EEB3D04EA1478F2
          B1E195A54AA058F866F54F3BF0DD892350E8D450B3014646404D93535151508C
          5886C0E5D4280971F1C8CBCD8681A1EFB1F3676542CBB357D6F3124364A0204E
          A3BBB19750C89A0291959BCB90391439D436364ECAC5A22202C549B7E3A0CAAC
          40FFCEDDD03632F13F4447CD430045E5DDFBEA945BD47E3A780A2FBE3417EB56
          BFC5D05B83990B96631743EBB5EFBE86D810D3FF82CA7FDCCA7FC37DF8EFE2BB
          7DF093F871EF9F58BA603AEEE9D30D814937A069E3342C7D6D06C64C9C2DD306
          3F6C5D8DFD7F9FC4B05113D1B96D036C78E7B5CAB218C6CB856BFC7131136F6D
          DF8222A567A14FC7460631B46BDDA8097233B310CF1038333D832163077CBFF7
          1758556E0F15F33AB1675658A6D801A1A24F898F8C46A42908B9172F52CBC421
          2323033A9311E7F373E45A8A8DF78A102D491F4CB7D30701357BF89FBA203F57
          E1DD65FDDDFE5358BC7811562F5F88209D00CA0AECD9FF275E7BF56514705C0E
          1C3C8294E464C45377EDDDBF1F89D4673DBAB495252D59B1416ECCBABE4D4BD4
          4F8844804E5359D3F7FB0E61FD96AD18D0A31B6EEFDC0E078EA5E3E0E1E328B5
          58D0BA45731C3B769C91A2154306F64656762E8E90C9FEFCEB10DAB668869EB7
          5C2FD78A7EFC699F4CC58F7A682896AEDA88E3274F60D68C69AC07F8E4F39D38
          7CE404860DEA85D4E4046CDFF53BCA4ACB10CA50B943EB960836AA2A01DBE2F6
          61389F67C6F041FDD1A4611A26CE5C88C8201DD6AD9C854FBFFC0D6BDE5F8B15
          6FBD845F7F3F8C79AF2DC7EB2F3E8D11F774AF01142F7BAEDBFB23361DDC0B85
          410746FF68D7B429324E9FC27529A9282033346AD010C70E1F46425A7D0AD9E3
          722BA4C2273C05BBF015C098BF7E7C124AF2F2111E1589B367CE92E212719E4C
          A42558D27373A84D18E5DB5DB8FFE6EE681412551B24F8EF8122B1E805CAEE83
          67316FEE3CAC7967A1DC2D269279DFFEB007A31F1B8D714F3E817B070EC6175F
          6C47797939060CE88F4F3EDE88050BE663C5F2E530188DC82D2E677FB3B1F2CD
          97D1BC812737B16AE376ACFA70335AB5BF01DB37AFC75B6F2EC2AA77DF45A1B9
          1C11D171F86EE7D7E8D5BB0F7EDEBD1B4F3E3E1AFB7FDF877DBFFD89AE37DF84
          ED5BB762D386757877CD07F879CF3E4C9B329E003D881DBB7E46B326CD192C1C
          C29205CFE1A1D1CF2039B5019E9B341A1FAD5B8F2FBFFD093131F1D8B3673736
          7DB80A9DDB34AA1CD2A046DD10121A89D49444141416A0B8CC81F2C26C2C5B34
          1D3D6EEB8CB87A1DD06BC02094DBECF87EC717283ABAABDAA8557BAE476C609A
          B1E97D9C3117C894B949A345E3D41499860FF786BE6D5BB4C2FE3FFF80456C31
          F03DA2E1DD62203711B3553161E1080E30B14145088B8A402EAD4586CAD442A5
          E2F9A00A07BA366A816E4DDBC050179BFCBF01C5E37AF69F4AC7C48933B0EEBD
          C5880909C41BAB3763F7CF7B317ACC1398346902F6EF5887A56BBF405E4109A6
          3F3E08496D6EC783A3C623E3D85F583C6F3CCADD7AF4ED3B04ABDE9883A669C9
          28B5DAD1E7C149D4614AB46ADE14070EFC8E3EBDBAE3F489E398309E969D6DC5
          DC975EC657EB97A2CF434F2391119F58C769D522050F0DE8894726CE42702C01
          67B7A0DB4DEDD1A3734B74E8391C4161D1A84F8DF8F781DFB0E28DF958BC6429
          8222E3316C7077CC9AB51843F8B7CFCD37A0D35D43F0CA8BB3D0A54D9AECF11F
          A70B71FB800708C22E3871EC3472C8F443860CC1179F7D82E143EEC533A3FAE1
          817133F1EDFE13327B3DA07B572C9E31B67A66D6ED458AEF8BC345797877C756
          A4971622312111A5D414E121217263755060205D0627DAA095FB4A947233B5E7
          B915AF60864EA94514AF7758AC32D35B6EAD908F99E695148B87815044A66993
          581F7DDBDD8410B5BAF63CFE9B19A53A0F8F5F937DF632CAA9EC1C3CF4D8548C
          7CF07E346CD21073E6BC4ECB8BC6D0A10F60C2C429D8F5D97B14839F22FD4201
          664C188184A65D30ECD171387A703F263E3112F96516CC79E955AC58340BCDAE
          4B818D2279E4F8D928A006EB43D6387AF8206EEFD6059F6EDE84B1A306C31414
          8D471E7E0C5F7EF601FA3DF004E212EA41A73740CD88ECD5E98FA3CF7D63D0B9
          DB1DC8CFA2AB6FD702F7F4E88AEE83C722B5496B46A02DF0CBEE1D983175024E
          9FCBC2F32F2D40487008126323502F291677F4B81523868FC1E2052F13289E8D
          DA2B37EDC4D419F3307BE633F8E997DFF1E9679F63E386B57871F64CB46644BB
          78C6E3D8B9F76F827B02B434A4AF37AFC2F58D92516DADA72650C4F15BF679AC
          D9F5158A19A12424A570722F22282858462FC9C92938798E4256E90917C5F33B
          42EC2B7DA123DF87070452D4AA5046AA0E8F0C47517E11940CA373181A378B4A
          C4C02E772042A5BE96D9FD8F30E3897A6C7CBB64E5462C79670DA9D78594D848
          AC7AEB65B9EEF3F2DCD7B0FAAD57B065FBB7044A36C63C3C0477F61D8A279E7A
          1A7F1E3C804D9B3E63DF4C48890BC3ABB326232D294E16BDFFC869CC9AB71467
          A8EBEA274563C5B24558307F111E18D20F3171B1786AFC342C5BB610139F7919
          51B149C82F2EC1F6AFBF4554A8D866508A8D1B3FC487ABDF459B562D706797EB
          B1EEF3EF31E7B5B705BA31F8EEDEE8DFB32B9E20F3FC753C1DF7DF770F6EEDD2
          19F3E6BF4AE3D5C15C5C80E56FCE419B46F5645B5E7E8322953A6BD67393F0E1
          BA8FA96B4EB13D73F1E4C499484B4DC68C890F238FF58F1CFF220229E6972D7C
          16C135B719D4F548A9F8E2546911D67CBD15A78A2E52B89231B46AB18D1D1AAD
          160A875DAEC4AA155E8D225E3212538805DF4AD889356285D8E86B75426F77A0
          4D4A030CBCF136987C95FC97A1F0A5B0E1FDABAC912A170E29A7B00C960A2712
          624C7261545C6BB33BE59E56977757BE70B73687035AB112CDF39917CDB4683D
          D4625BA85259CD639673BCCE5090262744D08DABE56AB9DA9B9BB051A7892718
          1C6EB187DF8D49CFBD86D66D9B60509F3BA80FDDD0B33CBB5C3F5248F72E8EF3
          79C5B0DB15488E0D92F564E79BD90515224303647AA1DC6E976D948FFCAA5595
          8FC58A5DF88239B572A3B9277F22F637DB642E0572B780E88BF8950A51AE5A51
          2BDD591750AAA28232BE3ED8FD35FEC8388322AB052EF1C4917C44D053986412
          FA1CA55BE901887F6C2F12426260A803E203C3D0A5692BDC94DA04DA3A26AF1A
          66FE63D75355BC5F68750D51D6D5E2BB560AFF32F78975AF390B96A14DDBE6B8
          EB96CED750CBBF382857A8AED693825583E9590B1063F8275DD19E1347702C27
          03596633EC4ACF636AD2EDA83C3FDB209843E1F4640B15B43803919310128656
          49A9B8A14133C41903E17BD00C35DA556D9EFE7331FBDF1D357FBF44E95D6210
          0FD2FB7222B532B5DEBF656556B9BD53AFD5C0C3C5BEF573BFDF4AA8FC35023F
          8B777BA7CE9BD4F3947FE5C1AB36CC7E1F2E95BFA90614DF0251D51299E77BB1
          445FCA37170AF371323713E7B22F2093BAA5C05CCC90D1221F1515D41B683022
          3A341C89D131488E8A414A5814128242A1F11F11C515ACED3F17B3FFCE51F773
          CA55CB86D5C6F00A9DB99241574D906F122F0D94AB1DBC6AD95E97BB329D5F79
          BEC60F4E54733D75AF437869C08FA52BDC2E54389CD2F7B9DD2EEF2F70787E6D
          493CBE6110FEBAB20057E513F3FFF552CEFF7A5CCBE25B5D7D114F1678EEAF7B
          A22E5FBEDBAF54C53F1AAC7F3ABE75CD7B4DA0FC1FDDE67C88ED72527C000000
          0049454E44AE426082}
      end
    end
    object rbTitle: TRLBand
      Left = 38
      Top = 80
      Width = 1047
      Height = 66
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object labTitle: TRLLabel
        Left = 0
        Top = 0
        Width = 1047
        Height = 27
        Align = faTop
        Alignment = taCenter
        Caption = 'RELAT'#211'RIO DE COLABORADORES E DEPARTAMENTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object rbSubTitle: TRLLabel
        Left = 0
        Top = 27
        Width = 1047
        Height = 19
        Align = faTop
        Alignment = taCenter
        Caption = 'Subt'#237'tulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rbTitleColumns: TRLBand
      Left = 38
      Top = 146
      Width = 1047
      Height = 22
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object labIdEmployee: TRLLabel
        Left = 16
        Top = 6
        Width = 18
        Height = 16
        Caption = 'Id '
      end
      object labNmDepartment: TRLLabel
        Left = 98
        Top = 3
        Width = 73
        Height = 16
        Caption = 'Colaborador'
      end
      object labLocal: TRLLabel
        Left = 942
        Top = 3
        Width = 35
        Height = 16
        Caption = 'Local'
      end
      object RLLabel1: TRLLabel
        Left = 280
        Top = 3
        Width = 47
        Height = 16
        Caption = 'Fun'#231#227'o'
      end
      object labAdmission: TRLLabel
        Left = 480
        Top = 2
        Width = 62
        Height = 16
        Caption = 'Admiss'#227'o'
      end
      object labWage: TRLLabel
        Left = 592
        Top = 3
        Width = 44
        Height = 16
        Caption = 'Sal'#225'rio'
      end
      object RLLabel2: TRLLabel
        Left = 676
        Top = 3
        Width = 62
        Height = 16
        Caption = 'Comiss'#227'o'
      end
      object labDepartment: TRLLabel
        Left = 764
        Top = 5
        Width = 85
        Height = 16
        Caption = 'Departamento'
      end
    end
    object rbDetail: TRLBand
      Left = 38
      Top = 168
      Width = 1047
      Height = 24
      object edtLocal: TRLDBText
        Left = 946
        Top = 6
        Width = 31
        Height = 16
        DataField = 'local'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
      object edtEmployee: TRLDBText
        Left = 98
        Top = 6
        Width = 93
        Height = 16
        DataField = 'nm_empregado'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
      object edtId: TRLDBText
        Left = 5
        Top = 5
        Width = 87
        Height = 16
        DataField = 'Id_Empregado'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
      object edtFuncao: TRLDBText
        Left = 280
        Top = 6
        Width = 93
        Height = 16
        DataField = 'nm_empregado'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
      object edtAdmission: TRLDBText
        Left = 480
        Top = 5
        Width = 92
        Height = 16
        DataField = 'data_admissao'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
      object edtWage: TRLDBText
        Left = 594
        Top = 5
        Width = 42
        Height = 16
        DataField = 'salario'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 676
        Top = 5
        Width = 60
        Height = 16
        DataField = 'comissao'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
      object edtDepartment: TRLDBText
        Left = 766
        Top = 5
        Width = 108
        Height = 16
        DataField = 'nm_departamento'
        DataSource = formRelatorios.dataSource
        Text = ''
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 192
      Width = 1047
      Height = 25
      BandType = btFooter
      object labPage: TRLSystemInfo
        Left = 3
        Top = 6
        Width = 87
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object labTotalPage: TRLLabel
        Left = 549
        Top = 6
        Width = 105
        Height = 16
        Caption = 'Total de P'#225'ginas:'
      end
      object labTotal: TRLSystemInfo
        Left = 656
        Top = 6
        Width = 112
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
    end
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 72
    Top = 304
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 160
    Top = 304
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 232
    Top = 304
  end
end
