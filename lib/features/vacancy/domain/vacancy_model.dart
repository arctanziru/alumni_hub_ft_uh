class VacancyModel {
  final String id;
  final String title;
  final String description;
  final String location;
  final String salary;
  final String company;
  final String companyLogo;
  final String type;
  final String url;
  final int createdAt;
  final String experience;
  final String backgroundUrl;
  final List<String> requirements;

  VacancyModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.location,
      required this.salary,
      required this.company,
      required this.companyLogo,
      required this.type,
      required this.url,
      required this.createdAt,
      required this.backgroundUrl,
      required this.requirements,
      required this.experience});

  factory VacancyModel.fromJson(Map<String, dynamic> json) {
    return VacancyModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      location: json['location'],
      salary: json['salary'],
      company: json['company'],
      companyLogo: json['company_logo'],
      type: json['type'],
      url: json['url'],
      createdAt: json['created_at'],
      backgroundUrl: json['background_url'],
      experience: json['experience'],
      requirements: List<String>.from(json['requirements']),
    );
  }
}
