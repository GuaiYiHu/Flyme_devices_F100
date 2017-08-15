.class Landroid/media/MediaScanner$ConshotExif;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConshotExif"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConshotInfo(Ljava/io/InputStream;)Landroid/media/MediaScanner$ConshotInfo;
    .locals 10
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 2759
    new-instance v0, Landroid/media/MediaScanner$ConshotInfo;

    invoke-direct {v0}, Landroid/media/MediaScanner$ConshotInfo;-><init>()V

    .line 2760
    .local v0, "conshotInfo":Landroid/media/MediaScanner$ConshotInfo;
    new-instance v2, Landroid/media/MediaScanner$ExifInterfaceExt;

    invoke-direct {v2}, Landroid/media/MediaScanner$ExifInterfaceExt;-><init>()V

    .line 2762
    .local v2, "exifInterface":Landroid/media/MediaScanner$ExifInterfaceExt;
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/MediaScanner$ExifInterfaceExt;->readExif(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2767
    sget v7, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GROUP_ID:I

    invoke-virtual {v2, v7}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagLongValue(I)Ljava/lang/Long;

    move-result-object v5

    .line 2768
    .local v5, "groupId":Ljava/lang/Long;
    if-eqz v5, :cond_0

    .line 2769
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/media/MediaScanner$ConshotInfo;->groupId:J

    .line 2772
    :cond_0
    sget v7, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_GROUP_INDEX:I

    invoke-virtual {v2, v7}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2773
    .local v6, "index":Ljava/lang/Integer;
    if-eqz v6, :cond_1

    .line 2774
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v0, Landroid/media/MediaScanner$ConshotInfo;->groupIndex:I

    .line 2777
    :cond_1
    sget v7, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_FOCUS_VALUE_HIGH:I

    invoke-virtual {v2, v7}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagLongValue(I)Ljava/lang/Long;

    move-result-object v3

    .line 2778
    .local v3, "focusHigh":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 2779
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/media/MediaScanner$ConshotInfo;->focusValueHigh:J

    .line 2782
    :cond_2
    sget v7, Landroid/media/MediaScanner$ExifInterfaceExt;->TAG_FOCUS_VALUE_LOW:I

    invoke-virtual {v2, v7}, Landroid/media/MediaScanner$ExifInterfaceExt;->getTagLongValue(I)Ljava/lang/Long;

    move-result-object v4

    .line 2783
    .local v4, "focusLow":Ljava/lang/Long;
    if-eqz v4, :cond_3

    .line 2784
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Landroid/media/MediaScanner$ConshotInfo;->focusValueLow:J

    .line 2787
    .end local v3    # "focusHigh":Ljava/lang/Long;
    .end local v4    # "focusLow":Ljava/lang/Long;
    .end local v5    # "groupId":Ljava/lang/Long;
    .end local v6    # "index":Ljava/lang/Integer;
    :cond_3
    :goto_0
    return-object v0

    .line 2763
    :catch_0
    move-exception v1

    .line 2764
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method
