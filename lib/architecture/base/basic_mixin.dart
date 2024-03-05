import 'package:flutter/material.dart';
import 'package:project_structure/resourse/util/business_dictionary.dart';

/**
 *  PROJECT_NAME:-  project_structure
 *  Project Created by AGM Khair Sabbir
 *  DATE:- 30/1/24
 */
 mixin BasicMixin{
  TextDirection textDirection = BusinessDictionary.isRTL ?  TextDirection.rtl :  TextDirection.ltr;

 }