library app.ui.product_detail;

import 'package:ecommerce_app/common_view/buttons/custom_buttom.dart';
import 'package:ecommerce_app/common_view/buttons/icon_button_view.dart';
import 'package:ecommerce_app/core/types/loading_status.dart';
import 'package:ecommerce_app/resource/dimens/app_paddings.dart';
import 'package:ecommerce_app/resource/images/app_icon.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ecommerce_app/common_view/common_appbar.dart';
import 'package:ecommerce_app/common_view/common_scaffold.dart';
import 'package:ecommerce_app/resource/images/app_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc/product_detail_cubit.dart';
part 'bloc/product_detail_state.dart';
part 'views/product_detail_body.dart';
part 'views/product_detail_page.dart';
part 'widgets/item_product_option.dart';
part 'widgets/section_product_option.dart';
