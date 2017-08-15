.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 414
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 415
    iput-object p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 416
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # [B
    .param p4, "x3"    # Landroid/media/ExifInterface$1;

    .prologue
    .line 407
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$700(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/ExifInterface$ExifAttribute;
    .param p1, "x1"    # Ljava/nio/ByteOrder;

    .prologue
    .line 407
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 462
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-gt v2, v3, :cond_0

    .line 463
    new-array v1, v5, [B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 464
    .local v1, "bytes":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v1

    invoke-direct {v2, v5, v3, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 467
    .end local v1    # "bytes":[B
    :goto_0
    return-object v2

    .line 466
    :cond_0
    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 467
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v5, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    goto :goto_0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 516
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 10
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v9, 0xc

    .line 506
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v6

    aget v6, v6, v9

    array-length v7, p0

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 508
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 509
    move-object v0, p0

    .local v0, "arr$":[D
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v0, v2

    .line 510
    .local v4, "value":D
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v4    # "value":D
    :cond_0
    new-instance v6, Landroid/media/ExifInterface$ExifAttribute;

    array-length v7, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v6, v9, v7, v8}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v6
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 457
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v8, 0x9

    .line 447
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 449
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 450
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 451
    .local v4, "value":I
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    .end local v4    # "value":I
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 502
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v8, 0xa

    .line 491
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 493
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 494
    move-object v0, p0

    .local v0, "arr$":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 495
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 496
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 472
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 443
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 10
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v9, 0x4

    .line 433
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v6

    aget v6, v6, v9

    array-length v7, p0

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 435
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 436
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v0, v2

    .line 437
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v4    # "value":J
    :cond_0
    new-instance v6, Landroid/media/ExifInterface$ExifAttribute;

    array-length v7, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v6, v9, v7, v8}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v6
.end method

.method public static createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 487
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x5

    .line 476
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 478
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 479
    move-object v0, p0

    .local v0, "arr$":[Landroid/media/ExifInterface$Rational;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 480
    .local v4, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 481
    iget-wide v6, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v4    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 429
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 9
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x3

    .line 419
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v5

    aget v5, v5, v8

    array-length v6, p0

    mul-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 421
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 422
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 423
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v4    # "value":I
    :cond_0
    new-instance v5, Landroid/media/ExifInterface$ExifAttribute;

    array-length v6, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-direct {v5, v8, v6, v7}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v5
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 18
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 526
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v12, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 528
    .local v12, "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 529
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v3, :pswitch_data_0

    .line 630
    const/4 v15, 0x0

    .line 634
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :cond_0
    :goto_0
    return-object v15

    .line 533
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    if-gt v3, v8, :cond_1

    .line 534
    new-instance v15, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-byte v16, v16, v17

    add-int/lit8 v16, v16, 0x30

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v3, v8

    invoke-direct {v15, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 632
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :catch_0
    move-exception v9

    .line 633
    .local v9, "e":Ljava/io/IOException;
    const-string v3, "ExifInterface"

    const-string v8, "IOException occurred during reading a value"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    const/4 v15, 0x0

    goto :goto_0

    .line 536
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :cond_1
    :try_start_1
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    # getter for: Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;
    invoke-static {}, Landroid/media/ExifInterface;->access$100()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v15, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 540
    :pswitch_1
    const/4 v11, 0x0

    .line 541
    .local v11, "index":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v8

    array-length v8, v8

    if-lt v3, v8, :cond_3

    .line 542
    const/4 v13, 0x1

    .line 543
    .local v13, "same":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_2

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v10

    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v8

    aget-byte v8, v8, v10

    if-eq v3, v8, :cond_5

    .line 545
    const/4 v13, 0x0

    .line 549
    :cond_2
    if-eqz v13, :cond_3

    .line 550
    # getter for: Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B
    invoke-static {}, Landroid/media/ExifInterface;->access$300()[B

    move-result-object v3

    array-length v11, v3

    .line 554
    .end local v10    # "i":I
    .end local v13    # "same":Z
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v11, v3, :cond_4

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v3, v11

    .line 557
    .local v2, "ch":I
    if-nez v2, :cond_6

    .line 567
    .end local v2    # "ch":I
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 543
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v13    # "same":Z
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 560
    .end local v10    # "i":I
    .end local v13    # "same":Z
    .restart local v2    # "ch":I
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_6
    const/16 v3, 0x20

    if-lt v2, v3, :cond_7

    .line 561
    int-to-char v3, v2

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 565
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 566
    goto :goto_2

    .line 563
    :cond_7
    const/16 v3, 0x3f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 570
    .end local v2    # "ch":I
    .end local v11    # "index":I
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 571
    .local v15, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 572
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v15, v10

    .line 571
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 577
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [J

    .line 578
    .local v15, "values":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 579
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v16

    aput-wide v16, v15, v10

    .line 578
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 584
    .end local v10    # "i":I
    .end local v15    # "values":[J
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [Landroid/media/ExifInterface$Rational;

    .line 585
    .local v15, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 586
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 587
    .local v4, "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 588
    .local v6, "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v15, v10

    .line 585
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 593
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    .end local v10    # "i":I
    .end local v15    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 594
    .local v15, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 595
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v3

    aput v3, v15, v10

    .line 594
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 600
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [I

    .line 601
    .restart local v15    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 602
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    aput v3, v15, v10

    .line 601
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 607
    .end local v10    # "i":I
    .end local v15    # "values":[I
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [Landroid/media/ExifInterface$Rational;

    .line 608
    .local v15, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 609
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 610
    .restart local v4    # "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v6, v3

    .line 611
    .restart local v6    # "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$1;)V

    aput-object v3, v15, v10

    .line 608
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 616
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    .end local v10    # "i":I
    .end local v15    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 617
    .local v15, "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 618
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFloat()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v16, v0

    aput-wide v16, v15, v10

    .line 617
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 623
    .end local v10    # "i":I
    .end local v15    # "values":[D
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 624
    .restart local v15    # "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_0

    .line 625
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readDouble()D

    move-result-wide v16

    aput-wide v16, v15, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 624
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 639
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 640
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 641
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 644
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 670
    :goto_0
    return-wide v2

    .line 646
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_3

    .line 647
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 648
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 649
    aget-wide v2, v0, v3

    long-to-double v2, v2

    goto :goto_0

    .line 651
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, [I

    if-eqz v2, :cond_5

    .line 654
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 655
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 656
    aget v2, v0, v3

    int-to-double v2, v2

    goto :goto_0

    .line 658
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 660
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v2, v1, [D

    if-eqz v2, :cond_7

    .line 661
    check-cast v1, [D

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [D

    .line 662
    .local v0, "array":[D
    array-length v2, v0

    if-ne v2, v4, :cond_6

    .line 663
    aget-wide v2, v0, v3

    goto :goto_0

    .line 665
    :cond_6
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    .end local v0    # "array":[D
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v2, v1, [Landroid/media/ExifInterface$Rational;

    if-eqz v2, :cond_9

    .line 668
    check-cast v1, [Landroid/media/ExifInterface$Rational;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 669
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    array-length v2, v0

    if-ne v2, v4, :cond_8

    .line 670
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    goto :goto_0

    .line 672
    :cond_8
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_9
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a double value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 5
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 678
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    .line 679
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 680
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "NULL can\'t be converted to a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 682
    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 683
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 695
    :goto_0
    return v2

    .line 685
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_3

    .line 686
    check-cast v1, [J

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [J

    .line 687
    .local v0, "array":[J
    array-length v2, v0

    if-ne v2, v4, :cond_2

    .line 688
    aget-wide v2, v0, v3

    long-to-int v2, v2

    goto :goto_0

    .line 690
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 692
    .end local v0    # "array":[J
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, [I

    if-eqz v2, :cond_5

    .line 693
    check-cast v1, [I

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [I

    .line 694
    .local v0, "array":[I
    array-length v2, v0

    if-ne v2, v4, :cond_4

    .line 695
    aget v2, v0, v3

    goto :goto_0

    .line 697
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "There are more than one component"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    .end local v0    # "array":[I
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Couldn\'t find a integer value"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v4, 0x0

    .line 703
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    .line 704
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_0

    move-object v3, v4

    .line 754
    .end local v3    # "value":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 707
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 708
    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v5, v3, [J

    if-eqz v5, :cond_4

    .line 713
    check-cast v3, [J

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [J

    .line 714
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 715
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 716
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_2

    .line 717
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 720
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 722
    .end local v0    # "array":[J
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v5, v3, [I

    if-eqz v5, :cond_7

    .line 723
    check-cast v3, [I

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [I

    .line 724
    .local v0, "array":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 725
    aget v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 726
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_5

    .line 727
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 730
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 732
    .end local v0    # "array":[I
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v5, v3, [D

    if-eqz v5, :cond_a

    .line 733
    check-cast v3, [D

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [D

    .line 734
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_9

    .line 735
    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 736
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_8

    .line 737
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 740
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 742
    .end local v0    # "array":[D
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v5, v3, [Landroid/media/ExifInterface$Rational;

    if-eqz v5, :cond_d

    .line 743
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    .end local v3    # "value":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [Landroid/media/ExifInterface$Rational;

    .line 744
    .local v0, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v4, v0

    if-ge v1, v4, :cond_c

    .line 745
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 746
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    aget-object v4, v0, v1

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 748
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    if-eq v4, v5, :cond_b

    .line 749
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 752
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .end local v0    # "array":[Landroid/media/ExifInterface$Rational;
    .end local v1    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_d
    move-object v3, v4

    .line 754
    goto/16 :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 758
    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I
    invoke-static {}, Landroid/media/ExifInterface;->access$000()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/ExifInterface;->access$200()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
