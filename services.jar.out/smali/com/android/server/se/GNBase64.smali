.class public final Lcom/android/server/se/GNBase64;
.super Ljava/lang/Object;
.source "GNBase64.java"


# static fields
.field private static final CA:[C

.field private static final IA:[I

.field private static final devLineSep:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 9
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/android/server/se/GNBase64;->CA:[C

    .line 10
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/se/GNBase64;->IA:[I

    .line 13
    sget-object v2, Lcom/android/server/se/GNBase64;->IA:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lcom/android/server/se/GNBase64;->CA:[C

    array-length v1, v2

    .local v1, "iS":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 15
    sget-object v2, Lcom/android/server/se/GNBase64;->IA:[I

    sget-object v3, Lcom/android/server/se/GNBase64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Lcom/android/server/se/GNBase64;->IA:[I

    const/16 v3, 0x3d

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(Ljava/lang/String;)[B
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 84
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 85
    .local v10, "sLen":I
    :goto_0
    if-nez v10, :cond_2

    .line 86
    new-array v3, v12, [B

    .line 135
    :cond_0
    :goto_1
    return-object v3

    .end local v10    # "sLen":I
    :cond_1
    move v10, v12

    .line 84
    goto :goto_0

    .line 91
    .restart local v10    # "sLen":I
    :cond_2
    const/4 v11, 0x0

    .line 94
    .local v11, "sepCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v10, :cond_4

    .line 97
    sget-object v12, Lcom/android/server/se/GNBase64;->IA:[I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 98
    add-int/lit8 v11, v11, 0x1

    .line 94
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 103
    :cond_4
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_5

    .line 104
    const/4 v3, 0x0

    goto :goto_1

    .line 107
    :cond_5
    const/4 v7, 0x0

    .line 108
    .local v7, "pad":I
    move v4, v10

    :cond_6
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_7

    sget-object v12, Lcom/android/server/se/GNBase64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gtz v12, :cond_7

    .line 109
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_6

    .line 110
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 112
    :cond_7
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 113
    .local v6, "len":I
    new-array v3, v6, [B

    .line 115
    .local v3, "dArr":[B
    const/4 v8, 0x0

    .local v8, "s":I
    const/4 v1, 0x0

    .local v1, "d":I
    move v2, v1

    .end local v1    # "d":I
    .local v2, "d":I
    :goto_4
    if-ge v2, v6, :cond_0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .local v5, "j":I
    move v9, v8

    .end local v8    # "s":I
    .local v9, "s":I
    :goto_5
    const/4 v12, 0x4

    if-ge v5, v12, :cond_9

    .line 120
    sget-object v12, Lcom/android/server/se/GNBase64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "s":I
    .restart local v8    # "s":I
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 121
    .local v0, "c":I
    if-ltz v0, :cond_8

    .line 122
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 118
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8    # "s":I
    .restart local v9    # "s":I
    goto :goto_5

    .line 124
    .end local v9    # "s":I
    .restart local v8    # "s":I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 128
    .end local v0    # "c":I
    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 129
    if-ge v1, v6, :cond_a

    .line 130
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 131
    if-ge v2, v6, :cond_b

    .line 132
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "d":I
    .restart local v1    # "d":I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_a
    :goto_7
    move v2, v1

    .end local v1    # "d":I
    .restart local v2    # "d":I
    move v8, v9

    .line 134
    .end local v9    # "s":I
    .restart local v8    # "s":I
    goto :goto_4

    .end local v8    # "s":I
    .restart local v9    # "s":I
    :cond_b
    move v1, v2

    .end local v2    # "d":I
    .restart local v1    # "d":I
    goto :goto_7
.end method

.method public final encodeToChar([BZ)[C
    .locals 16
    .param p1, "sArr"    # [B
    .param p2, "lineSep"    # Z

    .prologue
    .line 34
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v12, v0

    .line 36
    .local v12, "sLen":I
    :goto_0
    if-nez v12, :cond_2

    .line 37
    const/4 v13, 0x0

    new-array v5, v13, [C

    .line 78
    :cond_0
    :goto_1
    return-object v5

    .line 34
    .end local v12    # "sLen":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 39
    .restart local v12    # "sLen":I
    :cond_2
    div-int/lit8 v13, v12, 0x3

    mul-int/lit8 v7, v13, 0x3

    .line 40
    .local v7, "eLen":I
    add-int/lit8 v13, v12, -0x1

    div-int/lit8 v13, v13, 0x3

    add-int/lit8 v13, v13, 0x1

    shl-int/lit8 v1, v13, 0x2

    .line 41
    .local v1, "cCnt":I
    if-eqz p2, :cond_3

    add-int/lit8 v13, v1, -0x1

    div-int/lit8 v13, v13, 0x4c

    shl-int/lit8 v13, v13, 0x1

    :goto_2
    add-int v6, v1, v13

    .line 44
    .local v6, "dLen":I
    new-array v5, v6, [C

    .line 47
    .local v5, "dArr":[C
    const/4 v10, 0x0

    .local v10, "s":I
    const/4 v3, 0x0

    .local v3, "d":I
    const/4 v2, 0x0

    .local v2, "cc":I
    move v4, v3

    .end local v3    # "d":I
    .local v4, "d":I
    move v11, v10

    .end local v10    # "s":I
    .local v11, "s":I
    :goto_3
    if-ge v11, v7, :cond_4

    .line 50
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "s":I
    .restart local v10    # "s":I
    aget-byte v13, p1, v11

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "s":I
    .restart local v11    # "s":I
    aget-byte v14, p1, v10

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "s":I
    .restart local v10    # "s":I
    aget-byte v14, p1, v11

    and-int/lit16 v14, v14, 0xff

    or-int v8, v13, v14

    .line 52
    .local v8, "i":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "d":I
    .restart local v3    # "d":I
    sget-object v13, Lcom/android/server/se/GNBase64;->CA:[C

    ushr-int/lit8 v14, v8, 0x12

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    aput-char v13, v5, v4

    .line 53
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "d":I
    .restart local v4    # "d":I
    sget-object v13, Lcom/android/server/se/GNBase64;->CA:[C

    ushr-int/lit8 v14, v8, 0xc

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    aput-char v13, v5, v3

    .line 54
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "d":I
    .restart local v3    # "d":I
    sget-object v13, Lcom/android/server/se/GNBase64;->CA:[C

    ushr-int/lit8 v14, v8, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    aput-char v13, v5, v4

    .line 55
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "d":I
    .restart local v4    # "d":I
    sget-object v13, Lcom/android/server/se/GNBase64;->CA:[C

    and-int/lit8 v14, v8, 0x3f

    aget-char v13, v13, v14

    aput-char v13, v5, v3

    .line 58
    if-eqz p2, :cond_7

    add-int/lit8 v2, v2, 0x1

    const/16 v13, 0x13

    if-ne v2, v13, :cond_7

    add-int/lit8 v13, v6, -0x2

    if-ge v4, v13, :cond_7

    .line 59
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "d":I
    .restart local v3    # "d":I
    const/16 v13, 0xd

    aput-char v13, v5, v4

    .line 60
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "d":I
    .restart local v4    # "d":I
    const/16 v13, 0xa

    aput-char v13, v5, v3

    .line 61
    const/4 v2, 0x0

    move v3, v4

    .end local v4    # "d":I
    .restart local v3    # "d":I
    :goto_4
    move v4, v3

    .end local v3    # "d":I
    .restart local v4    # "d":I
    move v11, v10

    .line 63
    .end local v10    # "s":I
    .restart local v11    # "s":I
    goto :goto_3

    .line 41
    .end local v2    # "cc":I
    .end local v4    # "d":I
    .end local v5    # "dArr":[C
    .end local v6    # "dLen":I
    .end local v8    # "i":I
    .end local v11    # "s":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 66
    .restart local v2    # "cc":I
    .restart local v4    # "d":I
    .restart local v5    # "dArr":[C
    .restart local v6    # "dLen":I
    .restart local v11    # "s":I
    :cond_4
    sub-int v9, v12, v7

    .line 67
    .local v9, "left":I
    if-lez v9, :cond_0

    .line 69
    aget-byte v13, p1, v7

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v14, v13, 0xa

    const/4 v13, 0x2

    if-ne v9, v13, :cond_5

    add-int/lit8 v13, v12, -0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x2

    :goto_5
    or-int v8, v14, v13

    .line 73
    .restart local v8    # "i":I
    add-int/lit8 v13, v6, -0x4

    sget-object v14, Lcom/android/server/se/GNBase64;->CA:[C

    shr-int/lit8 v15, v8, 0xc

    aget-char v14, v14, v15

    aput-char v14, v5, v13

    .line 74
    add-int/lit8 v13, v6, -0x3

    sget-object v14, Lcom/android/server/se/GNBase64;->CA:[C

    ushr-int/lit8 v15, v8, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-char v14, v14, v15

    aput-char v14, v5, v13

    .line 75
    add-int/lit8 v14, v6, -0x2

    const/4 v13, 0x2

    if-ne v9, v13, :cond_6

    sget-object v13, Lcom/android/server/se/GNBase64;->CA:[C

    and-int/lit8 v15, v8, 0x3f

    aget-char v13, v13, v15

    :goto_6
    aput-char v13, v5, v14

    .line 76
    add-int/lit8 v13, v6, -0x1

    const/16 v14, 0x3d

    aput-char v14, v5, v13

    goto/16 :goto_1

    .line 69
    .end local v8    # "i":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 75
    .restart local v8    # "i":I
    :cond_6
    const/16 v13, 0x3d

    goto :goto_6

    .end local v9    # "left":I
    .end local v11    # "s":I
    .restart local v10    # "s":I
    :cond_7
    move v3, v4

    .end local v4    # "d":I
    .restart local v3    # "d":I
    goto :goto_4
.end method

.method public final encodeToString([B)Ljava/lang/String;
    .locals 2
    .param p1, "sArr"    # [B

    .prologue
    .line 29
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/se/GNBase64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final encodeToString([BZ)Ljava/lang/String;
    .locals 2
    .param p1, "sArr"    # [B
    .param p2, "lineSep"    # Z

    .prologue
    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/se/GNBase64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
