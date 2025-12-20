import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecompro_app/widgtes/custom_scaffold.dart';
import '../../controllers/home_main/product_controller.dart';
import '../../widgtes/category_chip.dart';
import '../../widgtes/product_card.dart';

class ProductPage extends StatefulWidget {
  ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final ProductController controller = Get.find();

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          controller: searchController,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: const Icon(Icons.search),
            filled: true,
            fillColor: Colors.grey.shade200,
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
          ),
          onSubmitted: (value) {
            controller.onSearch(value);
          },
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 46,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: const [
                CategoryChip(title: "Makeup"),
                CategoryChip(title: "Gifts"),
                CategoryChip(title: "Luxury Beauty"),
                CategoryChip(title: "Clean Beauty"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                FilterButton(
                  title: "Sort",
                  onTap: () => _showSortSheet(context),
                ),
                const SizedBox(width: 8),
                FilterButton(title: "Price"),
                const SizedBox(width: 8),
                FilterButton(title: "Delivery"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Obx(() => Text(
              "${controller.products.length} Results",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            )),
          ),

          const SizedBox(height: 6),

          Expanded(
            child: Obx(() {
              if (controller.isLoading.value &&
                  controller.products.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }

              return GridView.builder(
                padding: const EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: controller.products.length,
                itemBuilder: (_, index) {
                  final product = controller.products[index];

                  return ProductCard(
                    image: product['image'] ?? '',
                    name: product['name'] ?? '',
                    price: (product['price'] ?? 0).toDouble(),
                    onTap: () {
                      // Navigate to Product Detail Page
                      // Get.to(() => ProductDetailPage(id: product['_id']));
                    },
                    onWishlistTap: () {
                      // Wishlist logic
                    },
                  );
                },
              );
            }),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: "Offers"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
        ],
      ),
    );
  }

   void _showSortSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Sort By",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text("Newest"),
              onTap: () {
                controller.onSortChange("createdAt:desc");
                Get.back();
              },
            ),
            ListTile(
              title: const Text("Price: Low to High"),
              onTap: () {
                controller.onSortChange("price:asc");
                Get.back();
              },
            ),
            ListTile(
              title: const Text("Price: High to Low"),
              onTap: () {
                controller.onSortChange("price:desc");
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }
}
