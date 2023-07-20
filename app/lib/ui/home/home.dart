library app.ui.home;

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/resource/images/app_icon.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/dimens/app_paddings.dart';
import 'package:ecommerce_app/shared_view/category_box_item.dart';
import 'package:ecommerce_app/navigation/app_router/app_router.dart';
import 'package:ecommerce_app/common_view/boxse/common_text_box.dart';

part 'views/home_page.dart';
part 'views/home_body.dart';
part 'bloc/home_bloc.dart';
part 'bloc/home_event.dart';
part 'bloc/home_state.dart';
part 'widgets/home_search_widget.dart';
part 'widgets/home_categories_widget.dart';
part 'widgets/offers_near_you_widget.dart';
part 'widgets/order_locations_widget.dart';
part 'widgets/new_and_trending_widget.dart';

const listCategories = [
  'assets/images/png/categories_imgs/burgers.png',
  'assets/images/png/categories_imgs/burritos.png',
  'assets/images/png/categories_imgs/chicken.png',
  'assets/images/png/categories_imgs/chinese.png',
  'assets/images/png/categories_imgs/diet.png',
  'assets/images/png/categories_imgs/grocery.png',
  'assets/images/png/categories_imgs/indian.png',
  'assets/images/png/categories_imgs/pizza.png',
  'assets/images/png/categories_imgs/salads.png',
  'assets/images/png/categories_imgs/sweets.png',
  'assets/images/png/categories_imgs/utensils.png',
];
