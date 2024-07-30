class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String descrpition;
  final String? weblink;
  final String? applink;
  final String? ioslink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.descrpition,
    this.weblink,
    this.applink,
    this.ioslink,
  });
}

// Hobby Project
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'hobby',
    title: 'hobby',
    subtitle: 'hobby',
    descrpition: 'hobby',
    applink: 'hobby',
    weblink: 'hobby',
    ioslink: 'hobby',
  )
];
// Hobby Project
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'work',
    title: 'work',
    subtitle: 'work',
    descrpition: 'work',
    applink: 'work',
    weblink: 'work',
    ioslink: 'work',
  )
];
