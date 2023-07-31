import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Estado => isDarkmodeProvider =bolean
final isDarmodeProvider = StateProvider((ref) => false);

//un simple int 

final selecterColorProvider = StateProvider((ref) => 0);


