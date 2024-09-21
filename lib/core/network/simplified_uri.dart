// ignore: avoid_classes_with_only_static_members
///A simple Flutter / Dart Utility class for converting complex objects to uri and query strings
///by Joshua Opata. opatajoshua@gmail.com
class SimplifiedUri{
  static Uri uri(String url, dynamic param){
    final urlString = "$url?${objectToQueryString(param)}";
    return Uri.parse(urlString);
  }

  static String objectToQueryString(dynamic json){
    if(json==null) {
      return "";
    }
    final List<String> queries = [];
    if(json is Map){
      for (final key in json.keys) {
        if(json[key] is Map){
          generateInnerMap(queries, "$key", json[key] as Map<String,dynamic>);
        }
        else if(json[key] is List){
          generateInnerList(queries, "$key", json[key] as List<dynamic>);
        }
        else{
          queries.add("$key=${json[key]}");
        }
      }
    }
    else if(json is List){
      generateInnerList(queries, "", json);
    }
    return  Uri.encodeFull(queries.join("&"));
  }

  static void generateInnerMap(List<String> queryList, String parentKey,Map<String, dynamic> innerJson){
    for (final key in innerJson.keys) {
      if(innerJson[key] is Map){
        generateInnerMap(queryList, "$parentKey[$key]", innerJson[key] as Map<String,dynamic>);
      }
      else if(innerJson[key] is List){
        generateInnerList(queryList, "$parentKey[$key]", innerJson[key] as List<dynamic>);
      }
      else{
        queryList.add("$parentKey[$key]=${innerJson[key] }");
      }
    }
  }

  static void generateInnerList(List<String> queryList, String parentKey,List<dynamic> innerList){
    for (final item in innerList) {
      if(item is Map){
        generateInnerMap(queryList, "$parentKey[]", item as Map<String, dynamic>);
      }
      else {
        queryList.add("$parentKey[]=$item");
      }
    }
  }
}
