class UserFetchModel {
  final String id;
  final String title;
  final String? subtitle;
  final String? brand;
  final String thumbnail;
  final double price;
  final double? originalPrice;
  final double? averageRating;
  final int? reviewCount;
  final int? colorCount;
  final List<String>? images;
  final String? description;
  final bool? isWishlisted;

  UserFetchModel({
    required this.id,
    required this.title,
    this.subtitle,
    this.brand,
    required this.thumbnail,
    required this.price,
    this.originalPrice,
    this.averageRating,
    this.reviewCount,
    this.colorCount,
    this.images,
    this.description,
    this.isWishlisted,
  });

  factory UserFetchModel.fromJson(Map<String, dynamic> json) {
    String getId() {
      return json['id']?.toString() ??
          json['productId']?.toString() ??
          json['_id']?.toString() ??
          '';
    }

    String getTitle() {
      return json['title'] ??
          json['name'] ??
          json['productName'] ??
          'Product';
    }

    String? getBrand() {
      return json['brand'] ??
          json['brandName'] ??
          json['manufacturer'];
    }

    String getThumbnail() {
      if (json['thumbnail'] != null && json['thumbnail'] is String) {
        return json['thumbnail'];
      }

      if (json['image'] != null && json['image'] is String) {
        return json['image'];
      }

      if (json['productImages'] != null && json['productImages'] is List) {
        final images = json['productImages'] as List;
        if (images.isNotEmpty) {
          if (images[0] is String) {
            return images[0];
          } else if (images[0] is Map && images[0]['url'] != null) {
            return images[0]['url'];
          } else if (images[0] is Map && images[0]['image'] != null) {
            return images[0]['image'];
          }
        }
      }

      if (json['images'] != null && json['images'] is List) {
        final images = json['images'] as List;
        if (images.isNotEmpty) {
          if (images[0] is String) {
            return images[0];
          } else if (images[0] is Map && images[0]['url'] != null) {
            return images[0]['url'];
          }
        }
      }

      return 'https://via.placeholder.com/300x300?text=No+Image';
    }

    double getPrice() {
      // Try different price structures
      if (json['price'] != null) {
        if (json['price'] is num) {
          return (json['price'] as num).toDouble();
        }
      }

      if (json['prices'] != null && json['prices'] is List) {
        final prices = json['prices'] as List;
        if (prices.isNotEmpty && prices[0] is Map) {
          final priceObj = prices[0] as Map;
          if (priceObj['amount'] != null) {
            return (priceObj['amount'] as num).toDouble();
          }
          if (priceObj['price'] != null) {
            return (priceObj['price'] as num).toDouble();
          }
        }
      }

      if (json['currentPrice'] != null) {
        return (json['currentPrice'] as num).toDouble();
      }

      return 0.0;
    }

    double? getOriginalPrice() {
      if (json['originalPrice'] != null) {
        return (json['originalPrice'] as num).toDouble();
      }
      if (json['regularPrice'] != null) {
        return (json['regularPrice'] as num).toDouble();
      }
      if (json['msrp'] != null) {
        return (json['msrp'] as num).toDouble();
      }
      return null;
    }

    double? getRating() {
      if (json['rating'] != null) {
        return (json['rating'] as num).toDouble();
      }
      if (json['averageRating'] != null) {
        return (json['averageRating'] as num).toDouble();
      }
      if (json['stars'] != null) {
        return (json['stars'] as num).toDouble();
      }
      return null;
    }

    int? getReviewCount() {
      if (json['reviewCount'] != null) {
        return json['reviewCount'] as int;
      }
      if (json['reviews'] != null) {
        if (json['reviews'] is int) {
          return json['reviews'];
        } else if (json['reviews'] is List) {
          return (json['reviews'] as List).length;
        }
      }
      if (json['totalReviews'] != null) {
        return json['totalReviews'] as int;
      }
      if (json['_count'] != null && json['_count']['reviews'] != null) {
        return json['_count']['reviews'] as int;
      }
      return null;
    }

    int? getColorCount() {
      if (json['colorCount'] != null) {
        return json['colorCount'] as int;
      }
      if (json['colors'] != null && json['colors'] is List) {
        return (json['colors'] as List).length;
      }
      if (json['variants'] != null && json['variants'] is List) {
        return (json['variants'] as List).length;
      }
      return null;
    }

    List<String>? getImages() {
      List<String> imageList = [];

      if (json['images'] != null && json['images'] is List) {
        for (var img in json['images']) {
          if (img is String) {
            imageList.add(img);
          } else if (img is Map && img['url'] != null) {
            imageList.add(img['url']);
          }
        }
      }

      if (json['productImages'] != null && json['productImages'] is List) {
        for (var img in json['productImages']) {
          if (img is String) {
            imageList.add(img);
          } else if (img is Map) {
            if (img['url'] != null) imageList.add(img['url']);
            else if (img['image'] != null) imageList.add(img['image']);
          }
        }
      }

      return imageList.isNotEmpty ? imageList : null;
    }

    bool? getIsWishlisted() {
      if (json['isWishlisted'] != null) {
        return json['isWishlisted'] as bool;
      }
      if (json['_count'] != null && json['_count']['lists'] != null) {
        return json['_count']['lists'] > 0;
      }
      return false;
    }

    return UserFetchModel(
      id: getId(),
      title: getTitle(),
      subtitle: json['subtitle'] ?? json['description'] ?? json['shortDescription'],
      brand: getBrand(),
      thumbnail: getThumbnail(),
      price: getPrice(),
      originalPrice: getOriginalPrice(),
      averageRating: getRating(),
      reviewCount: getReviewCount(),
      colorCount: getColorCount(),
      images: getImages(),
      description: json['description'] ?? json['longDescription'],
      isWishlisted: getIsWishlisted(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'brand': brand,
      'thumbnail': thumbnail,
      'price': price,
      'originalPrice': originalPrice,
      'averageRating': averageRating,
      'reviewCount': reviewCount,
      'colorCount': colorCount,
      'images': images,
      'description': description,
      'isWishlisted': isWishlisted,
    };
  }

  UserFetchModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? brand,
    String? thumbnail,
    double? price,
    double? originalPrice,
    double? averageRating,
    int? reviewCount,
    int? colorCount,
    List<String>? images,
    String? description,
    bool? isWishlisted,
  }) {
    return UserFetchModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      brand: brand ?? this.brand,
      thumbnail: thumbnail ?? this.thumbnail,
      price: price ?? this.price,
      originalPrice: originalPrice ?? this.originalPrice,
      averageRating: averageRating ?? this.averageRating,
      reviewCount: reviewCount ?? this.reviewCount,
      colorCount: colorCount ?? this.colorCount,
      images: images ?? this.images,
      description: description ?? this.description,
      isWishlisted: isWishlisted ?? this.isWishlisted,
    );
  }
}