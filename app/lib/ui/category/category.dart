library app.ui.category;

import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/common_view/common_scaffold.dart';
import 'package:ecommerce_app/core/types/loading_status.dart';
import 'package:ecommerce_app/resource/dimens/app_paddings.dart';
import 'package:ecommerce_app/resource/images/app_icon.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:ecommerce_app/shared_view/app_text_field.dart';
import 'package:ecommerce_app/shared_view/category_box_item.dart';
import 'package:ecommerce_app/ui/home/home.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc/category_cubit.dart';
part 'bloc/category_state.dart';
part 'views/category_body.dart';
part 'views/category_page.dart';
