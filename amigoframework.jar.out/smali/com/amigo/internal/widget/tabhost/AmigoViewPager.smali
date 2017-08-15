.class public Lcom/amigo/internal/widget/tabhost/AmigoViewPager;
.super Landroid/view/ViewGroup;
.source "AmigoViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ViewPositionComparator;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$Decor;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SimpleOnPageChangeListener;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;,
        Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

.field private mAdapterChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->LAYOUT_ATTRS:[I

    .line 113
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$1;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$1;-><init>()V

    sput-object v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 120
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$2;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$2;-><init>()V

    sput-object v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 220
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->sPositionComparator:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 341
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempItem:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 134
    iput v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredCurItem:I

    .line 135
    iput-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 136
    iput-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 148
    const v0, -0x800001

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    .line 149
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    .line 158
    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    .line 177
    iput v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 204
    iput-boolean v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    .line 205
    iput-boolean v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mNeedCalculatePageOffsets:Z

    .line 238
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;

    invoke-direct {v0, p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;-><init>(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;)V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 245
    iput v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollState:I

    .line 342
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->initViewPager()V

    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 346
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempItem:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 134
    iput v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredCurItem:I

    .line 135
    iput-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 136
    iput-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 148
    const v0, -0x800001

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    .line 149
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    .line 158
    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    .line 177
    iput v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 204
    iput-boolean v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    .line 205
    iput-boolean v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mNeedCalculatePageOffsets:Z

    .line 238
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;

    invoke-direct {v0, p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$3;-><init>(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;)V

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 245
    iput v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollState:I

    .line 347
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->initViewPager()V

    .line 348
    return-void
.end method

.method static synthetic access$000(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;ILcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .prologue
    .line 1115
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v12}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v1

    .line 1116
    .local v1, "N":I
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v11

    .line 1117
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1119
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1120
    move-object/from16 v0, p3

    iget v8, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 1122
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1123
    const/4 v5, 0x0

    .line 1124
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1125
    .local v3, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1126
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1127
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1128
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 1129
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1130
    add-int/lit8 v5, v5, 0x1

    .line 1131
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    goto :goto_2

    .line 1117
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1133
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1136
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1137
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1139
    :cond_2
    iput v7, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 1140
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1127
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1142
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1143
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1144
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1145
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 1146
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1147
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1148
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 1149
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1150
    add-int/lit8 v5, v5, -0x1

    .line 1151
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    goto :goto_5

    .line 1153
    :cond_4
    :goto_6
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1156
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v12, v9}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1157
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1159
    :cond_5
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1160
    iput v7, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 1147
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1166
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1167
    .local v4, "itemCount":I
    iget v7, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 1168
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1169
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    .line 1170
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    .line 1173
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1174
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 1175
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1176
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1169
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1170
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1178
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1179
    iput v7, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 1180
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    .line 1173
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1182
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    iget v13, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1183
    iget v12, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1185
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1186
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 1187
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1188
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1190
    :cond_c
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1191
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    .line 1193
    :cond_d
    iput v7, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 1194
    iget v12, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1185
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1197
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mNeedCalculatePageOffsets:Z

    .line 1198
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1717
    iget v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1718
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1720
    invoke-direct {p0, v7}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollingCacheEnabled(Z)V

    .line 1721
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1722
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v3

    .line 1723
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollY()I

    move-result v4

    .line 1724
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1725
    .local v5, "x":I
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1726
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1727
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 1730
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 1731
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1732
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 1733
    .local v1, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget-boolean v8, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1734
    const/4 v2, 0x1

    .line 1735
    iput-boolean v7, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->scrolling:Z

    .line 1731
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1717
    goto :goto_0

    .line 1738
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 1739
    if-eqz p1, :cond_6

    .line 1740
    iget-object v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1745
    :cond_5
    :goto_2
    return-void

    .line 1742
    :cond_6
    iget-object v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 2131
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2132
    if-lez p3, :cond_1

    move v2, p1

    .line 2138
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2139
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2140
    .local v0, "firstItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2143
    .local v1, "lastItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget v4, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget v5, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2146
    .end local v0    # "firstItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v1    # "lastItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_0
    return v2

    .line 2132
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2134
    :cond_2
    iget v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-lt p1, v4, :cond_3

    const v3, 0x3ecccccd    # 0.4f

    .line 2135
    .local v3, "truncator":F
    :goto_1
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0

    .line 2134
    .end local v2    # "targetPage":I
    .end local v3    # "truncator":F
    :cond_3
    const v3, 0x3f19999a    # 0.6f

    goto :goto_1
.end method

.method private enableLayers(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1752
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v0

    .line 1753
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1754
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1756
    .local v2, "layerType":I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1754
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1758
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2378
    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    .line 2379
    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsUnableToDrag:Z

    .line 2381
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2382
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2385
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2559
    if-nez p1, :cond_0

    .line 2560
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2562
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2563
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2581
    :cond_1
    return-object p1

    .line 2566
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2567
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2568
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2569
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2571
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2572
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2573
    check-cast v0, Landroid/view/ViewGroup;

    .line 2574
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2575
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2576
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2577
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2579
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2580
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2088
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v12

    .line 2089
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2090
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2091
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2092
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2093
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2094
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2096
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2097
    .local v3, "lastItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2098
    iget-object v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2100
    .local v2, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2102
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempItem:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2103
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 2104
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 2105
    iget-object v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget v14, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    .line 2106
    add-int/lit8 v1, v1, -0x1

    .line 2108
    :cond_1
    iget v9, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 2110
    .local v9, "offset":F
    move v7, v9

    .line 2111
    .local v7, "leftBound":F
    iget v13, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2112
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2113
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2126
    .end local v2    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v3    # "lastItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2089
    goto :goto_0

    .line 2119
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .restart local v3    # "lastItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2120
    iget v5, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 2121
    move v4, v9

    .line 2122
    iget v6, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    .line 2123
    move-object v3, v2

    .line 2097
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1748
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2363
    invoke-static {p1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2364
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2365
    .local v1, "pointerId":I
    iget v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2368
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2369
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 2370
    invoke-static {p1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 2371
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2372
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2375
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1612
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1613
    iput-boolean v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCalledSuper:Z

    .line 1614
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->onPageScrolled(IFI)V

    .line 1615
    iget-boolean v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1616
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1621
    :cond_0
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForCurrentScrollPosition()Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v1

    .line 1622
    .local v1, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v5

    .line 1623
    .local v5, "width":I
    iget v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1624
    .local v6, "widthWithMargin":I
    iget v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1625
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 1626
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1628
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1630
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCalledSuper:Z

    .line 1631
    invoke-virtual {p0, v0, v4, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->onPageScrolled(IFI)V

    .line 1632
    iget-boolean v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1633
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1636
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 17
    .param p1, "x"    # F

    .prologue
    .line 2037
    const/4 v7, 0x0

    .line 2039
    .local v7, "needsInvalidate":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    sub-float v2, v14, p1

    .line 2040
    .local v2, "deltaX":F
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 2042
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v14

    int-to-float v8, v14

    .line 2043
    .local v8, "oldScrollX":F
    add-float v12, v8, v2

    .line 2044
    .local v12, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v13

    .line 2046
    .local v13, "width":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    mul-float v6, v14, v15

    .line 2047
    .local v6, "leftBound":F
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    mul-float v11, v14, v15

    .line 2048
    .local v11, "rightBound":F
    const/4 v5, 0x1

    .line 2049
    .local v5, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2051
    .local v10, "rightAbsolute":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2052
    .local v3, "firstItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2053
    .local v4, "lastItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget v14, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-eqz v14, :cond_0

    .line 2054
    const/4 v5, 0x0

    .line 2055
    iget v14, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v6, v14, v15

    .line 2057
    :cond_0
    iget v14, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v15}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_1

    .line 2058
    const/4 v10, 0x0

    .line 2059
    iget v14, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    int-to-float v15, v13

    mul-float v11, v14, v15

    .line 2062
    :cond_1
    cmpg-float v14, v12, v6

    if-gez v14, :cond_4

    .line 2063
    if-eqz v5, :cond_2

    .line 2064
    sub-float v9, v6, v12

    .line 2065
    .local v9, "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2067
    .end local v9    # "over":F
    :cond_2
    move v12, v6

    .line 2076
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    float-to-int v15, v12

    int-to-float v15, v15

    sub-float v15, v12, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 2077
    float-to-int v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollY()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 2078
    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageScrolled(I)Z

    .line 2080
    return v7

    .line 2068
    :cond_4
    cmpl-float v14, v12, v11

    if-lez v14, :cond_3

    .line 2069
    if-eqz v10, :cond_5

    .line 2070
    sub-float v9, v12, v11

    .line 2071
    .restart local v9    # "over":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->onPull(F)Z

    move-result v7

    .line 2073
    .end local v9    # "over":F
    :cond_5
    move v12, v11

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1449
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1450
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1451
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1453
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v13

    .line 1454
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1455
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1457
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 1458
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1461
    .local v5, "newDuration":I
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForPosition(I)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v11

    .line 1462
    .local v11, "targetInfo":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1475
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForPosition(I)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v6

    .line 1467
    .local v6, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    iget v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1468
    .local v9, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1470
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1471
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->completeScroll(Z)V

    .line 1472
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1467
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 447
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 448
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 449
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 450
    .local v2, "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 451
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->removeViewAt(I)V

    .line 452
    add-int/lit8 v1, v1, -0x1

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2031
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2032
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2034
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 550
    invoke-virtual {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForPosition(I)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v0

    .line 551
    .local v0, "curInfo":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 552
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v2

    .line 554
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    iget v5, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    iget v6, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 557
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_3

    .line 558
    invoke-virtual {p0, v1, v7, p3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->smoothScrollTo(III)V

    .line 559
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 560
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 562
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 563
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 576
    :cond_2
    :goto_0
    return-void

    .line 566
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 567
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 569
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 570
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 572
    :cond_5
    invoke-direct {p0, v7}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->completeScroll(Z)V

    .line 573
    invoke-virtual {p0, v1, v7}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 574
    invoke-direct {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 381
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iput p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollState:I

    .line 386
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageTransformer:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 388
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->enableLayers(Z)V

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 388
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2388
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2389
    iput-boolean p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollingCacheEnabled:Z

    .line 2400
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1099
    iget v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1100
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1105
    :goto_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v1

    .line 1106
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1107
    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1103
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1110
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->sPositionComparator:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1112
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2605
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2607
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2609
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2610
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2611
    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2612
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2613
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v4

    .line 2614
    .local v4, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2615
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2610
    .end local v4    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2625
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2631
    :cond_2
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2642
    :cond_3
    :goto_1
    return-void

    .line 2634
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2638
    :cond_5
    if-eqz p1, :cond_3

    .line 2639
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 823
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;-><init>()V

    .line 824
    .local v0, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iput p1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 825
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 826
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    .line 827
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :goto_0
    return-object v0

    .line 830
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2652
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2653
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2654
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2655
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v2

    .line 2656
    .local v2, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2657
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2652
    .end local v2    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2661
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1273
    invoke-virtual {p0, p3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    invoke-virtual {p0, p3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1276
    check-cast v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1277
    .local v0, "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    .line 1278
    iget-boolean v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1279
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1280
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1282
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->needsMeasure:Z

    .line 1283
    invoke-virtual {p0, p1, p2, p3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1295
    :goto_0
    return-void

    .line 1285
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2493
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2494
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2495
    const/4 v1, 0x0

    .line 2519
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2521
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2523
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2524
    if-ne p1, v11, :cond_8

    .line 2527
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2528
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2529
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2530
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageLeft()Z

    move-result v2

    .line 2552
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2553
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->playSoundEffect(I)V

    .line 2555
    :cond_2
    return v2

    .line 2496
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2497
    const/4 v3, 0x0

    .line 2498
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2500
    if-ne v6, p0, :cond_5

    .line 2501
    const/4 v3, 0x1

    .line 2505
    :cond_4
    if-nez v3, :cond_0

    .line 2507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2508
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2509
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2511
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2499
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2513
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, "ViewPager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2532
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    .line 2534
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2537
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2538
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2539
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2540
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    .line 2542
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    .line 2545
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2547
    :cond_b
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    .line 2548
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2550
    :cond_d
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2253
    iget-boolean v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2269
    :goto_0
    return v4

    .line 2256
    :cond_0
    iput-boolean v9, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragging:Z

    .line 2257
    invoke-direct {p0, v9}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V

    .line 2258
    iput v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    .line 2259
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2260
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2264
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2265
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2266
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2267
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2268
    iput-wide v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2269
    goto :goto_0

    .line 2262
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2430
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2431
    check-cast v7, Landroid/view/ViewGroup;

    .line 2432
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2433
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2434
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2436
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2439
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2440
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2444
    const/4 v0, 0x1

    .line 2449
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2436
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2449
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2403
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-nez v4, :cond_1

    .line 2414
    :cond_0
    :goto_0
    return v3

    .line 2407
    :cond_1
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v1

    .line 2408
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v0

    .line 2409
    .local v0, "scrollX":I
    if-gez p1, :cond_3

    .line 2410
    int-to-float v4, v1

    iget v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2411
    :cond_3
    if-lez p1, :cond_0

    .line 2412
    int-to-float v4, v1

    iget v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2731
    instance-of v0, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1588
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1589
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v0

    .line 1590
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollY()I

    move-result v1

    .line 1591
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1592
    .local v2, "x":I
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1594
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1595
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 1596
    invoke-direct {p0, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1597
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1598
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 1603
    :cond_1
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->postInvalidateOnAnimation()V

    .line 1609
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1608
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 838
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v12}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v0

    .line 839
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mExpectedAdapterCount:I

    .line 840
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .line 842
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    .line 844
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 845
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 846
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 847
    .local v4, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget-object v13, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 849
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 845
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    .line 840
    goto :goto_0

    .line 853
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 854
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 855
    add-int/lit8 v3, v3, -0x1

    .line 857
    if-nez v5, :cond_3

    .line 858
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 859
    const/4 v5, 0x1

    .line 862
    :cond_3
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget v13, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 863
    const/4 v7, 0x1

    .line 865
    iget v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    iget v13, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 867
    iget v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 868
    const/4 v7, 0x1

    goto :goto_2

    .line 873
    :cond_4
    iget v12, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    .line 874
    iget v12, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-ne v12, v13, :cond_5

    .line 876
    move v8, v9

    .line 879
    :cond_5
    iput v9, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 880
    const/4 v7, 0x1

    goto :goto_2

    .line 884
    .end local v4    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    .line 885
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v12, p0}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 888
    :cond_7
    iget-object v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 890
    if-eqz v7, :cond_a

    .line 892
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v2

    .line 893
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    .line 894
    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 895
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 896
    .local v6, "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    iget-boolean v12, v6, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    .line 897
    const/4 v12, 0x0

    iput v12, v6, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->widthFactor:F

    .line 893
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 901
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZ)V

    .line 902
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->requestLayout()V

    .line 904
    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2455
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2699
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2700
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2716
    :goto_0
    return v4

    .line 2704
    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v1

    .line 2705
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2706
    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2707
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2708
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v3

    .line 2709
    .local v3, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2711
    const/4 v4, 0x1

    goto :goto_0

    .line 2705
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2716
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 759
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 760
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 761
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 2151
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2152
    const/4 v1, 0x0

    .line 2154
    .local v1, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getOverScrollMode()I

    move-result v2

    .line 2155
    .local v2, "overScrollMode":I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_4

    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 2158
    :cond_0
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2160
    .local v3, "restoreCount":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2161
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getWidth()I

    move-result v4

    .line 2163
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2164
    neg-int v5, v0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2165
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->setSize(II)V

    .line 2166
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5, p1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2167
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2169
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_1
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2171
    .restart local v3    # "restoreCount":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getWidth()I

    move-result v4

    .line 2172
    .restart local v4    # "width":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 2174
    .restart local v0    # "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2175
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2176
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5, v0, v4}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->setSize(II)V

    .line 2177
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5, p1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 2178
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2185
    .end local v0    # "height":I
    .end local v3    # "restoreCount":I
    .end local v4    # "width":I
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 2187
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->postInvalidateOnAnimation()V

    .line 2189
    :cond_3
    return-void

    .line 2181
    :cond_4
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->finish()V

    .line 2182
    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 747
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 748
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 749
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 752
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2279
    iget-boolean v9, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2280
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2283
    :cond_0
    iget-object v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2284
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2285
    iget v9, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    .line 2286
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 2287
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v8

    .line 2288
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v5

    .line 2289
    .local v5, "scrollX":I
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForCurrentScrollPosition()Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v1

    .line 2290
    .local v1, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 2291
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2292
    .local v4, "pageOffset":F
    iget v9, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    iget v10, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2293
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->determineTargetPage(IFII)I

    move-result v3

    .line 2295
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZI)V

    .line 2296
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->endDrag()V

    .line 2298
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragging:Z

    .line 2299
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2467
    const/4 v0, 0x0

    .line 2468
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2489
    :cond_0
    :goto_0
    return v0

    .line 2471
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2472
    goto :goto_0

    .line 2474
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2475
    goto :goto_0

    .line 2477
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2480
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2481
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2482
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2483
    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2469
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2309
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2310
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2313
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 2315
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2316
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2317
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v17

    .line 2319
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2320
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2322
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2323
    .local v11, "firstItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2324
    .local v12, "lastItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget v2, v11, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2325
    iget v2, v11, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2327
    :cond_1
    iget v2, v12, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2328
    iget v2, v12, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2331
    :cond_2
    cmpg-float v2, v16, v13

    if-gez v2, :cond_4

    .line 2332
    move/from16 v16, v13

    .line 2337
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 2338
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 2339
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->pageScrolled(I)Z

    .line 2342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2343
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2345
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2346
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 2347
    return-void

    .line 2333
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v15

    if-lez v2, :cond_3

    .line 2334
    move/from16 v16, v15

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2721
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2736
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2726
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 635
    iget v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 636
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    iget v1, v2, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->childIndex:I

    .line 637
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 635
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1318
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1319
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1320
    :cond_0
    const/4 v1, 0x0

    .line 1324
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1322
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1324
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1308
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 1309
    .local v1, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget-object v3, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1313
    .end local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1307
    .restart local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1313
    .end local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1329
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 1330
    .local v1, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget v2, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1334
    .end local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 1328
    .restart local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1334
    .end local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 351
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setWillNotDraw(Z)V

    .line 352
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setDescendantFocusability(I)V

    .line 353
    invoke-virtual {p0, v5}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setFocusable(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 355
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    .line 356
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 357
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 359
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    .line 360
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMinimumVelocity:I

    .line 361
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMaximumVelocity:I

    .line 362
    new-instance v3, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-direct {v3, v1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    .line 363
    new-instance v3, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    invoke-direct {v3, v1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    .line 365
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFlingDistance:I

    .line 366
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCloseEnough:I

    .line 367
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDefaultGutterSize:I

    .line 369
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 370
    invoke-virtual {p0, v5}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setImportantForAccessibility(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2359
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1339
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    .line 1341
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 377
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 378
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2193
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2196
    move-object/from16 v0, p0

    iget v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v13, :cond_2

    .line 2197
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v10

    .line 2198
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getWidth()I

    move-result v11

    .line 2200
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2201
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2202
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 2203
    .local v3, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget v8, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    .line 2204
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2205
    .local v4, "itemCount":I
    iget v2, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 2206
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    iget v6, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 2207
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2208
    :goto_1
    iget v13, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    goto :goto_1

    .line 2213
    :cond_0
    iget v13, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2214
    iget v13, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2215
    .local v1, "drawAt":F
    iget v13, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    iget v14, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2222
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2228
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2233
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2217
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v13, v9}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2218
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2219
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2207
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1771
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_2

    .line 1774
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    .line 1775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsUnableToDrag:Z

    .line 1776
    const/4 v0, -0x1

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 1777
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1778
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1781
    :cond_1
    const/4 v0, 0x0

    .line 1901
    :goto_0
    return v0

    .line 1786
    :cond_2
    if-eqz v6, :cond_4

    .line 1787
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 1789
    const/4 v0, 0x1

    goto :goto_0

    .line 1791
    :cond_3
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_4

    .line 1793
    const/4 v0, 0x0

    goto :goto_0

    .line 1797
    :cond_4
    sparse-switch v6, :sswitch_data_0

    .line 1892
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1893
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1895
    :cond_6
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1901
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1808
    :sswitch_0
    iget v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 1809
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 1814
    invoke-static {p1, v7}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    .line 1815
    .local v9, "pointerIndex":I
    invoke-static {p1, v9}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1816
    .local v10, "x":F
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1817
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1818
    .local v11, "xDiff":F
    invoke-static {p1, v9}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 1819
    .local v12, "y":F
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1822
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1825
    iput v10, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 1826
    iput v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionY:F

    .line 1827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsUnableToDrag:Z

    .line 1828
    const/4 v0, 0x0

    goto :goto_0

    .line 1830
    :cond_7
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_a

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v11

    cmpl-float v0, v0, v13

    if-lez v0, :cond_a

    .line 1832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    .line 1833
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1834
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V

    .line 1835
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 1837
    iput v12, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionY:F

    .line 1838
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollingCacheEnabled(Z)V

    .line 1847
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1849
    invoke-direct {p0, v10}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1850
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1835
    :cond_9
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1839
    :cond_a
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_8

    .line 1845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsUnableToDrag:Z

    goto :goto_3

    .line 1861
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 1862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionY:F

    .line 1863
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 1864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsUnableToDrag:Z

    .line 1866
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1867
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_b

    .line 1870
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 1872
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    .line 1873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    .line 1874
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1875
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1877
    :cond_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->completeScroll(Z)V

    .line 1878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1888
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1797
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1479
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v9

    .line 1480
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1481
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1482
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v19

    .line 1483
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingTop()I

    move-result v21

    .line 1484
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v20

    .line 1485
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingBottom()I

    move-result v18

    .line 1486
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v22

    .line 1488
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1492
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1493
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1494
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1495
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1496
    .local v17, "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    const/4 v6, 0x0

    .line 1497
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1498
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1499
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1500
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1501
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1503
    :pswitch_0
    move/from16 v6, v19

    .line 1518
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1520
    move/from16 v7, v21

    .line 1535
    :goto_2
    add-int v6, v6, v22

    .line 1536
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1539
    add-int/lit8 v10, v10, 0x1

    .line 1492
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1506
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1507
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1508
    goto :goto_1

    .line 1510
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1512
    goto :goto_1

    .line 1514
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1515
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    .line 1523
    :sswitch_0
    move/from16 v7, v21

    .line 1524
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1525
    goto :goto_2

    .line 1527
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1529
    goto :goto_2

    .line 1531
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1532
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    .line 1544
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1546
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1547
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1548
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1549
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1551
    .restart local v17    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1552
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1553
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1554
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1555
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1558
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->needsMeasure:Z

    .line 1559
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1562
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1565
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1570
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1546
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1576
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTopPageBounds:I

    .line 1577
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mBottomPageBounds:I

    .line 1578
    move-object/from16 v0, p0

    iput v10, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDecorChildCount:I

    .line 1580
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollToItem(IZIZ)V

    .line 1583
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    .line 1584
    return-void

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1518
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1350
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setMeasuredDimension(II)V

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getMeasuredWidth()I

    move-result v15

    .line 1354
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1355
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mGutterSize:I

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1359
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1366
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v16

    .line 1367
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1368
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1369
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1370
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1371
    .local v13, "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1372
    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1373
    .local v11, "hgrav":I
    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1374
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1375
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1376
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1377
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1379
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1380
    const/high16 v18, 0x40000000    # 2.0f

    .line 1385
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1386
    .local v19, "widthSize":I
    move v9, v4

    .line 1387
    .local v9, "heightSize":I
    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1388
    const/high16 v18, 0x40000000    # 2.0f

    .line 1389
    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1390
    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1393
    :cond_3
    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1394
    const/high16 v8, 0x40000000    # 2.0f

    .line 1395
    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1396
    iget v9, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->height:I

    .line 1399
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1400
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1401
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1403
    if-eqz v7, :cond_9

    .line 1404
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1367
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1376
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1377
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1381
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1382
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1405
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1406
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1412
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mChildWidthMeasureSpec:I

    .line 1413
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mChildHeightMeasureSpec:I

    .line 1416
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInLayout:Z

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    .line 1418
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInLayout:Z

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v16

    .line 1422
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1423
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1424
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1428
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1429
    .restart local v13    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1430
    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1432
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1422
    .end local v13    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1436
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1653
    move-object/from16 v0, p0

    iget v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1654
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v12

    .line 1655
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v10

    .line 1656
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v11

    .line 1657
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getWidth()I

    move-result v14

    .line 1658
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v4

    .line 1659
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1660
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1661
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1662
    .local v9, "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1659
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1664
    :cond_1
    iget v15, v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1665
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1666
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    .line 1668
    :pswitch_0
    move v5, v10

    .line 1683
    :goto_2
    add-int/2addr v5, v12

    .line 1685
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1686
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1687
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1671
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1672
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1673
    goto :goto_2

    .line 1675
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1677
    goto :goto_2

    .line 1679
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1680
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_2

    .line 1692
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v15, :cond_3

    .line 1693
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1695
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1696
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1699
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageTransformer:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1700
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v12

    .line 1701
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v4

    .line 1702
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    .line 1703
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1704
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1706
    .restart local v9    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    iget-boolean v15, v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    .line 1702
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1708
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1709
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageTransformer:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1713
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCalledSuper:Z

    .line 1714
    return-void

    .line 1666
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v1

    .line 2673
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2674
    const/4 v6, 0x0

    .line 2675
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2676
    .local v5, "increment":I
    move v2, v1

    .line 2682
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2683
    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2684
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2685
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v4

    .line 2686
    .local v4, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2687
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2688
    const/4 v7, 0x1

    .line 2693
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_2
    return v7

    .line 2678
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2679
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2680
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2682
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2693
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1253
    instance-of v1, p1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;

    if-nez v1, :cond_0

    .line 1254
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1269
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1258
    check-cast v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;

    .line 1259
    .local v0, "ss":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;
    invoke-virtual {v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1261
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v1, :cond_1

    .line 1262
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget-object v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1263
    iget v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1265
    :cond_1
    iget v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->position:I

    iput v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredCurItem:I

    .line 1266
    iget-object v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1267
    iget-object v1, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1242
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1243
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1244
    .local v0, "ss":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;
    iget v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    iput v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->position:I

    .line 1245
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v2, :cond_0

    .line 1246
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1248
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1440
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1443
    if-eq p1, p3, :cond_0

    .line 1444
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->recomputeScrollPosition(IIII)V

    .line 1446
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1906
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1910
    const/16 v24, 0x1

    .line 2026
    :goto_0
    return v24

    .line 1913
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1916
    const/16 v24, 0x0

    goto :goto_0

    .line 1919
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 1921
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 1924
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 1925
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1927
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1929
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1930
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1932
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2023
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_6

    .line 2024
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->postInvalidateOnAnimation()V

    .line 2026
    :cond_6
    const/16 v24, 0x1

    goto :goto_0

    .line 1934
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1935
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 1936
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    .line 1939
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 1940
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionY:F

    .line 1941
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1945
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    .line 1946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    .line 1947
    .local v15, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1948
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1949
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v22

    .line 1950
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1952
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_7

    cmpl-float v24, v21, v23

    if-lez v24, :cond_7

    .line 1954
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    .line 1955
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1956
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 1958
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionY:F

    .line 1959
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V

    .line 1960
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollingCacheEnabled(Z)V

    .line 1963
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1964
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_7

    .line 1965
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1970
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1974
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1975
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    .line 1976
    goto/16 :goto_1

    .line 1956
    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .line 1979
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 1981
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 1983
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 1984
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v19

    .line 1985
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v16

    .line 1986
    .local v16, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForCurrentScrollPosition()Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v8

    .line 1987
    .local v8, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget v7, v8, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    .line 1988
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 1989
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1991
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 1992
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1993
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->determineTargetPage(IFII)I

    move-result v12

    .line 1995
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZI)V

    .line 1997
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 1998
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->endDrag()V

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v11, v24, v25

    .line 2000
    goto/16 :goto_1

    .line 2003
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 2004
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollToItem(IZIZ)V

    .line 2005
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    .line 2006
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->endDrag()V

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLeftEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->onRelease()Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRightEdge:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->onRelease()Z

    move-result v25

    or-int v11, v24, v25

    goto/16 :goto_1

    .line 2011
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v9

    .line 2012
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v20

    .line 2013
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    .line 2014
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2018
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2019
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1932
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2585
    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2586
    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItem(IZ)V

    .line 2589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2593
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2594
    iget v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItem(IZ)V

    .line 2597
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate(I)V

    .line 908
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 911
    const/16 v21, 0x0

    .line 912
    .local v21, "oldCurInfo":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    const/4 v15, 0x2

    .line 913
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    .line 915
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForPosition(I)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v21

    .line 916
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    .line 919
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->sortChildDrawingOrder()V

    .line 1096
    :cond_1
    :goto_1
    return-void

    .line 914
    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    .line 928
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->sortChildDrawingOrder()V

    goto :goto_1

    .line 937
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 944
    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 945
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v4

    .line 946
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 948
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 951
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 955
    .local v24, "resName":Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 952
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 953
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_2

    .line 964
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 965
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 966
    .local v9, "curItem":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 968
    .local v17, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    .line 969
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 974
    .end local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->addNewItem(II)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v9

    .line 981
    :cond_7
    if-eqz v9, :cond_a

    .line 982
    const/4 v13, 0x0

    .line 983
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 984
    .local v18, "itemIndex":I
    if-ltz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 985
    .restart local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v7

    .line 986
    .local v7, "clientWidth":I
    if-gtz v7, :cond_e

    const/16 v19, 0x0

    .line 988
    .local v19, "leftWidthNeeded":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_6
    if-ltz v23, :cond_8

    .line 989
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_12

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_12

    .line 990
    if-nez v17, :cond_f

    .line 1016
    :cond_8
    iget v14, v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    .line 1017
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1018
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_9

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1020
    :goto_7
    if-gtz v7, :cond_17

    const/16 v25, 0x0

    .line 1022
    .local v25, "rightWidthNeeded":F
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_9
    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 1023
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1b

    move/from16 v0, v23

    if-le v0, v12, :cond_1b

    .line 1024
    if-nez v17, :cond_18

    .line 1049
    .end local v25    # "rightWidthNeeded":F
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->calculatePageOffsets(Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;ILcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;)V

    .line 1059
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_1f

    iget-object v0, v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1065
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v6

    .line 1066
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v6, :cond_20

    .line 1067
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1068
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;

    .line 1069
    .local v20, "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->childIndex:I

    .line 1070
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_b

    move-object/from16 v0, v20

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_b

    .line 1072
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v17

    .line 1073
    .restart local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    if-eqz v17, :cond_b

    .line 1074
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->widthFactor:F

    .line 1075
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;->position:I

    .line 1066
    .end local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 966
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$LayoutParams;
    .restart local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 984
    .end local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 986
    .restart local v7    # "clientWidth":I
    .restart local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_e
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_5

    .line 993
    .restart local v19    # "leftWidthNeeded":F
    .restart local v23    # "pos":I
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_10

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1000
    add-int/lit8 v18, v18, -0x1

    .line 1001
    add-int/lit8 v8, v8, -0x1

    .line 1002
    if-ltz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 988
    :cond_10
    :goto_c
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    .line 1002
    :cond_11
    const/16 v17, 0x0

    goto :goto_c

    .line 1004
    :cond_12
    if-eqz v17, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 1005
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1006
    add-int/lit8 v18, v18, -0x1

    .line 1007
    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_d
    goto :goto_c

    :cond_13
    const/16 v17, 0x0

    goto :goto_d

    .line 1009
    :cond_14
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->addNewItem(II)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v17

    .line 1010
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1011
    add-int/lit8 v8, v8, 0x1

    .line 1012
    if-ltz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_e
    goto :goto_c

    :cond_15
    const/16 v17, 0x0

    goto :goto_e

    .line 1019
    .restart local v14    # "extraWidthRight":F
    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1020
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    add-float v25, v27, v28

    goto/16 :goto_8

    .line 1027
    .restart local v25    # "rightWidthNeeded":F
    :cond_18
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_19

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    .line 1022
    :cond_19
    :goto_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 1034
    :cond_1a
    const/16 v17, 0x0

    goto :goto_f

    .line 1036
    :cond_1b
    if-eqz v17, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    .line 1037
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1038
    add-int/lit8 v18, v18, 0x1

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_10
    goto :goto_f

    :cond_1c
    const/16 v17, 0x0

    goto :goto_10

    .line 1041
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->addNewItem(II)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v17

    .line 1042
    add-int/lit8 v18, v18, 0x1

    .line 1043
    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v14, v14, v27

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-object/from16 v17, v27

    :goto_11
    goto :goto_f

    :cond_1e
    const/16 v17, 0x0

    goto :goto_11

    .line 1059
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_1f
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 1079
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->sortChildDrawingOrder()V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1083
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v17

    .line 1084
    .restart local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :goto_12
    if-eqz v17, :cond_21

    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1085
    :cond_21
    const/16 v16, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 1086
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1087
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->infoForChild(Landroid/view/View;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    move-result-object v17

    .line 1088
    if-eqz v17, :cond_22

    move-object/from16 v0, v17

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    .line 1089
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1085
    :cond_22
    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    .line 1083
    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_23
    const/16 v17, 0x0

    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1304
    :goto_0
    return-void

    .line 1302
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 401
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v4, :cond_1

    .line 402
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mObserver:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 403
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v4, p0}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 405
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    .line 406
    .local v1, "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget v5, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "ii":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v4, p0}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 409
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 410
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->removeNonDecorViews()V

    .line 411
    iput v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    .line 412
    invoke-virtual {p0, v7, v7}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollTo(II)V

    .line 415
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    .line 416
    .local v2, "oldAdapter":Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;
    iput-object p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    .line 417
    iput v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mExpectedAdapterCount:I

    .line 419
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v4, :cond_3

    .line 420
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mObserver:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;

    if-nez v4, :cond_2

    .line 421
    new-instance v4, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;-><init>(Lcom/amigo/internal/widget/tabhost/AmigoViewPager;Lcom/amigo/internal/widget/tabhost/AmigoViewPager$1;)V

    iput-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mObserver:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;

    .line 423
    :cond_2
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mObserver:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 424
    iput-boolean v7, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 425
    iget-boolean v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    .line 426
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    .line 427
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mExpectedAdapterCount:I

    .line 428
    iget v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 429
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget-object v5, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 430
    iget v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZ)V

    .line 431
    const/4 v4, -0x1

    iput v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredCurItem:I

    .line 432
    iput-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 433
    iput-object v8, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 441
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapterChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 442
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapterChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;)V

    .line 444
    :cond_4
    return-void

    .line 434
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 435
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    goto :goto_1

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 616
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 617
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 619
    :try_start_0
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 631
    :cond_1
    :goto_1
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewPager"

    const-string v2, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 627
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewPager"

    const-string v2, "Error changing children drawing order"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 482
    iput-boolean v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 483
    iget-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZ)V

    .line 484
    return-void

    :cond_0
    move v0, v1

    .line 483
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPopulatePending:Z

    .line 494
    invoke-virtual {p0, p1, p2, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZ)V

    .line 495
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setCurrentItemInternal(IZZI)V

    .line 503
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 506
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 507
    :cond_0
    invoke-direct {p0, v4}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollingCacheEnabled(Z)V

    .line 546
    :goto_0
    return-void

    .line 510
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    invoke-direct {p0, v4}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 515
    :cond_2
    if-gez p1, :cond_5

    .line 516
    const/4 p1, 0x0

    .line 520
    :cond_3
    :goto_1
    iget v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    .line 521
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_6

    .line 525
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 526
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;

    iput-boolean v0, v3, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$ItemInfo;->scrolling:Z

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 517
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 518
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 529
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    if-eq v3, p1, :cond_9

    .line 531
    .local v0, "dispatchSelected":Z
    :goto_3
    iget-boolean v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    .line 534
    iput p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    .line 535
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 536
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 538
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    if-eqz v3, :cond_8

    .line 539
    iget-object v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 541
    :cond_8
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->requestLayout()V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_9
    move v0, v4

    .line 529
    goto :goto_3

    .line 543
    .restart local v0    # "dispatchSelected":Z
    :cond_a
    invoke-virtual {p0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate(I)V

    .line 544
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method setInternalPageChangeListener(Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;)Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    .line 648
    .local v0, "oldListener":Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mInternalPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    .line 649
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 681
    if-ge p1, v3, :cond_0

    .line 682
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 p1, 0x1

    .line 686
    :cond_0
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 687
    iput p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOffscreenPageLimit:I

    .line 688
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    .line 690
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapterChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnAdapterChangeListener;

    .line 468
    return-void
.end method

.method public setOnPageChangeListener(Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mOnPageChangeListener:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$OnPageChangeListener;

    .line 586
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 701
    iget v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    .line 702
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    .line 704
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getWidth()I

    move-result v1

    .line 705
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->recomputeScrollPosition(IIII)V

    .line 707
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->requestLayout()V

    .line 708
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 738
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 726
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->refreshDrawableState()V

    .line 727
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setWillNotDraw(Z)V

    .line 728
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->invalidate()V

    .line 729
    return-void

    .line 727
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 601
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 602
    if-eqz p2, :cond_2

    move v0, v2

    .line 603
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageTransformer:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 604
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageTransformer:Lcom/amigo/internal/widget/tabhost/AmigoViewPager$PageTransformer;

    .line 605
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 606
    if-eqz v0, :cond_5

    .line 607
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrder:I

    .line 611
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    .line 613
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 602
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 603
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 609
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mDrawingOrder:I

    goto :goto_3
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->smoothScrollTo(III)V

    .line 772
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 784
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollingCacheEnabled(Z)V

    .line 820
    :goto_0
    return-void

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollX()I

    move-result v2

    .line 788
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getScrollY()I

    move-result v3

    .line 789
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 790
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 791
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 792
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->completeScroll(Z)V

    .line 793
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->populate()V

    .line 794
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V

    goto :goto_0

    .line 798
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollingCacheEnabled(Z)V

    .line 799
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->setScrollState(I)V

    .line 801
    invoke-direct {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->getClientWidth()I

    move-result v12

    .line 802
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 803
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 804
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 807
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 808
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 809
    if-lez p3, :cond_2

    .line 810
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 816
    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 818
    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 819
    invoke-virtual {p0}, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 812
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mAdapter:Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;

    iget v14, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/amigo/internal/widget/tabhost/AmigoPagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 813
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 814
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
