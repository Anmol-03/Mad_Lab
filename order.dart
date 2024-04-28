import 'package:flutter/material.dart';
import 'confirm.dart';

class OrderPage extends StatefulWidget {
  final String productName;
  final double price;
  final String? productType;

  OrderPage({
    required this.productName,
    required this.price,
    required this.productType,
  });

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int quantity = 0;
  DateTime? orderDate;
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Product Name: ${widget.productName}'),
            Text('Price: ${widget.price}'),
            Text('Product Type: ${widget.productType ?? 'Not selected'}'),
            TextField(
              decoration: InputDecoration(labelText: 'Quantity'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  quantity = int.parse(value);
                });
              },
            ),
            SizedBox(height: 10),
            Text('Select Order Date:'),
            ElevatedButton(
              onPressed: () async {
                DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: orderDate ?? DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );

                if (selectedDate != null) {
                  setState(() {
                    orderDate = selectedDate;
                  });
                }
              },
              child: Text('Pick Date'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Address'),
              onChanged: (value) {
                setState(() {
                  address = value;
                });
              },
            ),
            Spacer(),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmPage(
                          productName: widget.productName,
                          price: widget.price,
                          productType: widget.productType,
                          quantity: quantity,
                          orderDate: orderDate,
                          address: address,
                        ),
                      ),
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
