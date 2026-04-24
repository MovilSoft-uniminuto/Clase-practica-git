import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
	const ExampleWidget({super.key});

	@override
	Widget build(BuildContext context) {
		return Center(
			child: Container(
				padding: const EdgeInsets.all(16),
				decoration: BoxDecoration(
					color: Colors.blue.shade50,
					borderRadius: BorderRadius.circular(12),
					border: Border.all(color: Colors.blue.shade200),
				),
				child: const Column(
					mainAxisSize: MainAxisSize.min,
					children: [
						Icon(Icons.flutter_dash, size: 48, color: Colors.blue),
						SizedBox(height: 8),
						Text(
							'Widget de ejemplo',
							style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
						),
						SizedBox(height: 4),
						Text('Este componente sirve para pruebas rápidas.'),
					],
				),
			),
		);
	}
}
