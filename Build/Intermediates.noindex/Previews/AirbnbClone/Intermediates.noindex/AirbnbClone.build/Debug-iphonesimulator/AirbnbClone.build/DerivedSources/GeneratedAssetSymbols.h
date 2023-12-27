#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "image1" asset catalog image resource.
static NSString * const ACImageNameImage1 AC_SWIFT_PRIVATE = @"image1";

/// The "image2" asset catalog image resource.
static NSString * const ACImageNameImage2 AC_SWIFT_PRIVATE = @"image2";

/// The "image3" asset catalog image resource.
static NSString * const ACImageNameImage3 AC_SWIFT_PRIVATE = @"image3";

/// The "image4" asset catalog image resource.
static NSString * const ACImageNameImage4 AC_SWIFT_PRIVATE = @"image4";

/// The "image5" asset catalog image resource.
static NSString * const ACImageNameImage5 AC_SWIFT_PRIVATE = @"image5";

/// The "image6" asset catalog image resource.
static NSString * const ACImageNameImage6 AC_SWIFT_PRIVATE = @"image6";

/// The "male-pp" asset catalog image resource.
static NSString * const ACImageNameMalePp AC_SWIFT_PRIVATE = @"male-pp";

/// The "malepp" asset catalog image resource.
static NSString * const ACImageNameMalepp AC_SWIFT_PRIVATE = @"malepp";

#undef AC_SWIFT_PRIVATE