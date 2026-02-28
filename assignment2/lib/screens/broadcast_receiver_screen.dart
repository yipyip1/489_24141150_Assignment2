import 'package:flutter/material.dart';
import 'custom_input_screen.dart';
import 'battery_screen.dart';

class BroadcastReceiverScreen extends StatefulWidget {
  const BroadcastReceiverScreen({super.key});

  @override
  State<BroadcastReceiverScreen> createState() =>
      _BroadcastReceiverScreenState();
}

class _BroadcastReceiverScreenState extends State<BroadcastReceiverScreen> {
  String _selectedOption = 'Custom Broadcast Receiver';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Broadcast Receiver'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: _selectedOption,
                items: const [
                  DropdownMenuItem(
                    value: 'Custom Broadcast Receiver',
                    child: Text('Custom Broadcast Receiver'),
                  ),
                  DropdownMenuItem(
                    value: 'System Battery Notification Receiver',
                    child: Text('System Battery Notification Receiver'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_selectedOption == 'Custom Broadcast Receiver') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomInputScreen(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BatteryScreen(),
                      ),
                    );
                  }
                },
                child: const Text('Proceed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
