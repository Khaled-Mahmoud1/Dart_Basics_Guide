void main() {
  List<String> files = [
    "photo.jpg",
    "doc.pdf",
    "song.mp3",
    "notes.txt",
    "video.mp4",
    "logo.png",
  ];

  Map<String, List<String>> organized = {
    "Images": [],
    "Documents": [],
    "Audio": [],
    "Video": [],
    "Other": [],
  };

  for (var file in files) {
    String extension = file.split('.').last.toLowerCase();

    if (["jpg", "png", "jpeg", "gif"].contains(extension)) {
      organized["Images"]!.add(file);
    } else if (["pdf", "txt", "doc", "docx"].contains(extension)) {
      organized["Documents"]!.add(file);
    } else if (["mp3", "wav"].contains(extension)) {
      organized["Audio"]!.add(file);
    } else if (["mp4", "mkv"].contains(extension)) {
      organized["Video"]!.add(file);
    } else {
      organized["Other"]!.add(file);
    }
  }

  organized.forEach((type, fileList) {
    print("\n$type:");
    for (var f in fileList) {
      print(" - $f");
    }
  });
}
