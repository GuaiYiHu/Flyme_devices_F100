.class Landroid/media/MediaScanner$IfdData;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IfdData"
.end annotation


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Landroid/media/MediaScanner$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4569
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/MediaScanner$IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "ifdId"    # I

    .prologue
    .line 4577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    .line 4575
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaScanner$IfdData;->mOffsetToNextIfd:I

    .line 4578
    iput p1, p0, Landroid/media/MediaScanner$IfdData;->mIfdId:I

    .line 4579
    return-void
.end method

.method static getIfds()[I
    .locals 1

    .prologue
    .line 4582
    sget-object v0, Landroid/media/MediaScanner$IfdData;->sIfds:[I

    return-object v0
.end method

.method private getTagCount()I
    .locals 1

    .prologue
    .line 4607
    iget-object v0, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4620
    if-ne p0, p1, :cond_1

    .line 4642
    :cond_0
    :goto_0
    return v7

    .line 4623
    :cond_1
    if-nez p1, :cond_2

    move v7, v8

    .line 4624
    goto :goto_0

    .line 4626
    :cond_2
    instance-of v9, p1, Landroid/media/MediaScanner$IfdData;

    if-eqz v9, :cond_5

    move-object v1, p1

    .line 4627
    check-cast v1, Landroid/media/MediaScanner$IfdData;

    .line 4628
    .local v1, "data":Landroid/media/MediaScanner$IfdData;
    invoke-virtual {v1}, Landroid/media/MediaScanner$IfdData;->getId()I

    move-result v9

    iget v10, p0, Landroid/media/MediaScanner$IfdData;->mIfdId:I

    if-ne v9, v10, :cond_5

    invoke-direct {v1}, Landroid/media/MediaScanner$IfdData;->getTagCount()I

    move-result v9

    invoke-direct {p0}, Landroid/media/MediaScanner$IfdData;->getTagCount()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 4629
    invoke-virtual {v1}, Landroid/media/MediaScanner$IfdData;->getAllTags()[Landroid/media/MediaScanner$ExifTag;

    move-result-object v6

    .line 4630
    .local v6, "tags":[Landroid/media/MediaScanner$ExifTag;
    move-object v0, v6

    .local v0, "arr$":[Landroid/media/MediaScanner$ExifTag;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 4631
    .local v4, "tag":Landroid/media/MediaScanner$ExifTag;
    invoke-virtual {v4}, Landroid/media/MediaScanner$ExifTag;->getTagId()S

    move-result v9

    invoke-static {v9}, Landroid/media/MediaScanner$ExifInterfaceExt;->isOffsetTag(S)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 4630
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4634
    :cond_4
    iget-object v9, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/media/MediaScanner$ExifTag;->getTagId()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$ExifTag;

    .line 4635
    .local v5, "tag2":Landroid/media/MediaScanner$ExifTag;
    invoke-virtual {v4, v5}, Landroid/media/MediaScanner$ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v7, v8

    .line 4636
    goto :goto_0

    .end local v0    # "arr$":[Landroid/media/MediaScanner$ExifTag;
    .end local v1    # "data":Landroid/media/MediaScanner$IfdData;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "tag":Landroid/media/MediaScanner$ExifTag;
    .end local v5    # "tag2":Landroid/media/MediaScanner$ExifTag;
    .end local v6    # "tags":[Landroid/media/MediaScanner$ExifTag;
    :cond_5
    move v7, v8

    .line 4642
    goto :goto_0
.end method

.method getAllTags()[Landroid/media/MediaScanner$ExifTag;
    .locals 2

    .prologue
    .line 4586
    iget-object v0, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/MediaScanner$ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaScanner$ExifTag;

    return-object v0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 4590
    iget v0, p0, Landroid/media/MediaScanner$IfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 4611
    iget v0, p0, Landroid/media/MediaScanner$IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method getTag(S)Landroid/media/MediaScanner$ExifTag;
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 4594
    iget-object v0, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$ExifTag;

    return-object v0
.end method

.method removeTag(S)V
    .locals 2
    .param p1, "tagId"    # S

    .prologue
    .line 4603
    iget-object v0, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4604
    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 4615
    iput p1, p0, Landroid/media/MediaScanner$IfdData;->mOffsetToNextIfd:I

    .line 4616
    return-void
.end method

.method setTag(Landroid/media/MediaScanner$ExifTag;)Landroid/media/MediaScanner$ExifTag;
    .locals 2
    .param p1, "tag"    # Landroid/media/MediaScanner$ExifTag;

    .prologue
    .line 4598
    iget v0, p0, Landroid/media/MediaScanner$IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Landroid/media/MediaScanner$ExifTag;->setIfd(I)V

    .line 4599
    iget-object v0, p0, Landroid/media/MediaScanner$IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaScanner$ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$ExifTag;

    return-object v0
.end method
