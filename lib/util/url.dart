class URL {
  static const String BASE_URL = "http://directory-pre.gacegy.com/Api/";

  //-------------------------- API endpoints ---------------------------------


  // static String kGetProductDetails(id) => kGetAllProducts + '/$id';


  static String KGetAllEmploys()=> "employees/GetEmployeesDirectory";
  static String KGetEmployDetails({required String id})=> "employees/GetEmployeesDetailsDirectory/$id";

  static String getURL({String? functionName}) {
    return BASE_URL + functionName!;
  }
}
