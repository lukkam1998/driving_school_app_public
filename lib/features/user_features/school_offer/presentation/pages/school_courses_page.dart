import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../injection_container.dart';
import '../school_offer_bloc/school_offer_bloc.dart';
import '../widgets/course_information.dart';

class SchoolCoursesPage extends StatefulWidget {
  const SchoolCoursesPage({super.key});

  @override
  State<SchoolCoursesPage> createState() => _SchoolCoursesPageState();
}

class _SchoolCoursesPageState extends State<SchoolCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SchoolOfferBloc>()..add(const LoadCoursesEvent()),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            S.of(context).our_offer,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        body: BlocBuilder<SchoolOfferBloc, SchoolOfferState>(
          builder: (context, state) {
            return PageTemplate(
              body: state.hasError
                  ? const Center(
                      child: Text('Sorry error occured'),
                    )
                  : state.isFetching
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                              child: CourseInformation(
                                course: state.courses[index].value1,
                                promotion: state.courses[index].value2,
                              ),
                            );
                          },
                          itemCount: state.courses.length,
                        ),
            );
          },
        ),
      ),
    );
  }
}
