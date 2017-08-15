.class Landroid/media/MediaScanner$ExifReader;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Landroid/media/MediaScanner$ExifInterfaceExt;


# direct methods
.method constructor <init>(Landroid/media/MediaScanner$ExifInterfaceExt;)V
    .locals 0
    .param p1, "iRef"    # Landroid/media/MediaScanner$ExifInterfaceExt;

    .prologue
    .line 3112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3113
    iput-object p1, p0, Landroid/media/MediaScanner$ExifReader;->mInterface:Landroid/media/MediaScanner$ExifInterfaceExt;

    .line 3114
    return-void
.end method


# virtual methods
.method read(Ljava/io/InputStream;)Landroid/media/MediaScanner$ExifDataExt;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaScanner$ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3117
    iget-object v5, p0, Landroid/media/MediaScanner$ExifReader;->mInterface:Landroid/media/MediaScanner$ExifInterfaceExt;

    invoke-static {p1, v5}, Landroid/media/MediaScanner$ExifParser;->parse(Ljava/io/InputStream;Landroid/media/MediaScanner$ExifInterfaceExt;)Landroid/media/MediaScanner$ExifParser;

    move-result-object v3

    .line 3118
    .local v3, "parser":Landroid/media/MediaScanner$ExifParser;
    new-instance v0, Landroid/media/MediaScanner$ExifDataExt;

    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/media/MediaScanner$ExifDataExt;-><init>(Ljava/nio/ByteOrder;)V

    .line 3119
    .local v0, "ExifDataExt":Landroid/media/MediaScanner$ExifDataExt;
    const/4 v4, 0x0

    .line 3121
    .local v4, "tag":Landroid/media/MediaScanner$ExifTag;
    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->next()I

    move-result v2

    .line 3122
    .local v2, "event":I
    :goto_0
    const/4 v5, 0x5

    if-eq v2, v5, :cond_4

    .line 3123
    packed-switch v2, :pswitch_data_0

    .line 3159
    :goto_1
    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->next()I

    move-result v2

    goto :goto_0

    .line 3125
    :pswitch_0
    new-instance v5, Landroid/media/MediaScanner$IfdData;

    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->getCurrentIfd()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/media/MediaScanner$IfdData;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/media/MediaScanner$ExifDataExt;->addIfdData(Landroid/media/MediaScanner$IfdData;)V

    goto :goto_1

    .line 3128
    :pswitch_1
    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->getTag()Landroid/media/MediaScanner$ExifTag;

    move-result-object v4

    .line 3129
    invoke-virtual {v4}, Landroid/media/MediaScanner$ExifTag;->hasValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3130
    invoke-virtual {v3, v4}, Landroid/media/MediaScanner$ExifParser;->registerForTagValue(Landroid/media/MediaScanner$ExifTag;)V

    goto :goto_1

    .line 3132
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaScanner$ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/media/MediaScanner$ExifDataExt;->getIfdData(I)Landroid/media/MediaScanner$IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/MediaScanner$IfdData;->setTag(Landroid/media/MediaScanner$ExifTag;)Landroid/media/MediaScanner$ExifTag;

    goto :goto_1

    .line 3136
    :pswitch_2
    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->getTag()Landroid/media/MediaScanner$ExifTag;

    move-result-object v4

    .line 3137
    invoke-virtual {v4}, Landroid/media/MediaScanner$ExifTag;->getDataType()S

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 3138
    invoke-virtual {v3, v4}, Landroid/media/MediaScanner$ExifParser;->readFullTagValue(Landroid/media/MediaScanner$ExifTag;)V

    .line 3140
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaScanner$ExifTag;->getIfd()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/media/MediaScanner$ExifDataExt;->getIfdData(I)Landroid/media/MediaScanner$IfdData;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/media/MediaScanner$IfdData;->setTag(Landroid/media/MediaScanner$ExifTag;)Landroid/media/MediaScanner$ExifTag;

    goto :goto_1

    .line 3143
    :pswitch_3
    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->getCompressedImageSize()I

    move-result v5

    new-array v1, v5, [B

    .line 3144
    .local v1, "buf":[B
    array-length v5, v1

    invoke-virtual {v3, v1}, Landroid/media/MediaScanner$ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 3145
    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$ExifDataExt;->setCompressedThumbnail([B)V

    goto :goto_1

    .line 3147
    :cond_2
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the compressed thumbnail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3151
    .end local v1    # "buf":[B
    :pswitch_4
    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->getStripSize()I

    move-result v5

    new-array v1, v5, [B

    .line 3152
    .restart local v1    # "buf":[B
    array-length v5, v1

    invoke-virtual {v3, v1}, Landroid/media/MediaScanner$ExifParser;->read([B)I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 3153
    invoke-virtual {v3}, Landroid/media/MediaScanner$ExifParser;->getStripIndex()I

    move-result v5

    invoke-virtual {v0, v5, v1}, Landroid/media/MediaScanner$ExifDataExt;->setStripBytes(I[B)V

    goto :goto_1

    .line 3155
    :cond_3
    const-string v5, "ExifReader"

    const-string v6, "Failed to read the strip bytes"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3161
    .end local v1    # "buf":[B
    :cond_4
    return-object v0

    .line 3123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
