.class Landroid/media/MediaScanner$ExifDataExt;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifDataExt"
.end annotation


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Landroid/media/MediaScanner$IfdData;

.field private final mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 3820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3815
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/media/MediaScanner$IfdData;

    iput-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    .line 3817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    .line 3821
    iput-object p1, p0, Landroid/media/MediaScanner$ExifDataExt;->mByteOrder:Ljava/nio/ByteOrder;

    .line 3822
    return-void
.end method

.method private addTag(Landroid/media/MediaScanner$ExifTag;I)Landroid/media/MediaScanner$ExifTag;
    .locals 2
    .param p1, "tag"    # Landroid/media/MediaScanner$ExifTag;
    .param p2, "ifdId"    # I

    .prologue
    .line 3897
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/media/MediaScanner$ExifTag;->isValidIfd(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3898
    invoke-direct {p0, p2}, Landroid/media/MediaScanner$ExifDataExt;->getOrCreateIfdData(I)Landroid/media/MediaScanner$IfdData;

    move-result-object v0

    .line 3899
    .local v0, "ifdData":Landroid/media/MediaScanner$IfdData;
    invoke-virtual {v0, p1}, Landroid/media/MediaScanner$IfdData;->setTag(Landroid/media/MediaScanner$ExifTag;)Landroid/media/MediaScanner$ExifTag;

    move-result-object v1

    .line 3901
    .end local v0    # "ifdData":Landroid/media/MediaScanner$IfdData;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getOrCreateIfdData(I)Landroid/media/MediaScanner$IfdData;
    .locals 2
    .param p1, "ifdId"    # I

    .prologue
    .line 3875
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    aget-object v0, v1, p1

    .line 3876
    .local v0, "ifdData":Landroid/media/MediaScanner$IfdData;
    if-nez v0, :cond_0

    .line 3877
    new-instance v0, Landroid/media/MediaScanner$IfdData;

    .end local v0    # "ifdData":Landroid/media/MediaScanner$IfdData;
    invoke-direct {v0, p1}, Landroid/media/MediaScanner$IfdData;-><init>(I)V

    .line 3878
    .restart local v0    # "ifdData":Landroid/media/MediaScanner$IfdData;
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    aput-object v0, v1, p1

    .line 3880
    :cond_0
    return-object v0
.end method


# virtual methods
.method addIfdData(Landroid/media/MediaScanner$IfdData;)V
    .locals 2
    .param p1, "data"    # Landroid/media/MediaScanner$IfdData;

    .prologue
    .line 3871
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    invoke-virtual {p1}, Landroid/media/MediaScanner$IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    .line 3872
    return-void
.end method

.method protected addTag(Landroid/media/MediaScanner$ExifTag;)Landroid/media/MediaScanner$ExifTag;
    .locals 2
    .param p1, "tag"    # Landroid/media/MediaScanner$ExifTag;

    .prologue
    .line 3889
    if-eqz p1, :cond_0

    .line 3890
    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getIfd()I

    move-result v0

    .line 3891
    .local v0, "ifd":I
    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner$ExifDataExt;->addTag(Landroid/media/MediaScanner$ExifTag;I)Landroid/media/MediaScanner$ExifTag;

    move-result-object v1

    .line 3893
    .end local v0    # "ifd":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    .prologue
    .line 3905
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mThumbnail:[B

    .line 3906
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3907
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3952
    if-ne p0, p1, :cond_0

    move v4, v6

    .line 3978
    :goto_0
    return v4

    .line 3955
    :cond_0
    if-nez p1, :cond_1

    move v4, v7

    .line 3956
    goto :goto_0

    .line 3958
    :cond_1
    instance-of v4, p1, Landroid/media/MediaScanner$ExifDataExt;

    if-eqz v4, :cond_8

    move-object v0, p1

    .line 3959
    check-cast v0, Landroid/media/MediaScanner$ExifDataExt;

    .line 3960
    .local v0, "data":Landroid/media/MediaScanner$ExifDataExt;
    iget-object v4, v0, Landroid/media/MediaScanner$ExifDataExt;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v5, p0, Landroid/media/MediaScanner$ExifDataExt;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Landroid/media/MediaScanner$ExifDataExt;->mThumbnail:[B

    iget-object v5, p0, Landroid/media/MediaScanner$ExifDataExt;->mThumbnail:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move v4, v7

    .line 3962
    goto :goto_0

    .line 3964
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 3965
    iget-object v4, v0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v7

    .line 3966
    goto :goto_0

    .line 3964
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3969
    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    .line 3970
    invoke-virtual {v0, v1}, Landroid/media/MediaScanner$ExifDataExt;->getIfdData(I)Landroid/media/MediaScanner$IfdData;

    move-result-object v2

    .line 3971
    .local v2, "ifd1":Landroid/media/MediaScanner$IfdData;
    invoke-virtual {p0, v1}, Landroid/media/MediaScanner$ExifDataExt;->getIfdData(I)Landroid/media/MediaScanner$IfdData;

    move-result-object v3

    .line 3972
    .local v3, "ifd2":Landroid/media/MediaScanner$IfdData;
    if-eq v2, v3, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroid/media/MediaScanner$IfdData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v7

    .line 3973
    goto :goto_0

    .line 3969
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "ifd1":Landroid/media/MediaScanner$IfdData;
    .end local v3    # "ifd2":Landroid/media/MediaScanner$IfdData;
    :cond_7
    move v4, v6

    .line 3976
    goto :goto_0

    .end local v0    # "data":Landroid/media/MediaScanner$ExifDataExt;
    .end local v1    # "i":I
    :cond_8
    move v4, v7

    .line 3978
    goto :goto_0
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaScanner$ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3918
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3919
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$ExifTag;>;"
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    .local v0, "arr$":[Landroid/media/MediaScanner$IfdData;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 3920
    .local v1, "d":Landroid/media/MediaScanner$IfdData;
    if-eqz v1, :cond_0

    .line 3921
    invoke-virtual {v1}, Landroid/media/MediaScanner$IfdData;->getAllTags()[Landroid/media/MediaScanner$ExifTag;

    move-result-object v5

    .line 3922
    .local v5, "tags":[Landroid/media/MediaScanner$ExifTag;
    if-eqz v5, :cond_0

    .line 3923
    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3919
    .end local v5    # "tags":[Landroid/media/MediaScanner$ExifTag;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3927
    .end local v1    # "d":Landroid/media/MediaScanner$IfdData;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 3928
    const/4 v4, 0x0

    .line 3930
    .end local v4    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$ExifTag;>;"
    :cond_2
    return-object v4
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 5
    .param p1, "ifd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaScanner$ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3934
    iget-object v4, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    aget-object v0, v4, p1

    .line 3935
    .local v0, "d":Landroid/media/MediaScanner$IfdData;
    if-nez v0, :cond_1

    move-object v1, v3

    .line 3947
    :cond_0
    :goto_0
    return-object v1

    .line 3938
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaScanner$IfdData;->getAllTags()[Landroid/media/MediaScanner$ExifTag;

    move-result-object v2

    .line 3939
    .local v2, "tags":[Landroid/media/MediaScanner$ExifTag;
    if-nez v2, :cond_2

    move-object v1, v3

    .line 3940
    goto :goto_0

    .line 3942
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3943
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaScanner$ExifTag;>;"
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3944
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 3945
    goto :goto_0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 3860
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .prologue
    .line 3825
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mThumbnail:[B

    return-object v0
.end method

.method getIfdData(I)Landroid/media/MediaScanner$IfdData;
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 3864
    invoke-static {p1}, Landroid/media/MediaScanner$ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3865
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    aget-object v0, v0, p1

    .line 3867
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getStrip(I)[B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3852
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected getStripCount()I
    .locals 1

    .prologue
    .line 3848
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getTag(SI)Landroid/media/MediaScanner$ExifTag;
    .locals 2
    .param p1, "tag"    # S
    .param p2, "ifd"    # I

    .prologue
    .line 3884
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    aget-object v0, v1, p2

    .line 3885
    .local v0, "ifdData":Landroid/media/MediaScanner$IfdData;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaScanner$IfdData;->getTag(S)Landroid/media/MediaScanner$ExifTag;

    move-result-object v1

    goto :goto_0
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .prologue
    .line 3833
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .prologue
    .line 3856
    iget-object v0, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeTag(SI)V
    .locals 2
    .param p1, "tagId"    # S
    .param p2, "ifdId"    # I

    .prologue
    .line 3910
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mIfdDatas:[Landroid/media/MediaScanner$IfdData;

    aget-object v0, v1, p2

    .line 3911
    .local v0, "ifdData":Landroid/media/MediaScanner$IfdData;
    if-nez v0, :cond_0

    .line 3915
    :goto_0
    return-void

    .line 3914
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaScanner$IfdData;->removeTag(S)V

    goto :goto_0
.end method

.method setCompressedThumbnail([B)V
    .locals 0
    .param p1, "thumbnail"    # [B

    .prologue
    .line 3829
    iput-object p1, p0, Landroid/media/MediaScanner$ExifDataExt;->mThumbnail:[B

    .line 3830
    return-void
.end method

.method setStripBytes(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "strip"    # [B

    .prologue
    .line 3837
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3838
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3845
    :goto_0
    return-void

    .line 3840
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 3841
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3840
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3843
    :cond_1
    iget-object v1, p0, Landroid/media/MediaScanner$ExifDataExt;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
