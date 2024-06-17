class Book {
  String? bibKey;
  String? infoUrl;
  String? preview;
  String? previewUrl;
  String? thumbnailUrl;

  Book(
      {this.bibKey,
      this.infoUrl,
      this.preview,
      this.previewUrl,
      this.thumbnailUrl});

  Book.fromJson(Map<String, dynamic> json) {
    bibKey = json['bib_key'];
    infoUrl = json['info_url'];
    preview = json['preview'];
    previewUrl = json['preview_url'];
    thumbnailUrl = json['thumbnail_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bib_key'] = this.bibKey;
    data['info_url'] = this.infoUrl;
    data['preview'] = this.preview;
    data['preview_url'] = this.previewUrl;
    data['thumbnail_url'] = this.thumbnailUrl;
    return data;
  }
}
