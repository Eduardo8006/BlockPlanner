// home_page.dart
import 'dart:io';
import 'package:blockplanner/mundos/carrega_mundos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CarregaMundos> _worlds = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _requestDirectoryAccess();
  }

  Future<void> _requestDirectoryAccess() async {
    final params = OpenFileDialogParams(
      dialogType: OpenFileDialogType.document,
    );

    final selectedDirectory = await FlutterFileDialog.pickFile(params: params);
    if (selectedDirectory != null) {
      _loadWorlds(selectedDirectory);
    } else {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadWorlds(String directoryPath) async {
    List<CarregaMundos> worlds = await getMinecraftWorlds(directoryPath);
    setState(() {
      _worlds = worlds;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 92, 163, 95),
        ),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _worlds.isEmpty
              ? Center(child: Text('Nenhum mundo encontrado'))
              : ListView.builder(
                  itemCount: _worlds.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.file(File(_worlds[index].iconPath)),
                      title: Text(_worlds[index].name),
                      subtitle: Text('Informações adicionais'),
                    );
                  },
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão de adicionar
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
