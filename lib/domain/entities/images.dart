import '../../data/models/heroe.dart';

class Images {
  String? xs;
  String? sm;
  String? md;
  String? lg;

  Images({
    this.xs,
    this.sm,
    this.md,
    this.lg,
  });

  static ImagesModel? toModel(Images? images) {
    return ImagesModel(
      xs: images?.xs,
      sm: images?.sm,
      md: images?.md,
      lg: images?.lg,
    );
  }
}
