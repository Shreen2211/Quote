class QoutesModel {
  String? qotdDate;
  Quote? quote;

  QoutesModel({this.qotdDate, this.quote});

  QoutesModel.fromJson(Map<String, dynamic> json) {
    qotdDate = json['qotd_date'];
    quote = json['quote'] != null ? Quote.fromJson(json['quote']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['qotd_date'] = qotdDate;
    if (quote != null) {
      data['quote'] = quote!.toJson();
    }
    return data;
  }
}

class Quote {
  num? id;
  bool? dialogue;
  bool? private;
  List<String>? tags;
  String? url;
  num? favoritesCount;
  num? upvotesCount;
  num? downvotesCount;
  String? author;
  String? authorPermalink;
  String? body;

  Quote(
      {this.id,
        this.dialogue,
        this.private,
        this.tags,
        this.url,
        this.favoritesCount,
        this.upvotesCount,
        this.downvotesCount,
        this.author,
        this.authorPermalink,
        this.body});

  Quote.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dialogue = json['dialogue'];
    private = json['private'];
    tags = json['tags'].cast<String>();
    url = json['url'];
    favoritesCount = json['favorites_count'];
    upvotesCount = json['upvotes_count'];
    downvotesCount = json['downvotes_count'];
    author = json['author'];
    authorPermalink = json['author_permalink'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['dialogue'] = dialogue;
    data['private'] = private;
    data['tags'] = tags;
    data['url'] = url;
    data['favorites_count'] = favoritesCount;
    data['upvotes_count'] = upvotesCount;
    data['downvotes_count'] = downvotesCount;
    data['author'] = author;
    data['author_permalink'] = authorPermalink;
    data['body'] = body;
    return data;
  }
}