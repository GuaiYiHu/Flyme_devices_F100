.class Landroid/media/MediaScanner$ExifParser;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$ExifParser$ExifTagEvent;,
        Landroid/media/MediaScanner$ExifParser$IfdEvent;,
        Landroid/media/MediaScanner$ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field private static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field private static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final EXIF_HEADER_TAIL:S = 0x0s

.field private static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field private static final LOGV:Z = false

.field private static final OFFSET_SIZE:I = 0x2

.field private static final OPTION_IFD_0:I = 0x1

.field private static final OPTION_IFD_1:I = 0x2

.field private static final OPTION_IFD_EXIF:I = 0x4

.field private static final OPTION_IFD_GPS:I = 0x8

.field private static final OPTION_IFD_INTEROPERABILITY:I = 0x10

.field private static final OPTION_THUMBNAIL:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ExifParser"

.field private static final TAG_EXIF_IFD:S

.field private static final TAG_GPS_IFD:S

.field private static final TAG_INTEROPERABILITY_IFD:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S

.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

.field private static final TAG_SIZE:I = 0xc

.field private static final TAG_STRIP_BYTE_COUNTS:S

.field private static final TAG_STRIP_OFFSETS:S

.field private static final TIFF_HEADER_TAIL:S = 0x2as

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mApp1End:I

.field private mContainExifDataExt:Z

.field private final mCorrespondingEvent:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAboveIfd0:[B

.field private mIfd0Position:I

.field private mIfdStartOffset:I

.field private mIfdType:I

.field private mImageEvent:Landroid/media/MediaScanner$ExifParser$ImageEvent;

.field private final mInterface:Landroid/media/MediaScanner$ExifInterfaceExt;

.field private mJpegSizeTag:Landroid/media/MediaScanner$ExifTag;

.field private mNeedToParseOffsetsInCurrentIfd:Z

.field private mNumOfTagInIfd:I

.field private mOffsetToApp1EndFromSOF:I

.field private final mOptions:I

.field private mStripSizeTag:Landroid/media/MediaScanner$ExifTag;

.field private mTag:Landroid/media/MediaScanner$ExifTag;

.field private mTiffStartPosition:I

.field private final mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3189
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner$ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    .line 3190
    sget v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_EXIF_IFD:I

    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/MediaScanner$ExifParser;->TAG_EXIF_IFD:S

    .line 3192
    sget v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GPS_IFD:I

    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/MediaScanner$ExifParser;->TAG_GPS_IFD:S

    .line 3194
    sget v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/MediaScanner$ExifParser;->TAG_INTEROPERABILITY_IFD:S

    .line 3196
    sget v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/MediaScanner$ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    .line 3198
    sget v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/MediaScanner$ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    .line 3200
    sget v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/MediaScanner$ExifParser;->TAG_STRIP_OFFSETS:S

    .line 3202
    sget v0, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v0}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Landroid/media/MediaScanner$ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILandroid/media/MediaScanner$ExifInterfaceExt;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "options"    # I
    .param p3, "iRef"    # Landroid/media/MediaScanner$ExifInterfaceExt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaScanner$ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3207
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    .line 3209
    iput v4, p0, Landroid/media/MediaScanner$ExifParser;->mIfdStartOffset:I

    .line 3210
    iput v4, p0, Landroid/media/MediaScanner$ExifParser;->mNumOfTagInIfd:I

    .line 3217
    iput-boolean v4, p0, Landroid/media/MediaScanner$ExifParser;->mContainExifDataExt:Z

    .line 3219
    iput v4, p0, Landroid/media/MediaScanner$ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 3226
    if-nez p1, :cond_0

    .line 3227
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Null argument inputStream to ExifParser"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3232
    :cond_0
    iput-object p3, p0, Landroid/media/MediaScanner$ExifParser;->mInterface:Landroid/media/MediaScanner$ExifInterfaceExt;

    .line 3233
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifParser;->seekTiffData(Ljava/io/InputStream;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/MediaScanner$ExifParser;->mContainExifDataExt:Z

    .line 3234
    new-instance v2, Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/MediaScanner$CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    .line 3235
    iput p2, p0, Landroid/media/MediaScanner$ExifParser;->mOptions:I

    .line 3236
    iget-boolean v2, p0, Landroid/media/MediaScanner$ExifParser;->mContainExifDataExt:Z

    if-nez v2, :cond_2

    .line 3254
    :cond_1
    :goto_0
    return-void

    .line 3240
    :cond_2
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->parseTiffHeader()V

    .line 3241
    iget-object v2, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v2}, Landroid/media/MediaScanner$CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v0

    .line 3242
    .local v0, "offset":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 3243
    new-instance v2, Landroid/media/MediaScanner$ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/MediaScanner$ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3245
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Landroid/media/MediaScanner$ExifParser;->mIfd0Position:I

    .line 3246
    iput v4, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    .line 3247
    invoke-direct {p0, v4}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3248
    :cond_4
    invoke-direct {p0, v4, v0, v1}, Landroid/media/MediaScanner$ExifParser;->registerIfd(IJ)V

    .line 3249
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 3250
    long-to-int v2, v0

    add-int/lit8 v2, v2, -0x8

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/media/MediaScanner$ExifParser;->mDataAboveIfd0:[B

    .line 3251
    iget-object v2, p0, Landroid/media/MediaScanner$ExifParser;->mDataAboveIfd0:[B

    invoke-virtual {p0, v2}, Landroid/media/MediaScanner$ExifParser;->read([B)I

    goto :goto_0
.end method

.method private checkAllowed(II)Z
    .locals 2
    .param p1, "ifd"    # I
    .param p2, "tagId"    # I

    .prologue
    .line 3570
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mInterface:Landroid/media/MediaScanner$ExifInterfaceExt;

    invoke-virtual {v1}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 3571
    .local v0, "info":I
    if-nez v0, :cond_0

    .line 3572
    const/4 v1, 0x0

    .line 3574
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Landroid/media/MediaScanner$ExifInterfaceExt;->isIfdAllowed(II)Z

    move-result v1

    goto :goto_0
.end method

.method private checkOffsetOrImageTag(Landroid/media/MediaScanner$ExifTag;)V
    .locals 10
    .param p1, "tag"    # Landroid/media/MediaScanner$ExifTag;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 3518
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3567
    :cond_0
    :goto_0
    return-void

    .line 3521
    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getTagId()S

    move-result v2

    .line 3522
    .local v2, "tid":S
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getIfd()I

    move-result v1

    .line 3523
    .local v1, "ifd":I
    sget-short v3, Landroid/media/MediaScanner$ExifParser;->TAG_EXIF_IFD:S

    if-ne v2, v3, :cond_3

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_EXIF_IFD:I

    invoke-direct {p0, v1, v3}, Landroid/media/MediaScanner$ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3524
    invoke-direct {p0, v8}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v7}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3526
    :cond_2
    invoke-virtual {p1, v6}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v8, v4, v5}, Landroid/media/MediaScanner$ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 3528
    :cond_3
    sget-short v3, Landroid/media/MediaScanner$ExifParser;->TAG_GPS_IFD:S

    if-ne v2, v3, :cond_4

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GPS_IFD:I

    invoke-direct {p0, v1, v3}, Landroid/media/MediaScanner$ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3529
    invoke-direct {p0, v9}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3530
    invoke-virtual {p1, v6}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v9, v4, v5}, Landroid/media/MediaScanner$ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 3532
    :cond_4
    sget-short v3, Landroid/media/MediaScanner$ExifParser;->TAG_INTEROPERABILITY_IFD:S

    if-ne v2, v3, :cond_5

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_INTEROPERABILITY_IFD:I

    invoke-direct {p0, v1, v3}, Landroid/media/MediaScanner$ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3534
    invoke-direct {p0, v7}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3535
    invoke-virtual {p1, v6}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v7, v4, v5}, Landroid/media/MediaScanner$ExifParser;->registerIfd(IJ)V

    goto :goto_0

    .line 3537
    :cond_5
    sget-short v3, Landroid/media/MediaScanner$ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S

    if-ne v2, v3, :cond_6

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-direct {p0, v1, v3}, Landroid/media/MediaScanner$ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3539
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3540
    invoke-virtual {p1, v6}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroid/media/MediaScanner$ExifParser;->registerCompressedImage(J)V

    goto :goto_0

    .line 3542
    :cond_6
    sget-short v3, Landroid/media/MediaScanner$ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S

    if-ne v2, v3, :cond_7

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-direct {p0, v1, v3}, Landroid/media/MediaScanner$ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3544
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3545
    iput-object p1, p0, Landroid/media/MediaScanner$ExifParser;->mJpegSizeTag:Landroid/media/MediaScanner$ExifTag;

    goto/16 :goto_0

    .line 3547
    :cond_7
    sget-short v3, Landroid/media/MediaScanner$ExifParser;->TAG_STRIP_OFFSETS:S

    if-ne v2, v3, :cond_a

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_STRIP_OFFSETS:I

    invoke-direct {p0, v1, v3}, Landroid/media/MediaScanner$ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3549
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3550
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3552
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getDataType()S

    move-result v3

    if-ne v3, v7, :cond_8

    .line 3553
    invoke-virtual {p1, v0}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Landroid/media/MediaScanner$ExifParser;->registerUncompressedStrip(IJ)V

    .line 3551
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3555
    :cond_8
    invoke-virtual {p1, v0}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Landroid/media/MediaScanner$ExifParser;->registerUncompressedStrip(IJ)V

    goto :goto_2

    .line 3559
    .end local v0    # "i":I
    :cond_9
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getOffset()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;

    invoke-direct {v5, p1, v6}, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;-><init>(Landroid/media/MediaScanner$ExifTag;Z)V

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3562
    :cond_a
    sget-short v3, Landroid/media/MediaScanner$ExifParser;->TAG_STRIP_BYTE_COUNTS:S

    if-ne v2, v3, :cond_0

    sget v3, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_STRIP_BYTE_COUNTS:I

    invoke-direct {p0, v1, v3}, Landroid/media/MediaScanner$ExifParser;->checkAllowed(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->isThumbnailRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3565
    iput-object p1, p0, Landroid/media/MediaScanner$ExifParser;->mStripSizeTag:Landroid/media/MediaScanner$ExifTag;

    goto/16 :goto_0
.end method

.method private isIfdRequested(I)Z
    .locals 3
    .param p1, "ifdType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3263
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 3275
    :cond_0
    :goto_0
    return v0

    .line 3265
    :pswitch_0
    iget v2, p0, Landroid/media/MediaScanner$ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3267
    :pswitch_1
    iget v2, p0, Landroid/media/MediaScanner$ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3269
    :pswitch_2
    iget v2, p0, Landroid/media/MediaScanner$ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3271
    :pswitch_3
    iget v2, p0, Landroid/media/MediaScanner$ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3273
    :pswitch_4
    iget v2, p0, Landroid/media/MediaScanner$ExifParser;->mOptions:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private isThumbnailRequested()Z
    .locals 1

    .prologue
    .line 3279
    iget v0, p0, Landroid/media/MediaScanner$ExifParser;->mOptions:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToParseOffsetsInCurrentIfd()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3398
    iget v2, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    packed-switch v2, :pswitch_data_0

    .line 3410
    :cond_0
    :goto_0
    return v0

    .line 3400
    :pswitch_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v3}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 3405
    :pswitch_1
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->isThumbnailRequested()Z

    move-result v0

    goto :goto_0

    .line 3408
    :pswitch_2
    invoke-direct {p0, v3}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v0

    goto :goto_0

    .line 3398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static parse(Ljava/io/InputStream;Landroid/media/MediaScanner$ExifInterfaceExt;)Landroid/media/MediaScanner$ExifParser;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "iRef"    # Landroid/media/MediaScanner$ExifInterfaceExt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaScanner$ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 3258
    new-instance v0, Landroid/media/MediaScanner$ExifParser;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Landroid/media/MediaScanner$ExifParser;-><init>(Ljava/io/InputStream;ILandroid/media/MediaScanner$ExifInterfaceExt;)V

    return-object v0
.end method

.method private parseTiffHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaScanner$ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 3672
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v0

    .line 3673
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    .line 3674
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/MediaScanner$CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3681
    :goto_0
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    .line 3682
    new-instance v1, Landroid/media/MediaScanner$ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Landroid/media/MediaScanner$ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3675
    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_1

    .line 3676
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/MediaScanner$CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    .line 3678
    :cond_1
    new-instance v1, Landroid/media/MediaScanner$ExifInvalidFormatException;

    const-string v2, "Invalid TIFF header"

    invoke-direct {v1, v2}, Landroid/media/MediaScanner$ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3684
    :cond_2
    return-void
.end method

.method private readLong()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3765
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method private readRational()Landroid/media/MediaScanner$Rational;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3769
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readLong()I

    move-result v1

    .line 3770
    .local v1, "nomi":I
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readLong()I

    move-result v0

    .line 3771
    .local v0, "denomi":I
    new-instance v2, Landroid/media/MediaScanner$Rational;

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/media/MediaScanner$Rational;-><init>(JJ)V

    return-object v2
.end method

.method private readString(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3739
    sget-object v0, Landroid/media/MediaScanner$ExifParser;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3743
    if-lez p1, :cond_0

    .line 3744
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaScanner$CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 3746
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private readTag()Landroid/media/MediaScanner$ExifTag;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaScanner$ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 3468
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v3}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v1

    .line 3469
    .local v1, "tagId":S
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v3}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v2

    .line 3470
    .local v2, "dataFormat":S
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v3}, Landroid/media/MediaScanner$CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v10

    .line 3471
    .local v10, "numOfComp":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v10, v4

    if-lez v3, :cond_0

    .line 3472
    new-instance v3, Landroid/media/MediaScanner$ExifInvalidFormatException;

    const-string v4, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Landroid/media/MediaScanner$ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3476
    :cond_0
    invoke-static {v2}, Landroid/media/MediaScanner$ExifTag;->isValidType(S)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3477
    const-string v3, "ExifParser"

    const-string v4, "Tag %04x: Invalid data type %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    aput-object v14, v5, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    aput-object v14, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaScanner$CountedDataInputStream;->skip(J)J

    .line 3479
    const/4 v0, 0x0

    .line 3513
    :goto_0
    return-object v0

    .line 3482
    :cond_1
    new-instance v0, Landroid/media/MediaScanner$ExifTag;

    long-to-int v3, v10

    iget v4, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    long-to-int v5, v10

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner$ExifTag;-><init>(SSIIZ)V

    .line 3485
    .local v0, "tag":Landroid/media/MediaScanner$ExifTag;
    invoke-virtual {v0}, Landroid/media/MediaScanner$ExifTag;->getDataSize()I

    move-result v7

    .line 3486
    .local v7, "dataSize":I
    const/4 v3, 0x4

    if-le v7, v3, :cond_6

    .line 3487
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v3}, Landroid/media/MediaScanner$CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v12

    .line 3488
    .local v12, "offset":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v12, v4

    if-lez v3, :cond_3

    .line 3489
    new-instance v3, Landroid/media/MediaScanner$ExifInvalidFormatException;

    const-string/jumbo v4, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Landroid/media/MediaScanner$ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3482
    .end local v0    # "tag":Landroid/media/MediaScanner$ExifTag;
    .end local v7    # "dataSize":I
    .end local v12    # "offset":J
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 3491
    .restart local v0    # "tag":Landroid/media/MediaScanner$ExifTag;
    .restart local v7    # "dataSize":I
    .restart local v12    # "offset":J
    :cond_3
    iget v3, p0, Landroid/media/MediaScanner$ExifParser;->mIfd0Position:I

    int-to-long v4, v3

    cmp-long v3, v12, v4

    if-gez v3, :cond_5

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mDataAboveIfd0:[B

    if-eqz v3, :cond_5

    .line 3493
    long-to-int v3, v10

    new-array v6, v3, [B

    .line 3494
    .local v6, "buf":[B
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mDataAboveIfd0:[B

    if-nez v3, :cond_4

    .line 3495
    const/4 v0, 0x0

    goto :goto_0

    .line 3496
    :cond_4
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mDataAboveIfd0:[B

    long-to-int v4, v12

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    long-to-int v9, v10

    invoke-static {v3, v4, v6, v5, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3498
    invoke-virtual {v0, v6}, Landroid/media/MediaScanner$ExifTag;->setValue([B)Z

    goto :goto_0

    .line 3500
    .end local v6    # "buf":[B
    :cond_5
    long-to-int v3, v12

    invoke-virtual {v0, v3}, Landroid/media/MediaScanner$ExifTag;->setOffset(I)V

    goto :goto_0

    .line 3503
    .end local v12    # "offset":J
    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaScanner$ExifTag;->hasDefinedCount()Z

    move-result v8

    .line 3505
    .local v8, "defCount":Z
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/MediaScanner$ExifTag;->setHasDefinedCount(Z)V

    .line 3507
    invoke-virtual {p0, v0}, Landroid/media/MediaScanner$ExifParser;->readFullTagValue(Landroid/media/MediaScanner$ExifTag;)V

    .line 3508
    invoke-virtual {v0, v8}, Landroid/media/MediaScanner$ExifTag;->setHasDefinedCount(Z)V

    .line 3509
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    rsub-int/lit8 v4, v7, 0x4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaScanner$CountedDataInputStream;->skip(J)J

    .line 3511
    iget-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v3}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Landroid/media/MediaScanner$ExifTag;->setOffset(I)V

    goto :goto_0
.end method

.method private readUnsignedLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3755
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private readUnsignedRational()Landroid/media/MediaScanner$Rational;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3759
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 3760
    .local v2, "nomi":J
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedLong()J

    move-result-wide v0

    .line 3761
    .local v0, "denomi":J
    new-instance v4, Landroid/media/MediaScanner$Rational;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/media/MediaScanner$Rational;-><init>(JJ)V

    return-object v4
.end method

.method private readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3751
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private registerCompressedImage(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 3459
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaScanner$ExifParser$ImageEvent;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/media/MediaScanner$ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3460
    return-void
.end method

.method private registerIfd(IJ)V
    .locals 4
    .param p1, "ifdType"    # I
    .param p2, "offset"    # J

    .prologue
    .line 3455
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaScanner$ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/media/MediaScanner$ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    return-void
.end method

.method private registerUncompressedStrip(IJ)V
    .locals 4
    .param p1, "stripIndex"    # I
    .param p2, "offset"    # J

    .prologue
    .line 3463
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaScanner$ExifParser$ImageEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Landroid/media/MediaScanner$ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    return-void
.end method

.method private seekTiffData(Ljava/io/InputStream;)Z
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaScanner$ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3688
    new-instance v0, Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/MediaScanner$CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3689
    .local v0, "dataStream":Landroid/media/MediaScanner$CountedDataInputStream;
    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v6

    const/16 v7, -0x28

    if-eq v6, v7, :cond_0

    .line 3690
    new-instance v5, Landroid/media/MediaScanner$ExifInvalidFormatException;

    const-string v6, "Invalid JPEG format"

    invoke-direct {v5, v6}, Landroid/media/MediaScanner$ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3693
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v4

    .line 3694
    .local v4, "marker":S
    :goto_0
    const/16 v6, -0x27

    if-eq v4, v6, :cond_1

    invoke-static {v4}, Landroid/media/MediaScanner$JpegHeader;->isSofMarker(S)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3695
    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 3698
    .local v3, "length":I
    const/16 v6, -0x1f

    if-ne v4, v6, :cond_2

    .line 3699
    const/4 v1, 0x0

    .line 3700
    .local v1, "header":I
    const/4 v2, 0x0

    .line 3701
    .local v2, "headerTail":S
    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    .line 3702
    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readInt()I

    move-result v1

    .line 3703
    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v2

    .line 3704
    add-int/lit8 v3, v3, -0x6

    .line 3705
    const v6, 0x45786966

    if-ne v1, v6, :cond_2

    if-nez v2, :cond_2

    .line 3706
    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v5

    iput v5, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStartPosition:I

    .line 3707
    iput v3, p0, Landroid/media/MediaScanner$ExifParser;->mApp1End:I

    .line 3708
    iget v5, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStartPosition:I

    iget v6, p0, Landroid/media/MediaScanner$ExifParser;->mApp1End:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/media/MediaScanner$ExifParser;->mOffsetToApp1EndFromSOF:I

    .line 3709
    const/4 v5, 0x1

    .line 3719
    .end local v1    # "header":I
    .end local v2    # "headerTail":S
    .end local v3    # "length":I
    :cond_1
    :goto_1
    return v5

    .line 3713
    .restart local v3    # "length":I
    :cond_2
    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    add-int/lit8 v6, v3, -0x2

    int-to-long v6, v6

    add-int/lit8 v8, v3, -0x2

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaScanner$CountedDataInputStream;->skip(J)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 3714
    :cond_3
    const-string v6, "ExifParser"

    const-string v7, "Invalid JPEG format."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3717
    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->readShort()S

    move-result v4

    .line 3718
    goto :goto_0
.end method

.method private skipRemainingTagsInCurrentIfd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaScanner$ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3370
    iget v4, p0, Landroid/media/MediaScanner$ExifParser;->mIfdStartOffset:I

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroid/media/MediaScanner$ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v5, v5, 0xc

    add-int v0, v4, v5

    .line 3371
    .local v0, "endOfTags":I
    iget-object v4, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v4}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v1

    .line 3372
    .local v1, "offset":I
    if-le v1, v0, :cond_1

    .line 3395
    :cond_0
    :goto_0
    return-void

    .line 3375
    :cond_1
    iget-boolean v4, p0, Landroid/media/MediaScanner$ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v4, :cond_3

    .line 3376
    :cond_2
    :goto_1
    if-ge v1, v0, :cond_4

    .line 3377
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readTag()Landroid/media/MediaScanner$ExifTag;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    .line 3378
    add-int/lit8 v1, v1, 0xc

    .line 3379
    iget-object v4, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    if-eqz v4, :cond_2

    .line 3382
    iget-object v4, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    invoke-direct {p0, v4}, Landroid/media/MediaScanner$ExifParser;->checkOffsetOrImageTag(Landroid/media/MediaScanner$ExifTag;)V

    goto :goto_1

    .line 3385
    :cond_3
    invoke-direct {p0, v0}, Landroid/media/MediaScanner$ExifParser;->skipTo(I)V

    .line 3387
    :cond_4
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedLong()J

    move-result-wide v2

    .line 3389
    .local v2, "ifdOffset":J
    iget v4, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    if-nez v4, :cond_0

    invoke-direct {p0, v6}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->isThumbnailRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3391
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 3392
    invoke-direct {p0, v6, v2, v3}, Landroid/media/MediaScanner$ExifParser;->registerIfd(IJ)V

    goto :goto_0
.end method

.method private skipTo(I)V
    .locals 4
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3440
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaScanner$CountedDataInputStream;->skipTo(J)V

    .line 3441
    :goto_0
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 3442
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    .line 3444
    :cond_0
    return-void
.end method


# virtual methods
.method getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 3775
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v0}, Landroid/media/MediaScanner$CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method getCompressedImageSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3433
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mJpegSizeTag:Landroid/media/MediaScanner$ExifTag;

    if-nez v1, :cond_0

    .line 3436
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mJpegSizeTag:Landroid/media/MediaScanner$ExifTag;

    invoke-virtual {v1, v0}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method getCurrentIfd()I
    .locals 1

    .prologue
    .line 3419
    iget v0, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    return v0
.end method

.method protected getOffsetToExifEndFromSOF()I
    .locals 1

    .prologue
    .line 3723
    iget v0, p0, Landroid/media/MediaScanner$ExifParser;->mOffsetToApp1EndFromSOF:I

    return v0
.end method

.method getStripIndex()I
    .locals 1

    .prologue
    .line 3423
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mImageEvent:Landroid/media/MediaScanner$ExifParser$ImageEvent;

    iget v0, v0, Landroid/media/MediaScanner$ExifParser$ImageEvent;->stripIndex:I

    return v0
.end method

.method getStripSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3427
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mStripSizeTag:Landroid/media/MediaScanner$ExifTag;

    if-nez v1, :cond_0

    .line 3429
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mStripSizeTag:Landroid/media/MediaScanner$ExifTag;

    invoke-virtual {v1, v0}, Landroid/media/MediaScanner$ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method getTag()Landroid/media/MediaScanner$ExifTag;
    .locals 1

    .prologue
    .line 3415
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    return-object v0
.end method

.method protected getTiffStartPosition()I
    .locals 1

    .prologue
    .line 3727
    iget v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStartPosition:I

    return v0
.end method

.method next()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/media/MediaScanner$ExifInvalidFormatException;
        }
    .end annotation

    .prologue
    .line 3283
    iget-boolean v9, p0, Landroid/media/MediaScanner$ExifParser;->mContainExifDataExt:Z

    if-nez v9, :cond_0

    .line 3284
    const/4 v9, 0x5

    .line 3365
    :goto_0
    return v9

    .line 3286
    :cond_0
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v9}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v6

    .line 3287
    .local v6, "offset":I
    iget v9, p0, Landroid/media/MediaScanner$ExifParser;->mIfdStartOffset:I

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Landroid/media/MediaScanner$ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v10, v10, 0xc

    add-int v1, v9, v10

    .line 3288
    .local v1, "endOfTags":I
    if-ge v6, v1, :cond_3

    .line 3289
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readTag()Landroid/media/MediaScanner$ExifTag;

    move-result-object v9

    iput-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    .line 3290
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    if-nez v9, :cond_1

    .line 3291
    invoke-virtual {p0}, Landroid/media/MediaScanner$ExifParser;->next()I

    move-result v9

    goto :goto_0

    .line 3293
    :cond_1
    iget-boolean v9, p0, Landroid/media/MediaScanner$ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    if-eqz v9, :cond_2

    .line 3294
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    invoke-direct {p0, v9}, Landroid/media/MediaScanner$ExifParser;->checkOffsetOrImageTag(Landroid/media/MediaScanner$ExifTag;)V

    .line 3296
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 3297
    :cond_3
    if-ne v6, v1, :cond_5

    .line 3299
    iget v9, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    if-nez v9, :cond_6

    .line 3300
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 3301
    .local v4, "ifdOffset":J
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/media/MediaScanner$ExifParser;->isIfdRequested(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->isThumbnailRequested()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3302
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 3303
    const/4 v9, 0x1

    invoke-direct {p0, v9, v4, v5}, Landroid/media/MediaScanner$ExifParser;->registerIfd(IJ)V

    .line 3324
    .end local v4    # "ifdOffset":J
    :cond_5
    :goto_1
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-eqz v9, :cond_e

    .line 3325
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 3326
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 3328
    .local v3, "event":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/media/MediaScanner$ExifParser;->skipTo(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3334
    instance-of v9, v3, Landroid/media/MediaScanner$ExifParser$IfdEvent;

    if-eqz v9, :cond_b

    move-object v9, v3

    .line 3335
    check-cast v9, Landroid/media/MediaScanner$ExifParser$IfdEvent;

    iget v9, v9, Landroid/media/MediaScanner$ExifParser$IfdEvent;->ifd:I

    iput v9, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    .line 3336
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v9}, Landroid/media/MediaScanner$CountedDataInputStream;->readUnsignedShort()I

    move-result v9

    iput v9, p0, Landroid/media/MediaScanner$ExifParser;->mNumOfTagInIfd:I

    .line 3337
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Landroid/media/MediaScanner$ExifParser;->mIfdStartOffset:I

    .line 3339
    iget v9, p0, Landroid/media/MediaScanner$ExifParser;->mNumOfTagInIfd:I

    mul-int/lit8 v9, v9, 0xc

    iget v10, p0, Landroid/media/MediaScanner$ExifParser;->mIfdStartOffset:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    iget v10, p0, Landroid/media/MediaScanner$ExifParser;->mApp1End:I

    if-le v9, v10, :cond_9

    .line 3340
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid size of IFD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/media/MediaScanner$ExifParser;->mIfdType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 3307
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x4

    .line 3309
    .local v7, "offsetSize":I
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 3310
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v10}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v10

    sub-int v7, v9, v10

    .line 3314
    :cond_7
    const/4 v9, 0x4

    if-ge v7, v9, :cond_8

    .line 3315
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid size of link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3317
    :cond_8
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedLong()J

    move-result-wide v4

    .line 3318
    .restart local v4    # "ifdOffset":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_5

    .line 3319
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid link to next IFD: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3329
    .end local v4    # "ifdOffset":J
    .end local v7    # "offsetSize":I
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local v3    # "event":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 3330
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "ExifParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to skip to data at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", the file may be broken."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3344
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->needToParseOffsetsInCurrentIfd()Z

    move-result v9

    iput-boolean v9, p0, Landroid/media/MediaScanner$ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z

    .line 3345
    check-cast v3, Landroid/media/MediaScanner$ExifParser$IfdEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iget-boolean v9, v3, Landroid/media/MediaScanner$ExifParser$IfdEvent;->isRequested:Z

    if-eqz v9, :cond_a

    .line 3346
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3348
    :cond_a
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto/16 :goto_1

    .line 3350
    .restart local v3    # "event":Ljava/lang/Object;
    :cond_b
    instance-of v9, v3, Landroid/media/MediaScanner$ExifParser$ImageEvent;

    if-eqz v9, :cond_c

    .line 3351
    check-cast v3, Landroid/media/MediaScanner$ExifParser$ImageEvent;

    .end local v3    # "event":Ljava/lang/Object;
    iput-object v3, p0, Landroid/media/MediaScanner$ExifParser;->mImageEvent:Landroid/media/MediaScanner$ExifParser$ImageEvent;

    .line 3352
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mImageEvent:Landroid/media/MediaScanner$ExifParser$ImageEvent;

    iget v9, v9, Landroid/media/MediaScanner$ExifParser$ImageEvent;->type:I

    goto/16 :goto_0

    .restart local v3    # "event":Ljava/lang/Object;
    :cond_c
    move-object v8, v3

    .line 3354
    check-cast v8, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;

    .line 3355
    .local v8, "tagEvent":Landroid/media/MediaScanner$ExifParser$ExifTagEvent;
    iget-object v9, v8, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;->tag:Landroid/media/MediaScanner$ExifTag;

    iput-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    .line 3356
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    invoke-virtual {v9}, Landroid/media/MediaScanner$ExifTag;->getDataType()S

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_d

    .line 3357
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    invoke-virtual {p0, v9}, Landroid/media/MediaScanner$ExifParser;->readFullTagValue(Landroid/media/MediaScanner$ExifTag;)V

    .line 3358
    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTag:Landroid/media/MediaScanner$ExifTag;

    invoke-direct {p0, v9}, Landroid/media/MediaScanner$ExifParser;->checkOffsetOrImageTag(Landroid/media/MediaScanner$ExifTag;)V

    .line 3360
    :cond_d
    iget-boolean v9, v8, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;->isRequested:Z

    if-eqz v9, :cond_5

    .line 3361
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 3365
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "event":Ljava/lang/Object;
    .end local v8    # "tagEvent":Landroid/media/MediaScanner$ExifParser$ExifTagEvent;
    :cond_e
    const/4 v9, 0x5

    goto/16 :goto_0
.end method

.method read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3735
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v0, p1}, Landroid/media/MediaScanner$CountedDataInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method protected read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3731
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaScanner$CountedDataInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method readFullTagValue(Landroid/media/MediaScanner$ExifTag;)V
    .locals 11
    .param p1, "tag"    # Landroid/media/MediaScanner$ExifTag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3579
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getDataType()S

    move-result v6

    .line 3580
    .local v6, "type":S
    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    const/4 v8, 0x7

    if-eq v6, v8, :cond_0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 3582
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v5

    .line 3583
    .local v5, "size":I
    iget-object v8, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 3584
    iget-object v8, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v9}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v9

    add-int/2addr v9, v5

    if-ge v8, v9, :cond_1

    .line 3586
    iget-object v8, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 3587
    .local v2, "event":Ljava/lang/Object;
    instance-of v8, v2, Landroid/media/MediaScanner$ExifParser$ImageEvent;

    if-eqz v8, :cond_2

    .line 3589
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    iget-object v8, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 3591
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid thumbnail offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v2    # "event":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getDataType()S

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 3669
    :goto_1
    :pswitch_0
    return-void

    .line 3594
    .restart local v2    # "event":Ljava/lang/Object;
    .restart local v5    # "size":I
    :cond_2
    instance-of v8, v2, Landroid/media/MediaScanner$ExifParser$IfdEvent;

    if-eqz v8, :cond_4

    .line 3595
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ifd "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Landroid/media/MediaScanner$ExifParser$IfdEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget v10, v2, Landroid/media/MediaScanner$ExifParser$IfdEvent;->ifd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    :cond_3
    :goto_2
    iget-object v8, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v9}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v9

    sub-int v5, v8, v9

    .line 3605
    if-lez v5, :cond_1

    .line 3606
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<readFullTagValue> Invalid size of tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " setting count to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    invoke-virtual {p1, v5}, Landroid/media/MediaScanner$ExifTag;->forceSetComponentCount(I)V

    goto :goto_0

    .line 3597
    .restart local v2    # "event":Ljava/lang/Object;
    :cond_4
    instance-of v8, v2, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;

    if-eqz v8, :cond_3

    .line 3598
    const-string v8, "ExifParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tag value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    check-cast v2, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;

    .end local v2    # "event":Ljava/lang/Object;
    iget-object v10, v2, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;->tag:Landroid/media/MediaScanner$ExifTag;

    invoke-virtual {v10}, Landroid/media/MediaScanner$ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " overlaps value for tag: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3617
    .end local v5    # "size":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v8

    new-array v0, v8, [B

    .line 3618
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Landroid/media/MediaScanner$ExifParser;->read([B)I

    .line 3619
    invoke-virtual {p1, v0}, Landroid/media/MediaScanner$ExifTag;->setValue([B)Z

    goto/16 :goto_1

    .line 3623
    .end local v0    # "buf":[B
    :pswitch_2
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/media/MediaScanner$ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/media/MediaScanner$ExifTag;->setValue(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 3626
    :pswitch_3
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [J

    .line 3627
    .local v7, "value":[J
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v7

    .local v4, "n":I
    :goto_3
    if-ge v3, v4, :cond_5

    .line 3628
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedLong()J

    move-result-wide v8

    aput-wide v8, v7, v3

    .line 3627
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3630
    :cond_5
    invoke-virtual {p1, v7}, Landroid/media/MediaScanner$ExifTag;->setValue([J)Z

    goto/16 :goto_1

    .line 3634
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[J
    :pswitch_4
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Landroid/media/MediaScanner$Rational;

    .line 3635
    .local v7, "value":[Landroid/media/MediaScanner$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 3636
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedRational()Landroid/media/MediaScanner$Rational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 3635
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3638
    :cond_6
    invoke-virtual {p1, v7}, Landroid/media/MediaScanner$ExifTag;->setValue([Landroid/media/MediaScanner$Rational;)Z

    goto/16 :goto_1

    .line 3642
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[Landroid/media/MediaScanner$Rational;
    :pswitch_5
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 3643
    .local v7, "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_5
    if-ge v3, v4, :cond_7

    .line 3644
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readUnsignedShort()I

    move-result v8

    aput v8, v7, v3

    .line 3643
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3646
    :cond_7
    invoke-virtual {p1, v7}, Landroid/media/MediaScanner$ExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 3650
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_6
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [I

    .line 3651
    .restart local v7    # "value":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_6
    if-ge v3, v4, :cond_8

    .line 3652
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readLong()I

    move-result v8

    aput v8, v7, v3

    .line 3651
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3654
    :cond_8
    invoke-virtual {p1, v7}, Landroid/media/MediaScanner$ExifTag;->setValue([I)Z

    goto/16 :goto_1

    .line 3658
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v7    # "value":[I
    :pswitch_7
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v8

    new-array v7, v8, [Landroid/media/MediaScanner$Rational;

    .line 3659
    .local v7, "value":[Landroid/media/MediaScanner$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, v7

    .restart local v4    # "n":I
    :goto_7
    if-ge v3, v4, :cond_9

    .line 3660
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifParser;->readRational()Landroid/media/MediaScanner$Rational;

    move-result-object v8

    aput-object v8, v7, v3

    .line 3659
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3662
    :cond_9
    invoke-virtual {p1, v7}, Landroid/media/MediaScanner$ExifTag;->setValue([Landroid/media/MediaScanner$Rational;)Z

    goto/16 :goto_1

    .line 3614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method registerForTagValue(Landroid/media/MediaScanner$ExifTag;)V
    .locals 4
    .param p1, "tag"    # Landroid/media/MediaScanner$ExifTag;

    .prologue
    .line 3447
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Landroid/media/MediaScanner$ExifParser;->mTiffStream:Landroid/media/MediaScanner$CountedDataInputStream;

    invoke-virtual {v1}, Landroid/media/MediaScanner$CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3448
    iget-object v0, p0, Landroid/media/MediaScanner$ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Landroid/media/MediaScanner$ExifParser$ExifTagEvent;-><init>(Landroid/media/MediaScanner$ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    :cond_0
    return-void
.end method
