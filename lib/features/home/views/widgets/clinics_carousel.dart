import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/helpers/spacing.dart';
import 'package:vetcare/features/home/cubit/home_cubit.dart';
import 'package:vetcare/features/home/cubit/home_state.dart';

import '../../../../core/utils/themes/text_styles.dart';

class ClinicsCarousel extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is ClinicsLoaded || current is ClinicsLoadedFailure,
        builder: (context, state) {
          return state.whenOrNull(
                clinicsLoaded: (clinics) {
                  if (clinics == null || clinics.isEmpty) {
                    return Center(child: Text('Something went wrong. contact the developer team'));
                  } else {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          horizontalSpace(8.w),
                      itemCount: clinics.length,
                      itemBuilder: (context, index) {
                        final clinic = clinics[index];
                        return InkWell(
                          onTap: () {
                            //TODO: fix this when build the clinics profiles
                          },
                          child: Container(
                            height: 150.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.only(
                                      topLeft: Radius.circular(16.r),
                                      topRight: Radius.circular(16.r),
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl: clinic.image!,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    verticalSpace(4.h),
                                    Text(
                                      clinic.name,
                                      style: TextStyles.font14DarkGreenMedium,
                                    ),
                                    verticalSpace(4.h),
                                    Text(
                                      'Open until 8:00 PM',
                                      style: TextStyles.font12DeepGreenBold,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
                clinicsLoadedFailure: (error) {
                  return Center(child: Text(error.message));
                },
              ) ??
              const SizedBox.shrink();
        },
      ),
    );
  }
}
