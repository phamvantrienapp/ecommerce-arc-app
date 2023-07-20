library app.ui.auth;

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_app/core/types/loading_status.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:ecommerce_app/common_view/buttons/custom_buttom.dart';
import 'package:ecommerce_app/shared_view/app_text_field.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/dimens/app_paddings.dart';
import 'package:ecommerce_app/shared_view/another_login/another_login.dart';

part 'auth_types.dart';
part 'bloc/auth_cubit.dart';
part 'bloc/auth_state.dart';
part 'views/auth_body.dart';
part 'views/auth_page.dart';
part 'views/auth_builder.dart';
part 'login/login_page.dart';
part 'widgets/auth_body_builder.dart';
part 'widgets/auth_menu_buider.dart';
part 'widgets/auth_button_builder.dart';
part 'sign_up/sign_up_page.dart';
