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
    applink: null,
    weblink: null,
    ioslink: null,
  ),
  ProjectUtils(
    image: 'hobby',
    title: 'hobby 1',
    subtitle: 'hobby 1',
    descrpition: 'hobby 1',
    applink: null,
    weblink: null,
    ioslink: null,
  ),
];
// Hobby Project
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/image.png',
    title: 'Website',
    subtitle: 'Complete Website which was build in Flutter',
    descrpition: 'I have completed build website which is Completed Flutter',
    applink: null,
    weblink: 'https://anupkolhe.co.in/',
    ioslink: null,
  ),
  // /*
  // NSE  Project Link
  ProjectUtils(
    image: 'assets/projects/image.png', //NSE
    title: 'NSE',
    subtitle: 'NSE',
    descrpition: 'NSE',
    applink: null,
    weblink: 'NSE',
    ioslink: null,
  ),
  /*// My Major Flutter using NLP 
  ProjectUtils(
    image: 'assets/projects/image.png', //NLP
    title: 'NSE', //NLP
    subtitle: 'NSE', //NLP
    descrpition: 'NSE', //NLP
    applink: '', //NLP
    weblink: 'NSE', //NLP
    ioslink: '', //NLP
  )
  */
];
