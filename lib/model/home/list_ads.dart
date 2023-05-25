class ListingAdsModel {
  String? status;
  String? message;
  Data? data;

  ListingAdsModel({this.status, this.message, this.data});

  ListingAdsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Items>? items;
  int? total;

  Data({this.items, this.total});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    return data;
  }
}

class Items {
  String? listingId;
  String? packageId;
  String? customerId;
  String? locationId;
  String? categoryId;
  String? currencyId;
  String? title;
  String? slug;
  String? description;
  Null? businessTypes;
  Null? offer;
  Null? terms;
  String? share;
  String? price;
  String? negotiable;
  String? hidePhone;
  String? hideEmail;
  String? remainingAutoRenewal;
  String? promoExpireAt;
  String? listingExpireAt;
  String? status;
  String? createdAt;
  String? updatedAt;
  Null? capital;
  String? type;
  String? eventDateStart;
  Null? eventDateEnd;
  Null? eventTimeStart;
  Null? eventTimeEnd;
  Null? listingType;
  Category? category;
  Package? package;
  List<Images>? images;

  Items(
      {this.listingId,
      this.packageId,
      this.customerId,
      this.locationId,
      this.categoryId,
      this.currencyId,
      this.title,
      this.slug,
      this.description,
      this.businessTypes,
      this.offer,
      this.terms,
      this.share,
      this.price,
      this.negotiable,
      this.hidePhone,
      this.hideEmail,
      this.remainingAutoRenewal,
      this.promoExpireAt,
      this.listingExpireAt,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.capital,
      this.type,
      this.eventDateStart,
      this.eventDateEnd,
      this.eventTimeStart,
      this.eventTimeEnd,
      this.listingType,
      this.category,
      this.package,
      this.images});

  Items.fromJson(Map<String, dynamic> json) {
    listingId = json['listing_id'];
    packageId = json['package_id'];
    customerId = json['customer_id'];
    locationId = json['location_id'];
    categoryId = json['category_id'];
    currencyId = json['currency_id'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    businessTypes = json['business_types'];
    offer = json['offer'];
    terms = json['terms'];
    share = json['share'];
    price = json['price'];
    negotiable = json['negotiable'];
    hidePhone = json['hide_phone'];
    hideEmail = json['hide_email'];
    remainingAutoRenewal = json['remaining_auto_renewal'];
    promoExpireAt = json['promo_expire_at'];
    listingExpireAt = json['listing_expire_at'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    capital = json['capital'];
    type = json['type'];
    eventDateStart = json['event_date_start'];
    eventDateEnd = json['event_date_end'];
    eventTimeStart = json['event_time_start'];
    eventTimeEnd = json['event_time_end'];
    listingType = json['listing_type'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    package =
        json['package'] != null ? new Package.fromJson(json['package']) : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['listing_id'] = this.listingId;
    data['package_id'] = this.packageId;
    data['customer_id'] = this.customerId;
    data['location_id'] = this.locationId;
    data['category_id'] = this.categoryId;
    data['currency_id'] = this.currencyId;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['description'] = this.description;
    data['business_types'] = this.businessTypes;
    data['offer'] = this.offer;
    data['terms'] = this.terms;
    data['share'] = this.share;
    data['price'] = this.price;
    data['negotiable'] = this.negotiable;
    data['hide_phone'] = this.hidePhone;
    data['hide_email'] = this.hideEmail;
    data['remaining_auto_renewal'] = this.remainingAutoRenewal;
    data['promo_expire_at'] = this.promoExpireAt;
    data['listing_expire_at'] = this.listingExpireAt;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['capital'] = this.capital;
    data['type'] = this.type;
    data['event_date_start'] = this.eventDateStart;
    data['event_date_end'] = this.eventDateEnd;
    data['event_time_start'] = this.eventTimeStart;
    data['event_time_end'] = this.eventTimeEnd;
    data['listing_type'] = this.listingType;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.package != null) {
      data['package'] = this.package!.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String? categoryId;
  String? parentId;
  String? name;
  String? slug;
  String? icon;
  String? description;
  String? sortOrder;
  String? status;
  String? createdAt;
  String? updatedAt;

  Category(
      {this.categoryId,
      this.parentId,
      this.name,
      this.slug,
      this.icon,
      this.description,
      this.sortOrder,
      this.status,
      this.createdAt,
      this.updatedAt});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    parentId = json['parent_id'];
    name = json['name'];
    slug = json['slug'];
    icon = json['icon'];
    description = json['description'];
    sortOrder = json['sort_order'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['parent_id'] = this.parentId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['icon'] = this.icon;
    data['description'] = this.description;
    data['sort_order'] = this.sortOrder;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Package {
  String? packageId;
  String? title;
  String? price;
  String? listingDays;
  String? promoDays;
  String? promoShowPromotedArea;
  String? promoShowFeaturedArea;
  String? promoShowAtTop;
  String? promoSign;
  String? recommendedSign;
  String? autoRenewal;
  String? pictures;
  String? updatedAt;
  String? createdAt;

  Package(
      {this.packageId,
      this.title,
      this.price,
      this.listingDays,
      this.promoDays,
      this.promoShowPromotedArea,
      this.promoShowFeaturedArea,
      this.promoShowAtTop,
      this.promoSign,
      this.recommendedSign,
      this.autoRenewal,
      this.pictures,
      this.updatedAt,
      this.createdAt});

  Package.fromJson(Map<String, dynamic> json) {
    packageId = json['package_id'];
    title = json['title'];
    price = json['price'];
    listingDays = json['listing_days'];
    promoDays = json['promo_days'];
    promoShowPromotedArea = json['promo_show_promoted_area'];
    promoShowFeaturedArea = json['promo_show_featured_area'];
    promoShowAtTop = json['promo_show_at_top'];
    promoSign = json['promo_sign'];
    recommendedSign = json['recommended_sign'];
    autoRenewal = json['auto_renewal'];
    pictures = json['pictures'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['package_id'] = this.packageId;
    data['title'] = this.title;
    data['price'] = this.price;
    data['listing_days'] = this.listingDays;
    data['promo_days'] = this.promoDays;
    data['promo_show_promoted_area'] = this.promoShowPromotedArea;
    data['promo_show_featured_area'] = this.promoShowFeaturedArea;
    data['promo_show_at_top'] = this.promoShowAtTop;
    data['promo_sign'] = this.promoSign;
    data['recommended_sign'] = this.recommendedSign;
    data['auto_renewal'] = this.autoRenewal;
    data['pictures'] = this.pictures;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Images {
  String? imageId;
  String? listingId;
  String? imagePath;
  String? sortOrder;
  String? createdAt;
  String? updatedAt;

  Images(
      {this.imageId,
      this.listingId,
      this.imagePath,
      this.sortOrder,
      this.createdAt,
      this.updatedAt});

  Images.fromJson(Map<String, dynamic> json) {
    imageId = json['image_id'];
    listingId = json['listing_id'];
    imagePath = json['image_path'];
    sortOrder = json['sort_order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_id'] = this.imageId;
    data['listing_id'] = this.listingId;
    data['image_path'] = this.imagePath;
    data['sort_order'] = this.sortOrder;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}