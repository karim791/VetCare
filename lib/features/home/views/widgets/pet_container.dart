import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';
import 'package:vetcare/features/home/cubit/home_cubit.dart';
import 'package:vetcare/features/home/cubit/home_state.dart';

import '../../../../core/helpers/spacing.dart';

class PetContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is HomeLoading ||
          current is PetLoaded ||
          current is PetLoadedFailure,
      builder: (context, state) {
        return state.whenOrNull(
              loading: () => const Center(
                child: CircularProgressIndicator(color: AppColors.deepGreen),
              ),
              petLoaded: (petList) {
                if (petList == null || petList.isEmpty) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 130.h,
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [AppColors.darkGreen, AppColors.deepGreen],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(16.r)),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.all(
                                Radius.circular(16.r),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST9UjitrpsLDBn81E7T6MBLb9JSMOr5lFtBKtU6dScSA&s=10',
                              ),
                            ),
                            horizontalSpace(8.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'MY PET',
                                  style: TextStyles.font14WhiteLight,
                                ),
                                verticalSpace(8.h),
                                Text(
                                  'Add Pet Details',
                                  style: TextStyles.font16WhiteMedium,
                                ),
                              ],
                            ),
                            const Spacer(),
                            CircleAvatar(
                              radius: 15.r,
                              backgroundColor: Colors.white10,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    itemCount: 1,
                  );
                } else {
                  return SizedBox(
                    height: 130,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final pet = petList[index];
                        return InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 130.h,
                            width: 355.w,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.darkGreen,
                                  AppColors.deepGreen,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.r),
                              ),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.all(
                                    Radius.circular(16.r),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: pet.image!,
                                  ),
                                ),
                                horizontalSpace(8.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'MY PET',
                                      style: TextStyles.font14WhiteLight,
                                    ),
                                    verticalSpace(8.h),
                                    Text(
                                      pet.name,
                                      style: TextStyles.font16WhiteMedium,
                                    ),
                                    Text(
                                      '${pet.breed} , ${pet.age} yrs',
                                      style: TextStyles.font14WhiteMedium,
                                    ),
                                    verticalSpace(8.h),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '●  ',
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Care up to date',
                                            style: TextStyles.font14WhiteLight,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                CircleAvatar(
                                  radius: 15.r,
                                  backgroundColor: Colors.white10,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          horizontalSpace(8.w),
                      itemCount: petList.length,
                    ),
                  );
                }
              },
              petLoadedFailure: (error) {
                return Center(child: Text(error.message));
              },
            ) ??
            const SizedBox.shrink();
      },
    );
  }
}
