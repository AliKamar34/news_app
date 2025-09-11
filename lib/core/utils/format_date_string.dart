String formatDateString(String? isoDate) {
  if (isoDate == null) return 'Unknown Date';

  final dateOnly = isoDate.split('T').first;
  final parts = dateOnly.split('-');

  if (parts.length == 3) {
    final year = parts[0];
    final month = parts[1];
    final day = parts[2];
    return '$day/$month/$year';
  }
  return isoDate;
}
