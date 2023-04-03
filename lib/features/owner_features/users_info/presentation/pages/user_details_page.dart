import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:managing_driving_school_app/common/widgets/avatars/app_circular_avatar.dart';
import 'package:managing_driving_school_app/common/widgets/shimmer/app_shimmer.dart';
import 'package:managing_driving_school_app/core/app_models/user_models/user_model.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../user_details_bloc/user_details_bloc.dart';
import '../widgets/user_course_details_preview.dart';

class UserDetailsPage extends StatefulWidget {
  final UserModel userModel;
  const UserDetailsPage({
    required this.userModel,
    super.key,
  });

  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  bool isTutor = false;
  @override
  void initState() {
    super.initState();
    isTutor = widget.userModel.userRole == 'tutor';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<UserDetailsBloc>()
        ..add(
          GetUserDetailsEvent(
            userId: widget.userModel.userId,
            isTutor: isTutor,
          ),
        ),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppCircularAvatar(
                      imagePath: widget.userModel.imagePath,
                      size: 100,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.userModel.name} ${widget.userModel.surname}',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        Text(
                          '${DateFormat('dd-MM-yyyy').format(widget.userModel.birthDate!)}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          '${widget.userModel.email}',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            const AppShimmer(
                              height: 100,
                              width: double.infinity,
                              padding: 16,
                              borderRadius: 16,
                            ),
                            const AppShimmer(
                              height: 100,
                              width: double.infinity,
                              padding: 16,
                              borderRadius: 16,
                            ),
                            const AppShimmer(
                              height: 100,
                              width: double.infinity,
                              padding: 16,
                              borderRadius: 16,
                            ),
                          ],
                        ),
                      );
                    }
                    if (state.courses.length == 0) {
                      return Center(
                        child: Text(
                          isTutor
                              ? S.of(context).tutor_dont_run_any_course
                              : S.of(context).user_didnt_enroll_to_any_course,
                        ),
                      );
                    }
                    return ListView.builder(
                      itemCount: state.courses.length,
                      itemBuilder: (context, index) {
                        return UserCourseDetailsPreview(
                          userCourseDetails: state.courses[index],
                          isTutor: isTutor,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
