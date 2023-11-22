import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_svg/svg.dart';
import 'package:my_app/test/container_widget/contianer.dart';

class ColorConstants {
  static Color mainScaffoldBackgroundColor = const Color(0xffffffff);
  static Color mainTextColor = const Color(0xffFF7643);
  static Color subTextColor = const Color.fromARGB(108, 0, 0, 0);
  static Color blackTextColor = const Color.fromARGB(255, 0, 0, 0);
  static Color? borderColor = Colors.grey[200];
  static Color couponColor = const Color(0xff4B3298);
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          18.0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchBar(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorConstants.borderColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      CupertinoIcons.cart,
                      color: ColorConstants.subTextColor,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: ColorConstants.borderColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      CupertinoIcons.bell,
                      color: ColorConstants.subTextColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              couponContainer(),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  optionWidget('Flash \nDeal', "assets/icons/Flash Icon.svg"),
                  optionWidget('Bill\n', "assets/icons/Bill Icon.svg"),
                  optionWidget('Game\n', "assets/icons/Game Icon.svg"),
                  optionWidget('Daily \nGift', "assets/icons/Gift Icon.svg"),
                  optionWidget('More\n', "assets/icons/Plus Icon.svg"),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeMainText("Special for you"),
                  GestureDetector(
                    child: optionText("see more"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 350,
                    height: 120,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      specialContainer("assets/Image Banner 2.png",
                          "SmartPhone", "18 Brand"),
                      const SizedBox(
                        width: 10,
                      ),
                      specialContainer(
                          "assets/Image Banner 3.png", "Fashion", "24 Brand"),
                    ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  homeMainText("Popular Product"),
                  GestureDetector(
                    child: optionText("see more"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 250,
                width: 374,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  productWidget("assets/Image Popular Product 1.png",
                      "Wireless Controller\nfor PS4", "64.99"),
                  const SizedBox(
                    width: 15,
                  ),
                  productWidget("assets/Image Popular Product 2.png",
                      "Nike Sport White -\nMen Pant", "50.5"),
                  const SizedBox(
                    width: 15,
                  ),
                  productWidget("assets/Image Popular Product 3.png",
                      "Wireless Controller\nfor PS4", "64.99"),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox searchBar() {
  return SizedBox(
    width: 220,
    height: 50,
    child: TextField(
        decoration: InputDecoration(
      hintText: 'Search Product',
      prefixIcon: const Icon(Icons.search, color: Colors.grey),
      filled: true,
      fillColor: Colors.grey[200],
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    )),
  );
}

couponContainer() {
  return Container(
    width: 350,
    height: 110,
    decoration: BoxDecoration(
        color: ColorConstants.couponColor,
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          couponSecondText("A Summer Surpise"),
          couponMainText("Cashback 20%")
        ],
      ),
    ),
  );
}

Column optionWidget(String title, String icon) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffFEECE2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SvgPicture.asset(icon),
        ),
      ),
      optionText(title),
    ],
  );
}

specialContainer(String image, String fTitle, String sTitle) {
  return SizedBox(
    width: 250,
    height: 120,
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [couponMainText(fTitle), couponSecondText(sTitle)],
          ),
        )
      ],
    ),
  );
}

productWidget(String image, String fTitle, String sTitile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: ColorConstants.borderColor),
        child: Image.asset(
          image,
          width: 100,
        ),
      ),
      productText(fTitle),
      priceText(sTitile)
    ],
  );
}

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  ProductListState createState() => ProductListState();
}

class ProductListState extends State<ProductList> {
  late ScrollController _scrollController;
  final List<Product> _products = [];
  bool _isLoading = false;
  int _page = 1; // Initial page

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
    _loadData();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      // User has reached the end of the list, load more data
      _loadData();
    }
  }

  Future<void> _loadData() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      final response = await http.get(Uri.parse(
          'https://fakestoreapi.com/products?_page=$_page&_limit=10'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        List<Product> newProducts =
            data.map((json) => Product.fromJson(json)).toList();

        setState(() {
          _products.addAll(newProducts);
          _page++;
          _isLoading = false;
        });
      } else {
        setState(() {
          _isLoading = false;
        });
        throw Exception('Failed to load products');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _products.length + 1, // Add one for the loading indicator
      itemBuilder: (context, index) {
        if (index < _products.length) {
          return ListTile(
            title: Text(_products[index].title),
            subtitle: Text('\$${_products[index].price.toStringAsFixed(2)}'),
            leading: Image.network(_products[index].imageUrl),
          );
        } else {
          // Display loading indicator at the end of the list
          return _isLoading ? const CircularProgressIndicator() : Container();
        }
      },
    );
  }
}

class Product {
  final String title;
  final double price;
  final String imageUrl;
  final String description;
  Rating rating;
  Product({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: json['price'].toDouble(),
      imageUrl: json['image'],
      description: json['description'],
      rating: Rating.fromJson(json['rating']),
    );
  }
}

class Rating {
  double rate;
  int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate'].toDouble(),
      count: json['count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rate': rate,
      'count': count,
    };
  }
}

/////////////

class ProductController extends GetxController {
  late ScrollController scrollController;
  var products = <Product>[].obs;
  var isLoading = false.obs;
  var page = 1;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController()..addListener(_scrollListener);
    _loadData();
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      // User has reached the end of the list, load more data
      _loadData();
    }
  }

  Future<void> _loadData() async {
    if (!isLoading.value) {
      isLoading.toggle();

      final response = await http.get(
          Uri.parse('https://fakestoreapi.com/products?_page=$page&_limit=10'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        List<Product> newProducts =
            data.map((json) => Product.fromJson(json)).toList();

        products.addAll(newProducts);
        page++;
        isLoading.toggle();
      } else {
        isLoading.toggle();
        throw Exception('Failed to load products');
      }
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}

class ProductListt extends StatelessWidget {
  const ProductListt({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return Obx(
      () => ListView.builder(
        controller: productController.scrollController,
        itemCount: productController.products.length +
            1, // Add one for the loading indicator
        itemBuilder: (context, index) {
          if (index < productController.products.length) {
            return ListTile(
              title: Text(productController.products[index].title),
              subtitle: Text(
                  '\$${productController.products[index].price.toStringAsFixed(2)}'),
              leading:
                  Image.network(productController.products[index].imageUrl),
            );
          } else {
            // Display loading indicator at the end of the list
            return productController.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : Container();
          }
        },
      ),
    );
  }
}

class Producttt {
  final String title;
  final double price;
  final String imageUrl;
  final String description;

  Producttt(
      {required this.title,
      required this.price,
      required this.description,
      required this.imageUrl});

  factory Producttt.fromJson(Map<String, dynamic> json) {
    return Producttt(
      title: json['title'],
      price: json['price'].toDouble(),
      imageUrl: json['image'],
      description: json['description'],
    );
  }
}

//////////
class ProductControll extends GetxController {
  late ScrollController scrollController;
  var products = <Product>[].obs;
  var isLoading = false.obs;
  var page = 1;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController()..addListener(_scrollListener);
    _loadData();
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      // User has reached the end of the list, load more data
      _loadData();
    }
  }

  Future<void> _loadData() async {
    if (!isLoading.value) {
      isLoading.toggle();

      final response = await http.get(
          Uri.parse('https://fakestoreapi.com/products?_page=$page&_limit=10'));

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        List<Product> newProducts =
            data.map((json) => Product.fromJson(json)).toList();

        products.addAll(newProducts);
        page++;
        isLoading.toggle();
      } else {
        isLoading.toggle();
        throw Exception('Failed to load products');
      }
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}

class ProductLis extends StatelessWidget {
  const ProductLis({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return Obx(
      () => ListView.builder(
        controller: productController.scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: productController.products.length +
            1, // Add one for the loading indicator
        itemBuilder: (context, index) {
          if (index < productController.products.length) {
            return Container(
              margin: const EdgeInsets.all(8.0),
              width: 200.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    productController.products[index].imageUrl,
                    height: 150.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    productController.products[index].title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                      '\$${productController.products[index].price.toStringAsFixed(2)}'),
                  Text(productController.products[index].description),
                  Text(
                      productController.products[index].rating.rate.toString()),
                  Text(
                      productController.products[index].rating.count.toString())
                ],
              ),
            );
          } else {
            // Display loading indicator at the end of the list
            return productController.isLoading.value
                ? const CircularProgressIndicator()
                : Container();
          }
        },
      ),
    );
  }
}

class Produc {
  final String title;
  final double price;
  final String imageUrl;
  final String description;

  Produc(
      {required this.title,
      required this.price,
      required this.imageUrl,
      required this.description});

  factory Produc.fromJson(Map<String, dynamic> json) {
    return Produc(
        title: json['title'],
        price: json['price'].toDouble(),
        imageUrl: json['image'],
        description: json['description']);
  }
}
