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
    image: 'assets/projects/nse_logo.png', //NSE
    title: 'National Stock Exchange of India',
    subtitle: 'Real-time Stock Market Viewer for NSE',
    descrpition:
        'A Flutter-powered web app providing real-time stock data from the National Stock Exchange of India. Users can track live market trends, view stock performance, and analyze data. Designed for a seamless and responsive experience across platforms.',
    applink: null,
    weblink: 'https://charting.nseindia.com/?symbol=TATACONSUM-EQ',
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
