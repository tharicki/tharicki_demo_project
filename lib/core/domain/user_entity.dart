class User {
  final int? id;
  final String? name;
  final String? lastName;
  final DateTime? born;
  final DateTime? joinDate;
  final int? postsCount;
  final int? repostsCount;
  final int? quotedCount;
  final int? dayPosts;

  User({
    this.id,
    this.name,
    this.lastName,
    this.born,
    this.joinDate,
    this.postsCount,
    this.repostsCount,
    this.quotedCount,
    this.dayPosts,
  });
}
