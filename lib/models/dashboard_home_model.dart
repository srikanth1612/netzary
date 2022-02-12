class DashboardHomeModel {
  DashboardHomeModel({
    this.categories,
    this.data,
    this.transacts,
    this.backgroundImages,
  });

  List<CategoryElement>? categories;
  List<Datum>? data;
  List<Transact>? transacts;
  List<BackgroundImage>? backgroundImages;

  factory DashboardHomeModel.fromJson(Map<String, dynamic> json) =>
      DashboardHomeModel(
        categories: json["categories"] == null
            ? null
            : List<CategoryElement>.from(
                json["categories"].map((x) => CategoryElement.fromJson(x))),
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        transacts: json["transacts"] == null
            ? null
            : List<Transact>.from(
                json["transacts"].map((x) => Transact.fromJson(x))),
        backgroundImages: json["background_images"] == null
            ? null
            : List<BackgroundImage>.from(json["background_images"]
                .map((x) => BackgroundImage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categories": categories == null
            ? null
            : List<dynamic>.from(categories!.map((x) => x.toJson())),
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "transacts": transacts == null
            ? null
            : List<dynamic>.from(transacts!.map((x) => x.toJson())),
        "background_images": backgroundImages == null
            ? null
            : List<dynamic>.from(backgroundImages!.map((x) => x.toJson())),
      };
}

class BackgroundImage {
  BackgroundImage({
    this.title,
    this.image,
    this.id,
  });

  String? title;
  String? image;
  int? id;

  factory BackgroundImage.fromJson(Map<String, dynamic> json) =>
      BackgroundImage(
        title: json["title"],
        image: json["image"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
        "id": id,
      };
}

class CategoryElement {
  CategoryElement({
    this.name,
    this.slug,
    this.icon,
  });

  String? name;
  String? slug;
  String? icon;

  factory CategoryElement.fromJson(Map<String, dynamic> json) =>
      CategoryElement(
        name: json["name"],
        slug: json["slug"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
        "icon": icon,
      };
}

class Datum {
  Datum({
    this.type,
    this.items,
    this.title,
    this.summary,
    this.icon,
    this.twoLine,
    this.seeAll,
  });

  String? type;
  List<Item>? items;
  String? title;
  String? summary;
  int? icon;
  bool? twoLine;
  String? seeAll;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        type: json["type"],
        items: json["items"] == null
            ? null
            : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        title: json["title"],
        summary: json["summary"],
        icon: json["icon"],
        twoLine: json["two_line"],
        seeAll: json["see_all"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "title": title,
        "summary": summary,
        "icon": icon,
        "two_line": twoLine,
        "see_all": seeAll,
      };
}

class Item {
  Item({
    this.title,
    this.image,
    this.link,
    this.minPrice,
    this.price,
    this.listingId,
    this.createdSince,
    this.updatedSince,
    this.category,
    this.categorySlug,
    this.slug,
    this.attributes,
    this.thumbnail,
    this.isSpam,
    this.isPremium,
    this.isVerified,
    this.expiryDate,
    this.offer,
    this.isChatAllowed,
    this.isOffensive,
    this.isAuction,
    this.outKashmir,
    this.viewers,
    this.status,
    this.locality,
    this.city,
    this.posted,
    this.transact,
    this.inWishlist,
  });

  String? title;
  String? image;
  String? link;
  double? minPrice;
  double? price;
  String? listingId;
  String? createdSince;
  String? updatedSince;
  ItemCategory? category;
  String? categorySlug;
  String? slug;
  List<Attribute>? attributes;
  String? thumbnail;
  bool? isSpam;
  bool? isPremium;
  bool? isVerified;
  String? expiryDate;
  String? offer;
  bool? isChatAllowed;
  bool? isOffensive;
  bool? isAuction;
  bool? outKashmir;
  int? viewers;
  Status? status;
  String? locality;
  String? city;
  int? posted;
  Transact? transact;
  bool? inWishlist;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        title: json["title"],
        image: json["image"],
        link: json["link"],
        minPrice: json["min_price"],
        price: json["price"],
        listingId: json["listing_id"],
        createdSince: json["created_since"],
        updatedSince: json["updated_since"],
        category: json["category"] == null
            ? null
            : ItemCategory.fromJson(json["category"]),
        categorySlug: json["category_slug"],
        slug: json["slug"],
        attributes: json["attributes"] == null
            ? null
            : List<Attribute>.from(
                json["attributes"].map((x) => Attribute.fromJson(x))),
        thumbnail: json["thumbnail"],
        isSpam: json["is_spam"],
        isPremium: json["is_premium"],
        isVerified: json["is_verified"],
        expiryDate: json["expiry_date"],
        offer: json["offer"],
        isChatAllowed: json["is_chat_allowed"],
        isOffensive: json["is_offensive"],
        isAuction: json["is_auction"],
        outKashmir: json["out_kashmir"],
        viewers: json["viewers"],
        status:
            json["status"] == null ? null : statusValues.map![json["status"]],
        locality: json["locality"],
        city: json["city"],
        posted: json["posted"],
        transact: json["transact"] == null
            ? null
            : Transact.fromJson(json["transact"]),
        inWishlist: json["in_wishlist"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
        "link": link,
        "min_price": minPrice,
        "price": price,
        "listing_id": listingId,
        "created_since": createdSince,
        "updated_since": updatedSince,
        "category": category!.toJson(),
        "category_slug": categorySlug,
        "slug": slug,
        "attributes": List<dynamic>.from(attributes!.map((x) => x.toJson())),
        "thumbnail": thumbnail,
        "is_spam": isSpam,
        "is_premium": isPremium,
        "is_verified": isVerified,
        "expiry_date": expiryDate,
        "offer": offer,
        "is_chat_allowed": isChatAllowed,
        "is_offensive": isOffensive,
        "is_auction": isAuction,
        "out_kashmir": outKashmir,
        "viewers": viewers,
        "status": statusValues.reverse![status],
        "locality": locality,
        "city": city,
        "posted": posted,
        "transact": transact!.toJson(),
        "in_wishlist": inWishlist,
      };
}

class Attribute {
  Attribute({
    this.id,
    this.key,
    this.keyId,
    this.value,
    this.required,
    this.ordering,
    this.unit,
  });

  int? id;
  String? key;
  int? keyId;
  String? value;
  bool? required;
  int? ordering;
  String? unit;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
        id: json["id"],
        key: json["key"],
        keyId: json["key_id"],
        value: json["value"],
        required: json["required"],
        ordering: json["ordering"],
        unit: json["unit"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "key_id": keyId,
        "value": value,
        "required": required,
        "ordering": ordering,
        "unit": unit,
      };
}

class ItemCategory {
  ItemCategory({
    this.name,
    this.slug,
    this.id,
    this.description,
    this.icon,
  });

  String? name;
  String? slug;
  int? id;
  Description? description;
  String? icon;

  factory ItemCategory.fromJson(Map<String, dynamic> json) => ItemCategory(
        name: json["name"],
        slug: json["slug"],
        id: json["id"],
        description: descriptionValues.map![json["description"]],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
        "id": id,
        "description": descriptionValues.reverse![description],
        "icon": icon,
      };
}

enum Description {
  EMPTY_LANDS,
  INDIVIDUAL_HOUSE,
  SHOPS_OFFICES_BUILDINGS_ETC,
  FLATS_APARTMENTS_AND_PENTHOUSES
}

final descriptionValues = EnumValues({
  "Empty Lands": Description.EMPTY_LANDS,
  "Flats, Apartments and Penthouses.":
      Description.FLATS_APARTMENTS_AND_PENTHOUSES,
  "Individual House": Description.INDIVIDUAL_HOUSE,
  "Shops, Offices, buildings, etc.": Description.SHOPS_OFFICES_BUILDINGS_ETC
});

enum Status { APPROVED, PENDING_FOR_APPROVAL, RETIRED_REMOVED }

final statusValues = EnumValues({
  "Approved": Status.APPROVED,
  "Pending for Approval": Status.PENDING_FOR_APPROVAL,
  "Retired/Removed": Status.RETIRED_REMOVED
});

class Transact {
  Transact({
    this.name,
    this.id,
    this.slug,
    this.labelSeller,
    this.labelBuyer,
    this.icon,
    this.priceUnit,
  });

  TransactName? name;
  int? id;
  TransactSlug? slug;
  LabelSeller? labelSeller;
  LabelBuyer? labelBuyer;
  String? icon;
  PriceUnit? priceUnit;

  factory Transact.fromJson(Map<String, dynamic> json) => Transact(
        name: transactNameValues.map![json["name"]],
        id: json["id"],
        slug: transactSlugValues.map![json["slug"]],
        labelSeller: labelSellerValues.map![json["label_seller"]],
        labelBuyer: labelBuyerValues.map![json["label_buyer"]],
        icon: json["icon"],
        priceUnit: priceUnitValues.map![json["price_unit"]],
      );

  Map<String, dynamic> toJson() => {
        "name": transactNameValues.reverse![name],
        "id": id,
        "slug": transactSlugValues.reverse![slug],
        "label_seller": labelSellerValues.reverse![labelSeller],
        "label_buyer": labelBuyerValues.reverse![labelBuyer],
        "icon": icon,
        "price_unit": priceUnitValues.reverse![priceUnit],
      };
}

enum LabelBuyer { BUY, RENT }

final labelBuyerValues =
    EnumValues({"Buy": LabelBuyer.BUY, "Rent": LabelBuyer.RENT});

enum LabelSeller { SALE, RENT }

final labelSellerValues =
    EnumValues({"Rent": LabelSeller.RENT, "Sale": LabelSeller.SALE});

enum TransactName { SELL, RENT }

final transactNameValues =
    EnumValues({"Rent": TransactName.RENT, "Sell": TransactName.SELL});

enum PriceUnit { MONTH }

final priceUnitValues = EnumValues({"month": PriceUnit.MONTH});

enum TransactSlug { SELL, RENT }

final transactSlugValues =
    EnumValues({"rent": TransactSlug.RENT, "sell": TransactSlug.SELL});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
