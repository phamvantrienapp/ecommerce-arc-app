library app.ui.search;

import 'package:ecommerce_app/navigation/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/core/types/loading_status.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:ecommerce_app/shared_view/app_text_field.dart';
import 'package:ecommerce_app/common_view/common_scaffold.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/dimens/app_paddings.dart';

part 'bloc/search_cubit.dart';
part 'bloc/search_state.dart';
part 'views/search_page.dart';
part 'views/search_body.dart';
part 'widgets/search_item.dart';
