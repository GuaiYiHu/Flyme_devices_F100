.class Landroid/media/MediaScanner$ExifTag;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifTag"
.end annotation


# static fields
.field private static final LONG_MAX:J = 0x7fffffffL

.field private static final LONG_MIN:J = -0x80000000L

.field static final SIZE_UNDEFINED:I = 0x0

.field public static final TYPE_ASCII:S = 0x2s

.field public static final TYPE_LONG:S = 0x9s

.field public static final TYPE_RATIONAL:S = 0xas

.field private static final TYPE_TO_SIZE_MAP:[I

.field public static final TYPE_UNDEFINED:S = 0x7s

.field public static final TYPE_UNSIGNED_BYTE:S = 0x1s

.field public static final TYPE_UNSIGNED_LONG:S = 0x4s

.field public static final TYPE_UNSIGNED_RATIONAL:S = 0x5s

.field public static final TYPE_UNSIGNED_SHORT:S = 0x3s

.field private static final UNSIGNED_LONG_MAX:J = 0xffffffffL

.field private static final UNSIGNED_SHORT_MAX:I = 0xffff

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3998
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 4003
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner$ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 6
    .param p1, "tagId"    # S
    .param p2, "type"    # S
    .param p3, "componentCount"    # I
    .param p4, "ifd"    # I
    .param p5, "hasDefinedComponentCount"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 4022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4023
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 4024
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 4025
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 4026
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 4027
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 4028
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 4029
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 4030
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 4032
    iput-short p1, p0, Landroid/media/MediaScanner$ExifTag;->mTagId:S

    .line 4033
    iput-short p2, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    .line 4034
    iput p3, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .line 4035
    iput-boolean p5, p0, Landroid/media/MediaScanner$ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 4036
    iput p4, p0, Landroid/media/MediaScanner$ExifTag;->mIfd:I

    .line 4037
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    .line 4038
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 4467
    iget-boolean v0, p0, Landroid/media/MediaScanner$ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOverflowForRational([Landroid/media/MediaScanner$Rational;)Z
    .locals 10
    .param p1, "value"    # [Landroid/media/MediaScanner$Rational;

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    .line 4509
    move-object v0, p1

    .local v0, "arr$":[Landroid/media/MediaScanner$Rational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 4510
    .local v3, "v":Landroid/media/MediaScanner$Rational;
    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 4512
    :cond_0
    const/4 v4, 0x1

    .line 4515
    .end local v3    # "v":Landroid/media/MediaScanner$Rational;
    :goto_1
    return v4

    .line 4509
    .restart local v3    # "v":Landroid/media/MediaScanner$Rational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4515
    .end local v3    # "v":Landroid/media/MediaScanner$Rational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    .line 4489
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 4490
    .local v3, "v":I
    if-gez v3, :cond_0

    .line 4491
    const/4 v4, 0x1

    .line 4494
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 4489
    .restart local v3    # "v":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4494
    .end local v3    # "v":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 8
    .param p1, "value"    # [J

    .prologue
    .line 4480
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v4, v0, v1

    .line 4481
    .local v4, "v":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 4482
    :cond_0
    const/4 v3, 0x1

    .line 4485
    .end local v4    # "v":J
    :goto_1
    return v3

    .line 4480
    .restart local v4    # "v":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4485
    .end local v4    # "v":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedRational([Landroid/media/MediaScanner$Rational;)Z
    .locals 10
    .param p1, "value"    # [Landroid/media/MediaScanner$Rational;

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    .line 4498
    move-object v0, p1

    .local v0, "arr$":[Landroid/media/MediaScanner$Rational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 4499
    .local v3, "v":Landroid/media/MediaScanner$Rational;
    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 4502
    :cond_0
    const/4 v4, 0x1

    .line 4505
    .end local v3    # "v":Landroid/media/MediaScanner$Rational;
    :goto_1
    return v4

    .line 4498
    .restart local v3    # "v":Landroid/media/MediaScanner$Rational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4505
    .end local v3    # "v":Landroid/media/MediaScanner$Rational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .param p1, "value"    # [I

    .prologue
    .line 4471
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 4472
    .local v3, "v":I
    const v4, 0xffff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 4473
    :cond_0
    const/4 v4, 0x1

    .line 4476
    .end local v3    # "v":I
    :goto_1
    return v4

    .line 4471
    .restart local v3    # "v":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4476
    .end local v3    # "v":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 4057
    packed-switch p0, :pswitch_data_0

    .line 4075
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 4059
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 4061
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 4063
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 4065
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 4067
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 4069
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 4071
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 4073
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 4057
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private forceGetValueAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4377
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 4378
    const-string v1, ""

    .line 4403
    :goto_0
    return-object v1

    .line 4379
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 4380
    iget-short v1, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4381
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v3, Landroid/media/MediaScanner$ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    goto :goto_0

    .line 4383
    :cond_1
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4385
    :cond_2
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    .line 4386
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v3, :cond_3

    .line 4387
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4389
    :cond_3
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4391
    :cond_4
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 4392
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    .line 4393
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 4394
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 4395
    const-string v1, ""

    goto :goto_0

    .line 4397
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4400
    .end local v0    # "val":Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4403
    :cond_7
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getBytes([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 4442
    iget-short v0, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    invoke-static {v2}, Landroid/media/MediaScanner$ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4446
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_1

    iget p3, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .end local p3    # "length":I
    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4448
    return-void
.end method

.method private static getElementSize(S)I
    .locals 1
    .param p0, "type"    # S

    .prologue
    .line 4053
    sget-object v0, Landroid/media/MediaScanner$ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method private getValueAsBytes()[B
    .locals 1

    .prologue
    .line 4309
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 4310
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 4312
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValueAsRational(Landroid/media/MediaScanner$Rational;)Landroid/media/MediaScanner$Rational;
    .locals 3
    .param p1, "defaultValue"    # Landroid/media/MediaScanner$Rational;

    .prologue
    .line 4323
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifTag;->getValueAsRationals()[Landroid/media/MediaScanner$Rational;

    move-result-object v0

    .line 4324
    .local v0, "r":[Landroid/media/MediaScanner$Rational;
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 4327
    .end local p1    # "defaultValue":Landroid/media/MediaScanner$Rational;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Landroid/media/MediaScanner$Rational;
    :cond_1
    const/4 v1, 0x0

    aget-object p1, v0, v1

    goto :goto_0
.end method

.method private getValueAsRationals()[Landroid/media/MediaScanner$Rational;
    .locals 1

    .prologue
    .line 4316
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Landroid/media/MediaScanner$Rational;

    if-eqz v0, :cond_0

    .line 4317
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaScanner$Rational;

    check-cast v0, [Landroid/media/MediaScanner$Rational;

    .line 4319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .param p0, "ifdId"    # I

    .prologue
    const/4 v0, 0x1

    .line 4041
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2
    .param p0, "type"    # S

    .prologue
    const/4 v0, 0x1

    .line 4047
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setValue(B)Z
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 4232
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/media/MediaScanner$ExifTag;->setValue([B)Z

    move-result v0

    return v0
.end method

.method private setValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 4135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/media/MediaScanner$ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method private setValue(J)Z
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 4153
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/media/MediaScanner$ExifTag;->setValue([J)Z

    move-result v0

    return v0
.end method

.method private setValue(Landroid/media/MediaScanner$Rational;)Z
    .locals 2
    .param p1, "value"    # Landroid/media/MediaScanner$Rational;

    .prologue
    .line 4209
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/MediaScanner$Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/media/MediaScanner$ExifTag;->setValue([Landroid/media/MediaScanner$Rational;)Z

    move-result v0

    return v0
.end method

.method private setValue([BII)Z
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4215
    invoke-direct {p0, p3}, Landroid/media/MediaScanner$ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4224
    :cond_0
    :goto_0
    return v0

    .line 4218
    :cond_1
    iget-short v2, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-eq v2, v1, :cond_2

    iget-short v2, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 4221
    :cond_2
    new-array v2, p3, [B

    iput-object v2, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    .line 4222
    iget-object v2, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4223
    iput p3, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    move v0, v1

    .line 4224
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 4520
    if-nez p1, :cond_1

    .line 4555
    :cond_0
    :goto_0
    return v1

    .line 4523
    :cond_1
    instance-of v2, p1, Landroid/media/MediaScanner$ExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 4524
    check-cast v0, Landroid/media/MediaScanner$ExifTag;

    .line 4525
    .local v0, "tag":Landroid/media/MediaScanner$ExifTag;
    iget-short v2, v0, Landroid/media/MediaScanner$ExifTag;->mTagId:S

    iget-short v3, p0, Landroid/media/MediaScanner$ExifTag;->mTagId:S

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    iget v3, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_0

    iget-short v2, v0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    iget-short v3, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v2, v3, :cond_0

    .line 4530
    iget-object v2, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 4531
    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 4533
    iget-object v2, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    .line 4534
    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_0

    .line 4537
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    .line 4538
    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Landroid/media/MediaScanner$Rational;

    if-eqz v2, :cond_3

    .line 4539
    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Landroid/media/MediaScanner$Rational;

    if-eqz v2, :cond_0

    .line 4542
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Landroid/media/MediaScanner$Rational;

    check-cast v1, [Landroid/media/MediaScanner$Rational;

    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Landroid/media/MediaScanner$Rational;

    check-cast v2, [Landroid/media/MediaScanner$Rational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 4543
    :cond_3
    iget-object v2, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    .line 4544
    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 4547
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 4549
    :cond_4
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 4552
    :cond_5
    iget-object v2, v0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public forceGetValueAsLong(J)J
    .locals 9
    .param p1, "defaultValue"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 4361
    invoke-virtual {p0}, Landroid/media/MediaScanner$ExifTag;->getValueAsLongs()[J

    move-result-object v1

    .line 4362
    .local v1, "l":[J
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lt v3, v4, :cond_1

    .line 4363
    aget-wide p1, v1, v8

    .line 4373
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 4365
    .restart local p1    # "defaultValue":J
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifTag;->getValueAsBytes()[B

    move-result-object v0

    .line 4366
    .local v0, "b":[B
    if-eqz v0, :cond_2

    array-length v3, v0

    if-lt v3, v4, :cond_2

    .line 4367
    aget-byte v3, v0, v8

    int-to-long p1, v3

    goto :goto_0

    .line 4369
    :cond_2
    invoke-direct {p0}, Landroid/media/MediaScanner$ExifTag;->getValueAsRationals()[Landroid/media/MediaScanner$Rational;

    move-result-object v2

    .line 4370
    .local v2, "r":[Landroid/media/MediaScanner$Rational;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lt v3, v4, :cond_0

    aget-object v3, v2, v8

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->getDenominator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 4371
    aget-object v3, v2, v8

    invoke-virtual {v3}, Landroid/media/MediaScanner$Rational;->toDouble()D

    move-result-wide v4

    double-to-long p1, v4

    goto :goto_0
.end method

.method forceSetComponentCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 4104
    iput p1, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .line 4105
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    .line 4438
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaScanner$ExifTag;->getBytes([BII)V

    .line 4439
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 4100
    iget v0, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 4096
    invoke-virtual {p0}, Landroid/media/MediaScanner$ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaScanner$ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Landroid/media/MediaScanner$ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 4092
    iget-short v0, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 4080
    iget v0, p0, Landroid/media/MediaScanner$ExifTag;->mIfd:I

    return v0
.end method

.method getOffset()I
    .locals 1

    .prologue
    .line 4451
    iget v0, p0, Landroid/media/MediaScanner$ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Landroid/media/MediaScanner$Rational;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 4430
    iget-short v0, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 4431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    invoke-static {v2}, Landroid/media/MediaScanner$ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4434
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Landroid/media/MediaScanner$Rational;

    check-cast v0, [Landroid/media/MediaScanner$Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4418
    iget-short v0, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get ASCII value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    invoke-static {v2}, Landroid/media/MediaScanner$ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4422
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Landroid/media/MediaScanner$ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method protected getStringByte()[B
    .locals 1

    .prologue
    .line 4426
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 4088
    iget-short v0, p0, Landroid/media/MediaScanner$ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4357
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsInts()[I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 4336
    iget-object v3, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 4346
    :cond_0
    return-object v0

    .line 4338
    :cond_1
    iget-object v3, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v3, v3, [J

    if-eqz v3, :cond_0

    .line 4339
    iget-object v3, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v3, [J

    move-object v2, v3

    check-cast v2, [J

    .line 4340
    .local v2, "val":[J
    array-length v3, v2

    new-array v0, v3, [I

    .line 4341
    .local v0, "arr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4342
    aget-wide v4, v2, v1

    long-to-int v3, v4

    aput v3, v0, v1

    .line 4341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getValueAsLongs()[J
    .locals 1

    .prologue
    .line 4350
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 4351
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    .line 4353
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValueAsRational(J)Landroid/media/MediaScanner$Rational;
    .locals 5
    .param p1, "defaultValue"    # J

    .prologue
    .line 4331
    new-instance v0, Landroid/media/MediaScanner$Rational;

    const-wide/16 v2, 0x1

    invoke-direct {v0, p1, p2, v2, v3}, Landroid/media/MediaScanner$Rational;-><init>(JJ)V

    .line 4332
    .local v0, "defaultVal":Landroid/media/MediaScanner$Rational;
    invoke-direct {p0, v0}, Landroid/media/MediaScanner$ExifTag;->getValueAsRational(Landroid/media/MediaScanner$Rational;)Landroid/media/MediaScanner$Rational;

    move-result-object v1

    return-object v1
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4298
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 4305
    :cond_0
    :goto_0
    return-object v0

    .line 4300
    :cond_1
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4301
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 4302
    :cond_2
    iget-object v1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_0

    .line 4303
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    sget-object v2, Landroid/media/MediaScanner$ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v1

    goto :goto_0
.end method

.method getValueAt(I)J
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 4408
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 4409
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    .line 4411
    :goto_0
    return-wide v0

    .line 4410
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 4411
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 4413
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    invoke-static {v2}, Landroid/media/MediaScanner$ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasDefinedCount()Z
    .locals 1

    .prologue
    .line 4463
    iget-boolean v0, p0, Landroid/media/MediaScanner$ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 4108
    iget-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setHasDefinedCount(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 4459
    iput-boolean p1, p0, Landroid/media/MediaScanner$ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 4460
    return-void
.end method

.method setIfd(I)V
    .locals 0
    .param p1, "ifdId"    # I

    .prologue
    .line 4084
    iput p1, p0, Landroid/media/MediaScanner$ExifTag;->mIfd:I

    .line 4085
    return-void
.end method

.method setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 4455
    iput p1, p0, Landroid/media/MediaScanner$ExifTag;->mOffset:I

    .line 4456
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const v5, 0xffff

    const/4 v4, 0x0

    .line 4238
    if-nez p1, :cond_1

    .line 4293
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 4240
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Short;

    if-eqz v3, :cond_2

    .line 4241
    check-cast p1, Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    invoke-direct {p0, v3}, Landroid/media/MediaScanner$ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 4242
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4243
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$ExifTag;->setValue(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 4244
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, [I

    if-eqz v3, :cond_4

    .line 4245
    check-cast p1, [I

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$ExifTag;->setValue([I)Z

    move-result v4

    goto :goto_0

    .line 4246
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, [J

    if-eqz v3, :cond_5

    .line 4247
    check-cast p1, [J

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$ExifTag;->setValue([J)Z

    move-result v4

    goto :goto_0

    .line 4248
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Landroid/media/MediaScanner$Rational;

    if-eqz v3, :cond_6

    .line 4249
    check-cast p1, Landroid/media/MediaScanner$Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifTag;->setValue(Landroid/media/MediaScanner$Rational;)Z

    move-result v4

    goto :goto_0

    .line 4250
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, [Landroid/media/MediaScanner$Rational;

    if-eqz v3, :cond_7

    .line 4251
    check-cast p1, [Landroid/media/MediaScanner$Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [Landroid/media/MediaScanner$Rational;

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$ExifTag;->setValue([Landroid/media/MediaScanner$Rational;)Z

    move-result v4

    goto :goto_0

    .line 4252
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, [B

    if-eqz v3, :cond_8

    .line 4253
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$ExifTag;->setValue([B)Z

    move-result v4

    goto :goto_0

    .line 4254
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 4255
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/MediaScanner$ExifTag;->setValue(I)Z

    move-result v4

    goto :goto_0

    .line 4256
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_a

    .line 4257
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroid/media/MediaScanner$ExifTag;->setValue(J)Z

    move-result v4

    goto :goto_0

    .line 4258
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a
    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_b

    .line 4259
    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/MediaScanner$ExifTag;->setValue(B)Z

    move-result v4

    goto/16 :goto_0

    .line 4260
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_b
    instance-of v3, p1, [Ljava/lang/Short;

    if-eqz v3, :cond_e

    .line 4262
    check-cast p1, [Ljava/lang/Short;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Short;

    .line 4263
    .local v0, "arr":[Ljava/lang/Short;
    array-length v3, v0

    new-array v1, v3, [I

    .line 4264
    .local v1, "fin":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_d

    .line 4265
    aget-object v3, v0, v2

    if-nez v3, :cond_c

    move v3, v4

    :goto_2
    aput v3, v1, v2

    .line 4264
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4265
    :cond_c
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    and-int/2addr v3, v5

    goto :goto_2

    .line 4267
    :cond_d
    invoke-virtual {p0, v1}, Landroid/media/MediaScanner$ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 4268
    .end local v0    # "arr":[Ljava/lang/Short;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_e
    instance-of v3, p1, [Ljava/lang/Integer;

    if-eqz v3, :cond_11

    .line 4270
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Integer;

    .line 4271
    .local v0, "arr":[Ljava/lang/Integer;
    array-length v3, v0

    new-array v1, v3, [I

    .line 4272
    .restart local v1    # "fin":[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_10

    .line 4273
    aget-object v3, v0, v2

    if-nez v3, :cond_f

    move v3, v4

    :goto_4
    aput v3, v1, v2

    .line 4272
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4273
    :cond_f
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 4275
    :cond_10
    invoke-virtual {p0, v1}, Landroid/media/MediaScanner$ExifTag;->setValue([I)Z

    move-result v4

    goto/16 :goto_0

    .line 4276
    .end local v0    # "arr":[Ljava/lang/Integer;
    .end local v1    # "fin":[I
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    instance-of v3, p1, [Ljava/lang/Long;

    if-eqz v3, :cond_14

    .line 4278
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Long;

    .line 4279
    .local v0, "arr":[Ljava/lang/Long;
    array-length v3, v0

    new-array v1, v3, [J

    .line 4280
    .local v1, "fin":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_13

    .line 4281
    aget-object v3, v0, v2

    if-nez v3, :cond_12

    const-wide/16 v4, 0x0

    :goto_6
    aput-wide v4, v1, v2

    .line 4280
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4281
    :cond_12
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_6

    .line 4283
    :cond_13
    invoke-virtual {p0, v1}, Landroid/media/MediaScanner$ExifTag;->setValue([J)Z

    move-result v4

    goto/16 :goto_0

    .line 4284
    .end local v0    # "arr":[Ljava/lang/Long;
    .end local v1    # "fin":[J
    .end local v2    # "i":I
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    instance-of v3, p1, [Ljava/lang/Byte;

    if-eqz v3, :cond_0

    .line 4286
    check-cast p1, [Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Byte;

    .line 4287
    .local v0, "arr":[Ljava/lang/Byte;
    array-length v3, v0

    new-array v1, v3, [B

    .line 4288
    .local v1, "fin":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 4289
    aget-object v3, v0, v2

    if-nez v3, :cond_15

    move v3, v4

    :goto_8
    aput-byte v3, v1, v2

    .line 4288
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4289
    :cond_15
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    goto :goto_8

    .line 4291
    :cond_16
    invoke-virtual {p0, v1}, Landroid/media/MediaScanner$ExifTag;->setValue([B)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4159
    iget-short v6, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-eq v6, v8, :cond_1

    iget-short v6, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v7, 0x7

    if-eq v6, v7, :cond_1

    .line 4187
    :cond_0
    :goto_0
    return v4

    .line 4163
    :cond_1
    sget-object v6, Landroid/media/MediaScanner$ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 4164
    .local v0, "buf":[B
    move-object v2, v0

    .line 4165
    .local v2, "finalBuf":[B
    array-length v6, v0

    if-lez v6, :cond_5

    .line 4166
    const/4 v3, 0x0

    .line 4167
    .local v3, "index":I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_2

    .line 4168
    aget-byte v6, v0, v3

    if-nez v6, :cond_4

    .line 4174
    :cond_2
    add-int/lit8 v6, v3, 0x1

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 4175
    iget v6, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    array-length v7, v0

    add-int/lit8 v8, v3, 0x1

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .line 4181
    .end local v3    # "index":I
    :cond_3
    :goto_2
    array-length v1, v2

    .line 4182
    .local v1, "count":I
    invoke-direct {p0, v1}, Landroid/media/MediaScanner$ExifTag;->checkBadComponentCount(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4185
    iput v1, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .line 4186
    iput-object v2, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    move v4, v5

    .line 4187
    goto :goto_0

    .line 4170
    .end local v1    # "count":I
    .restart local v3    # "index":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4176
    .end local v3    # "index":I
    :cond_5
    iget-short v6, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v6, v8, :cond_3

    iget v6, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    if-ne v6, v5, :cond_3

    .line 4177
    new-array v2, v5, [B

    .end local v2    # "finalBuf":[B
    aput-byte v4, v2, v4

    .restart local v2    # "finalBuf":[B
    goto :goto_2
.end method

.method public setValue([B)Z
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 4228
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaScanner$ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([I)Z
    .locals 7
    .param p1, "value"    # [I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 4112
    array-length v3, p1

    invoke-direct {p0, v3}, Landroid/media/MediaScanner$ExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4131
    :cond_0
    :goto_0
    return v2

    .line 4115
    :cond_1
    iget-short v3, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-eq v3, v5, :cond_2

    iget-short v3, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-short v3, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v3, v6, :cond_0

    .line 4119
    :cond_2
    iget-short v3, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4121
    :cond_3
    iget-short v3, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v3, v6, :cond_4

    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4125
    :cond_4
    array-length v2, p1

    new-array v0, v2, [J

    .line 4126
    .local v0, "data":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 4127
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 4126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4129
    :cond_5
    iput-object v0, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    .line 4130
    array-length v2, p1

    iput v2, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .line 4131
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValue([J)Z
    .locals 3
    .param p1, "value"    # [J

    .prologue
    const/4 v0, 0x0

    .line 4141
    array-length v1, p1

    invoke-direct {p0, v1}, Landroid/media/MediaScanner$ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-short v1, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 4149
    :cond_0
    :goto_0
    return v0

    .line 4144
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4147
    iput-object p1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    .line 4148
    array-length v0, p1

    iput v0, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .line 4149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([Landroid/media/MediaScanner$Rational;)Z
    .locals 4
    .param p1, "value"    # [Landroid/media/MediaScanner$Rational;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 4191
    array-length v1, p1

    invoke-direct {p0, v1}, Landroid/media/MediaScanner$ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4205
    :cond_0
    :goto_0
    return v0

    .line 4194
    :cond_1
    iget-short v1, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-eq v1, v2, :cond_2

    iget-short v1, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v1, v3, :cond_0

    .line 4197
    :cond_2
    iget-short v1, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifTag;->checkOverflowForUnsignedRational([Landroid/media/MediaScanner$Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4199
    :cond_3
    iget-short v1, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ExifTag;->checkOverflowForRational([Landroid/media/MediaScanner$Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4203
    :cond_4
    iput-object p1, p0, Landroid/media/MediaScanner$ExifTag;->mValue:Ljava/lang/Object;

    .line 4204
    array-length v0, p1

    iput v0, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    .line 4205
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Landroid/media/MediaScanner$ExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaScanner$ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Landroid/media/MediaScanner$ExifTag;->mDataType:S

    invoke-static {v1}, Landroid/media/MediaScanner$ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaScanner$ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaScanner$ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/MediaScanner$ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
