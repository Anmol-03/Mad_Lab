import 'package:flutter/material.dart';
import 'order.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String productName = '';
  double price = 0.0;
  String? productType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          buildDropdownMenu(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Product Name'),
              onChanged: (value) {
                setState(() {
                  productName = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  price = double.parse(value);
                });
              },
            ),
            SizedBox(height: 16),
            Text('Select Product Type:'),
            Row(
              children: [
                Radio(
                  value: 'Electronic',
                  groupValue: productType,
                  onChanged: (value) {
                    setState(() {
                      productType = value;
                    });
                  },
                ),
                Text('Electronic'),
                Radio(
                  value: 'Furniture',
                  groupValue: productType,
                  onChanged: (value) {
                    setState(() {
                      productType = value;
                    });
                  },
                ),
                Text('Furniture'),
                Radio(
                  value: 'Kitchenware',
                  groupValue: productType,
                  onChanged: (value) {
                    setState(() {
                      productType = value;
                    });
                  },
                ),
                Text('Kitchenware'),
              ],
            ),
            Spacer(),
            Row(
              children: [
                ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(
          productName: productName,
          price: price,
          productType: productType,
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

  Widget buildDropdownMenu() {
    return DropdownButton<String>(
      onChanged: (value) {
        switch (value) {
          case 'Product':
            // Add logic if needed
            break;
          case 'Order':
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderPage(
                  productName: productName,
                  price: price,
                  productType: productType,
                ),
              ),
            );
            break;
          // Add cases for other pages if needed
          case 'Confirm':
            // Add logic if needed
          break;
        }
      },
      items: [
        DropdownMenuItem(
          value: 'Product',
          child: Text('Product'),
        ),
        DropdownMenuItem(
          value: 'Order',
          child: Text('Order'),
        ),
        // Add more DropdownMenuItem items for other pages if needed
      ],
    );
  }
}
