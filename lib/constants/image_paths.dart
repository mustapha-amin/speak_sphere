String generateImgPath(String? name, {bool? isSvg = true}) {
    return "assets/svgs/$name${isSvg! ? ".svg" : ".png"}";
}

