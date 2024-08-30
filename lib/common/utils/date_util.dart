class DateUtil {
  static String getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }

  static String getFormattedDate(DateTime date) {
    // 9 Aug 2021
    return "${date.day} ${getMonthName(date.month)} ${date.year}";
  }

  static String getFormattedTime(DateTime date) {
    return "${date.hour}:${date.minute}";
  }

  static String getFormattedDateTime(DateTime date) {
    return "${getFormattedDate(date)} ${getFormattedTime(date)}";
  }

  static String getDaysAgo(DateTime date) {
    final days = DateTime.now().difference(date).inDays;
    if (days == 0) {
      return 'Hari ini';
    } else if (days == 1) {
      return 'Kemarin';
    } else {
      return '$days hari yang lalu';
    }
  }

  static String getDaysLeft(DateTime date) {
    final days = date.difference(DateTime.now()).inDays;
    if (days == 0) {
      return 'Terakhir hari ini';
    } else if (days == 1) {
      return 'Terakhir Besok';
    } else {
      return '$days hari lagi';
    }
  }
}
