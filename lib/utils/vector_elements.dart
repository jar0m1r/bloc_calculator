import 'package:flutter/material.dart';
import 'package:bloc_calculator/utils/path_extensions.dart';
import 'package:svg_path_parser/svg_path_parser.dart';

class VectorElements {
  final size = const Size(2500, 1768);
  final splashScreen = <VectorElement>[
    VectorElement.fromSVG('letter_u', [
      "M1251.9,882.721C1251.9,910.505 1250.52,937.724 1247.78,964.377C1245.03,991.03 1240.19,1016.39 1233.24,1040.46C1226.29,1064.53 1216.76,1086.98 1204.65,1107.82C1192.53,1128.66 1177.27,1146.99 1158.85,1162.82C1140.44,1178.65 1118.31,1191.65 1092.46,1201.83C1066.62,1212.01 1036.41,1218.39 1001.84,1220.97C912.999,1220.97 846.285,1198.52 801.702,1153.61C757.119,1108.71 734.827,1042.32 734.827,954.442L734.827,936.27C734.827,926.416 734.989,914.14 735.312,899.44C735.635,884.741 736.038,868.264 736.523,850.011C737.008,831.757 737.896,813.1 739.188,794.039C740.481,774.978 742.015,756.24 743.792,737.825C745.569,719.41 747.911,702.611 750.819,687.427L920.43,687.427C914.291,719.41 909.768,753.171 906.861,788.709C903.953,824.246 902.499,860.591 902.499,897.744C902.499,931.989 903.872,965.992 906.618,999.753C909.364,1033.51 913.968,1065.58 920.43,1095.95C932.383,1097.56 944.094,1098.85 955.563,1099.82C967.032,1100.79 978.42,1101.28 989.728,1101.28C1000.71,1101.28 1012.1,1100.79 1023.89,1099.82C1035.68,1098.85 1047.23,1097.56 1058.54,1095.95C1062.1,1065.58 1064.76,1033.67 1066.54,1000.24C1068.31,966.8 1069.2,932.958 1069.2,898.713C1069.2,861.237 1068.31,824.65 1066.54,788.951C1064.76,753.252 1062.1,719.41 1058.54,687.427L1233.97,687.427C1241.08,725.226 1245.84,760.925 1248.26,794.524C1250.69,828.123 1251.9,857.522 1251.9,882.721Z",
      "M1041.01,1078.73C1043.71,1053.28 1045.79,1026.77 1047.25,999.212C1049.01,966.112 1049.89,932.613 1049.89,898.713C1049.89,861.565 1049.01,825.298 1047.25,789.911C1045.49,754.624 1042.86,721.174 1039.35,689.56L1036.96,668.112L1249.99,668.112L1252.95,683.858C1260.2,722.426 1265.06,758.852 1267.53,793.135C1269.99,827.263 1271.21,857.125 1271.21,882.721C1271.21,911.179 1269.8,939.057 1266.99,966.356C1264.12,994.193 1259.05,1020.68 1251.8,1045.82C1244.4,1071.44 1234.25,1095.34 1221.35,1117.53C1208.14,1140.24 1191.51,1160.22 1171.44,1177.47C1151.49,1194.62 1127.55,1208.78 1099.54,1219.8C1072.08,1230.62 1040.01,1237.49 1003.28,1240.23L1001.84,1240.29C906.767,1240.29 835.706,1215.28 787.996,1167.22C740.296,1119.18 715.513,1048.46 715.513,954.442L715.513,936.27C715.513,926.303 715.675,913.885 716.002,899.016C716.326,884.29 716.73,867.784 717.216,849.498C717.707,830.986 718.608,812.064 719.918,792.733C721.223,773.486 722.773,754.565 724.567,735.97C726.407,716.906 728.839,699.514 731.849,683.794L734.852,668.112L943.803,668.112L939.398,691.067C933.385,722.398 928.959,755.471 926.111,790.284C923.245,825.308 921.813,861.128 921.813,897.744C921.813,931.464 923.165,964.945 925.869,998.187C928.144,1026.15 931.721,1052.92 936.616,1078.5C943.56,1079.32 950.418,1080.01 957.19,1080.58C968.113,1081.5 978.959,1081.96 989.728,1081.96C1000.2,1081.96 1011.06,1081.5 1022.31,1080.57C1028.62,1080.06 1034.85,1079.44 1041.01,1078.73ZM1251.9,882.721C1251.9,910.505 1250.52,937.724 1247.78,964.377C1245.03,991.03 1240.19,1016.39 1233.24,1040.46C1226.29,1064.53 1216.76,1086.98 1204.65,1107.82C1192.53,1128.66 1177.27,1146.99 1158.85,1162.82C1140.44,1178.65 1118.31,1191.65 1092.46,1201.83C1066.62,1212.01 1036.41,1218.39 1001.84,1220.97C912.999,1220.97 846.285,1198.52 801.702,1153.61C757.119,1108.71 734.827,1042.32 734.827,954.442L734.827,936.27C734.827,926.416 734.989,914.14 735.312,899.44C735.635,884.741 736.038,868.264 736.523,850.011C737.008,831.757 737.896,813.1 739.188,794.039C740.481,774.978 742.015,756.24 743.792,737.825C745.569,719.41 747.911,702.611 750.819,687.427L920.43,687.427C914.291,719.41 909.768,753.171 906.861,788.709C903.953,824.246 902.499,860.591 902.499,897.744C902.499,931.989 903.872,965.992 906.618,999.753C909.364,1033.51 913.968,1065.58 920.43,1095.95C932.383,1097.56 944.094,1098.85 955.563,1099.82C967.032,1100.79 978.42,1101.28 989.728,1101.28C1000.71,1101.28 1012.1,1100.79 1023.89,1099.82C1035.68,1098.85 1047.23,1097.56 1058.54,1095.95C1062.1,1065.58 1064.76,1033.67 1066.54,1000.24C1068.31,966.8 1069.2,932.958 1069.2,898.713C1069.2,861.237 1068.31,824.65 1066.54,788.951C1064.76,753.252 1062.1,719.41 1058.54,687.427L1233.97,687.427C1241.08,725.226 1245.84,760.925 1248.26,794.524C1250.69,828.123 1251.9,857.522 1251.9,882.721Z",
    ]),
    VectorElement.fromSVG('letter_l', [
      "M1506.31,460.148C1497.91,581.622 1492.34,702.53 1489.6,822.873C1486.85,943.216 1485.48,1063.15 1485.48,1182.69L1334.28,1182.69C1335.89,1123.25 1337.03,1064.29 1337.67,1005.81C1338.32,947.335 1338.64,888.537 1338.64,829.415C1338.64,767.386 1338.32,705.842 1337.67,644.782C1337.03,583.722 1335.89,522.177 1334.28,460.148L1506.31,460.148Z",
      "M1527.01,440.834L1314.46,440.834L1314.97,460.651C1316.59,522.58 1317.71,584.025 1318.36,644.986C1319,705.978 1319.33,767.455 1319.33,829.415C1319.33,888.465 1319,947.192 1318.36,1005.6C1317.71,1063.97 1316.59,1122.83 1314.97,1182.16L1314.43,1202L1504.79,1202L1504.79,1182.69C1504.79,1063.3 1506.16,943.509 1508.9,823.314C1511.64,703.267 1517.2,582.656 1525.58,461.481L1527.01,440.834ZM1506.31,460.148C1497.91,581.622 1492.34,702.53 1489.6,822.873C1486.85,943.216 1485.48,1063.15 1485.48,1182.69L1334.28,1182.69C1335.89,1123.25 1337.03,1064.29 1337.67,1005.81C1338.32,947.335 1338.64,888.537 1338.64,829.415C1338.64,767.386 1338.32,705.842 1337.67,644.782C1337.03,583.722 1335.89,522.177 1334.28,460.148L1506.31,460.148Z",
    ]),
    VectorElement.fromSVG('letter_e', [
      "M2388.29,963.165L2009.33,993.695C2010.95,1013.73 2013.21,1033.59 2016.12,1053.3C2019.02,1073.01 2022.74,1092.88 2027.26,1112.91C2055.69,1114.85 2083.15,1115.82 2109.64,1115.82C2124.18,1115.82 2138.23,1115.57 2151.8,1115.09C2165.37,1114.6 2179.43,1113.88 2193.96,1112.91C2194.61,1106.45 2195.09,1099.99 2195.42,1093.52C2195.74,1087.06 2195.9,1080.6 2195.9,1074.14C2195.9,1068.32 2195.82,1062.59 2195.66,1056.94C2195.5,1051.28 2194.93,1045.55 2193.96,1039.73L2376.66,1043.61C2367.61,1074.3 2354.61,1100.63 2337.65,1122.6C2320.69,1144.57 2300.66,1162.58 2277.56,1176.63C2254.46,1190.69 2228.69,1200.94 2200.26,1207.4C2171.83,1213.87 2141.95,1217.1 2110.61,1217.1C2072.17,1217.1 2036.06,1211.93 2002.3,1201.59C1968.54,1191.25 1939.14,1174.53 1914.11,1151.43C1889.07,1128.33 1869.36,1098.21 1854.98,1061.06C1840.61,1023.9 1833.42,978.349 1833.42,924.397C1833.42,880.783 1841.01,843.307 1856.2,811.969C1871.38,780.632 1891.65,754.786 1917.01,734.433C1942.37,714.08 1971.77,699.138 2005.21,689.607C2038.65,680.077 2073.78,675.312 2110.61,675.312C2149.06,675.312 2185.16,680.481 2218.92,690.819C2252.68,701.157 2282.08,717.311 2307.12,739.279C2332.16,761.248 2351.94,789.355 2366.48,823.6C2381.02,857.845 2388.29,898.713 2388.29,946.204L2388.29,963.165ZM2004.48,891.929L2198.81,891.929C2198.81,851.868 2194.77,813.746 2186.7,777.563C2158.91,771.747 2129.84,768.84 2099.47,768.84C2069.74,768.84 2039.7,771.747 2009.33,777.563C2007.39,795.655 2006.1,813.989 2005.45,832.565C2004.81,851.141 2004.48,870.929 2004.48,891.929Z",
      "M2176.01,1094.64L2176.59,1074.14C2176.59,1068.51 2176.51,1062.96 2176.35,1057.49C2176.22,1052.7 2175.73,1047.84 2174.91,1042.91L2171.08,1019.93L2402.33,1024.84L2395.18,1049.07C2385.41,1082.24 2371.27,1110.66 2352.94,1134.4C2334.5,1158.29 2312.71,1177.85 2287.6,1193.13C2262.77,1208.24 2235.1,1219.3 2204.54,1226.24C2174.76,1233.01 2143.45,1236.41 2110.61,1236.41C2070.16,1236.41 2032.17,1230.94 1996.65,1220.06C1960.03,1208.85 1928.16,1190.68 1901.01,1165.63C1873.95,1140.66 1852.51,1108.18 1836.97,1068.03C1821.86,1028.97 1814.11,981.114 1814.11,924.397C1814.11,877.499 1822.49,837.245 1838.82,803.548C1855.31,769.509 1877.38,741.477 1904.92,719.37C1932.25,697.443 1963.89,681.3 1999.92,671.033C2035.04,661.023 2071.93,655.997 2110.61,655.997C2151.07,655.997 2189.05,661.473 2224.58,672.351C2261.06,683.522 2292.8,701.022 2319.86,724.761C2346.98,748.562 2368.51,778.951 2384.26,816.052C2399.7,852.415 2407.6,895.777 2407.6,946.204L2407.6,980.986L2030.35,1011.38C2031.68,1024.48 2033.31,1037.52 2035.22,1050.48C2037.38,1065.08 2039.98,1079.76 2043.05,1094.53C2065.89,1095.85 2088.09,1096.5 2109.64,1096.5C2123.94,1096.5 2137.77,1096.26 2151.11,1095.79C2159.24,1095.5 2167.53,1095.12 2176.01,1094.64ZM2388.29,963.165L2009.33,993.695C2010.95,1013.73 2013.21,1033.59 2016.12,1053.3C2019.02,1073.01 2022.74,1092.88 2027.26,1112.91C2055.69,1114.85 2083.15,1115.82 2109.64,1115.82C2124.18,1115.82 2138.23,1115.57 2151.8,1115.09C2165.37,1114.6 2179.43,1113.88 2193.96,1112.91C2194.61,1106.45 2195.09,1099.99 2195.42,1093.52C2195.74,1087.06 2195.9,1080.6 2195.9,1074.14C2195.9,1068.32 2195.82,1062.59 2195.66,1056.94C2195.5,1051.28 2194.93,1045.55 2193.96,1039.73L2376.66,1043.61C2367.61,1074.3 2354.61,1100.63 2337.65,1122.6C2320.69,1144.57 2300.66,1162.58 2277.56,1176.63C2254.46,1190.69 2228.69,1200.94 2200.26,1207.4C2171.83,1213.87 2141.95,1217.1 2110.61,1217.1C2072.17,1217.1 2036.06,1211.93 2002.3,1201.59C1968.54,1191.25 1939.14,1174.53 1914.11,1151.43C1889.07,1128.33 1869.36,1098.21 1854.98,1061.06C1840.61,1023.9 1833.42,978.349 1833.42,924.397C1833.42,880.783 1841.01,843.307 1856.2,811.969C1871.38,780.632 1891.65,754.786 1917.01,734.433C1942.37,714.08 1971.77,699.138 2005.21,689.607C2038.65,680.077 2073.78,675.312 2110.61,675.312C2149.06,675.312 2185.16,680.481 2218.92,690.819C2252.68,701.157 2282.08,717.311 2307.12,739.279C2332.16,761.248 2351.94,789.355 2366.48,823.6C2381.02,857.845 2388.29,898.713 2388.29,946.204L2388.29,963.165ZM2004.48,891.929L2198.81,891.929C2198.81,851.868 2194.77,813.746 2186.7,777.563C2158.91,771.747 2129.84,768.84 2099.47,768.84C2069.74,768.84 2039.7,771.747 2009.33,777.563C2007.39,795.655 2006.1,813.989 2005.45,832.565C2004.81,851.141 2004.48,870.929 2004.48,891.929ZM2170.41,794.113C2147.65,790.132 2124,788.154 2099.47,788.154C2075.57,788.154 2051.47,790.117 2027.14,794.041C2026.01,806.982 2025.22,820.046 2024.76,833.236C2024.32,845.803 2024.03,858.93 2023.9,872.615L2179.16,872.615C2178.23,845.494 2175.32,819.325 2170.41,794.113Z",
    ]),
    VectorElement.fromSVG('number_one', [
      "M153.991,1130.6C158.245,1063.4 161.672,996.684 164.272,930.455C166.872,864.226 168.172,797.512 168.172,730.314C168.172,698.007 167.758,666.023 166.931,634.363C166.104,602.702 165.099,570.88 163.918,538.896L62.166,535.989L62.166,426.953C104.001,426.307 145.423,424.288 186.431,420.896C227.439,417.503 268.86,412.9 310.695,407.084C309.277,448.437 308.332,489.628 307.859,530.658C307.386,571.688 307.15,612.879 307.15,654.231C307.15,734.029 308.332,813.342 310.695,892.171C313.059,971 316.486,1050.47 320.977,1130.6L153.991,1130.6Z",
      "M145.26,557.685L42.852,554.759L42.852,407.935L61.868,407.641C103.267,407.002 144.257,405.004 184.838,401.647C225.494,398.284 266.56,393.719 308.036,387.954L330.785,384.792L329.998,407.746C328.585,448.952 327.643,489.997 327.172,530.88C326.7,571.836 326.464,612.953 326.464,654.231C326.464,733.835 327.643,812.955 330.001,891.592C332.359,970.255 335.78,1049.56 340.261,1129.51L341.404,1149.91L133.415,1149.91L134.715,1129.38C138.96,1062.33 142.379,995.773 144.973,929.697C147.563,863.719 148.858,797.258 148.858,730.314C148.858,698.177 148.446,666.361 147.623,634.867C146.954,609.247 146.168,583.52 145.26,557.685ZM153.991,1130.6C158.245,1063.4 161.672,996.684 164.272,930.455C166.872,864.226 168.172,797.512 168.172,730.314C168.172,698.007 167.758,666.023 166.931,634.363C166.104,602.702 165.099,570.88 163.918,538.896L62.166,535.989L62.166,426.953C104.001,426.307 145.423,424.288 186.431,420.896C227.439,417.503 268.86,412.9 310.695,407.084C309.277,448.437 308.332,489.628 307.859,530.658C307.386,571.688 307.15,612.879 307.15,654.231C307.15,734.029 308.332,813.342 310.695,892.171C313.059,971 316.486,1050.47 320.977,1130.6L153.991,1130.6Z",
    ]),
    VectorElement.fromSVG('number_two', [
      "M1233.42,595.915L761.419,595.915C760.397,591.89 759.822,587.747 759.694,583.486C759.566,579.225 759.502,575.082 759.502,571.057C759.502,557.563 760.716,544.542 763.145,531.995C765.573,519.448 768.768,507.552 772.73,496.307C776.691,485.062 781.228,474.527 786.34,464.702C791.452,454.877 796.692,445.822 802.06,437.536C814.329,418.124 828.515,400.605 844.618,384.98C855.353,376.221 870.433,366.87 889.859,356.927C906.473,348.404 943.381,338.639 970.602,327.63C997.824,316.622 1032.01,304.962 1073.16,292.652C1077.76,271.346 1080.06,250.157 1080.06,229.088C1080.06,215.593 1079.17,202.454 1077.38,189.671C1075.59,176.887 1073.16,164.103 1070.1,151.319C1059.62,150.135 1049.07,149.247 1038.46,148.655C1027.86,148.064 1017.19,147.768 1006.45,147.768C975.267,147.768 943.828,150.727 912.133,156.645C910.6,168.009 909.322,179.136 908.299,190.026C907.277,200.916 906.766,212.042 906.766,223.406C906.766,241.635 908.299,259.627 911.367,277.382L759.922,277.382C759.411,272.648 759.156,268.031 759.156,263.533L759.156,250.394C759.156,226.483 762.734,205.414 769.891,187.185C777.048,168.956 786.441,153.094 798.071,139.6C809.701,126.106 822.992,114.743 837.945,105.51C852.898,96.277 868.17,88.701 883.762,82.783C920.313,68.815 961.976,60.884 1008.75,58.991C1047.6,58.991 1081.02,63.074 1109.01,71.242C1137,79.409 1160,90.595 1178.02,104.8C1196.04,119.004 1209.33,135.694 1217.9,154.87C1226.46,174.046 1230.74,194.76 1230.74,217.014C1230.74,240.925 1225.69,262.29 1215.6,281.111C1205.5,299.932 1192.21,316.74 1175.72,331.536C1159.24,346.333 1140.58,359.294 1119.75,370.421C1098.91,381.548 1077.83,391.372 1056.48,399.895C1035.14,408.417 1014.44,415.875 994.373,422.267C974.308,428.659 956.864,434.34 942.039,439.312L937.054,489.737L1223.84,489.737L1233.42,595.915Z",
      "M929.509,173.249C928.76,179.519 928.103,185.713 927.529,191.831C926.562,202.132 926.08,212.657 926.08,223.406C926.08,240.524 927.518,257.421 930.399,274.095L934.303,296.697L742.581,296.697L740.72,279.456C740.132,274.012 739.841,268.704 739.841,263.533L739.841,250.394C739.841,223.805 743.954,200.397 751.913,180.126C759.908,159.761 770.448,142.067 783.441,126.991C796.377,111.981 811.165,99.346 827.797,89.076C843.824,79.18 860.196,71.069 876.867,64.741C915.211,50.088 958.9,41.679 1007.97,39.692L1008.75,39.676C1049.7,39.676 1084.92,44.092 1114.42,52.701C1145.1,61.652 1170.23,74.064 1189.98,89.631C1210.6,105.887 1225.73,125.05 1235.53,146.995C1245.18,168.604 1250.06,191.937 1250.06,217.014C1250.06,244.342 1244.16,268.731 1232.62,290.241C1221.47,311.014 1206.82,329.58 1188.62,345.911C1171.02,361.714 1151.1,375.573 1128.85,387.457C1107.38,398.924 1085.64,409.048 1063.65,417.832C1041.86,426.533 1020.72,434.144 1000.24,440.67C985.391,445.399 971.988,449.737 960.026,453.685L958.372,470.423L1241.49,470.423L1254.56,615.229L746.398,615.229L742.7,600.67C741.334,595.293 740.559,589.759 740.388,584.065C740.255,579.605 740.188,575.269 740.188,571.057C740.188,556.295 741.526,542.052 744.182,528.325C746.797,514.811 750.246,502 754.513,489.889C758.788,477.754 763.69,466.389 769.207,455.787C774.618,445.388 780.168,435.806 785.733,427.218C798.83,406.495 813.978,387.798 831.168,371.119L832.407,370.015C843.964,360.586 860.147,350.437 881.044,339.742C897.992,331.048 935.593,320.954 963.361,309.725C988.535,299.544 1019.56,288.804 1056.45,277.532C1059.31,261.31 1060.75,245.162 1060.75,229.088C1060.75,216.51 1059.92,204.263 1058.25,192.348C1057.17,184.616 1055.84,176.884 1054.27,169.154C1048.66,168.656 1043.03,168.255 1037.39,167.94C1027.14,167.368 1016.83,167.082 1006.45,167.082C980.98,167.082 955.332,169.137 929.509,173.249ZM1233.42,595.915L761.419,595.915C760.397,591.89 759.822,587.747 759.694,583.486C759.566,579.225 759.502,575.082 759.502,571.057C759.502,557.563 760.716,544.542 763.145,531.995C765.573,519.448 768.768,507.552 772.73,496.307C776.691,485.062 781.228,474.527 786.34,464.702C791.452,454.877 796.692,445.822 802.06,437.536C814.329,418.124 828.515,400.605 844.618,384.98C855.353,376.221 870.433,366.87 889.859,356.927C906.473,348.404 943.381,338.639 970.602,327.63C997.824,316.622 1032.01,304.962 1073.16,292.652C1077.76,271.346 1080.06,250.157 1080.06,229.088C1080.06,215.593 1079.17,202.454 1077.38,189.671C1075.59,176.887 1073.16,164.103 1070.1,151.319C1059.62,150.135 1049.07,149.247 1038.46,148.655C1027.86,148.064 1017.19,147.768 1006.45,147.768C975.267,147.768 943.828,150.727 912.133,156.645C910.6,168.009 909.322,179.136 908.299,190.026C907.277,200.916 906.766,212.042 906.766,223.406C906.766,241.635 908.299,259.627 911.367,277.382L759.922,277.382C759.411,272.648 759.156,268.031 759.156,263.533L759.156,250.394C759.156,226.483 762.734,205.414 769.891,187.185C777.048,168.956 786.441,153.094 798.071,139.6C809.701,126.106 822.992,114.743 837.945,105.51C852.898,96.277 868.17,88.701 883.762,82.783C920.313,68.815 961.976,60.884 1008.75,58.991C1047.6,58.991 1081.02,63.074 1109.01,71.242C1137,79.409 1160,90.595 1178.02,104.8C1196.04,119.004 1209.33,135.694 1217.9,154.87C1226.46,174.046 1230.74,194.76 1230.74,217.014C1230.74,240.925 1225.69,262.29 1215.6,281.111C1205.5,299.932 1192.21,316.74 1175.72,331.536C1159.24,346.333 1140.58,359.294 1119.75,370.421C1098.91,381.548 1077.83,391.372 1056.48,399.895C1035.14,408.417 1014.44,415.875 994.373,422.267C974.308,428.659 956.864,434.34 942.039,439.312L937.054,489.737L1223.84,489.737L1233.42,595.915Z",
    ]),
    VectorElement.fromSVG('number_three', [
      "M2395.07,459.218C2394.92,474.006 2391.54,487.621 2384.91,500.062C2378.28,512.503 2369.29,523.67 2357.93,533.563C2346.56,543.455 2333.35,552.134 2318.3,559.598C2303.24,567.062 2287.21,573.429 2270.2,578.699C2253.2,583.968 2235.68,588.037 2217.65,590.904C2199.62,593.771 2182.01,595.446 2164.82,595.929C2147.86,595.762 2130.86,594.181 2113.82,591.185C2096.78,588.19 2080.45,583.896 2064.82,578.305C2049.2,572.713 2034.57,565.881 2020.95,557.808C2007.33,549.735 1995.4,540.537 1985.16,530.214C1974.93,519.89 1966.68,508.39 1960.42,495.714C1954.15,483.037 1950.63,469.408 1949.84,454.828L2081.26,447.642C2082.29,461.137 2084.43,474.208 2087.67,486.855C2090.92,499.501 2095.73,512.055 2102.11,524.515C2123.24,524.724 2144.73,524.609 2166.57,524.172C2188.41,523.735 2210.84,522.107 2233.86,519.289C2236.27,510.178 2238.04,501.17 2239.18,492.263C2240.31,483.357 2240.92,474.337 2241.01,465.203C2241.22,443.89 2238.53,422.657 2232.93,401.505C2215.08,398.284 2197.22,395.824 2179.35,394.125C2161.48,392.427 2143.49,391.488 2125.37,391.309C2118.17,391.238 2110.97,391.276 2103.77,391.423C2096.57,391.569 2089.25,391.823 2081.81,392.185L2084.46,336.096C2111.41,335.274 2137.91,333.306 2163.95,330.192C2190,327.077 2215.71,322.6 2241.08,316.761C2244.68,305.704 2247.28,294.746 2248.9,283.887C2250.51,273.028 2251.38,262.052 2251.49,250.961C2251.6,239.217 2250.9,227.629 2249.39,216.195C2247.88,204.761 2245.55,193.157 2242.42,181.381C2233.6,180.206 2224.55,179.356 2215.27,178.829C2205.98,178.303 2196.69,177.994 2187.4,177.902C2176.02,177.79 2164.64,178.058 2153.25,178.707C2141.86,179.356 2130.36,180.276 2118.73,181.466C2114.37,200.128 2112.09,218.811 2111.91,237.514C2111.83,245.56 2112.21,253.612 2113.06,261.667C2113.91,269.723 2115.22,277.892 2117,286.175L1970.98,290.281C1969.87,284.616 1969.11,279.225 1968.7,274.11C1968.28,268.994 1968.1,264.044 1968.15,259.26C1968.36,237.947 1971.62,219.22 1977.93,203.079C1984.25,186.937 1992.46,172.935 2002.56,161.072C2012.67,149.21 2024.15,139.209 2037,131.071C2049.86,122.933 2062.93,116.21 2076.22,110.904C2107.7,98.599 2143.42,91.774 2183.39,90.428C2210.33,90.694 2234.29,93.105 2255.26,97.662C2276.24,102.219 2294.7,108.382 2310.65,116.151C2326.6,123.921 2340.1,132.917 2351.15,143.14C2362.2,153.363 2371.15,164.326 2378,176.03C2384.85,187.733 2389.79,199.799 2392.8,212.226C2395.81,224.653 2397.26,236.847 2397.14,248.808C2397.02,261.64 2394.63,273.579 2389.99,284.625C2385.36,295.672 2378.99,305.832 2370.88,315.104C2362.78,324.377 2353.28,332.82 2342.41,340.434C2331.53,348.048 2319.91,354.839 2307.54,360.807C2318.18,365.262 2327.54,370.03 2335.62,375.112C2343.7,380.194 2350.79,385.484 2356.89,390.982C2362.99,396.48 2368.17,401.968 2372.41,407.447C2376.65,412.927 2380.14,418.181 2382.88,423.211C2389.5,435.238 2393.56,447.241 2395.07,459.218Z",
      "M2134.77,199.38C2132.53,212.144 2131.35,224.918 2131.22,237.704C2131.15,245.012 2131.5,252.325 2132.27,259.642C2133.05,267.032 2134.26,274.526 2135.89,282.124L2140.76,304.829L1955.16,310.048L1952.02,293.98C1950.77,287.565 1949.92,281.46 1949.45,275.668C1948.98,269.95 1948.78,264.418 1948.84,259.07C1949.07,235.151 1952.86,214.157 1959.95,196.042C1967.09,177.781 1976.43,161.969 1987.86,148.548C1999.25,135.182 2012.19,123.922 2026.67,114.752C2040.57,105.957 2054.7,98.701 2069.19,92.915C2102.55,79.876 2140.39,72.551 2182.74,71.125L2183.58,71.115C2211.99,71.395 2237.24,73.983 2259.36,78.788C2281.99,83.704 2301.9,90.404 2319.11,98.788C2336.91,107.459 2351.94,117.555 2364.27,128.963C2376.79,140.55 2386.9,153.005 2394.67,166.27C2402.51,179.655 2408.12,193.463 2411.57,207.675C2414.97,221.712 2416.59,235.488 2416.46,248.999C2416.3,264.444 2413.39,278.805 2407.8,292.102C2402.37,305.043 2394.92,316.952 2385.42,327.815C2376.33,338.221 2365.69,347.712 2353.49,356.256C2351.65,357.544 2349.79,358.811 2347.9,360.046C2356.17,365.366 2363.47,370.907 2369.82,376.634C2376.85,382.968 2382.79,389.309 2387.68,395.622C2392.62,401.998 2396.66,408.124 2399.8,413.9C2407.68,428.223 2412.43,442.543 2414.23,456.806L2414.39,458.102L2414.38,459.408C2414.2,477.42 2410.03,493.989 2401.96,509.142C2394.25,523.61 2383.82,536.624 2370.61,548.129C2358.06,559.052 2343.5,568.662 2326.88,576.902C2310.93,584.811 2293.94,591.564 2275.92,597.148C2258.05,602.686 2239.63,606.965 2220.68,609.979C2201.8,612.981 2183.36,614.73 2164.99,615.246L2164.62,615.243C2146.62,615.065 2128.57,613.389 2110.48,610.208C2092.33,607.019 2074.95,602.442 2058.31,596.49C2041.5,590.472 2025.77,583.112 2011.1,574.424C1996,565.475 1982.79,555.256 1971.44,543.812C1959.72,531.982 1950.28,518.795 1943.1,504.268C1935.68,489.259 1931.49,473.13 1930.56,455.867L1929.52,436.597L2099.09,427.324L2100.52,446.174C2101.47,458.523 2103.41,470.484 2106.38,482.057C2108.38,489.839 2111.05,497.58 2114.38,505.282C2131.42,505.353 2148.69,505.212 2166.18,504.862C2183.13,504.523 2200.44,503.443 2218.11,501.615C2218.89,497.665 2219.52,493.734 2220.02,489.826C2221.06,481.659 2221.62,473.388 2221.7,465.012C2221.85,449.428 2220.31,433.89 2217.08,418.401C2203.9,416.289 2190.71,414.607 2177.52,413.353C2160.19,411.706 2142.75,410.796 2125.18,410.623C2118.18,410.554 2111.17,410.59 2104.16,410.733C2097.14,410.876 2090,411.124 2082.75,411.476L2061.52,412.509L2066,317.336L2083.87,316.791C2110.24,315.987 2136.17,314.062 2161.66,311.014C2183.27,308.43 2204.64,304.882 2225.78,300.367C2227.5,293.889 2228.84,287.447 2229.79,281.042C2231.28,271.059 2232.07,260.968 2232.17,250.771C2232.28,239.947 2231.64,229.267 2230.24,218.729C2229.38,212.231 2228.24,205.673 2226.81,199.056C2222.65,198.668 2218.44,198.355 2214.17,198.113C2205.19,197.603 2196.2,197.304 2187.21,197.215C2176.26,197.108 2165.31,197.366 2154.35,197.99C2147.86,198.36 2141.34,198.82 2134.77,199.38ZM2395.07,459.218C2394.92,474.006 2391.54,487.621 2384.91,500.062C2378.28,512.503 2369.29,523.67 2357.93,533.563C2346.56,543.455 2333.35,552.134 2318.3,559.598C2303.24,567.062 2287.21,573.429 2270.2,578.699C2253.2,583.968 2235.68,588.037 2217.65,590.904C2199.62,593.771 2182.01,595.446 2164.82,595.929C2147.86,595.762 2130.86,594.181 2113.82,591.185C2096.78,588.19 2080.45,583.896 2064.82,578.305C2049.2,572.713 2034.57,565.881 2020.95,557.808C2007.33,549.735 1995.4,540.537 1985.16,530.214C1974.93,519.89 1966.68,508.39 1960.42,495.714C1954.15,483.037 1950.63,469.408 1949.84,454.828L2081.26,447.642C2082.29,461.137 2084.43,474.208 2087.67,486.855C2090.92,499.501 2095.73,512.055 2102.11,524.515C2123.24,524.724 2144.73,524.609 2166.57,524.172C2188.41,523.735 2210.84,522.107 2233.86,519.289C2236.27,510.178 2238.04,501.17 2239.18,492.263C2240.31,483.357 2240.92,474.337 2241.01,465.203C2241.22,443.89 2238.53,422.657 2232.93,401.505C2215.08,398.284 2197.22,395.824 2179.35,394.125C2161.48,392.427 2143.49,391.488 2125.37,391.309C2118.17,391.238 2110.97,391.276 2103.77,391.423C2096.57,391.569 2089.25,391.823 2081.81,392.185L2084.46,336.096C2111.41,335.274 2137.91,333.306 2163.95,330.192C2190,327.077 2215.71,322.6 2241.08,316.761C2244.68,305.704 2247.28,294.746 2248.9,283.887C2250.51,273.028 2251.38,262.052 2251.49,250.961C2251.6,239.217 2250.9,227.629 2249.39,216.195C2247.88,204.761 2245.55,193.157 2242.42,181.381C2233.6,180.206 2224.55,179.356 2215.27,178.829C2205.98,178.303 2196.69,177.994 2187.4,177.902C2176.02,177.79 2164.64,178.058 2153.25,178.707C2141.86,179.356 2130.36,180.276 2118.73,181.466C2114.37,200.128 2112.09,218.811 2111.91,237.514C2111.83,245.56 2112.21,253.612 2113.06,261.667C2113.91,269.723 2115.22,277.892 2117,286.175L1970.98,290.281C1969.87,284.616 1969.11,279.225 1968.7,274.11C1968.28,268.994 1968.1,264.044 1968.15,259.26C1968.36,237.947 1971.62,219.22 1977.93,203.079C1984.25,186.937 1992.46,172.935 2002.56,161.072C2012.67,149.21 2024.15,139.209 2037,131.071C2049.86,122.933 2062.93,116.21 2076.22,110.904C2107.7,98.599 2143.42,91.774 2183.39,90.428C2210.33,90.694 2234.29,93.105 2255.26,97.662C2276.24,102.219 2294.7,108.382 2310.65,116.151C2326.6,123.921 2340.1,132.917 2351.15,143.14C2362.2,153.363 2371.15,164.326 2378,176.03C2384.85,187.733 2389.79,199.799 2392.8,212.226C2395.81,224.653 2397.26,236.847 2397.14,248.808C2397.02,261.64 2394.63,273.579 2389.99,284.625C2385.36,295.672 2378.99,305.832 2370.88,315.104C2362.78,324.377 2353.28,332.82 2342.41,340.434C2331.53,348.048 2319.91,354.839 2307.54,360.807C2318.18,365.262 2327.54,370.03 2335.62,375.112C2343.7,380.194 2350.79,385.484 2356.89,390.982C2362.99,396.48 2368.17,401.968 2372.41,407.447C2376.65,412.927 2380.14,418.181 2382.88,423.211C2389.5,435.238 2393.56,447.241 2395.07,459.218Z",
    ]),
    VectorElement.fromSVG('letter_j', [
      "M648.568,675.312C646.952,737.018 645.499,793.07 644.206,843.469C642.914,893.867 641.622,939.339 640.33,979.884C639.037,1020.43 637.745,1056.21 636.453,1087.22C635.161,1118.24 634.03,1145.38 633.061,1168.64C630.476,1222.91 628.053,1263.94 625.792,1291.73C624.499,1324.36 616.988,1353.19 603.258,1378.23C589.527,1403.27 571.435,1424.43 548.982,1441.71C526.529,1458.99 500.522,1472.08 470.961,1480.96C441.4,1489.85 409.982,1494.29 376.706,1494.29C349.568,1494.29 323.158,1489.93 297.474,1481.2C271.79,1472.48 248.448,1459.72 227.449,1442.92C206.449,1426.12 188.6,1405.61 173.9,1381.38C159.201,1357.15 149.266,1329.52 144.097,1298.51L327.761,1276.7C327.761,1296.09 328.892,1314.99 331.154,1333.4C333.415,1351.82 338.261,1371.04 345.692,1391.07C365.722,1389.13 386.075,1386.79 406.751,1384.04C427.428,1381.3 448.75,1377.66 470.719,1373.14C473.303,1315.63 475.484,1258.61 477.261,1202.07C479.038,1145.54 479.926,1088.68 479.926,1031.49C479.926,975.28 479.119,919.309 477.503,863.58C475.888,807.85 473.626,752.04 470.719,696.15L648.568,675.312Z",
      "M452.092,1357.13C454.385,1304.84 456.338,1252.95 457.956,1201.47C459.727,1145.13 460.612,1088.47 460.612,1031.49C460.612,975.468 459.807,919.683 458.197,864.139C456.586,808.558 454.331,752.896 451.431,697.153L450.49,679.073L668.459,653.535L667.875,675.817C666.26,737.519 664.806,793.568 663.514,843.964C662.221,894.407 660.927,939.919 659.634,980.499C658.339,1021.12 657.045,1056.96 655.75,1088.03C654.458,1119.04 653.327,1146.18 652.353,1169.56C649.766,1223.88 647.337,1265 645.071,1292.92C643.603,1328.6 635.221,1360.11 620.192,1387.51C605.16,1414.93 585.347,1438.09 560.764,1457.02C536.513,1475.68 508.448,1489.86 476.52,1499.46C445.215,1508.87 411.946,1513.6 376.706,1513.6C347.441,1513.6 318.96,1508.9 291.263,1499.49C263.43,1490.04 238.139,1476.21 215.383,1458C192.649,1439.82 173.301,1417.63 157.387,1391.39C141.469,1365.16 130.643,1335.27 125.046,1301.68L121.718,1281.72L347.076,1254.96L347.076,1276.7C347.076,1295.28 348.156,1313.4 350.324,1331.05C351.88,1343.72 354.781,1356.81 358.998,1370.31C373.89,1368.72 388.961,1366.92 404.209,1364.9C419.795,1362.83 435.756,1360.24 452.092,1357.13ZM648.568,675.312C646.952,737.018 645.499,793.07 644.206,843.469C642.914,893.867 641.622,939.339 640.33,979.884C639.037,1020.43 637.745,1056.21 636.453,1087.22C635.161,1118.24 634.03,1145.38 633.061,1168.64C630.476,1222.91 628.053,1263.94 625.792,1291.73C624.499,1324.36 616.988,1353.19 603.258,1378.23C589.527,1403.27 571.435,1424.43 548.982,1441.71C526.529,1458.99 500.522,1472.08 470.961,1480.96C441.4,1489.85 409.982,1494.29 376.706,1494.29C349.568,1494.29 323.158,1489.93 297.474,1481.2C271.79,1472.48 248.448,1459.72 227.449,1442.92C206.449,1426.12 188.6,1405.61 173.9,1381.38C159.201,1357.15 149.266,1329.52 144.097,1298.51L327.761,1276.7C327.761,1296.09 328.892,1314.99 331.154,1333.4C333.415,1351.82 338.261,1371.04 345.692,1391.07C365.722,1389.13 386.075,1386.79 406.751,1384.04C427.428,1381.3 448.75,1377.66 470.719,1373.14C473.303,1315.63 475.484,1258.61 477.261,1202.07C479.038,1145.54 479.926,1088.68 479.926,1031.49C479.926,975.28 479.119,919.309 477.503,863.58C475.888,807.85 473.626,752.04 470.719,696.15L648.568,675.312Z",
    ]),
    VectorElement.fromSVG('letter_i', [
      "M1766.06,684.519C1758.95,756.563 1754.19,827.638 1751.76,897.744C1749.34,967.85 1748.13,1037.96 1748.13,1108.06L1748.13,1145.13C1748.13,1157.57 1748.45,1170.09 1749.1,1182.69L1599.36,1182.69C1599.36,1162.66 1599.52,1142.79 1599.84,1123.08C1600.16,1103.38 1600.33,1083.83 1600.33,1064.45C1600.33,1000.16 1598.79,936.512 1595.72,873.514C1592.65,810.516 1587.89,747.517 1581.43,684.519L1766.06,684.519Z",
      "M1787.37,665.205L1560.03,665.205L1562.21,686.49C1568.64,749.144 1573.38,811.799 1576.43,874.454C1579.49,937.142 1581.01,1000.47 1581.01,1064.45C1581.01,1083.73 1580.85,1103.17 1580.53,1122.77C1580.2,1142.58 1580.04,1162.55 1580.04,1182.69L1580.04,1202L1769.43,1202L1768.39,1181.7C1767.76,1169.43 1767.44,1157.24 1767.44,1145.13L1767.44,1108.06C1767.44,1038.18 1768.65,968.295 1771.07,898.411C1773.48,828.709 1778.21,758.044 1785.28,686.415L1787.37,665.205ZM1766.06,684.519C1758.95,756.563 1754.19,827.638 1751.76,897.744C1749.34,967.85 1748.13,1037.96 1748.13,1108.06L1748.13,1145.13C1748.13,1157.57 1748.45,1170.09 1749.1,1182.69L1599.36,1182.69C1599.36,1162.66 1599.52,1142.79 1599.84,1123.08C1600.16,1103.38 1600.33,1083.83 1600.33,1064.45C1600.33,1000.16 1598.79,936.512 1595.72,873.514C1592.65,810.516 1587.89,747.517 1581.43,684.519L1766.06,684.519Z",
    ]),
    VectorElement.fromSVG('symbol_multiply', [
      "M677.347,490.527L604.878,490.527L670.953,551.54L600.349,596.833L548.661,510.776L491.379,613.884L413.315,571.789L494.576,490.527L399.194,490.527L413.315,409.799L507.631,434.311L502.835,361.309L593.422,354.648L583.564,432.712L670.953,409.799L677.347,490.527Z",
      "M606.306,406.782L688.384,385.262L698.252,509.842L654.265,509.842L702.415,554.303L594.034,623.831L549.313,549.373L499,639.937L381.314,576.475L447.947,509.842L376.208,509.842L397.899,385.837L486.605,408.891L482.306,343.452L615.54,333.655L606.306,406.782ZM677.347,490.527L604.878,490.527L670.953,551.54L600.349,596.833L548.661,510.776L491.379,613.884L413.315,571.789L494.576,490.527L399.194,490.527L413.315,409.799L507.631,434.311L502.835,361.309L593.422,354.648L583.564,432.712L670.953,409.799L677.347,490.527Z",
    ]),
    VectorElement.fromSVG('symbol_add', [
      "M1827.23,455.079C1791.47,455.13 1755.62,455.758 1719.66,456.963C1720.07,470.614 1720.66,484.167 1721.45,497.625C1722.24,511.082 1723.22,524.539 1724.39,537.996L1632.41,550.529C1633.93,535.53 1635.21,520.628 1636.24,505.822C1637.28,491.016 1638.08,476.114 1638.63,461.117C1624.4,462.098 1610.37,463.176 1596.53,464.349C1582.69,465.522 1568.85,466.696 1555.01,467.869L1554.88,383.946C1568.73,383.541 1582.57,383.281 1596.41,383.165C1610.26,383.049 1624.1,382.693 1637.94,382.097C1637.35,369.6 1636.61,357.2 1635.73,344.897C1634.84,332.593 1633.62,320.386 1632.07,308.275L1724.07,308.144C1723.12,320.066 1722.32,331.891 1721.67,343.62C1721.01,355.349 1720.5,367.174 1720.13,379.095C1738.01,378.108 1755.84,376.977 1773.62,375.702C1791.41,374.427 1809.24,372.912 1827.11,371.156L1827.23,455.079Z",
      "M1617.59,363.476C1617.25,357.723 1616.87,351.991 1616.46,346.279C1615.6,334.337 1614.42,322.49 1612.91,310.736L1610.12,288.992L1744.97,288.8L1743.32,309.669C1742.39,321.441 1741.6,333.118 1740.95,344.699C1740.69,349.306 1740.46,353.928 1740.25,358.565C1750.93,357.912 1761.6,357.201 1772.24,356.438C1789.86,355.175 1807.52,353.673 1825.23,351.934L1846.4,349.855L1846.58,474.366L1827.26,474.394C1798.13,474.435 1768.94,474.862 1739.68,475.68C1739.98,482.645 1740.33,489.583 1740.73,496.495C1741.51,509.77 1742.48,523.045 1743.64,536.319L1745.23,554.65L1610.73,572.976L1613.2,548.586C1614.69,533.786 1615.95,519.082 1616.98,504.473C1617.5,496.994 1617.96,489.49 1618.36,481.962C1611.58,482.483 1604.85,483.027 1598.16,483.594L1535.72,488.887L1535.54,365.188L1554.32,364.64C1568.3,364.231 1582.28,363.969 1596.25,363.852C1603.37,363.792 1610.48,363.668 1617.59,363.476ZM1827.23,455.079C1791.47,455.13 1755.62,455.758 1719.66,456.963C1720.07,470.614 1720.66,484.167 1721.45,497.625C1722.24,511.082 1723.22,524.539 1724.39,537.996L1632.41,550.529C1633.93,535.53 1635.21,520.628 1636.24,505.822C1637.28,491.016 1638.08,476.114 1638.63,461.117C1624.4,462.098 1610.37,463.176 1596.53,464.349C1582.69,465.522 1568.85,466.696 1555.01,467.869L1554.88,383.946C1568.73,383.541 1582.57,383.281 1596.41,383.165C1610.26,383.049 1624.1,382.693 1637.94,382.097C1637.35,369.6 1636.61,357.2 1635.73,344.897C1634.84,332.593 1633.62,320.386 1632.07,308.275L1724.07,308.144C1723.12,320.066 1722.32,331.891 1721.67,343.62C1721.01,355.349 1720.5,367.174 1720.13,379.095C1738.01,378.108 1755.84,376.977 1773.62,375.702C1791.41,374.427 1809.24,372.912 1827.11,371.156L1827.23,455.079Z",
    ]),
    VectorElement.fromSVG('symbol_equals_bottom', [
      "M1748.71,1562.86C1610.4,1557.58 1471.81,1558.46 1332.92,1565.51L1332.92,1437.33C1402.21,1438.8 1471.44,1439.76 1540.59,1440.2C1609.74,1440.64 1679.12,1438.8 1748.71,1434.69L1748.71,1562.86Z",
      "M1768.02,1582.93L1768.02,1414.2L1747.57,1415.41C1678.4,1419.5 1609.45,1421.32 1540.72,1420.88C1471.66,1420.44 1402.53,1419.49 1333.33,1418.02L1313.6,1417.61L1313.6,1585.83L1333.89,1584.8C1472.21,1577.78 1610.24,1576.9 1747.97,1582.16L1768.02,1582.93ZM1748.71,1562.86C1610.4,1557.58 1471.81,1558.46 1332.92,1565.51L1332.92,1437.33C1402.21,1438.8 1471.44,1439.76 1540.59,1440.2C1609.74,1440.64 1679.12,1438.8 1748.71,1434.69L1748.71,1562.86Z",
    ]),
    VectorElement.fromSVG('symbol_equals_top', [
      "M1748.71,1385.8C1679.12,1383.16 1609.89,1382.06 1541.03,1382.5C1472.17,1382.94 1402.8,1385.07 1332.92,1388.88L1332.92,1260.71C1402.21,1262.18 1471.44,1263.13 1540.59,1263.57C1609.74,1264.01 1679.12,1262.18 1748.71,1258.07L1748.71,1385.8Z",
      "M1768.02,1405.86L1768.02,1237.58L1747.57,1238.79C1678.4,1242.87 1609.45,1244.7 1540.72,1244.26C1471.66,1243.82 1402.53,1242.87 1333.33,1241.4L1313.6,1240.98L1313.6,1409.28L1333.97,1408.17C1403.54,1404.37 1472.61,1402.25 1541.16,1401.81C1609.73,1401.37 1678.67,1402.47 1747.98,1405.1L1768.02,1405.86ZM1748.71,1385.8C1679.12,1383.16 1609.89,1382.06 1541.03,1382.5C1472.17,1382.94 1402.8,1385.07 1332.92,1388.88L1332.92,1260.71C1402.21,1262.18 1471.44,1263.13 1540.59,1263.57C1609.74,1264.01 1679.12,1262.18 1748.71,1258.07L1748.71,1385.8Z",
    ]),
  ];
}

class VectorElement {
  final String name;
  final List<Path> paths;
  final Offset position;

  VectorElement._(this.name, this.paths, this.position);

  factory VectorElement.fromSVG(String name, List<String> svgPaths) {
    //make Paths
    final paths = svgPaths.map((d) {
      return parseSvgPath(d);
    }).toList();
    //get combined [bounds]
    final bounds = paths.getBounds();
    //get position[offset]
    final position = Offset(bounds.left, bounds.top);
    //shift paths -position
    final normalizedPaths = paths.map((path) => path.shift(-position)).toList();
    return VectorElement._(name, normalizedPaths, position);
  }
}
