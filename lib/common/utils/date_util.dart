class DateUtil {
  static String getFormattedDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
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
      return 'Today';
    } else if (days == 1) {
      return 'Yesterday';
    } else {
      return '$days days ago';
    }
  }

  static String getDaysLeft(DateTime date) {
    final days = date.difference(DateTime.now()).inDays;
    if (days == 0) {
      return 'Today';
    } else if (days == 1) {
      return 'Tomorrow';
    } else {
      return '$days days left';
    }
  }
}
