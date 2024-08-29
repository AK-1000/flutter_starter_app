import 'package:flutter/widgets.dart';

//Path
const String baseURL = 'https://firebase-auth-nodejs-u1bo.onrender.com/';
const imagesFolder = '/assets/images';
const logosPath = 'assets/images/logos/person_logo.jpg';

//Sizes
double oneH(BuildContext context) => MediaQuery.sizeOf(context).height * 0.01;
double fiveH(BuildContext context) => MediaQuery.sizeOf(context).height * 0.05;
double tenH(BuildContext context) => MediaQuery.sizeOf(context).height * 0.1;

double oneW(BuildContext context) => MediaQuery.sizeOf(context).width * 0.01;
double fiveW(BuildContext context) => MediaQuery.sizeOf(context).width * 0.05;
double tenW(BuildContext context) => MediaQuery.sizeOf(context).width * 0.1;

//Colors && Themes


//Shared_Preferences
const String userIdLocalPath = 'USER_ID';
const String userAuthStausPath = 'IS_LOGGED';
