import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  final String productName;
  final double price;
  final String? productType;
  final int quantity;
  final DateTime? orderDate;
  final String address;

  ConfirmPage({
    required this.productName,
    required this.price,
    required this.productType,
    required this.quantity,
    required this.orderDate,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Order'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Product Name: $productName'),
            Text('Price: $price'),
            Text('Product Type: ${productType ?? 'Not selected'}'),
            Text('Quantity: $quantity'),
            Text('Order Date: ${orderDate?.toString() ?? 'Not selected'}'),
            Text('Address: $address'),
            Spacer(),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('/'));
                  },
                  child: Text('Back to Home'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Perform order submission logic
                    // Display success message
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Order Submitted'),
                          content: Text('Your order has been successfully submitted.'),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.popUntil(context, ModalRoute.withName('/'));
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Submit Order'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
