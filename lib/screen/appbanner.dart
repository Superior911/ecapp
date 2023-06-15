
class AppBanner {
    final int id;
    final String title;
    final String thumbnailUrl;

    AppBanner(this.id, this.title, this.thumbnailUrl);
}

List<AppBanner> appBannerList = [
    AppBanner(1, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/16.Poster-%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B8%94%E0%B8%B9%E0%B8%87%E0%B8%B2%E0%B8%99MOU.jpg'),
    AppBanner(2, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/13.Poster-Keynote-Speaker.jpg'),
    AppBanner(3, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/9.Poster-%E0%B8%9B%E0%B8%90%E0%B8%A1%E0%B8%99%E0%B8%B4%E0%B9%80%E0%B8%97%E0%B8%A8%E0%B8%99%E0%B8%B1%E0%B8%81%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%A3%E0%B9%88%E0%B8%A7%E0%B8%A1%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%81%E0%B8%B1%E0%B8%9A%E0%B8%AA%E0%B8%96%E0%B8%B2%E0%B8%9A%E0%B8%B1%E0%B8%99%E0%B8%88%E0%B8%B4%E0%B8%87%E0%B8%8B%E0%B8%B7%E0%B9%88%E0%B8%AD.jpg'),
    AppBanner(4, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/11.Poster-%E0%B8%AD%E0%B8%9A%E0%B8%A3%E0%B8%A1%E0%B9%81%E0%B8%82%E0%B8%99%E0%B8%81%E0%B8%A5.jpg'),



];

List<AppBanner> classroombanner = [
    AppBanner(1, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5471-2048x1365.jpg'),
    AppBanner(2, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5787-2048x1365.jpg'),
    AppBanner(3, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5784-scaled.jpg'),
    AppBanner(4, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5472-scaled.jpg'),



];
List<AppBanner> classroombanner1 = [
    AppBanner(1, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%A1%E0%B8%B8%E0%B8%94%E0%B8%95%E0%B8%B6%E0%B8%81%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%AF-1-scaled.jpg'),
    AppBanner(2, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%A1%E0%B8%B8%E0%B8%94%E0%B8%95%E0%B8%B6%E0%B8%81%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%AF-6-scaled.jpg'),
    AppBanner(3, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%A1%E0%B8%B8%E0%B8%94%E0%B8%95%E0%B8%B6%E0%B8%81%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%AF-4-scaled.jpg'),
    AppBanner(4, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%A1%E0%B8%B8%E0%B8%94%E0%B8%95%E0%B8%B6%E0%B8%81%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%AF-2-scaled.jpg'),


];
List<AppBanner> classroombanner2 = [
    AppBanner(1, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5483-scaled.jpg'),
    AppBanner(2, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5816-scaled.jpg'),
    AppBanner(3, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5819-scaled.jpg'),
    AppBanner(4, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/02/IMG_5834-scaled.jpg'),



];
  //รูปภาพจากเน็ต
  final imagePaths = [
    'https://media.discordapp.net/attachments/1097729965337870357/1097737896376676382/image.png?width=742&height=1036', // Replace with your image paths
    'https://media.discordapp.net/attachments/1097729965337870357/1097738007806738462/image.png?width=748&height=1036',
    'https://media.discordapp.net/attachments/856766491587772456/1110418058658451486/2566-05-23_11.04.09.png?width=1018&height=1036',
    'https://media.discordapp.net/attachments/856766491587772456/1110418058922688612/2566-05-23_11.04.24.png?width=2140&height=936',
  ];