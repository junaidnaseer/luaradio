local radio = require('radio')
local jigs = require('tests.jigs')

jigs.TestBlock(radio.ComplexMagnitudeBlock, {
    {
        desc = "256 ComplexFloat32 input, 256 Float32 output",
        args = {},
        inputs = {radio.ComplexFloat32Type.vector_from_array({{-0.73127151, 0.69486749}, {0.52754927, -0.48986191}, {-0.00912983, -0.10101787}, {0.30318594, 0.57744670}, {-0.81228077, -0.94330502}, {0.67153019, -0.13446586}, {0.52456015, -0.99578792}, {-0.10922561, 0.44308007}, {-0.54247558, 0.89054137}, {0.80285490, -0.93882000}, {-0.94910830, 0.08282494}, {0.87829834, -0.23759152}, {-0.56680119, -0.15576684}, {-0.94191837, -0.55661666}, {-0.12422481, -0.00837552}, {-0.53383112, -0.53826690}, {-0.56243795, -0.08079307}, {-0.42043677, -0.95702058}, {0.67515594, 0.11290865}, {0.28458872, -0.62818748}, {0.98508680, 0.71989304}, {-0.75822008, -0.33460963}, {0.44296879, 0.42238355}, {0.87288117, -0.15578599}, {0.66007137, 0.34061113}, {-0.39326301, 0.17516121}, {0.76495802, 0.69239485}, {0.01056764, 0.17800452}, {-0.93094832, -0.51452005}, {0.59480852, -0.17137200}, {-0.65398520, 0.09759752}, {0.40608153, 0.34897169}, {-0.25059396, -0.12207674}, {0.01685298, 0.55688524}, {0.04187684, -0.21348982}, {-0.02061296, -0.94085008}, {-0.91302544, 0.40676415}, {0.96637541, 0.18636747}, {-0.21280062, -0.65930158}, {0.00447712, 0.96415329}, {0.54104626, 0.07923490}, {0.72057962, -0.53564775}, {0.02754333, 0.90493482}, {0.15558961, -0.08173654}, {-0.46144104, 0.09599262}, {0.91423255, -0.98858166}, {0.56731045, 0.64097184}, {0.77235913, 0.48100683}, {0.61827981, 0.03735657}, {0.12271573, -0.14781864}, {-0.88775343, 0.74002033}, {0.13999867, -0.60032117}, {0.00944094, -0.03014978}, {-0.28642008, -0.30784416}, {0.07695759, 0.24697889}, {0.22490492, -0.08370640}, {-0.94405001, -0.54078996}, {-0.64557749, 0.16892174}, {0.72201771, 0.59687787}, {0.59419513, 0.63287473}, {-0.48941192, 0.68348968}, {0.34622705, -0.83353174}, {-0.96661872, -0.97087997}, {0.51117355, -0.50088155}, {-0.78102273, 0.24960417}, {-0.31115428, -0.86096931}, {-0.68074894, 0.05476080}, {-0.66371012, -0.45417112}, {0.42317989, -0.09059674}, {-0.35599643, -0.05245798}, {-0.95273077, -0.22688580}, {-0.15816264, -0.62392139}, {-0.78247666, 0.79963702}, {0.02023196, -0.58181804}, {0.21129727, 0.63407934}, {-0.95836377, -0.96427095}, {-0.70707649, 0.43767095}, {-0.67954481, 0.40921125}, {0.35635161, 0.08940433}, {-0.55880052, 0.95118904}, {0.59562171, 0.03319904}, {-0.55360842, 0.29701284}, {-0.21020398, 0.15169193}, {-0.35750839, 0.26189572}, {-0.88242978, -0.40278813}, {0.93580663, 0.75106847}, {-0.38722676, 0.71702880}, {-0.37927276, 0.87857687}, {0.48768425, -0.16765547}, {-0.49528381, -0.98303950}, {0.75743574, -0.92416686}, {0.63882822, 0.92440224}, {0.14056113, -0.65696579}, {0.73556215, 0.94755048}, {0.40804628, 0.01774749}, {-0.24406233, -0.30613822}, {-0.58847648, 0.34830603}, {-0.13409975, -0.61176270}, {-0.79115158, 0.33191505}, {-0.40785465, -0.00040016}, {-0.34930867, 0.74324304}, {0.79935658, -0.96381402}, {-0.59829396, -0.34451860}, {0.97409946, 0.56540078}, {-0.32180870, -0.57394040}, {0.34891015, 0.67540216}, {0.86437494, -0.31230038}, {0.76478642, 0.37422037}, {-0.03100256, 0.97101647}, {-0.53071910, 0.45093039}, {-0.83063954, -0.66061169}, {0.82197559, -0.57406360}, {0.51823235, 0.20041765}, {0.68226439, -0.26378399}, {-0.31942952, -0.41756943}, {0.73483962, 0.20796506}, {0.90861493, 0.77453023}, {-0.72930807, 0.10234095}, {-0.79145002, -0.92172438}, {-0.85361314, 0.73233670}, {0.57623291, 0.65701193}, {-0.31820506, 0.23037209}, {0.56380719, -0.24392074}, {0.14156306, -0.55257183}, {-0.83651346, -0.46655273}, {0.78153634, 0.12889367}, {0.85013437, -0.08446148}, {-0.44563445, 0.57402933}, {0.65553629, -0.97523654}, {0.34082329, -0.81663376}, {-0.76979506, 0.77012014}, {-0.91995299, -0.52073330}, {0.97631699, -0.15797283}, {-0.76888371, -0.66523314}, {-0.51715940, 0.48801285}, {-0.79433179, 0.82152885}, {-0.24344546, 0.94052809}, {0.81844544, -0.41195285}, {-0.49317971, -0.04597981}, {-0.79974169, 0.30410039}, {-0.92075950, -0.97898769}, {0.96516722, -0.40890029}, {0.19314128, -0.10031093}, {-0.37343827, -0.87407041}, {0.82678401, 0.93962657}, {0.93959302, -0.77727538}, {-0.56961346, 0.23561376}, {0.95990574, 0.08582640}, {0.37637961, 0.32366887}, {-0.48182800, 0.08320452}, {-0.38535777, -0.50723761}, {-0.83726245, -0.43842655}, {0.96675342, -0.10419552}, {0.30402106, 0.28693217}, {0.88146901, -0.21904290}, {-0.38643140, -0.34551716}, {-0.36652973, 0.69426954}, {0.78700048, -0.39438137}, {-0.33133319, 0.08845083}, {0.15797088, 0.19192508}, {-0.50980401, -0.95925194}, {-0.51248139, -0.85534495}, {0.10240951, -0.85816729}, {-0.84974039, 0.27076420}, {-0.41835687, 0.58436954}, {-0.01347791, 0.72529793}, {-0.69164079, 0.00285917}, {0.58996701, -0.84578598}, {0.89845592, -0.65351576}, {0.55241799, 0.96979177}, {0.64310026, -0.36043200}, {-0.78624445, 0.02871650}, {0.83871394, -0.41302100}, {0.78751761, -0.71663874}, {0.82096338, -0.93648010}, {-0.36786264, 0.80617654}, {0.60771257, 0.81430751}, {0.68143702, 0.49236977}, {0.37919036, -0.64369029}, {-0.13472399, -0.68420619}, {0.42964891, 0.33555749}, {-0.49482721, -0.87117159}, {0.92677176, 0.61650527}, {0.09853987, 0.08275530}, {0.70258534, -0.09338064}, {-0.20857909, -0.32266170}, {-0.48406181, -0.95118302}, {0.29287767, -0.16663224}, {0.14120726, -0.87535673}, {-0.29011312, -0.72343177}, {-0.74974197, -0.48177409}, {0.65786874, -0.20440537}, {-0.19783570, 0.22488984}, {-0.53294069, -0.98504567}, {0.05740348, 0.00179924}, {0.29767919, -0.12336609}, {0.37302625, 0.46284387}, {-0.52325064, -0.00985550}, {-0.04234622, -0.54987586}, {-0.17550774, 0.12081487}, {0.81387901, 0.83541310}, {-0.44954929, 0.29283035}, {-0.90360534, -0.85689718}, {0.02338342, 0.75484818}, {-0.68106455, 0.53205574}, {0.76601923, -0.37639597}, {0.38511392, 0.69798225}, {-0.25677133, 0.40256533}, {0.47283623, 0.18915559}, {0.71255422, 0.79320872}, {0.92015761, 0.14246538}, {-0.64744818, -0.49880919}, {-0.56476265, 0.13903470}, {0.51550025, -0.89573354}, {0.36327291, 0.43430653}, {-0.30403697, 0.03011161}, {-0.67040372, 0.45979229}, {-0.91858262, 0.96244210}, {0.61588746, 0.25689700}, {-0.46494752, 0.82572573}, {0.91887766, -0.72174770}, {0.55151451, 0.68386173}, {0.31943470, 0.40081555}, {-0.10988253, 0.84861559}, {0.94241506, -0.23529337}, {0.60542303, -0.13415682}, {-0.67049158, -0.34906545}, {-0.74733984, 0.81776953}, {0.91884816, -0.76162654}, {0.20135815, -0.18355180}, {-0.76381993, -0.40904897}, {-0.50356728, 0.49915361}, {-0.99198210, -0.62032259}, {-0.12245386, -0.95793062}, {0.25505316, 0.21125507}, {0.67066473, -0.58678836}, {-0.43043676, 0.08467886}, {-0.45354861, 0.17147619}, {-0.49823555, 0.36705431}, {0.58218145, 0.61730921}, {0.94723225, 0.09075401}, {-0.01838144, 0.71139538}, {0.53813475, 0.14108926}, {-0.23348723, -0.43190512}, {-0.78372163, 0.61509818}, {-0.76385695, 0.49453047}, {0.09057418, 0.92989063}, {0.52213132, 0.94703954}, {-0.72681195, 0.00074295}, {0.14515658, -0.37749708}, {0.00606498, -0.28636247}, {0.05678794, -0.99831057}, {-0.11537134, -0.10089571}, {-0.39040163, -0.20119449}, {0.56617463, 0.36682576}, {-0.01540173, 0.29533648}})},
        outputs = {radio.Float32Type.vector_from_array({1.00876105, 0.71991175, 0.10142960, 0.65220118, 1.24483907, 0.68486047, 1.12550294, 0.45634437, 1.04275775, 1.23529708, 0.95271534, 0.90986687, 0.58781534, 1.09408975, 0.12450684, 0.75809425, 0.56821120, 1.04530168, 0.68453187, 0.68964499, 1.22009921, 0.82877094, 0.61206961, 0.88667405, 0.74277192, 0.43050814, 1.03178072, 0.17831793, 1.06367087, 0.61900365, 0.66122758, 0.53542829, 0.27874732, 0.55714017, 0.21755821, 0.94107586, 0.99953616, 0.98418200, 0.69279337, 0.96416366, 0.54681736, 0.89786053, 0.90535390, 0.17575264, 0.47131985, 1.34651959, 0.85597080, 0.90989351, 0.61940736, 0.19211845, 1.15574062, 0.61642933, 0.03159336, 0.42048126, 0.25869101, 0.23997706, 1.08797252, 0.66731167, 0.93678856, 0.86810040, 0.84064388, 0.90257871, 1.37002182, 0.71566802, 0.81993824, 0.91546988, 0.68294793, 0.80422789, 0.43276897, 0.35984066, 0.97937381, 0.64365619, 1.11878908, 0.58216971, 0.66835856, 1.35951447, 0.83157259, 0.79324335, 0.36739570, 1.10318565, 0.59654623, 0.62825066, 0.25922221, 0.44317222, 0.97001064, 1.19993246, 0.81490791, 0.95694572, 0.51569784, 1.10076010, 1.19490302, 1.12366414, 0.67183441, 1.19954312, 0.40843204, 0.39151889, 0.68382865, 0.62628776, 0.85795593, 0.40785486, 0.82123488, 1.25216150, 0.69039750, 1.12629831, 0.65800333, 0.76020151, 0.91906232, 0.85143358, 0.97151124, 0.69642013, 1.06130576, 1.00259304, 0.55563658, 0.73148251, 0.52573705, 0.76370066, 1.19393396, 0.73645359, 1.21489465, 1.12470996, 0.87390447, 0.39284316, 0.61430925, 0.57041717, 0.95782369, 0.79209381, 0.85431975, 0.72670472, 1.17508054, 0.88490182, 1.08888447, 1.05710769, 0.98901480, 1.01671886, 0.71106285, 1.14274788, 0.97152394, 0.91627401, 0.49531844, 0.85560727, 1.34395492, 1.04821146, 0.21763694, 0.95050263, 1.25158691, 1.21942282, 0.61641979, 0.96373504, 0.49641025, 0.48895931, 0.63701695, 0.94510651, 0.97235227, 0.41804171, 0.90827715, 0.51837373, 0.78508234, 0.88028771, 0.34293619, 0.24857602, 1.08630764, 0.99712193, 0.86425620, 0.89183629, 0.71868646, 0.72542316, 0.69164670, 1.03122020, 1.11099315, 1.11609221, 0.73721719, 0.78676867, 0.93489432, 1.06477940, 1.24538183, 0.88613969, 1.01607645, 0.84070468, 0.74707597, 0.69734401, 0.54515779, 1.00189519, 1.11309683, 0.12868001, 0.70876378, 0.38420802, 1.06726992, 0.33696237, 0.88667291, 0.77943516, 0.89118981, 0.68889248, 0.29952362, 1.11997354, 0.05743167, 0.32222986, 0.59445184, 0.52334344, 0.55150402, 0.21307088, 1.16632509, 0.53651112, 1.24530137, 0.75521028, 0.86425239, 0.85349834, 0.79717749, 0.47748336, 0.50926805, 1.06626153, 0.93112105, 0.81731254, 0.58162487, 1.03347909, 0.56620610, 0.30552444, 0.81292689, 1.33044684, 0.66731811, 0.94762820, 1.16844165, 0.87854147, 0.51253450, 0.85570008, 0.97134399, 0.62010896, 0.75591379, 1.10781944, 1.19346428, 0.27246353, 0.86645365, 0.70903760, 1.16996944, 0.96572566, 0.33118096, 0.89112949, 0.43868703, 0.48488188, 0.61884373, 0.84853160, 0.95156986, 0.71163285, 0.55632293, 0.49097690, 0.99627572, 0.90996581, 0.93429130, 1.08143651, 0.72681230, 0.40444341, 0.28642669, 0.99992442, 0.15326607, 0.43919545, 0.67462200, 0.29573780})}
    },
}, {epsilon = 1.0e-06})