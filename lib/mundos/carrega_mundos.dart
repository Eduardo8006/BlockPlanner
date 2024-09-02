// world_info.dart
import 'dart:io';

class CarregaMundos {
  final String name;
  final String iconPath;

  CarregaMundos({required this.name, required this.iconPath});
}

Future<List<CarregaMundos>> getMinecraftWorlds(String directoryPath) async {
  final directory = Directory(directoryPath);

  if (!await directory.exists()) {
    return []; // Se o diretório não existe, retorna uma lista vazia
  }

  List<CarregaMundos> worlds = [];

  for (var folder in directory.listSync()) {
    if (folder is Directory) {
      String worldName = 'Mundo Sem Nome';
      String iconPath = '${folder.path}/icon.png';

      File levelNameFile = File('${folder.path}/levelname.txt');
      if (await levelNameFile.exists()) {
        worldName = await levelNameFile.readAsString();
      }

      worlds.add(CarregaMundos(name: worldName, iconPath: iconPath));
    }
  }

  return worlds;
}
