import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/widgets/page_template/page_template.dart';
import '../../../../../injection_container.dart';
import '../home_bloc/home_bloc.dart';
import '../widgets/promotion_carousel.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()..add(const LoadPromotionsEvent()),
      child: Stack(
        children: [
          PageTemplate(
            body: Column(
              children: const [
                Expanded(
                  child: PromotionCarousel(),
                ),
              ],
            ),
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.hasError) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<HomeBloc>().add(const LoadPromotionsEvent());
                  },
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return ListView(
                        physics: const AlwaysScrollableScrollPhysics(),
                      );
                    },
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ],
      ),
    );
  }
}
