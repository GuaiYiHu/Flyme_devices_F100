.class Landroid/media/MediaScanner$ExifInterfaceExt;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifInterfaceExt"
.end annotation


# static fields
.field private static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_FOCUS_VALUE_HIGH:I

.field public static final TAG_FOCUS_VALUE_LOW:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GROUP_ID:I

.field public static final TAG_GROUP_INDEX:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field private static final sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Landroid/media/MediaScanner$ExifDataExt;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2800
    const/16 v0, 0x220

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GROUP_INDEX:I

    .line 2801
    const/16 v0, 0x221

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GROUP_ID:I

    .line 2802
    const/16 v0, 0x222

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_FOCUS_VALUE_HIGH:I

    .line 2803
    const/16 v0, 0x223

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_FOCUS_VALUE_LOW:I

    .line 2804
    const/16 v0, -0x77db

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GPS_IFD:I

    .line 2805
    const/16 v0, -0x7897

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_EXIF_IFD:I

    .line 2806
    const/16 v0, 0x201

    invoke-static {v1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 2808
    const/16 v0, 0x202

    invoke-static {v1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 2810
    const/4 v0, 0x2

    const/16 v1, -0x5ffb

    invoke-static {v0, v1}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_INTEROPERABILITY_IFD:I

    .line 2812
    const/16 v0, 0x111

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_STRIP_OFFSETS:I

    .line 2813
    const/16 v0, 0x117

    invoke-static {v2, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->defineTag(IS)I

    move-result v0

    sput v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_STRIP_BYTE_COUNTS:I

    .line 2816
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 2818
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->sOffsetTags:Ljava/util/HashSet;

    .line 2821
    sget-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GPS_IFD:I

    invoke-static {v1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2822
    sget-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_EXIF_IFD:I

    invoke-static {v1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2823
    sget-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2824
    sget-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2825
    sget-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2826
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2828
    iput-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2829
    iput-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mData:Landroid/media/MediaScanner$ExifDataExt;

    .line 2832
    new-instance v0, Landroid/media/MediaScanner$ExifDataExt;

    sget-object v1, Landroid/media/MediaScanner$ExifInterfaceExt;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Landroid/media/MediaScanner$ExifDataExt;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mData:Landroid/media/MediaScanner$ExifDataExt;

    .line 2833
    return-void
.end method

.method private static defineTag(IS)I
    .locals 2
    .param p0, "ifdId"    # I
    .param p1, "tagId"    # S

    .prologue
    .line 2835
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getAllowedIfdFlagsFromInfo(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 2851
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method private getDefinedTagDefaultIfd(I)I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 2978
    invoke-virtual {p0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 2979
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 2980
    const/4 v1, -0x1

    .line 2982
    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method private static getFlagsFromAllowedIfds([I)I
    .locals 8
    .param p0, "allowedIfds"    # [I

    .prologue
    .line 2866
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_2

    .line 2867
    :cond_0
    const/4 v1, 0x0

    .line 2879
    :cond_1
    return v1

    .line 2869
    :cond_2
    const/4 v1, 0x0

    .line 2870
    .local v1, "flags":I
    invoke-static {}, Landroid/media/MediaScanner$IfdData;->getIfds()[I

    move-result-object v4

    .line 2871
    .local v4, "ifds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v7, 0x5

    if-ge v2, v7, :cond_1

    .line 2872
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_3

    aget v5, v0, v3

    .line 2873
    .local v5, "j":I
    aget v7, v4, v2

    if-ne v7, v5, :cond_4

    .line 2874
    const/4 v7, 0x1

    shl-int/2addr v7, v2

    or-int/2addr v1, v7

    .line 2871
    .end local v5    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2872
    .restart local v5    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getTag(II)Landroid/media/MediaScanner$ExifTag;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 2896
    invoke-static {p2}, Landroid/media/MediaScanner$ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2897
    const/4 v0, 0x0

    .line 2899
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mData:Landroid/media/MediaScanner$ExifDataExt;

    invoke-static {p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaScanner$ExifDataExt;->getTag(SI)Landroid/media/MediaScanner$ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method private getTagIntValue(II)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 2939
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagIntValues(II)[I

    move-result-object v0

    .line 2940
    .local v0, "l":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 2941
    :cond_0
    const/4 v1, 0x0

    .line 2943
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private getTagIntValues(II)[I
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 2965
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTag(II)Landroid/media/MediaScanner$ExifTag;

    move-result-object v0

    .line 2966
    .local v0, "t":Landroid/media/MediaScanner$ExifTag;
    if-nez v0, :cond_0

    .line 2967
    const/4 v1, 0x0

    .line 2969
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaScanner$ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method private getTagLongValue(II)Ljava/lang/Long;
    .locals 4
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 2926
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagLongValues(II)[J

    move-result-object v0

    .line 2927
    .local v0, "l":[J
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 2928
    :cond_0
    const/4 v1, 0x0

    .line 2930
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method private getTagLongValues(II)[J
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 2952
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTag(II)Landroid/media/MediaScanner$ExifTag;

    move-result-object v0

    .line 2953
    .local v0, "t":Landroid/media/MediaScanner$ExifTag;
    if-nez v0, :cond_0

    .line 2954
    const/4 v1, 0x0

    .line 2956
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaScanner$ExifTag;->getValueAsLongs()[J

    move-result-object v1

    goto :goto_0
.end method

.method private getTagStringValue(II)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 2913
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTag(II)Landroid/media/MediaScanner$ExifTag;

    move-result-object v0

    .line 2914
    .local v0, "t":Landroid/media/MediaScanner$ExifTag;
    if-nez v0, :cond_0

    .line 2915
    const/4 v1, 0x0

    .line 2917
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaScanner$ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getTrueIfd(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 2843
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 2839
    int-to-short v0, p0

    return v0
.end method

.method private initTagInfo()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000

    .line 2994
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 2997
    .local v0, "ifdAllowedIfds":[I
    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getFlagsFromAllowedIfds([I)I

    move-result v2

    shl-int/lit8 v1, v2, 0x18

    .line 2998
    .local v1, "ifdFlags":I
    iget-object v2, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GROUP_INDEX:I

    const/high16 v4, 0x30000

    or-int/2addr v4, v1

    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3000
    iget-object v2, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GROUP_ID:I

    or-int v4, v1, v5

    or-int/lit8 v4, v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3002
    iget-object v2, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_FOCUS_VALUE_HIGH:I

    or-int v4, v1, v5

    or-int/lit8 v4, v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3004
    iget-object v2, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_FOCUS_VALUE_LOW:I

    or-int v4, v1, v5

    or-int/lit8 v4, v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3006
    return-void

    .line 2994
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static isIfdAllowed(II)Z
    .locals 5
    .param p0, "info"    # I
    .param p1, "ifd"    # I

    .prologue
    const/4 v3, 0x1

    .line 2855
    invoke-static {}, Landroid/media/MediaScanner$IfdData;->getIfds()[I

    move-result-object v2

    .line 2856
    .local v2, "ifds":[I
    invoke-static {p0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    .line 2857
    .local v1, "ifdFlags":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2858
    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    .line 2862
    :goto_1
    return v3

    .line 2857
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2862
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static isOffsetTag(S)Z
    .locals 2
    .param p0, "tag"    # S

    .prologue
    .line 2847
    sget-object v0, Landroid/media/MediaScanner$ExifInterfaceExt;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getTag(I)Landroid/media/MediaScanner$ExifTag;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 2903
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 2904
    .local v0, "ifdId":I
    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTag(II)Landroid/media/MediaScanner$ExifTag;

    move-result-object v1

    return-object v1
.end method

.method getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2986
    iget-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2987
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2988
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifInterfaceExt;->initTagInfo()V

    .line 2990
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 2947
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 2948
    .local v0, "ifdId":I
    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(I)[I
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 2973
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 2974
    .local v0, "ifdId":I
    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 2934
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 2935
    .local v0, "ifdId":I
    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public getTagLongValues(I)[J
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 2960
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 2961
    .local v0, "ifdId":I
    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagLongValues(II)[J

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "tagId"    # I

    .prologue
    .line 2921
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 2922
    .local v0, "ifdId":I
    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "ifdId"    # I

    .prologue
    .line 2908
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTag(II)Landroid/media/MediaScanner$ExifTag;

    move-result-object v0

    .line 2909
    .local v0, "t":Landroid/media/MediaScanner$ExifTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaScanner$ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2883
    if-nez p1, :cond_0

    .line 2884
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2886
    :cond_0
    const/4 v0, 0x0

    .line 2888
    .local v0, "d":Landroid/media/MediaScanner$ExifDataExt;
    :try_start_0
    new-instance v2, Landroid/media/MediaScanner$ExifReader;

    invoke-direct {v2, p0}, Landroid/media/MediaScanner$ExifReader;-><init>(Landroid/media/MediaScanner$ExifInterfaceExt;)V

    invoke-virtual {v2, p1}, Landroid/media/MediaScanner$ExifReader;->read(Ljava/io/InputStream;)Landroid/media/MediaScanner$ExifDataExt;
    :try_end_0
    .catch Landroid/media/MediaScanner$ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2892
    iput-object v0, p0, Landroid/media/MediaScanner$ExifInterfaceExt;->mData:Landroid/media/MediaScanner$ExifDataExt;

    .line 2893
    return-void

    .line 2889
    :catch_0
    move-exception v1

    .line 2890
    .local v1, "e":Landroid/media/MediaScanner$ExifInvalidFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
