part of '../../home.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
      current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
            specializationsLoading: () {
              return setupLoading();
            },
            specializationsSuccess: (specializationsDataList) {
              return setupSuccess(specializationsDataList);
            },
            specializationsError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
      child:Column(
        children: [
          SpecialityShimmerLoading(),
          verticalSpace(8),
          DoctorsShimmerLoading(),
        ],
      )
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationsDataList: specializationsList ?? [],);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}