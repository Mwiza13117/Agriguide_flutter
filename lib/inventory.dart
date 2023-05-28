import 'package:flutter/material.dart';

class Inventory extends StatelessWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inventory'),
        actions: [
          IconButton(
            icon: const Icon(Icons.local_dining),
            onPressed: () {
              Navigator.pushNamed(context, FeedPage.routeName);
            },
          ),
          IconButton(
            icon: const Icon(Icons.emoji_nature),
            onPressed: () {
              Navigator.pushNamed(context, EggsPage.routeName);
            },
          ),
          IconButton(
            icon: const Icon(Icons.medical_services),
            onPressed: () {
              Navigator.pushNamed(context, MedicinePage.routeName);
            },
          ),
          IconButton(
            icon: const Icon(Icons.build),
            onPressed: () {
              Navigator.pushNamed(context, EquipmentPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}

class FeedPage extends StatefulWidget {
  static const String routeName = '/feed';

  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _costController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  double _totalCost = 0.0;
  final List<String> _savedDetails = [];

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _costController.dispose();
    _dateController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _calculateTotalCost() {
    final quantity = double.tryParse(_quantityController.text) ?? 0.0;
    final cost = double.tryParse(_costController.text) ?? 0.0;
    setState(() {
      _totalCost = quantity * cost;
    });
  }

  void saveDetails() {
    final name = _nameController.text;
    final quantity = _quantityController.text;
    final cost = _costController.text;
    final date = _dateController.text;
    final notes = _notesController.text;

    final details = 'Feed Details:\n'
        'Name: $name\n'
        'Quantity: $quantity\n'
        'Cost: $cost\n'
        'Date: $date\n'
        'Notes: $notes';

    _savedDetails.add(details);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
            ),
            TextField(
              controller: _costController,
              decoration: const InputDecoration(labelText: 'Cost'),
            ),
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: _notesController,
              decoration: const InputDecoration(labelText: 'Notes'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calculateTotalCost();
                saveDetails();
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Total Cost: $_totalCost',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class EggsPage extends StatefulWidget {
  static const String routeName = '/eggs';

  const EggsPage({Key? key}) : super(key: key);

  @override
  _EggsPageState createState() => _EggsPageState();
}

class _EggsPageState extends State<EggsPage> {
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  double _totalIncome = 0.0;
  final List<String> _savedDetails = [];

  @override
  void dispose() {
    _quantityController.dispose();
    _priceController.dispose();
    _dateController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _calculateTotalIncome() {
    final quantity = double.tryParse(_quantityController.text) ?? 0.0;
    final price = double.tryParse(_priceController.text) ?? 0.0;
    setState(() {
      _totalIncome = quantity * price;
    });
  }

  void saveDetails() {
    final quantity = _quantityController.text;
    final price = _priceController.text;
    final date = _dateController.text;
    final notes = _notesController.text;

    final details = 'Eggs Details:\n'
        'Quantity: $quantity\n'
        'Price: $price\n'
        'Date: $date\n'
        'Notes: $notes';

    _savedDetails.add(details);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eggs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
            ),
            TextField(
              controller: _priceController,
              decoration: const InputDecoration(labelText: 'Price'),
            ),
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: _notesController,
              decoration: const InputDecoration(labelText: 'Notes'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calculateTotalIncome();
                saveDetails();
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Total Income: $_totalIncome',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicinePage extends StatefulWidget {
  static const String routeName = '/medicine';

  const MedicinePage({Key? key}) : super(key: key);

  @override
  _MedicinePageState createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _costController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  double _totalCost = 0.0;
  final List<String> _savedDetails = [];

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _costController.dispose();
    _dateController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _calculateTotalCost() {
    final quantity = double.tryParse(_quantityController.text) ?? 0.0;
    final cost = double.tryParse(_costController.text) ?? 0.0;
    setState(() {
      _totalCost = quantity * cost;
    });
  }

  void saveDetails() {
    final name = _nameController.text;
    final quantity = _quantityController.text;
    final cost = _costController.text;
    final date = _dateController.text;
    final notes = _notesController.text;

    final details = 'Medicine Details:\n'
        'Name: $name\n'
        'Quantity: $quantity\n'
        'Cost: $cost\n'
        'Date: $date\n'
        'Notes: $notes';

    _savedDetails.add(details);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
            ),
            TextField(
              controller: _costController,
              decoration: const InputDecoration(labelText: 'Cost'),
            ),
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: _notesController,
              decoration: const InputDecoration(labelText: 'Notes'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calculateTotalCost();
                saveDetails();
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Total Cost: $_totalCost',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class EquipmentPage extends StatefulWidget {
  static const String routeName = '/equipment';

  const EquipmentPage({Key? key}) : super(key: key);

  @override
  _EquipmentPageState createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _costController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  double _totalCost = 0.0;
  final List<String> _savedDetails = [];

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _costController.dispose();
    _dateController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _calculateTotalCost() {
    final quantity = double.tryParse(_quantityController.text) ?? 0.0;
    final cost = double.tryParse(_costController.text) ?? 0.0;
    setState(() {
      _totalCost = quantity * cost;
    });
  }

  void saveDetails() {
    final name = _nameController.text;
    final quantity = _quantityController.text;
    final cost = _costController.text;
    final date = _dateController.text;
    final notes = _notesController.text;

    final details = 'Equipment Details:\n'
        'Name: $name\n'
        'Quantity: $quantity\n'
        'Cost: $cost\n'
        'Date: $date\n'
        'Notes: $notes';

    _savedDetails.add(details);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _quantityController,
              decoration: const InputDecoration(labelText: 'Quantity'),
            ),
            TextField(
              controller: _costController,
              decoration: const InputDecoration(labelText: 'Cost'),
            ),
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: _notesController,
              decoration: const InputDecoration(labelText: 'Notes'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calculateTotalCost();
                saveDetails();
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Total Cost: $_totalCost',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
