.class public Lamigo/widget/AmigoExpandableListView;
.super Lamigo/widget/AmigoListView;
.source "AmigoExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoExpandableListView$SavedState;,
        Lamigo/widget/AmigoExpandableListView$ExpandableListContextMenuInfo;,
        Lamigo/widget/AmigoExpandableListView$OnChildClickListener;,
        Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;,
        Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;,
        Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mAnimatorEnabled:Z

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mConnector:Lamigo/widget/AmigoExpandableListConnector;

.field private mContext:Landroid/content/Context;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field public mHeight:[I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mItemPadding:I

.field mL:I

.field private mOnChildClickListener:Lamigo/widget/AmigoExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;

.field mR:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    new-array v0, v3, [I

    sput-object v0, Lamigo/widget/AmigoExpandableListView;->EMPTY_STATE_SET:[I

    .line 165
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lamigo/widget/AmigoExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 169
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lamigo/widget/AmigoExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 173
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lamigo/widget/AmigoExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 177
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lamigo/widget/AmigoExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lamigo/widget/AmigoExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Lamigo/widget/AmigoExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lamigo/widget/AmigoExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lamigo/widget/AmigoExpandableListView;->GROUP_STATE_SETS:[[I

    .line 185
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lamigo/widget/AmigoExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 173
    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 199
    const v0, 0x901007b

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 245
    iput v3, p0, Lamigo/widget/AmigoExpandableListView;->mL:I

    .line 246
    iput v3, p0, Lamigo/widget/AmigoExpandableListView;->mR:I

    .line 1359
    iput v3, p0, Lamigo/widget/AmigoExpandableListView;->mItemPadding:I

    .line 1442
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mHeight:[I

    .line 1522
    iput-boolean v3, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    .line 205
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mContext:Landroid/content/Context;

    .line 207
    sget-object v2, Lcom/amigo/internal/R$styleable;->AmigoExpandableListView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 211
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 215
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0, v2}, Lamigo/widget/AmigoExpandableListView;->indicatorSetColorFilter(Landroid/graphics/drawable/StateListDrawable;)V

    .line 219
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 221
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorLeft:I

    .line 223
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    .line 225
    iget v2, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 226
    iget v2, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorLeft:I

    iget-object v3, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    .line 228
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorLeft:I

    .line 230
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorRight:I

    .line 232
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 235
    .local v1, "draw":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v2, p0, Lamigo/widget/AmigoExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9050015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoExpandableListView;->mItemPadding:I

    .line 238
    const-string v2, "AmigoExpandListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mItemPadding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lamigo/widget/AmigoExpandableListView;->mItemPadding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    return-void

    .line 1442
    :array_0
    .array-data 4
        0x80
        0x76
        0x62
        0x4e
        0x3a
        0x26
        0x12
    .end array-data
.end method

.method static synthetic access$100(Lamigo/widget/AmigoExpandableListView;Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoExpandableListView;
    .param p1, "x1"    # Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lamigo/widget/AmigoExpandableListView;->startCollapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V

    return-void
.end method

.method private changeColorGroupIndicator(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isExpanded"    # Z

    .prologue
    .line 501
    const/16 v0, -0x7000

    .line 503
    .local v0, "color":I
    if-eqz p2, :cond_0

    .line 504
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 507
    :cond_0
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    if-eqz p2, :cond_2

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    .line 510
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 512
    :cond_1
    return-void

    .line 508
    :cond_2
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v0

    goto :goto_0
.end method

.method private createcollapseAnimatorForView(Landroid/view/View;I)Landroid/animation/Animator;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    const/4 v4, 0x0

    .line 1445
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1446
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1448
    .local v3, "originalHeight":I
    const/4 v5, 0x7

    if-ge p2, v5, :cond_0

    iget-object v5, p0, Lamigo/widget/AmigoExpandableListView;->mHeight:[I

    aget v5, v5, p2

    sub-int v1, v3, v5

    .line 1449
    .local v1, "height":I
    :goto_0
    const-string v5, "AmigoExpandListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close  heght = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v4

    const/4 v4, 0x1

    aput v1, v5, v4

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1451
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1452
    new-instance v4, Lamigo/widget/AmigoExpandableListView$2;

    invoke-direct {v4, p0, v2, p1}, Lamigo/widget/AmigoExpandableListView$2;-><init>(Lamigo/widget/AmigoExpandableListView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1476
    new-instance v4, Lamigo/widget/AmigoExpandableListView$3;

    invoke-direct {v4, p0, v2, v3, p1}, Lamigo/widget/AmigoExpandableListView$3;-><init>(Lamigo/widget/AmigoExpandableListView;Landroid/view/ViewGroup$LayoutParams;ILandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1493
    return-object v0

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "height":I
    :cond_0
    move v1, v4

    .line 1448
    goto :goto_0
.end method

.method private drawGroupDivider(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 398
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v8

    .line 399
    .local v8, "headerViewsCount":I
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getChildCount()I

    move-result v6

    .line 402
    .local v6, "childCount":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 403
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v0, 0x33000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 407
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v7, v0, v8

    .local v7, "childFlPos":I
    :goto_0
    if-ge v9, v6, :cond_3

    .line 414
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, v7}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v12

    .line 415
    .local v12, "pos":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {p0, v9}, Lamigo/widget/AmigoExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 416
    .local v10, "item":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 418
    .local v13, "top":I
    iget-object v0, v12, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v7}, Lamigo/widget/AmigoExpandableListView;->needShowDivider(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    const/4 v11, 0x0

    .line 420
    .local v11, "left":I
    :goto_1
    int-to-float v1, v11

    int-to-float v2, v13

    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v13

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 413
    .end local v11    # "left":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorLeft:I

    mul-int/lit8 v1, v1, 0x2

    add-int v11, v0, v1

    goto :goto_1

    .line 424
    .end local v10    # "item":Landroid/view/View;
    .end local v12    # "pos":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    .end local v13    # "top":I
    :cond_3
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 656
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lamigo/widget/AmigoExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Lamigo/widget/AmigoExpandableListPosition;

    .prologue
    .line 1180
    iget v0, p1, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1181
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget v2, p1, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1183
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 645
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pos"    # Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 453
    iget-object v7, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v7, v7, Lamigo/widget/AmigoExpandableListPosition;->type:I

    if-ne v7, v6, :cond_6

    .line 454
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 456
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 460
    iget-object v7, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    iget v7, v7, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    iget v8, v8, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_4

    :cond_0
    move v1, v5

    .line 463
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 466
    .local v3, "stateSetIndex":I
    sget-object v4, Lamigo/widget/AmigoExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 469
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_2
    iget-boolean v4, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    if-eqz v4, :cond_3

    .line 470
    iget-object v4, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v5, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v5, v5, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 471
    iget-object v4, p0, Lamigo/widget/AmigoExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x9020029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 488
    :cond_3
    :goto_2
    return-object v0

    :cond_4
    move v1, v4

    .line 460
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_5
    move v5, v4

    .line 463
    goto :goto_1

    .line 477
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_6
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 479
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 481
    iget-object v4, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v4, v4, Lamigo/widget/AmigoExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->groupMetadata:Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;

    iget v5, v5, Lamigo/widget/AmigoExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_7

    sget-object v2, Lamigo/widget/AmigoExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 484
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 481
    .end local v2    # "stateSet":[I
    :cond_7
    sget-object v2, Lamigo/widget/AmigoExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 1108
    cmp-long v1, p0, v6

    if-nez v1, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return v0

    .line 1111
    :cond_1
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1113
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 1133
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 1148
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    .line 1089
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1091
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 1069
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1070
    const/4 v0, 0x2

    .line 1073
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private indicatorSetColorFilter(Landroid/graphics/drawable/StateListDrawable;)V
    .locals 4
    .param p1, "stateListDrawble"    # Landroid/graphics/drawable/StateListDrawable;

    .prologue
    .line 493
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 494
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 495
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v3

    invoke-direct {p0, v3}, Lamigo/widget/AmigoExpandableListView;->isStateExpanded([I)Z

    move-result v2

    .line 496
    .local v2, "isExpanded":Z
    invoke-direct {p0, v0, v2}, Lamigo/widget/AmigoExpandableListView;->changeColorGroupIndicator(Landroid/graphics/drawable/Drawable;Z)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "isExpanded":Z
    :cond_0
    return-void
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 633
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 634
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStateExpanded([I)Z
    .locals 3
    .param p1, "myDrawableState"    # [I

    .prologue
    .line 516
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 517
    aget v1, p1, v0

    const v2, 0x10100a8

    if-ne v1, v2, :cond_0

    .line 518
    const/4 v1, 0x1

    .line 521
    :goto_1
    return v1

    .line 516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private needShowDivider(I)Z
    .locals 5
    .param p1, "flatListPos"    # I

    .prologue
    const/4 v2, 0x0

    .line 427
    if-nez p1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v2

    .line 431
    :cond_1
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v3, p1}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 432
    .local v0, "posMetadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 434
    .local v1, "prePosMetadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startCollapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V
    .locals 2
    .param p1, "posMetadata"    # Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .prologue
    .line 1497
    const-string v0, "AmigoExpandListView"

    const-string v1, "startCollapseGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoExpandableListConnector;->collapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z

    .line 1502
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListView;->playSoundEffect(I)V

    .line 1504
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    iget-object v1, p1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 1509
    :cond_0
    invoke-virtual {p1}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 1510
    return-void
.end method

.method private startCollapseGroupAnimation(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V
    .locals 2
    .param p1, "posMetadata"    # Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .prologue
    .line 1361
    const-string v0, "AmigoExpandListView"

    const-string v1, "startCollapseGroupAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListView;->collapseAnimation(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V

    .line 1364
    return-void
.end method


# virtual methods
.method public collapseAnimation(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V
    .locals 17
    .param p1, "posMetadata"    # Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    .prologue
    .line 1367
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v13, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const-string v14, "AmigoExpandListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getChildCount() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getChildCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/4 v11, 0x0

    .line 1372
    .local v11, "vi":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getChildCount()I

    move-result v5

    .line 1373
    .local v5, "childCount":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v7

    .line 1375
    .local v7, "headerViewsCount":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getCount()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getFooterViewsCount()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v14, v7

    add-int/lit8 v9, v14, -0x1

    .line 1376
    .local v9, "lastChildFlPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getFirstVisiblePosition()I

    move-result v14

    sub-int v6, v14, v7

    .local v6, "childFlPos":I
    :goto_0
    if-ge v8, v5, :cond_2

    .line 1379
    if-gez v6, :cond_1

    .line 1377
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1382
    :cond_1
    if-le v6, v9, :cond_4

    .line 1397
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 1398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    .local v3, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const-string v14, "AmigoExpandListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "views.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v12, 0x0

    .line 1401
    .local v12, "view":Landroid/view/View;
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_5

    .line 1402
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "view":Landroid/view/View;
    check-cast v12, Landroid/view/View;

    .line 1403
    .restart local v12    # "view":Landroid/view/View;
    if-eqz v12, :cond_3

    .line 1404
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lamigo/widget/AmigoExpandableListView;->createcollapseAnimatorForView(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1387
    .end local v3    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v12    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v14, v6}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 1389
    .local v10, "pos":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {v10}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v14

    if-eqz v14, :cond_0

    iget-object v14, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v14, v14, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v15, v15, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    if-ne v14, v15, :cond_0

    iget-object v14, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v14, v14, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 1391
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lamigo/widget/AmigoExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1392
    const-string v14, "AmigoExpandListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "vi = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1408
    .end local v10    # "pos":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    .restart local v3    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .restart local v12    # "view":Landroid/view/View;
    :cond_5
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1410
    .local v2, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    new-array v4, v14, [Landroid/animation/Animator;

    .line 1411
    .local v4, "animatorsArray":[Landroid/animation/Animator;
    const/4 v8, 0x0

    :goto_3
    array-length v14, v4

    if-ge v8, v14, :cond_6

    .line 1412
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/Animator;

    aput-object v14, v4, v8

    .line 1411
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1415
    :cond_6
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1416
    new-instance v14, Lamigo/widget/AmigoExpandableListView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lamigo/widget/AmigoExpandableListView$1;-><init>(Lamigo/widget/AmigoExpandableListView;Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1436
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1440
    .end local v2    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v3    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v4    # "animatorsArray":[Landroid/animation/Animator;
    .end local v12    # "view":Landroid/view/View;
    :goto_4
    return-void

    .line 1438
    :cond_7
    invoke-direct/range {p0 .. p1}, Lamigo/widget/AmigoExpandableListView;->startCollapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V

    goto :goto_4
.end method

.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 813
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v1, p1}, Lamigo/widget/AmigoExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 815
    .local v0, "retValue":Z
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 819
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 1154
    invoke-direct {p0, p2}, Lamigo/widget/AmigoExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1168
    :goto_0
    return-object v0

    .line 1159
    :cond_0
    invoke-direct {p0, p2}, Lamigo/widget/AmigoExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1160
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, v6}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1161
    .local v7, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    .line 1163
    .local v8, "pos":Lamigo/widget/AmigoExpandableListPosition;
    invoke-direct {p0, v8}, Lamigo/widget/AmigoExpandableListView;->getChildOrGroupId(Lamigo/widget/AmigoExpandableListPosition;)J

    move-result-wide p3

    .line 1164
    invoke-virtual {v8}, Lamigo/widget/AmigoExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1166
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 1168
    new-instance v0, Lamigo/widget/AmigoExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lamigo/widget/AmigoExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 252
    invoke-super/range {p0 .. p1}, Lamigo/widget/AmigoListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 256
    invoke-direct/range {p0 .. p1}, Lamigo/widget/AmigoExpandableListView;->drawGroupDivider(Landroid/graphics/Canvas;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const/16 v18, 0x0

    .line 265
    .local v18, "saveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 266
    .local v8, "clipToPadding":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mScrollX:I

    move/from16 v19, v0

    .line 269
    .local v19, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mScrollY:I

    move/from16 v20, v0

    .line 270
    .local v20, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 275
    .end local v19    # "scrollX":I
    .end local v20    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 277
    .local v9, "headerViewsCount":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 279
    .local v14, "lastChildFlPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mBottom:I

    move/from16 v16, v0

    .line 287
    .local v16, "myB":I
    const/4 v15, -0x4

    .line 289
    .local v15, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 294
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getChildCount()I

    move-result v6

    .line 295
    .local v6, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v7, v22, v9

    .local v7, "childFlPos":I
    :goto_2
    if-ge v10, v6, :cond_6

    .line 298
    if-gez v7, :cond_5

    .line 296
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 265
    .end local v6    # "childCount":I
    .end local v7    # "childFlPos":I
    .end local v8    # "clipToPadding":Z
    .end local v9    # "headerViewsCount":I
    .end local v10    # "i":I
    .end local v12    # "indicatorRect":Landroid/graphics/Rect;
    .end local v14    # "lastChildFlPos":I
    .end local v15    # "lastItemType":I
    .end local v16    # "myB":I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 301
    .restart local v6    # "childCount":I
    .restart local v7    # "childFlPos":I
    .restart local v8    # "clipToPadding":Z
    .restart local v9    # "headerViewsCount":I
    .restart local v10    # "i":I
    .restart local v12    # "indicatorRect":Landroid/graphics/Rect;
    .restart local v14    # "lastChildFlPos":I
    .restart local v15    # "lastItemType":I
    .restart local v16    # "myB":I
    :cond_5
    if-le v7, v14, :cond_7

    .line 391
    :cond_6
    if-eqz v8, :cond_0

    .line 392
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 306
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lamigo/widget/AmigoExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 307
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 308
    .local v21, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 311
    .local v5, "b":I
    if-ltz v5, :cond_3

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 317
    .local v17, "pos":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 318
    invoke-virtual/range {v17 .. v17}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, v17

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 320
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoExpandableListView;->mL:I

    .line 321
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoExpandableListView;->mR:I

    .line 323
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, v17

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mL:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mItemPadding:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/view/View;->setLeft(I)V

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mR:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mItemPadding:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/view/View;->setRight(I)V

    .line 332
    :cond_9
    move-object/from16 v0, v17

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_b

    .line 333
    move-object/from16 v0, v17

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 340
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mItemPadding:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 341
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingLeft:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mItemPadding:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 360
    :cond_a
    :goto_6
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 361
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 364
    move-object/from16 v0, v17

    iget-object v0, v0, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    .line 367
    :cond_b
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 369
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoExpandableListView;->isStackFromBottom()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 371
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 372
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 379
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lamigo/widget/AmigoExpandableListView;->getIndicator(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 380
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_c

    .line 382
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 383
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 388
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 334
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto/16 :goto_4

    .line 336
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto/16 :goto_5

    .line 345
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 374
    :cond_10
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 375
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_7
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lamigo/widget/AmigoExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 783
    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Lamigo/widget/AmigoExpandableListPosition;->obtain(IIII)Lamigo/widget/AmigoExpandableListPosition;

    move-result-object v0

    .line 785
    .local v0, "elGroupPos":Lamigo/widget/AmigoExpandableListPosition;
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v5, v0}, Lamigo/widget/AmigoExpandableListConnector;->getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 786
    .local v2, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListPosition;->recycle()V

    .line 787
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v5, v2}, Lamigo/widget/AmigoExpandableListConnector;->expandGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z

    move-result v3

    .line 789
    .local v3, "retValue":Z
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupExpandListener:Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_0

    .line 790
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupExpandListener:Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 793
    :cond_0
    if-eqz p2, :cond_1

    .line 794
    iget-object v5, v2, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v5, Lamigo/widget/AmigoExpandableListPosition;->flatListPos:I

    .line 796
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 797
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Lamigo/widget/AmigoExpandableListView;->smoothScrollToPosition(II)V

    .line 800
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v2}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 802
    return v3
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 585
    invoke-super {p0}, Lamigo/widget/AmigoListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatorEnabled()Z
    .locals 3

    .prologue
    .line 1538
    const-string v0, "AmigoExpandListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnimatorEnabled mAnimatorEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-boolean v0, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    return v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lamigo/widget/AmigoExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 926
    const-wide v2, 0xffffffffL

    .line 933
    :goto_0
    return-wide v2

    .line 929
    :cond_0
    invoke-direct {p0, p1}, Lamigo/widget/AmigoExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 930
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v4, v0}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 931
    .local v1, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    invoke-virtual {v4}, Lamigo/widget/AmigoExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 932
    .local v2, "packedPos":J
    invoke-virtual {v1}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    .prologue
    .line 948
    invoke-static {p1, p2}, Lamigo/widget/AmigoExpandableListPosition;->obtainPosition(J)Lamigo/widget/AmigoExpandableListPosition;

    move-result-object v0

    .line 950
    .local v0, "elPackedPos":Lamigo/widget/AmigoExpandableListPosition;
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v3, v0}, Lamigo/widget/AmigoExpandableListConnector;->getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 951
    .local v2, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListPosition;->recycle()V

    .line 952
    iget-object v3, v2, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v3, Lamigo/widget/AmigoExpandableListPosition;->flatListPos:I

    .line 953
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 954
    invoke-direct {p0, v1}, Lamigo/widget/AmigoExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 6

    .prologue
    .line 980
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    .line 981
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    .line 990
    :goto_0
    return-wide v4

    .line 983
    :cond_0
    invoke-static {v2, v3}, Lamigo/widget/AmigoExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 985
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Lamigo/widget/AmigoExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 987
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_0

    .line 990
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Lamigo/widget/AmigoExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 4

    .prologue
    .line 966
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 969
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 681
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, p2}, Lamigo/widget/AmigoExpandableListConnector;->getUnflattenedPos(I)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 683
    .local v10, "posMetadata":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    invoke-direct {p0, v0}, Lamigo/widget/AmigoExpandableListView;->getChildOrGroupId(Lamigo/widget/AmigoExpandableListPosition;)J

    move-result-wide p3

    .line 685
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoExpandableListConnector;->setExpandAnimFlg(Z)V

    .line 688
    iget-object v0, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v0, v0, Lamigo/widget/AmigoExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 692
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupClickListener:Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupClickListener:Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;

    iget-object v1, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v3, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;->onGroupClick(Lamigo/widget/AmigoExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {v10}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 696
    const/4 v11, 0x1

    .line 760
    :goto_0
    return v11

    .line 700
    :cond_0
    invoke-virtual {v10}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 701
    const-string v0, "AmigoExpandListView"

    const-string v1, "handleItemClick setExpandAnimFlg(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-boolean v0, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget-object v1, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 705
    const/4 v11, 0x0

    goto :goto_0

    .line 707
    :cond_1
    invoke-direct {p0, v10}, Lamigo/widget/AmigoExpandableListView;->startCollapseGroupAnimation(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)V

    .line 748
    :goto_1
    const/4 v11, 0x1

    .local v11, "returnValue":Z
    goto :goto_0

    .line 711
    .end local v11    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, v10}, Lamigo/widget/AmigoExpandableListConnector;->collapseGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListView;->playSoundEffect(I)V

    .line 715
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    iget-object v1, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 719
    :cond_3
    invoke-virtual {v10}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_1

    .line 723
    :cond_4
    const-string v0, "AmigoExpandListView"

    const-string v1, "handleItemClick setExpandAnimFlg(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoExpandableListConnector;->setExpandAnimFlg(Z)V

    .line 726
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, v10}, Lamigo/widget/AmigoExpandableListConnector;->expandGroup(Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;)Z

    .line 728
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListView;->playSoundEffect(I)V

    .line 730
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupExpandListener:Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_5

    .line 731
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupExpandListener:Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;

    iget-object v1, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v1, v1, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 734
    :cond_5
    iget-object v0, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v9, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    .line 735
    .local v9, "groupPos":I
    iget-object v0, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v8, v0, Lamigo/widget/AmigoExpandableListPosition;->flatListPos:I

    .line 738
    .local v8, "groupFlatPos":I
    iget-boolean v0, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    if-eqz v0, :cond_6

    .line 739
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, v9}, Lamigo/widget/AmigoExpandableListConnector;->setGroupPos(I)V

    .line 742
    :cond_6
    invoke-virtual {p0}, Lamigo/widget/AmigoExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v12, v8, v0

    .line 743
    .local v12, "shiftedGroupPosition":I
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0, v0, v12}, Lamigo/widget/AmigoExpandableListView;->smoothScrollToPosition(II)V

    .line 745
    invoke-virtual {v10}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_1

    .line 751
    .end local v8    # "groupFlatPos":I
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_7
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mOnChildClickListener:Lamigo/widget/AmigoExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_8

    .line 752
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListView;->playSoundEffect(I)V

    .line 753
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mOnChildClickListener:Lamigo/widget/AmigoExpandableListView$OnChildClickListener;

    iget-object v0, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v4, v0, Lamigo/widget/AmigoExpandableListPosition;->groupPos:I

    iget-object v0, v10, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v5, v0, Lamigo/widget/AmigoExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Lamigo/widget/AmigoExpandableListView$OnChildClickListener;->onChildClick(Lamigo/widget/AmigoExpandableListView;Landroid/view/View;IIJ)Z

    move-result v11

    goto/16 :goto_0

    .line 756
    :cond_8
    invoke-virtual {v10}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 757
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto/16 :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 1056
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1345
    invoke-super {p0, p1}, Lamigo/widget/AmigoListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1346
    const-class v0, Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1347
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1351
    invoke-super {p0, p1}, Lamigo/widget/AmigoListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1352
    const-class v0, Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1353
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1330
    instance-of v1, p1, Lamigo/widget/AmigoExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1331
    invoke-super {p0, p1}, Lamigo/widget/AmigoListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1341
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1335
    check-cast v0, Lamigo/widget/AmigoExpandableListView$SavedState;

    .line 1336
    .local v0, "ss":Lamigo/widget/AmigoExpandableListView$SavedState;
    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/widget/AmigoListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1338
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lamigo/widget/AmigoExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    iget-object v2, v0, Lamigo/widget/AmigoExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1323
    invoke-super {p0}, Lamigo/widget/AmigoListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1324
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Lamigo/widget/AmigoExpandableListView$SavedState;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v1}, Lamigo/widget/AmigoExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lamigo/widget/AmigoExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 1515
    invoke-super {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoListView;->onScrollChanged(IIII)V

    .line 1517
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoExpandableListConnector;->setExpandAnimFlg(Z)V

    .line 1520
    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 662
    invoke-direct {p0, p2}, Lamigo/widget/AmigoExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    invoke-super {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 669
    :goto_0
    return v1

    .line 668
    :cond_0
    invoke-direct {p0, p2}, Lamigo/widget/AmigoExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 669
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Lamigo/widget/AmigoExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 81
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 607
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 609
    if-eqz p1, :cond_0

    .line 611
    new-instance v0, Lamigo/widget/AmigoExpandableListConnector;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lamigo/widget/AmigoExpandableListConnector;-><init>(Landroid/content/Context;Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    .line 617
    :goto_0
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-super {p0, v0}, Lamigo/widget/AmigoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 618
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 570
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnimatorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1525
    iput-boolean p1, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    .line 1526
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoExpandableListConnector;->setConnectorAnimatorEnabled(Z)V

    .line 1529
    :cond_0
    iget-boolean v0, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    if-eqz v0, :cond_1

    .line 1530
    const v0, 0x9020011

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListView;->setSelector(I)V

    .line 1531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1533
    :cond_1
    const-string v0, "AmigoExpandListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimatorEnabled mAnimatorEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lamigo/widget/AmigoExpandableListView;->mAnimatorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 533
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 534
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1195
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1196
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1210
    iput p1, p0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorLeft:I

    .line 1211
    iput p2, p0, Lamigo/widget/AmigoExpandableListView;->mChildIndicatorRight:I

    .line 1212
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1223
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1224
    iget v0, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1225
    iget v0, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    .line 1227
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1241
    iput p1, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorLeft:I

    .line 1242
    iput p2, p0, Lamigo/widget/AmigoExpandableListView;->mIndicatorRight:I

    .line 1243
    return-void
.end method

.method public setOnChildClickListener(Lamigo/widget/AmigoExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Lamigo/widget/AmigoExpandableListView$OnChildClickListener;

    .prologue
    .line 907
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mOnChildClickListener:Lamigo/widget/AmigoExpandableListView$OnChildClickListener;

    .line 908
    return-void
.end method

.method public setOnGroupClickListener(Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;

    .prologue
    .line 880
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupClickListener:Lamigo/widget/AmigoExpandableListView$OnGroupClickListener;

    .line 881
    return-void
.end method

.method public setOnGroupCollapseListener(Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 837
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupCollapseListener:Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;

    .line 838
    return-void
.end method

.method public setOnGroupExpandListener(Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;

    .prologue
    .line 855
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView;->mOnGroupExpandListener:Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;

    .line 856
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 598
    invoke-super {p0, p1}, Lamigo/widget/AmigoListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 599
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 1020
    invoke-static {p1, p2}, Lamigo/widget/AmigoExpandableListPosition;->obtainChildPosition(II)Lamigo/widget/AmigoExpandableListPosition;

    move-result-object v1

    .line 1022
    .local v1, "elChildPos":Lamigo/widget/AmigoExpandableListPosition;
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v3, v1}, Lamigo/widget/AmigoExpandableListConnector;->getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1024
    .local v2, "flatChildPos":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 1028
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 1046
    :goto_0
    return v3

    .line 1030
    :cond_0
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoExpandableListView;->expandGroup(I)Z

    .line 1032
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v3, v1}, Lamigo/widget/AmigoExpandableListConnector;->getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1035
    if-nez v2, :cond_1

    .line 1036
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1040
    :cond_1
    iget-object v3, v2, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v3, v3, Lamigo/widget/AmigoExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lamigo/widget/AmigoExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1041
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lamigo/widget/AmigoListView;->setSelection(I)V

    .line 1043
    invoke-virtual {v1}, Lamigo/widget/AmigoExpandableListPosition;->recycle()V

    .line 1044
    invoke-virtual {v2}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 1046
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 999
    invoke-static {p1}, Lamigo/widget/AmigoExpandableListPosition;->obtainGroupPosition(I)Lamigo/widget/AmigoExpandableListPosition;

    move-result-object v1

    .line 1001
    .local v1, "elGroupPos":Lamigo/widget/AmigoExpandableListPosition;
    iget-object v3, p0, Lamigo/widget/AmigoExpandableListView;->mConnector:Lamigo/widget/AmigoExpandableListConnector;

    invoke-virtual {v3, v1}, Lamigo/widget/AmigoExpandableListConnector;->getFlattenedPos(Lamigo/widget/AmigoExpandableListPosition;)Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1002
    .local v2, "pm":Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Lamigo/widget/AmigoExpandableListPosition;->recycle()V

    .line 1003
    iget-object v3, v2, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->position:Lamigo/widget/AmigoExpandableListPosition;

    iget v3, v3, Lamigo/widget/AmigoExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lamigo/widget/AmigoExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1004
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Lamigo/widget/AmigoListView;->setSelection(I)V

    .line 1005
    invoke-virtual {v2}, Lamigo/widget/AmigoExpandableListConnector$PositionMetadata;->recycle()V

    .line 1006
    return-void
.end method
