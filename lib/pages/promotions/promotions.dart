import 'package:delivery/pages/promotions/models/product.dart';
import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  const Promotions({Key? key}) : super(key: key);

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  final List<Product> product = [];

  @override
  void initState() {
    product.add(Product(title: 'Macaronada'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promoções'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final item = product[index];

            return CardLarge(title: item.title);
          },
        ),
      ),
    );
  }
}

class CardLarge extends StatelessWidget {
  const CardLarge({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                // Radius.circular(10),
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: AssetImage('assets/comidas/macarrao-penne-em-molho-de-tomate-com-frango-e-tomate-em-uma-mesa-de-madeira.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: MediaQuery.of(context).size.width,
            // child: Card(
            //     // child: Image.asset('assets/comidas/macarrao-penne-em-molho-de-tomate-com-frango-e-tomate-em-uma-mesa-de-madeira.jpg'),
            //     ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Macaronada',
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: const Text('Que tal experimentar nosso prato de macarrão à bolonhesa? É feito com macarrão espaguete, coberto com um molho de carne moída suculento e temperado com cebola, alho, tomate e especiarias.'),
                      ),
                      const Text('RS:  12,33'),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                  flex: 1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.add_shopping_cart_rounded,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
