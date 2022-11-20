//import 'package:shared_preferences/shared_preferences.dart';


// const isTheUserListExistInTheAppCache ="is_TheUser_List_Exist_In_TheApp_Cache";
// const List_of_users ="List_of_users";
// const List_of_password ="Password";

class usersOfTheApp
{
 static  List<String> List_of_users =["leader@123","admin","support"] ;
 static List<String> List_of_password =["leader@123","admin","support"] ;

  static bool getUserAccess(String userName,String password)
  {
    for( var user in List_of_users )
      {

        if(user==userName)
          {
            print( userName);
            for(var pass in List_of_password)
              {

                if(pass==password)
                 {
                   print(pass) ;
                   print(" success") ;
                   return true ;}
              }
          }

      }
    return false;

  }
}