import 'dart:convert';

class Getmodel {
  Getmodel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  String? next;
  String? previous;
  List<Result?>? results;

  factory Getmodel.fromJson(String str) => Getmodel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Getmodel.fromMap(Map<String, dynamic> json) => Getmodel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: json["results"] == null
            ? []
            : List<Result?>.from(
                json["results"]!.map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x!.toMap())),
      };
}

class Result {
  Result({
    this.id,
    this.slug,
    this.name,
    this.releaseDate,
    this.image,
  });

  int? id;
  String? slug;
  String? name;
  String? image;
  String? releaseDate;

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        id: json["id"],
        slug: json["slug"],
        name: json["name"],
        image: json["background_image"],
        releaseDate: json["released"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "slug": slug,
        "name": name,
        "background_image": image,
        "released": releaseDate,
      };
}

// import 'dart:convert';
//
// Getmodel getmodelFromMap(String str) => Getmodel.fromMap(json.decode(str));
//
// String getmodelToMap(Getmodel data) => json.encode(data.toMap());
//
//
// class Getmodel {
//   final int count;
//   final String next;
//   final dynamic previous;
//   final List<Result> results;
//   final String seoTitle;
//   final String seoDescription;
//   final String seoKeywords;
//   final String seoH1;
//   final bool noindex;
//   final bool nofollow;
//   final String description;
//   final Filters filters;
//   final List<String> nofollowCollections;
//
//   Getmodel({
//     required this.count,
//     required this.next,
//     this.previous,
//     required this.results,
//     required this.seoTitle,
//     required this.seoDescription,
//     required this.seoKeywords,
//     required this.seoH1,
//     required this.noindex,
//     required this.nofollow,
//     required this.description,
//     required this.filters,
//     required this.nofollowCollections,
//   });
//
//   factory Getmodel.fromMap(Map<String, dynamic> json) => Getmodel(
//     count: json["count"],
//     next: json["next"],
//     previous: json["previous"],
//     results: List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
//     seoTitle: json["seo_title"],
//     seoDescription: json["seo_description"],
//     seoKeywords: json["seo_keywords"],
//     seoH1: json["seo_h1"],
//     noindex: json["noindex"],
//     nofollow: json["nofollow"],
//     description: json["description"],
//     filters: Filters.fromMap(json["filters"]),
//     nofollowCollections: List<String>.from(json["nofollow_collections"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "count": count,
//     "next": next,
//     "previous": previous,
//     "results": List<dynamic>.from(results.map((x) => x.toMap())),
//     "seo_title": seoTitle,
//     "seo_description": seoDescription,
//     "seo_keywords": seoKeywords,
//     "seo_h1": seoH1,
//     "noindex": noindex,
//     "nofollow": nofollow,
//     "description": description,
//     "filters": filters.toMap(),
//     "nofollow_collections": List<dynamic>.from(nofollowCollections.map((x) => x)),
//   };
// }
//
// class Filters {
//   final List<FiltersYear> years;
//
//   Filters({
//     required this.years,
//   });
//
//   factory Filters.fromMap(Map<String, dynamic> json) => Filters(
//     years: List<FiltersYear>.from(json["years"].map((x) => FiltersYear.fromMap(x))),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "years": List<dynamic>.from(years.map((x) => x.toMap())),
//   };
// }
//
// class FiltersYear {
//   final int from;
//   final int to;
//   final String filter;
//   final int decade;
//   final List<YearYear> years;
//   final bool nofollow;
//   final int count;
//
//   FiltersYear({
//     required this.from,
//     required this.to,
//     required this.filter,
//     required this.decade,
//     required this.years,
//     required this.nofollow,
//     required this.count,
//   });
//
//   factory FiltersYear.fromMap(Map<String, dynamic> json) => FiltersYear(
//     from: json["from"],
//     to: json["to"],
//     filter: json["filter"],
//     decade: json["decade"],
//     years: List<YearYear>.from(json["years"].map((x) => YearYear.fromMap(x))),
//     nofollow: json["nofollow"],
//     count: json["count"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "from": from,
//     "to": to,
//     "filter": filter,
//     "decade": decade,
//     "years": List<dynamic>.from(years.map((x) => x.toMap())),
//     "nofollow": nofollow,
//     "count": count,
//   };
// }
//
// class YearYear {
//   final int year;
//   final int count;
//   final bool nofollow;
//
//   YearYear({
//     required this.year,
//     required this.count,
//     required this.nofollow,
//   });
//
//   factory YearYear.fromMap(Map<String, dynamic> json) => YearYear(
//     year: json["year"],
//     count: json["count"],
//     nofollow: json["nofollow"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "year": year,
//     "count": count,
//     "nofollow": nofollow,
//   };
// }
//
// class Result {
//   final int id;
//   final String slug;
//   final String name;
//   final DateTime released;
//   final bool tba;
//   final String backgroundImage;
//   final double rating;
//   final int ratingTop;
//   final List<Rating> ratings;
//   final int ratingsCount;
//   final int reviewsTextCount;
//   final int added;
//   final AddedByStatus addedByStatus;
//   final int metacritic;
//   final int playtime;
//   final int suggestionsCount;
//   final DateTime updated;
//   final dynamic userGame;
//   final int reviewsCount;
//   final Color saturatedColor;
//   final Color dominantColor;
//   final List<PlatformElement> platforms;
//   final List<ParentPlatform> parentPlatforms;
//   final List<Genre> genres;
//   final List<Store> stores;
//   final dynamic clip;
//   final List<Genre> tags;
//   final EsrbRating esrbRating;
//   final List<ShortScreenshot> shortScreenshots;
//
//   Result({
//     required this.id,
//     required this.slug,
//     required this.name,
//     required this.released,
//     required this.tba,
//     required this.backgroundImage,
//     required this.rating,
//     required this.ratingTop,
//     required this.ratings,
//     required this.ratingsCount,
//     required this.reviewsTextCount,
//     required this.added,
//     required this.addedByStatus,
//     required this.metacritic,
//     required this.playtime,
//     required this.suggestionsCount,
//     required this.updated,
//     this.userGame,
//     required this.reviewsCount,
//     required this.saturatedColor,
//     required this.dominantColor,
//     required this.platforms,
//     required this.parentPlatforms,
//     required this.genres,
//     required this.stores,
//     this.clip,
//     required this.tags,
//     required this.esrbRating,
//     required this.shortScreenshots,
//   });
//
//   factory Result.fromMap(Map<String, dynamic> json) => Result(
//     id: json["id"],
//     slug: json["slug"],
//     name: json["name"],
//     released: DateTime.parse(json["released"]),
//     tba: json["tba"],
//     backgroundImage: json["background_image"],
//     rating: json["rating"]?.toDouble(),
//     ratingTop: json["rating_top"],
//     ratings: List<Rating>.from(json["ratings"].map((x) => Rating.fromMap(x))),
//     ratingsCount: json["ratings_count"],
//     reviewsTextCount: json["reviews_text_count"],
//     added: json["added"],
//     addedByStatus: AddedByStatus.fromMap(json["added_by_status"]),
//     metacritic: json["metacritic"],
//     playtime: json["playtime"],
//     suggestionsCount: json["suggestions_count"],
//     updated: DateTime.parse(json["updated"]),
//     userGame: json["user_game"],
//     reviewsCount: json["reviews_count"],
//     saturatedColor: colorValues.map[json["saturated_color"]]!,
//     dominantColor: colorValues.map[json["dominant_color"]]!,
//     platforms: List<PlatformElement>.from(json["platforms"].map((x) => PlatformElement.fromMap(x))),
//     parentPlatforms: List<ParentPlatform>.from(json["parent_platforms"].map((x) => ParentPlatform.fromMap(x))),
//     genres: List<Genre>.from(json["genres"].map((x) => Genre.fromMap(x))),
//     stores: List<Store>.from(json["stores"].map((x) => Store.fromMap(x))),
//     clip: json["clip"],
//     tags: List<Genre>.from(json["tags"].map((x) => Genre.fromMap(x))),
//     esrbRating: EsrbRating.fromMap(json["esrb_rating"]),
//     shortScreenshots: List<ShortScreenshot>.from(json["short_screenshots"].map((x) => ShortScreenshot.fromMap(x))),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "slug": slug,
//     "name": name,
//     "released": "${released.year.toString().padLeft(4, '0')}-${released.month.toString().padLeft(2, '0')}-${released.day.toString().padLeft(2, '0')}",
//     "tba": tba,
//     "background_image": backgroundImage,
//     "rating": rating,
//     "rating_top": ratingTop,
//     "ratings": List<dynamic>.from(ratings.map((x) => x.toMap())),
//     "ratings_count": ratingsCount,
//     "reviews_text_count": reviewsTextCount,
//     "added": added,
//     "added_by_status": addedByStatus.toMap(),
//     "metacritic": metacritic,
//     "playtime": playtime,
//     "suggestions_count": suggestionsCount,
//     "updated": updated.toIso8601String(),
//     "user_game": userGame,
//     "reviews_count": reviewsCount,
//     "saturated_color": colorValues.reverse[saturatedColor],
//     "dominant_color": colorValues.reverse[dominantColor],
//     "platforms": List<dynamic>.from(platforms.map((x) => x.toMap())),
//     "parent_platforms": List<dynamic>.from(parentPlatforms.map((x) => x.toMap())),
//     "genres": List<dynamic>.from(genres.map((x) => x.toMap())),
//     "stores": List<dynamic>.from(stores.map((x) => x.toMap())),
//     "clip": clip,
//     "tags": List<dynamic>.from(tags.map((x) => x.toMap())),
//     "esrb_rating": esrbRating.toMap(),
//     "short_screenshots": List<dynamic>.from(shortScreenshots.map((x) => x.toMap())),
//   };
// }
//
// class AddedByStatus {
//   final int yet;
//   final int owned;
//   final int beaten;
//   final int toplay;
//   final int dropped;
//   final int playing;
//
//   AddedByStatus({
//     required this.yet,
//     required this.owned,
//     required this.beaten,
//     required this.toplay,
//     required this.dropped,
//     required this.playing,
//   });
//
//   factory AddedByStatus.fromMap(Map<String, dynamic> json) => AddedByStatus(
//     yet: json["yet"],
//     owned: json["owned"],
//     beaten: json["beaten"],
//     toplay: json["toplay"],
//     dropped: json["dropped"],
//     playing: json["playing"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "yet": yet,
//     "owned": owned,
//     "beaten": beaten,
//     "toplay": toplay,
//     "dropped": dropped,
//     "playing": playing,
//   };
// }
//
// enum Color { THE_0_F0_F0_F }
//
// final colorValues = EnumValues({
//   "0f0f0f": Color.THE_0_F0_F0_F
// });
//
// class EsrbRating {
//   final int id;
//   final String name;
//   final String slug;
//
//   EsrbRating({
//     required this.id,
//     required this.name,
//     required this.slug,
//   });
//
//   factory EsrbRating.fromMap(Map<String, dynamic> json) => EsrbRating(
//     id: json["id"],
//     name: json["name"],
//     slug: json["slug"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "name": name,
//     "slug": slug,
//   };
// }
//
// class Genre {
//   final int id;
//   final String name;
//   final String slug;
//   final int gamesCount;
//   final String imageBackground;
//   final Domain? domain;
//   final Language? language;
//
//   Genre({
//     required this.id,
//     required this.name,
//     required this.slug,
//     required this.gamesCount,
//     required this.imageBackground,
//     this.domain,
//     this.language,
//   });
//
//   factory Genre.fromMap(Map<String, dynamic> json) => Genre(
//     id: json["id"],
//     name: json["name"],
//     slug: json["slug"],
//     gamesCount: json["games_count"],
//     imageBackground: json["image_background"],
//     domain: domainValues.map[json["domain"]]!,
//     language: languageValues.map[json["language"]]!,
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "name": name,
//     "slug": slug,
//     "games_count": gamesCount,
//     "image_background": imageBackground,
//     "domain": domainValues.reverse[domain],
//     "language": languageValues.reverse[language],
//   };
// }
//
// enum Domain { STORE_PLAYSTATION_COM, EPICGAMES_COM, STORE_STEAMPOWERED_COM, MARKETPLACE_XBOX_COM, MICROSOFT_COM, GOG_COM, NINTENDO_COM, PLAY_GOOGLE_COM, APPS_APPLE_COM }
//
// final domainValues = EnumValues({
//   "apps.apple.com": Domain.APPS_APPLE_COM,
//   "epicgames.com": Domain.EPICGAMES_COM,
//   "gog.com": Domain.GOG_COM,
//   "marketplace.xbox.com": Domain.MARKETPLACE_XBOX_COM,
//   "microsoft.com": Domain.MICROSOFT_COM,
//   "nintendo.com": Domain.NINTENDO_COM,
//   "play.google.com": Domain.PLAY_GOOGLE_COM,
//   "store.playstation.com": Domain.STORE_PLAYSTATION_COM,
//   "store.steampowered.com": Domain.STORE_STEAMPOWERED_COM
// });
//
// enum Language { ENG }
//
// final languageValues = EnumValues({
//   "eng": Language.ENG
// });
//
// class ParentPlatform {
//   final EsrbRating platform;
//
//   ParentPlatform({
//     required this.platform,
//   });
//
//   factory ParentPlatform.fromMap(Map<String, dynamic> json) => ParentPlatform(
//     platform: EsrbRating.fromMap(json["platform"]),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "platform": platform.toMap(),
//   };
// }
//
// class PlatformElement {
//   final PlatformPlatform platform;
//   final DateTime? releasedAt;
//   final Requirements? requirementsEn;
//   final Requirements? requirementsRu;
//
//   PlatformElement({
//     required this.platform,
//     this.releasedAt,
//     this.requirementsEn,
//     this.requirementsRu,
//   });
//
//   factory PlatformElement.fromMap(Map<String, dynamic> json) => PlatformElement(
//     platform: PlatformPlatform.fromMap(json["platform"]),
//     releasedAt: json["released_at"] == null ? null : DateTime.parse(json["released_at"]),
//     requirementsEn: json["requirements_en"] == null ? null : Requirements.fromMap(json["requirements_en"]),
//     requirementsRu: json["requirements_ru"] == null ? null : Requirements.fromMap(json["requirements_ru"]),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "platform": platform.toMap(),
//     "released_at": "${releasedAt!.year.toString().padLeft(4, '0')}-${releasedAt!.month.toString().padLeft(2, '0')}-${releasedAt!.day.toString().padLeft(2, '0')}",
//     "requirements_en": requirementsEn?.toMap(),
//     "requirements_ru": requirementsRu?.toMap(),
//   };
// }
//
// class PlatformPlatform {
//   final int id;
//   final String name;
//   final String slug;
//   final dynamic image;
//   final dynamic yearEnd;
//   final int? yearStart;
//   final int gamesCount;
//   final String imageBackground;
//
//   PlatformPlatform({
//     required this.id,
//     required this.name,
//     required this.slug,
//     this.image,
//     this.yearEnd,
//     this.yearStart,
//     required this.gamesCount,
//     required this.imageBackground,
//   });
//
//   factory PlatformPlatform.fromMap(Map<String, dynamic> json) => PlatformPlatform(
//     id: json["id"],
//     name: json["name"],
//     slug: json["slug"],
//     image: json["image"],
//     yearEnd: json["year_end"],
//     yearStart: json["year_start"],
//     gamesCount: json["games_count"],
//     imageBackground: json["image_background"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "name": name,
//     "slug": slug,
//     "image": image,
//     "year_end": yearEnd,
//     "year_start": yearStart,
//     "games_count": gamesCount,
//     "image_background": imageBackground,
//   };
// }
//
// class Requirements {
//   final String minimum;
//   final String? recommended;
//
//   Requirements({
//     required this.minimum,
//     this.recommended,
//   });
//
//   factory Requirements.fromMap(Map<String, dynamic> json) => Requirements(
//     minimum: json["minimum"],
//     recommended: json["recommended"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "minimum": minimum,
//     "recommended": recommended,
//   };
// }
//
// class Rating {
//   final int id;
//   final Title title;
//   final int count;
//   final double percent;
//
//   Rating({
//     required this.id,
//     required this.title,
//     required this.count,
//     required this.percent,
//   });
//
//   factory Rating.fromMap(Map<String, dynamic> json) => Rating(
//     id: json["id"],
//     title: titleValues.map[json["title"]]!,
//     count: json["count"],
//     percent: json["percent"]?.toDouble(),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "title": titleValues.reverse[title],
//     "count": count,
//     "percent": percent,
//   };
// }
//
//
// enum Title { EXCEPTIONAL, RECOMMENDED, MEH, SKIP }
//
// final titleValues = EnumValues({
//   "exceptional": Title.EXCEPTIONAL,
//   "meh": Title.MEH,
//   "recommended": Title.RECOMMENDED,
//   "skip": Title.SKIP
// });
//
// class ShortScreenshot {
//   final int id;
//   final String image;
//
//   ShortScreenshot({
//     required this.id,
//     required this.image,
//   });
//
//   factory ShortScreenshot.fromMap(Map<String, dynamic> json) => ShortScreenshot(
//     id: json["id"],
//     image: json["image"],
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "image": image,
//   };
// }
//
// class Store {
//   final int id;
//   final Genre store;
//
//   Store({
//     required this.id,
//     required this.store,
//   });
//
//   factory Store.fromMap(Map<String, dynamic> json) => Store(
//     id: json["id"],
//     store: Genre.fromMap(json["store"]),
//   );
//
//   Map<String, dynamic> toMap() => {
//     "id": id,
//     "store": store.toMap(),
//   };
// }
//
// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }
//
