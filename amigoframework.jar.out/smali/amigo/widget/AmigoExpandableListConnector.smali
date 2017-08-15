.class Lamigo/widget/AmigoExpandableListConnector;
.super Landroid/widget/BaseAdapter;
.source "AmigoExpandableListConnector.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;,
        Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;,
        Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;
    }
.end annotation


# static fields
.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64


# instance fields
.field private final FRAME_LIST_BACKGROUND_BOTTOM:I

.field private final FRAME_LIST_BACKGROUND_FULL:I

.field private final FRAME_LIST_BACKGROUND_MIDDLE:I

.field private final FRAME_LIST_BACKGROUND_NULL:I

.field private final FRAME_LIST_BACKGROUND_TOP:I

.field private final FRAME_LIST_BACKGROUND_TOTAL:I

.field mAnimatorEnabled:Z

.field private mChildItemHeight:I

.field private mChildViewBackgroudRes:[I

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mExpGroupMetadataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

.field private mGroupPos:I

.field public mHeight:[I

.field private mIsExpandGroup:Z

.field private mItemHeight:I

.field private mMaxExpGroupCount:I

.field private mTotalExpChildrenCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 1186
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    const v0, 0x7fffffff

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mMaxExpGroupCount:I

    .line 91
    new-instance v0, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;-><init>(Lamigo/widget/AmigoExpandableListConnector;)V

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 1174
    iput-boolean v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mIsExpandGroup:Z

    .line 1176
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_NULL:I

    .line 1177
    const/4 v0, 0x1

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_FULL:I

    .line 1178
    const/4 v0, 0x2

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_TOP:I

    .line 1179
    const/4 v0, 0x3

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_MIDDLE:I

    .line 1180
    const/4 v0, 0x4

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_BOTTOM:I

    .line 1181
    const/4 v0, 0x5

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_TOTAL:I

    .line 1200
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mGroupPos:I

    .line 1201
    iput-boolean v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mAnimatorEnabled:Z

    .line 1202
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    .line 1203
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mHeight:[I

    .line 1207
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mItemHeight:I

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 1189
    invoke-virtual {p0, p2}, Lamigo/widget/AmigoExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1191
    invoke-direct {p0, p1}, Lamigo/widget/AmigoExpandableListConnector;->getFrameListBackground(Landroid/content/Context;)V

    .line 1194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    .line 1197
    return-void

    .line 1203
    nop

    :array_0
    .array-data 4
        0xd
        0x12
        0x1c
        0x2b
        0x3f
        0x58
        0x76
    .end array-data
.end method

.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 88
    const v0, 0x7fffffff

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mMaxExpGroupCount:I

    .line 91
    new-instance v0, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoExpandableListConnector$MyDataSetObserver;-><init>(Lamigo/widget/AmigoExpandableListConnector;)V

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 1174
    iput-boolean v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mIsExpandGroup:Z

    .line 1176
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_NULL:I

    .line 1177
    const/4 v0, 0x1

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_FULL:I

    .line 1178
    const/4 v0, 0x2

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_TOP:I

    .line 1179
    const/4 v0, 0x3

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_MIDDLE:I

    .line 1180
    const/4 v0, 0x4

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_BOTTOM:I

    .line 1181
    const/4 v0, 0x5

    iput v0, p0, Lamigo/widget/AmigoExpandableListConnector;->FRAME_LIST_BACKGROUND_TOTAL:I

    .line 1200
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mGroupPos:I

    .line 1201
    iput-boolean v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mAnimatorEnabled:Z

    .line 1202
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    .line 1203
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mHeight:[I

    .line 1207
    iput v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mItemHeight:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector;->setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 100
    return-void

    .line 1203
    :array_0
    .array-data 4
        0xd
        0x12
        0x1c
        0x2b
        0x3f
        0x58
        0x76
    .end array-data
.end method

.method static synthetic access$000(Lamigo/widget/AmigoExpandableListConnector;ZZ)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoExpandableListConnector;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lamigo/widget/AmigoExpandableListConnector;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoExpandableListConnector;

    .prologue
    .line 71
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mItemHeight:I

    return v0
.end method

.method static synthetic access$200(Lamigo/widget/AmigoExpandableListConnector;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoExpandableListConnector;

    .prologue
    .line 71
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    return v0
.end method

.method private createExpandAnimaForView(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    const/4 v4, 0x1

    .line 1210
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1211
    .local v3, "ly":Landroid/view/ViewGroup$LayoutParams;
    const-string v5, "AmigoExpandListConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mChildItemHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    if-nez v3, :cond_0

    .line 1213
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3    # "ly":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1217
    .restart local v3    # "ly":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    move-object v2, v3

    .line 1218
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mItemHeight:I

    .line 1220
    const-string v5, "AmigoExpandListConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open  pos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const/4 v5, 0x7

    if-ge p2, v5, :cond_1

    iget v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    iget-object v6, p0, Lamigo/widget/AmigoExpandableListConnector;->mHeight:[I

    aget v6, v6, p2

    sub-int v1, v5, v6

    .line 1222
    .local v1, "height":I
    :goto_0
    const-string v5, "AmigoExpandListConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "heght = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    iget v6, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    aput v6, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1224
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1225
    new-instance v4, Lamigo/widget/AmigoExpandableListConnector$1;

    invoke-direct {v4, p0, p1, v2}, Lamigo/widget/AmigoExpandableListConnector$1;-><init>(Lamigo/widget/AmigoExpandableListConnector;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1249
    new-instance v4, Lamigo/widget/AmigoExpandableListConnector$2;

    invoke-direct {v4, p0, v2, p1}, Lamigo/widget/AmigoExpandableListConnector$2;-><init>(Lamigo/widget/AmigoExpandableListConnector;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1265
    return-object v0

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "height":I
    :cond_1
    move v1, v4

    .line 1221
    goto :goto_0
.end method

.method private getFrameListBackground(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1297
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    .line 1298
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    aput v2, v1, v2

    .line 1299
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1301
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x901001d

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1303
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    aput v2, v1, v4

    .line 1304
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x901001e

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1306
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    const/4 v2, 0x2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    aput v3, v1, v2

    .line 1307
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x901001f

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1309
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    const/4 v2, 0x3

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    aput v3, v1, v2

    .line 1310
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x9010020

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1312
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    const/4 v2, 0x4

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    aput v3, v1, v2

    .line 1313
    return-void
.end method

.method private isModified([[I)Z
    .locals 10
    .param p1, "initStates"    # [[I

    .prologue
    .line 587
    const/4 v4, 0x0

    .line 588
    .local v4, "isModified":Z
    move-object v0, p1

    .local v0, "arr$":[[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[[I
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v5, v0, v3

    .line 589
    .local v5, "item":[I
    move-object v1, v5

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v7, :cond_0

    aget v8, v1, v2

    .line 591
    .local v8, "state":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 592
    const/4 v4, 0x1

    .line 588
    .end local v8    # "state":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 589
    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    .restart local v8    # "state":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 597
    .end local v1    # "arr$":[I
    .end local v2    # "i$":I
    .end local v5    # "item":[I
    .end local v7    # "len$":I
    .end local v8    # "state":I
    .restart local v3    # "i$":I
    :cond_2
    return v4
.end method

.method private refreshExpGroupMetadataList(ZZ)V
    .locals 13
    .param p1, "forceChildrenCountRefresh"    # Z
    .param p2, "syncGroupPositions"    # Z

    .prologue
    const/4 v12, -0x1

    .line 658
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 659
    .local v2, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 660
    .local v3, "egmlSize":I
    const/4 v0, 0x0

    .line 663
    .local v0, "curFlPos":I
    const/4 v9, 0x0

    iput v9, p0, Lamigo/widget/AmigoExpandableListConnector;->mTotalExpChildrenCount:I

    .line 665
    if-eqz p2, :cond_3

    .line 667
    const/4 v8, 0x0

    .line 669
    .local v8, "positionsChanged":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 670
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 671
    .local v1, "curGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    iget-wide v10, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gId:J

    iget v9, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v10, v11, v9}, Lamigo/widget/AmigoExpandableListConnector;->findGroupPosition(JI)I

    move-result v7

    .line 672
    .local v7, "newGPos":I
    iget v9, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    if-eq v7, v9, :cond_1

    .line 673
    if-ne v7, v12, :cond_0

    .line 675
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 676
    add-int/lit8 v3, v3, -0x1

    .line 679
    :cond_0
    iput v7, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    .line 680
    if-nez v8, :cond_1

    const/4 v8, 0x1

    .line 669
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 684
    .end local v1    # "curGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    .end local v7    # "newGPos":I
    :cond_2
    if-eqz v8, :cond_3

    .line 686
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 691
    .end local v5    # "i":I
    .end local v8    # "positionsChanged":Z
    :cond_3
    const/4 v6, 0x0

    .line 692
    .local v6, "lastGPos":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 694
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 700
    .restart local v1    # "curGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    iget v9, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-eq v9, v12, :cond_4

    if-eqz p1, :cond_5

    .line 701
    :cond_4
    iget-object v9, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v10, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v9, v10}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 710
    .local v4, "gChildrenCount":I
    :goto_2
    iget v9, p0, Lamigo/widget/AmigoExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lamigo/widget/AmigoExpandableListConnector;->mTotalExpChildrenCount:I

    .line 717
    iget v9, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v9, v6

    add-int/2addr v0, v9

    .line 718
    iget v6, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    .line 721
    iput v0, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    .line 722
    add-int/2addr v0, v4

    .line 723
    iput v0, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 692
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 706
    .end local v4    # "gChildrenCount":I
    :cond_5
    iget v9, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget v10, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v4, v9, v10

    .restart local v4    # "gChildrenCount":I
    goto :goto_2

    .line 725
    .end local v1    # "curGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    .end local v4    # "gChildrenCount":I
    :cond_6
    return-void
.end method

.method private setChildViewBackground(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isLastChild"    # Z
    .param p3, "isFirstChild"    # Z

    .prologue
    .line 1285
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 1286
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1294
    :goto_0
    return-void

    .line 1287
    :cond_0
    if-eqz p3, :cond_1

    .line 1288
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1289
    :cond_1
    if-eqz p2, :cond_2

    .line 1290
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1292
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildViewBackgroudRes:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setTextColor(Landroid/widget/TextView;Z)V
    .locals 12
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "isExpanded"    # Z

    .prologue
    const/16 v11, -0x7000

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 542
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 543
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 544
    .local v1, "initColors":[I
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v2

    .line 546
    .local v2, "initStates":[[I
    if-eqz p2, :cond_2

    .line 547
    invoke-direct {p0, v2}, Lamigo/widget/AmigoExpandableListConnector;->isModified([[I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 550
    array-length v6, v2

    add-int/lit8 v6, v6, 0x2

    new-array v5, v6, [[I

    .line 551
    .local v5, "newStates":[[I
    array-length v6, v1

    add-int/lit8 v6, v6, 0x2

    new-array v4, v6, [I

    .line 553
    .local v4, "newColors":[I
    array-length v6, v2

    invoke-static {v2, v8, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    new-array v6, v8, [I

    aput-object v6, v5, v8

    .line 555
    new-array v6, v10, [I

    const/4 v7, -0x1

    aput v7, v6, v8

    aput-object v6, v5, v10

    .line 557
    array-length v6, v1

    invoke-static {v1, v8, v4, v9, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 558
    aput v11, v4, v8

    .line 559
    aput v11, v4, v10

    .line 561
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 562
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v6

    aput v6, v4, v8

    .line 565
    :cond_0
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 567
    .local v3, "newColorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 584
    .end local v3    # "newColorStateList":Landroid/content/res/ColorStateList;
    .end local v4    # "newColors":[I
    .end local v5    # "newStates":[[I
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    invoke-direct {p0, v2}, Lamigo/widget/AmigoExpandableListConnector;->isModified([[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 573
    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    new-array v5, v6, [[I

    .line 574
    .restart local v5    # "newStates":[[I
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    new-array v4, v6, [I

    .line 576
    .restart local v4    # "newColors":[I
    array-length v6, v5

    invoke-static {v2, v9, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    array-length v6, v4

    invoke-static {v1, v9, v4, v8, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 579
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 581
    .restart local v3    # "newColorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private setViewGroupTextColor(Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "isExpanded"    # Z

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 536
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 537
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lamigo/widget/AmigoExpandableListConnector;->setViewTextColor(Landroid/view/View;Z)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    return-void
.end method

.method private setViewTextColor(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isExpanded"    # Z

    .prologue
    .line 526
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 527
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lamigo/widget/AmigoExpandableListConnector;->setTextColor(Landroid/widget/TextView;Z)V

    .line 529
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 530
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoExpandableListConnector;->setViewGroupTextColor(Landroid/view/ViewGroup;Z)V

    .line 532
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method collapseGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    const/4 v4, -0x1

    .line 733
    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Lamigo/widget/AmigoExpandableListPosition;->obtain(IIII)Lamigo/widget/AmigoExpandableListPosition;

    move-result-object v0

    .line 735
    .local v0, "elGroupPos":Lamigo/widget/AmigoExpandableListPosition;
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListConnector;->getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 736
    .local v1, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListPosition;->recycle()V

    .line 737
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 741
    :goto_0
    return v2

    .line 739
    :cond_0
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoExpandableListConnector;->collapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 740
    .local v2, "retValue":Z
    invoke-virtual {v1}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method collapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z
    .locals 3
    .param p1, "posMetadata"    # Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v0, 0x0

    .line 754
    iget-object v1, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    if-nez v1, :cond_0

    .line 768
    :goto_0
    return v0

    .line 757
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget-object v2, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    invoke-direct {p0, v0, v0}, Lamigo/widget/AmigoExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 763
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListConnector;->notifyDataSetChanged()V

    .line 766
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    iget v1, v1, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->onGroupCollapsed(I)V

    .line 768
    const/4 v0, 0x1

    goto :goto_0
.end method

.method expandGroup(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    const/4 v4, -0x1

    .line 776
    const/4 v3, 0x2

    invoke-static {v3, p1, v4, v4}, Lamigo/widget/AmigoExpandableListPosition;->obtain(IIII)Lamigo/widget/AmigoExpandableListPosition;

    move-result-object v0

    .line 778
    .local v0, "elGroupPos":Lamigo/widget/AmigoExpandableListPosition;
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListConnector;->getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 779
    .local v1, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListPosition;->recycle()V

    .line 780
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoExpandableListConnector;->expandGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 781
    .local v2, "retValue":Z
    invoke-virtual {v1}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 782
    return v2
.end method

.method expandGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z
    .locals 9
    .param p1, "posMetadata"    # Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 790
    iget-object v4, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v4, v4, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    if-gez v4, :cond_0

    .line 792
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Need group"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 795
    :cond_0
    iget v4, p0, Lamigo/widget/AmigoExpandableListConnector;->mMaxExpGroupCount:I

    if-nez v4, :cond_2

    .line 834
    :cond_1
    :goto_0
    return v3

    .line 798
    :cond_2
    iget-object v4, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    if-nez v4, :cond_1

    .line 801
    iget-object v4, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mMaxExpGroupCount:I

    if-lt v4, v5, :cond_3

    .line 805
    iget-object v4, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 807
    .local v0, "collapsedGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 809
    .local v1, "collapsedIndex":I
    iget v4, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoExpandableListConnector;->collapseGroup(I)Z

    .line 812
    iget v4, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    if-le v4, v1, :cond_3

    .line 813
    iget v4, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    .line 817
    .end local v0    # "collapsedGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    .end local v1    # "collapsedIndex":I
    :cond_3
    iget-object v4, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v4, v4, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget-object v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v6, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v6, v6, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v6

    invoke-static {v8, v8, v4, v6, v7}, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    move-result-object v2

    .line 823
    .local v2, "expandedGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    iget-object v4, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    iget v5, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupInsertIndex:I

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 826
    invoke-direct {p0, v3, v3}, Lamigo/widget/AmigoExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    .line 829
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListConnector;->notifyDataSetChanged()V

    .line 832
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v2, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->onGroupExpanded(I)V

    .line 834
    const/4 v3, 0x1

    goto :goto_0
.end method

.method findGroupPosition(JI)I
    .locals 19
    .param p1, "groupIdToMatch"    # J
    .param p3, "seedGroupPosition"    # I

    .prologue
    .line 917
    move-object/from16 v0, p0

    iget-object v11, v0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v11}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v3

    .line 919
    .local v3, "count":I
    if-nez v3, :cond_0

    .line 920
    const/4 v11, -0x1

    .line 989
    :goto_0
    return v11

    .line 924
    :cond_0
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v11, p1, v14

    if-nez v11, :cond_1

    .line 925
    const/4 v11, -0x1

    goto :goto_0

    .line 929
    :cond_1
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 930
    add-int/lit8 v11, v3, -0x1

    move/from16 v0, p3

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 932
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x64

    add-long v4, v14, v16

    .line 937
    .local v4, "endTime":J
    move/from16 v6, p3

    .line 940
    .local v6, "first":I
    move/from16 v9, p3

    .line 943
    .local v9, "last":I
    const/4 v10, 0x0

    .line 953
    .local v10, "next":Z
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 954
    .local v2, "adapter":Landroid/widget/ExpandableListAdapter;
    if-nez v2, :cond_4

    .line 955
    const/4 v11, -0x1

    goto :goto_0

    .line 973
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v12, "rowId":J
    :cond_2
    if-nez v7, :cond_3

    if-eqz v10, :cond_9

    if-nez v8, :cond_9

    .line 975
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 976
    move/from16 p3, v9

    .line 978
    const/4 v10, 0x0

    .line 958
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v11, v14, v4

    if-gtz v11, :cond_6

    .line 959
    move/from16 v0, p3

    invoke-interface {v2, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v12

    .line 960
    .restart local v12    # "rowId":J
    cmp-long v11, v12, p1

    if-nez v11, :cond_5

    move/from16 v11, p3

    .line 962
    goto :goto_0

    .line 965
    :cond_5
    add-int/lit8 v11, v3, -0x1

    if-ne v9, v11, :cond_7

    const/4 v8, 0x1

    .line 966
    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 968
    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    .line 989
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_6
    const/4 v11, -0x1

    goto :goto_0

    .line 965
    .restart local v12    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 966
    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 979
    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v10, :cond_4

    if-nez v7, :cond_4

    .line 981
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 982
    move/from16 p3, v6

    .line 984
    const/4 v10, 0x1

    goto :goto_1
.end method

.method getAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    iget v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mTotalExpChildrenCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method getExpandedGroupMetadataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 867
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 868
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v1, v0, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 869
    check-cast v0, Landroid/widget/Filterable;

    .end local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 871
    :goto_0
    return-object v1

    .restart local v0    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    .locals 25
    .param p1, "pos"    # Lamigo/widget/AmigoExpandableListPosition;

    .prologue
    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 281
    .local v20, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 284
    .local v23, "numExpGroups":I
    const/4 v13, 0x0

    .line 285
    .local v13, "leftExpGroupIndex":I
    add-int/lit8 v19, v23, -0x1

    .line 286
    .local v19, "rightExpGroupIndex":I
    const/16 v22, 0x0

    .line 289
    .local v22, "midExpGroupIndex":I
    if-nez v23, :cond_9

    .line 295
    move-object/from16 v0, p1

    iget v2, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    move/from16 v7, v22

    .line 385
    .end local v22    # "midExpGroupIndex":I
    .local v7, "midExpGroupIndex":I
    :goto_0
    return-object v2

    .line 304
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v13, v0, :cond_5

    .line 305
    sub-int v2, v19, v13

    div-int/lit8 v2, v2, 0x2

    add-int v7, v2, v13

    .line 306
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 308
    .local v6, "midExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    move-object/from16 v0, p1

    iget v2, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget v3, v6, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    if-le v2, v3, :cond_1

    .line 312
    add-int/lit8 v13, v7, 0x1

    goto :goto_1

    .line 313
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget v3, v6, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v3, :cond_2

    .line 317
    add-int/lit8 v19, v7, -0x1

    goto :goto_1

    .line 318
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget v3, v6, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, v3, :cond_0

    .line 323
    move-object/from16 v0, p1

    iget v2, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 325
    iget v2, v6, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 327
    :cond_3
    move-object/from16 v0, p1

    iget v2, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 329
    iget v2, v6, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v4, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v5, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-static/range {v2 .. v7}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto :goto_0

    .line 333
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 342
    .end local v6    # "midExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 344
    const/4 v2, 0x0

    goto :goto_0

    .line 352
    :cond_6
    if-le v13, v7, :cond_7

    .line 363
    add-int/lit8 v2, v13, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 364
    .local v21, "leftExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v21

    iget v2, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move-object/from16 v0, p1

    iget v3, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget v4, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v3, v4

    add-int v8, v2, v3

    .line 368
    .local v8, "flPos":I
    move-object/from16 v0, p1

    iget v9, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v10, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget v11, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    const/4 v12, 0x0

    invoke-static/range {v8 .. v13}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 370
    .end local v8    # "flPos":I
    .end local v21    # "leftExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :cond_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_8

    .line 378
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 379
    .local v24, "rightExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    move-object/from16 v0, v24

    iget v2, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    move-object/from16 v0, v24

    iget v3, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, p1

    iget v4, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    sub-int/2addr v3, v4

    sub-int v8, v2, v3

    .line 382
    .restart local v8    # "flPos":I
    move-object/from16 v0, p1

    iget v15, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move-object/from16 v0, p1

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move v14, v8

    invoke-static/range {v14 .. v19}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    goto/16 :goto_0

    .line 385
    .end local v8    # "flPos":I
    .end local v24    # "rightExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v7    # "midExpGroupIndex":I
    .restart local v22    # "midExpGroupIndex":I
    :cond_9
    move/from16 v7, v22

    .end local v22    # "midExpGroupIndex":I
    .restart local v7    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "flatListPos"    # I

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 425
    .local v0, "posMetadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v2, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v2, v2, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 426
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v3, v3, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    .line 436
    .local v1, "retValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 438
    return-object v1

    .line 428
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v2, v2, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 429
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v3, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v3, v3, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget-object v4, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v4, v4, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-interface {v2, v3, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "retValue":Ljava/lang/Object;
    goto :goto_0

    .line 433
    .end local v1    # "retValue":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Flat list position is of unknown type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemId(I)J
    .locals 10
    .param p1, "flatListPos"    # I

    .prologue
    .line 442
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 443
    .local v4, "posMetadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v8, v8, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v5, v8}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v2

    .line 446
    .local v2, "groupId":J
    iget-object v5, v4, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v5, v5, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 447
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3}, Landroid/widget/ExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v6

    .line 457
    .local v6, "retValue":J
    :goto_0
    invoke-virtual {v4}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 459
    return-wide v6

    .line 448
    .end local v6    # "retValue":J
    :cond_0
    iget-object v5, v4, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v5, v5, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 449
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v8, v4, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v8, v8, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget-object v9, v4, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v9, v9, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-interface {v5, v8, v9}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 451
    .local v0, "childId":J
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v2, v3, v0, v1}, Landroid/widget/ExpandableListAdapter;->getCombinedChildId(JJ)J

    move-result-wide v6

    .line 452
    .restart local v6    # "retValue":J
    goto :goto_0

    .line 454
    .end local v0    # "childId":J
    .end local v6    # "retValue":J
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "Flat list position is of unknown type"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "flatListPos"    # I

    .prologue
    const/4 v6, 0x2

    .line 603
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 604
    .local v2, "metadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    .line 607
    .local v3, "pos":Lamigo/widget/AmigoExpandableListPosition;
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v5, v5, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v5, :cond_1

    .line 608
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 610
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    iget v5, v3, Lamigo/widget/AmigoExpandableListPosition;->type:I

    if-ne v5, v6, :cond_0

    .line 611
    iget v5, v3, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v0, v5}, Landroid/widget/HeterogeneousExpandableList;->getGroupType(I)I

    move-result v4

    .line 624
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .local v4, "retValue":I
    :goto_0
    invoke-virtual {v2}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 626
    return v4

    .line 613
    .end local v4    # "retValue":I
    .restart local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :cond_0
    iget v5, v3, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget v6, v3, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-interface {v0, v5, v6}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result v1

    .line 614
    .local v1, "childType":I
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v5

    add-int v4, v5, v1

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 617
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    .end local v1    # "childType":I
    .end local v4    # "retValue":I
    :cond_1
    iget v5, v3, Lamigo/widget/AmigoExpandableListPosition;->type:I

    if-ne v5, v6, :cond_2

    .line 618
    const/4 v4, 0x0

    .restart local v4    # "retValue":I
    goto :goto_0

    .line 620
    .end local v4    # "retValue":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "retValue":I
    goto :goto_0
.end method

.method getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    .locals 20
    .param p1, "flPos"    # I

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 131
    .local v13, "egml":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 134
    .local v17, "numExpGroups":I
    const/4 v15, 0x0

    .line 135
    .local v15, "leftExpGroupIndex":I
    add-int/lit8 v19, v17, -0x1

    .line 136
    .local v19, "rightExpGroupIndex":I
    const/16 v16, 0x0

    .line 139
    .local v16, "midExpGroupIndex":I
    if-nez v17, :cond_7

    .line 145
    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v1, p1

    move/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    move/from16 v6, v16

    .line 264
    .end local v16    # "midExpGroupIndex":I
    .local v6, "midExpGroupIndex":I
    :goto_0
    return-object v1

    .line 161
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-gt v15, v0, :cond_4

    .line 162
    sub-int v1, v19, v15

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, v15

    .line 165
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 167
    .local v5, "midExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    iget v1, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-le v0, v1, :cond_1

    .line 172
    add-int/lit8 v15, v6, 0x1

    goto :goto_1

    .line 173
    :cond_1
    iget v1, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_2

    .line 178
    add-int/lit8 v19, v6, -0x1

    goto :goto_1

    .line 179
    :cond_2
    iget v1, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 184
    const/4 v2, 0x2

    iget v3, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    const/4 v4, -0x1

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 186
    :cond_3
    iget v1, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    move/from16 v0, p1

    if-gt v0, v1, :cond_0

    .line 196
    iget v1, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int v4, p1, v1

    .line 197
    .local v4, "childPos":I
    const/4 v2, 0x1

    iget v3, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    move/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 213
    .end local v4    # "childPos":I
    .end local v5    # "midExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :cond_4
    const/4 v12, 0x0

    .line 216
    .local v12, "insertPosition":I
    const/4 v9, 0x0

    .line 223
    .local v9, "groupPos":I
    if-le v15, v6, :cond_5

    .line 231
    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 233
    .local v14, "leftExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    move v12, v15

    .line 239
    iget v1, v14, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    sub-int v1, p1, v1

    iget v2, v14, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    add-int v9, v1, v2

    .line 264
    .end local v14    # "leftExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :goto_2
    const/4 v8, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->obtain(IIIILamigo/widget/AmigoExpandableListConnector$GroupMetadata;I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    goto :goto_0

    .line 241
    :cond_5
    move/from16 v0, v19

    if-ge v0, v6, :cond_6

    .line 248
    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 250
    .local v18, "rightExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    move/from16 v12, v19

    .line 258
    move-object/from16 v0, v18

    iget v1, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    move-object/from16 v0, v18

    iget v2, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    sub-int v2, v2, p1

    sub-int v9, v1, v2

    .line 259
    goto :goto_2

    .line 261
    .end local v18    # "rightExpGm":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v6    # "midExpGroupIndex":I
    .end local v9    # "groupPos":I
    .end local v12    # "insertPosition":I
    .restart local v16    # "midExpGroupIndex":I
    :cond_7
    move/from16 v6, v16

    .end local v16    # "midExpGroupIndex":I
    .restart local v6    # "midExpGroupIndex":I
    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "flatListPos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 466
    .local v9, "posMetadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v2, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v2, v2, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 467
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-virtual {v9}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v2

    invoke-interface {v0, v1, v2, p2, p3}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 471
    .local v10, "retValue":Landroid/view/View;
    invoke-virtual {v9}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    invoke-direct {p0, v10, v0}, Lamigo/widget/AmigoExpandableListConnector;->setViewTextColor(Landroid/view/View;Z)V

    .line 476
    iget-boolean v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mAnimatorEnabled:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v7

    .line 479
    .local v7, "childcount":I
    invoke-virtual {v9}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v7, :cond_1

    .line 480
    const v0, 0x9020028

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 518
    .end local v7    # "childcount":I
    :cond_0
    :goto_0
    invoke-virtual {v9}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 520
    return-object v10

    .line 482
    .restart local v7    # "childcount":I
    :cond_1
    if-nez v7, :cond_2

    .line 483
    const v0, 0x9020027

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 485
    :cond_2
    const v0, 0x9020017

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 490
    .end local v7    # "childcount":I
    .end local v10    # "retValue":Landroid/view/View;
    :cond_3
    iget-object v2, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v2, v2, Lamigo/widget/AmigoExpandableListPosition;->type:I

    if-ne v2, v0, :cond_6

    .line 491
    iget-object v2, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    iget v2, v2, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v2, p1, :cond_4

    move v3, v0

    .line 492
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v2, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    iget v2, v2, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    add-int/lit8 v2, v2, 0x1

    if-ne v2, p1, :cond_5

    move v8, v0

    .line 494
    .local v8, "isFirstChild":Z
    :goto_2
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget-object v2, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v2, v2, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 497
    .restart local v10    # "retValue":Landroid/view/View;
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    invoke-virtual {v10, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 502
    iget-boolean v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mAnimatorEnabled:Z

    if-eqz v0, :cond_0

    .line 503
    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I

    invoke-virtual {v10, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 504
    invoke-direct {p0, v10, v3, v8}, Lamigo/widget/AmigoExpandableListConnector;->setChildViewBackground(Landroid/view/View;ZZ)V

    .line 505
    iget-boolean v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mIsExpandGroup:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mGroupPos:I

    iget-object v1, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    if-ne v0, v1, :cond_0

    .line 507
    iget-object v0, v9, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-direct {p0, v10, v0}, Lamigo/widget/AmigoExpandableListConnector;->createExpandAnimaForView(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v6

    .line 509
    .local v6, "anim":Landroid/animation/Animator;
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .end local v3    # "isLastChild":Z
    .end local v6    # "anim":Landroid/animation/Animator;
    .end local v8    # "isFirstChild":Z
    .end local v10    # "retValue":Landroid/view/View;
    :cond_4
    move v3, v1

    .line 491
    goto :goto_1

    .restart local v3    # "isLastChild":Z
    :cond_5
    move v8, v1

    .line 492
    goto :goto_2

    .line 515
    .end local v3    # "isLastChild":Z
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    .line 631
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v1, v1, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v1, :cond_0

    .line 632
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/HeterogeneousExpandableList;

    .line 634
    .local v0, "adapter":Landroid/widget/HeterogeneousExpandableList;
    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getGroupTypeCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 636
    .end local v0    # "adapter":Landroid/widget/HeterogeneousExpandableList;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 901
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 902
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 6
    .param p1, "flatListPos"    # I

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 397
    .local v0, "metadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    .line 400
    .local v1, "pos":Lamigo/widget/AmigoExpandableListPosition;
    iget v3, v1, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 401
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget v4, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget v5, v1, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-interface {v3, v4, v5}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v2

    .line 407
    .local v2, "retValue":Z
    :goto_0
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 409
    return v2

    .line 404
    .end local v2    # "retValue":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "retValue":Z
    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 844
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 845
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    .line 847
    .local v0, "groupMetadata":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    iget v2, v0, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    if-ne v2, p1, :cond_0

    .line 848
    const/4 v2, 0x1

    .line 852
    .end local v0    # "groupMetadata":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :goto_1
    return v2

    .line 844
    .restart local v0    # "groupMetadata":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 852
    .end local v0    # "groupMetadata":Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method setConnectorAnimatorEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1281
    return-void
.end method

.method setExpandAnimFlg(Z)V
    .locals 0
    .param p1, "anim"    # Z

    .prologue
    .line 1269
    iput-boolean p1, p0, Lamigo/widget/AmigoExpandableListConnector;->mIsExpandGroup:Z

    .line 1270
    return-void
.end method

.method public setExpandableListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 108
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 112
    :cond_0
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    .line 113
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    return-void
.end method

.method setExpandedGroupMetadataList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 881
    .local p1, "expandedGroupMetadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;>;"
    if-eqz p1, :cond_0

    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v2, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpandableListAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 888
    .local v1, "numGroups":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 889
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    iget v2, v2, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->gPos:I

    if-ge v2, v1, :cond_0

    .line 888
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 895
    :cond_2
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListConnector;->mExpGroupMetadataList:Ljava/util/ArrayList;

    .line 896
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lamigo/widget/AmigoExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V

    goto :goto_0
.end method

.method setGroupPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 1273
    iput p1, p0, Lamigo/widget/AmigoExpandableListConnector;->mGroupPos:I

    .line 1274
    return-void
.end method

.method public setMaxExpGroupCount(I)V
    .locals 0
    .param p1, "maxExpGroupCount"    # I

    .prologue
    .line 859
    iput p1, p0, Lamigo/widget/AmigoExpandableListConnector;->mMaxExpGroupCount:I

    .line 860
    return-void
.end method
