library app.ui.onboarding;

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/common_view/buttons/common_button_view.dart';
import 'package:ecommerce_app/common_view/buttons/text_button_view.dart';
import 'package:ecommerce_app/core/types/loading_status.dart';
import 'package:ecommerce_app/navigation/app_router/app_router.dart';
import 'package:ecommerce_app/resource/dimens/app_paddings.dart';
import 'package:ecommerce_app/resource/styles/text_styles.dart';
import 'package:ecommerce_app/resource/styles/ui_colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc/onboarding_cubit.dart';
part 'bloc/onboarding_state.dart';
part 'views/onboarding_body.dart';
part 'views/onboarding_page.dart';
part 'widgets/onboarding_carousel_slider.dart';
part 'widgets/onboarding_carousel.dart';
part 'widgets/onboarding_indicator.dart';

final _array = ['', '', ''];
