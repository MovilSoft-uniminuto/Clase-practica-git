import 'package:flutter/material.dart';

class PreviewFiltro extends StatefulWidget {
  const PreviewFiltro({super.key});

  @override
  State<PreviewFiltro> createState() => _PreviewFiltroState();
}

class _PreviewFiltroState extends State<PreviewFiltro> {
  final List<String> categorias = [
    'Todos',
    'Ropa',
    'Zapatos',
    'Tecnología',
    'Hogar',
  ];

  String categoriaSeleccionada = 'Todos';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),

      child: SizedBox(
        height: 50,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,

          itemBuilder: (context, index) {
            final categoria = categorias[index];

            final seleccionado = categoria == categoriaSeleccionada;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),

              child: ChoiceChip(
                label: Text(categoria),

                selected: seleccionado,

                onSelected: (value) {
                  setState(() {
                    categoriaSeleccionada = categoria;
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
