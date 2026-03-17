void main() {
  List<String> files = [
    "photo.jpg",
    "doc.pdf",
    "song.mp3",
    "notes.txt",
    "video.mp4",
    "logo.png",
  ];

  final Map<String, List<String>> fileTypes = {
    "Images": ["jpg", "png", "jpeg", "gif"],
    "Documents": ["pdf", "txt", "doc", "docx"],
    "Audio": ["mp3", "wav"],
    "Video": ["mp4", "mkv"],
  };

  Map<String, List<String>> organized = {
    for (var key in [...fileTypes.keys, "Other"]) key: [],
  };

  for (var file in files) {
    String extension = file.split('.').last.toLowerCase();

    String type = getFileType(extension, fileTypes);
    organized[type]!.add(file);
  }

  organized.forEach((type, fileList) {
    print("\n$type:");
    fileList.forEach((f) => print(" - $f"));
  });
}

String getFileType(String extension, Map<String, List<String>> fileTypes) {
  for (var entry in fileTypes.entries) {
    if (entry.value.contains(extension)) {
      return entry.key;
    }
  }
  return "Other";
}
