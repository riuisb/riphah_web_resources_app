String capitalize(String str) {
  return "${str[0].toUpperCase()}${str.substring(1)}";
}

String time_ago(timestamp) {
  var diff = DateTime.now().toUtc().millisecondsSinceEpoch - (timestamp);
  diff = diff / 1000;
  if (diff <= 60)
    return (diff == 1) ? 'Just now' : '${diff.toStringAsFixed(2)} secs ago';
  else if (diff >= 60 && diff <= 3600)
    return (diff / 60 == 1)
        ? "mint ago"
        : '${(diff / 60).toStringAsFixed(2)} mins ago';
  else if (diff >= 3600 && diff <= 86400)
    return (diff / 3600 == 1)
        ? "An hr ago"
        : '${(diff / 3600).toStringAsFixed(2)} hrs ago';
  else if (diff >= 86400 && diff <= 604800)
    return (diff / 86400 == 1)
        ? "Day ago"
        : '${(diff / 86400).toStringAsFixed(2)} days ago';
  else if (diff >= 604800 && diff <= 2600640)
    return (diff / 604800 == 1)
        ? "Week ago"
        : '${(diff / 604800).toStringAsFixed(2)} weeks ago';
  else if (diff >= 2600640 && diff <= 31207680)
    return (diff / 2600640 == 1)
        ? "Month ago"
        : '${(diff / 2600640).toStringAsFixed(2)} Months ago';
  else if (diff >= 31207680)
    return (diff / 31207680 == 1)
        ? "Yr ago"
        : '${(diff / 31207680).toStringAsFixed(2)} yrs ago';
}