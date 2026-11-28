import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:vetcare/core/utils/themes/app_colors.dart';
import 'package:vetcare/core/utils/themes/text_styles.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/helpers/spacing.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';

class AppointmentContainer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is AppointmentsLoaded || current is AppointmentsLoadedFailure,
      builder: (context, state) {
        return state.whenOrNull(
              appointmentsLoaded: (appointments) {
                if (appointments == null || appointments.isEmpty) {
                  return SizedBox(
                    height: 110,
                    child: ListView(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 110.h,
                            width: double.infinity,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade200),
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
                                  child: Container(
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGreen,
                                    ),
                                    child: Center(child: Text('Empty')),
                                  ),
                                ),
                                horizontalSpace(16.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'No Appointment Yet.',
                                      style: TextStyles.font16BlackMedium,
                                    ),
                                    verticalSpace(6.h),
                                    Text(
                                      'Tap to book an appoinment',
                                      style: TextStyles.font12GreenRegular,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return SizedBox(
                    height: 110,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          horizontalSpace(8.w),
                      itemCount: appointments.length,
                      itemBuilder: (context, index) {
                        final appointment = appointments[index];
                        final String day = DateFormat('d')
                            .format(appointment.appointment);
                        final String month = DateFormat(
                          'MMM',
                          'en',
                        ).format(appointment.appointment).toUpperCase();
                        final status = appointment.status.name;
                        return InkWell(
                          onTap: () {
                             getIt<PersistentTabController>().jumpToTab(3);
                          },
                          child: Container(
                            height: 110.h,
                            width: 355.w,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade200),
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
                                  child: Container(
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGreen,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          day,
                                          style: TextStyles.font22DeepGreenBold,
                                        ),
                                        Text(
                                          month,
                                          style: TextStyles
                                              .font18DarkGreenSemiBold,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                horizontalSpace(16.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGreen,
                                        borderRadius: BorderRadius.circular(
                                          16.r,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Text(
                                          '● ${status[0].toUpperCase()}${status.substring(1)}',
                                          style: TextStyles.font12GreenRegular,
                                        ),
                                      ),
                                    ),
                                    verticalSpace(6.h),
                                    Text(
                                      appointment.reason!,
                                      style: TextStyles.font16BlackMedium,
                                    ),
                                    verticalSpace(6.h),
                                    Text(
                                      //TODO : edit it when fetch the appointment slots
                                      'Green Paws Clinic',
                                      style: TextStyles.font14BlackMedium,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              },
              appointmentsLoadedFailure: (error) =>
                  Center(child: Text(error.message)),
            ) ??
            const SizedBox.shrink();
      },
    );
  }
}
