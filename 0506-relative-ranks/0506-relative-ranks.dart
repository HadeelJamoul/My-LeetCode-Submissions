class Solution {
  List<String> findRelativeRanks(List<int> score) {
    // the index is the key
    Map<int, int> scoreSortedMap = score.asMap();

    Iterable<MapEntry<int, int>> scoreSortedMapEntryList =
        scoreSortedMap.entries;

    List<List<int>> scoreSortedList = scoreSortedMapEntryList
        .map((entry) => [entry.key, entry.value])
        .toList();

    // print("Map: $scoreSortedMap");
    // print("List of map entry: $scoreSortedMapEntryList");
    print("List: $scoreSortedList");

    scoreSortedList.sort((a, b) {
      if (a[1] < b[1]) {
        // b comes before a (descending order)
        return 1;
      } else if (a[1] > b[1]) {
        // a comes before b
        return -1;
      } else {
        // no change
        return 0;
      }
    });

    // Prepare a result list with the same length as scores
    List<String> result = List.filled(score.length, "");

    print("List after sort: $scoreSortedList");

    for (int i = 0; i < scoreSortedList.length; ++i) {
      int index = scoreSortedList[i][0];
      if (i == 0) {
        result[index] = "Gold Medal";
      } else if (i == 1) {
        result[index] = "Silver Medal";
      } else if (i == 2) {
        result[index] = "Bronze Medal";
      } else {
        result[index] = (i + 1).toString();
      }
    }
    return result;
  }
}
