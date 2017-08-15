.class public Lamigo/widget/AmigoMagicBar;
.super Landroid/widget/RelativeLayout;
.source "AmigoMagicBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoMagicBar$MenuListAdapter;,
        Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;,
        Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;,
        Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;,
        Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;,
        Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;
    }
.end annotation


# static fields
.field private static final MAGICBAR_LISTVIEW_LANDSCAPE_MAX_LINE:I = 0x2

.field private static final MAGICBAR_LISTVIEW_PORTRAIT_MAX_LINE:I = 0x4

.field public static final MAGIC_BAR_MENU_MAX_COUNT:I = 0x4

.field public static final MAX_BAR_ITEM_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AmigoMagicBar"

.field private static final TRANSLATION_ANIMATION_DURATION:I = 0x140


# instance fields
.field private isHideMode:Z

.field private mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

.field private mAmigoOptionMenuMoreBg:Landroid/graphics/drawable/Drawable;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mItemHeight:I

.field private mLayouAnimController:Landroid/view/animation/LayoutAnimationController;

.field private mListItemAnim:Landroid/view/animation/TranslateAnimation;

.field private mListItemHeight:I

.field private mListModeAnimationHeght:F

.field private mListModeHeight:I

.field private mListViewBottomMargin:I

.field private mListViewHorizontalMargin:I

.field private mListViewTopMargin:I

.field private mListener:Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;

.field private mLongClickListener:Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;

.field private mMagicListView:Landroid/widget/ListView;

.field private mMagicbarBackgroud:Landroid/widget/LinearLayout;

.field private mMaxIconSize:I

.field private mMaxListViewheight:I

.field private mMoreListener:Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;

.field private mOnMagicBarVisibleChangedListener:Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;

.field private mShadow:Landroid/view/View;

.field private mSubstanceLayout:Landroid/widget/RelativeLayout;

.field private mTab:Landroid/widget/LinearLayout;

.field private mTabButtons:[Landroid/widget/Button;

.field private mTitleBottomPadding:I

.field private mTitleModeHeight:I

.field private mTouchListener:Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;

.field private mTransParent:Landroid/graphics/drawable/Drawable;

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private menusOnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private menusOnTab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/Button;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoMagicBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    .line 106
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoMagicBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoMagicBar;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoMagicBar;

    .prologue
    .line 50
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/widget/AmigoMagicBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoMagicBar;

    .prologue
    .line 50
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/widget/AmigoMagicBar;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoMagicBar;

    .prologue
    .line 50
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoMagicBar;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoMagicBar;

    .prologue
    .line 50
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->updateView()V

    return-void
.end method

.method private adjuestListViewHeightIfNeed(I)V
    .locals 5
    .param p1, "heightMeasureSpec"    # I

    .prologue
    .line 722
    iget-object v3, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 737
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 728
    .local v1, "height":I
    iget v3, p0, Lamigo/widget/AmigoMagicBar;->mMaxListViewheight:I

    iget v4, p0, Lamigo/widget/AmigoMagicBar;->mTitleModeHeight:I

    add-int/2addr v3, v4

    if-le v3, v1, :cond_1

    .line 729
    iget v3, p0, Lamigo/widget/AmigoMagicBar;->mTitleModeHeight:I

    sub-int v0, v1, v3

    .line 730
    .local v0, "adjuestedListViewHeight":I
    iget-object v3, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 731
    .local v2, "p":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 732
    int-to-float v3, v0

    iput v3, p0, Lamigo/widget/AmigoMagicBar;->mListModeAnimationHeght:F

    goto :goto_0

    .line 734
    .end local v0    # "adjuestedListViewHeight":I
    .end local v2    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->setListViewMaxHeight()V

    goto :goto_0
.end method

.method private adjustTabButtonMinWidth()V
    .locals 3

    .prologue
    .line 707
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->computeMaxIconSize()V

    .line 708
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 709
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 710
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    :cond_0
    return-void
.end method

.method private computeMaxIconSize()V
    .locals 4

    .prologue
    .line 141
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 142
    .local v0, "density":F
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v2

    .line 143
    .local v1, "width":F
    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v0

    sub-float v2, v1, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    .line 144
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 404
    iget v5, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 405
    .local v4, "w":I
    iget v5, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 406
    .local v3, "h":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 408
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    return-object v0

    .line 406
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getChameleonDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 416
    if-eqz p1, :cond_0

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 420
    :cond_0
    return-object p1
.end method

.method private haveMagicListView()Z
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->isHaveData()Z

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoMagicBar;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->initView()V

    .line 112
    return-void
.end method

.method private initAnim(FFFF)V
    .locals 4
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    .prologue
    .line 834
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 835
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 836
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 838
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lamigo/widget/AmigoMagicBar;->mLayouAnimController:Landroid/view/animation/LayoutAnimationController;

    .line 839
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mLayouAnimController:Landroid/view/animation/LayoutAnimationController;

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 840
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mLayouAnimController:Landroid/view/animation/LayoutAnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 841
    return-void
.end method

.method private initData(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;

    .line 117
    sget-object v2, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoMagicBar;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    sget-object v2, Lcom/amigo/internal/R$styleable;->amigoOptionMenu:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoMagicBar;->mAmigoOptionMenuMoreBg:Landroid/graphics/drawable/Drawable;

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x9050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mItemHeight:I

    .line 126
    const v2, 0x9050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mListItemHeight:I

    .line 127
    const v2, 0x9050004    # 1.60093E-33f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mTitleModeHeight:I

    .line 128
    const v2, 0x905000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxListViewheight:I

    .line 129
    const v2, 0x905000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mListViewHorizontalMargin:I

    .line 130
    const v2, 0x905000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mListViewBottomMargin:I

    .line 133
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->computeMaxIconSize()V

    .line 134
    const v2, 0x905000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mTitleBottomPadding:I

    .line 135
    const v2, 0x9050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mListViewTopMargin:I

    .line 136
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTransParent:Landroid/graphics/drawable/Drawable;

    .line 138
    return-void
.end method

.method private initTabButtons()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 189
    new-array v1, v5, [Landroid/widget/Button;

    iput-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    .line 190
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    const/4 v3, 0x0

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v4, 0x90b003e

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 191
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    const/4 v3, 0x1

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v4, 0x90b003f

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 192
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    const/4 v3, 0x2

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v4, 0x90b0040

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 193
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    const/4 v3, 0x3

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v4, 0x90b0041

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    aput-object v1, v2, v3

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 195
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 197
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 198
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    iget v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 147
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 150
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x9030031

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    .line 152
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v5, 0x90b0064

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lamigo/widget/AmigoMagicBar;->mMagicbarBackgroud:Landroid/widget/LinearLayout;

    .line 153
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mMagicbarBackgroud:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lamigo/widget/AmigoMagicBar;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_0
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v5, 0x90b0061

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lamigo/widget/AmigoMagicBar;->mSubstanceLayout:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v5, 0x90b003d

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTab:Landroid/widget/LinearLayout;

    .line 159
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->initTabButtons()V

    .line 161
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v5, 0x90b003c

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    .line 162
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    const v5, 0x90b0044

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    .line 164
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lamigo/widget/AmigoMagicBar;->mListViewHorizontalMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 167
    iget v4, p0, Lamigo/widget/AmigoMagicBar;->mListViewHorizontalMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 168
    iget v4, p0, Lamigo/widget/AmigoMagicBar;->mListViewBottomMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 169
    iget v4, p0, Lamigo/widget/AmigoMagicBar;->mListViewTopMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 170
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 175
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 176
    instance-of v4, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_1

    .line 177
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 181
    :cond_1
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mMagicbarBackgroud:Landroid/widget/LinearLayout;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getBackgroudColor_B1()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 184
    :cond_2
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->removeAllViews()V

    .line 185
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoMagicbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoMagicBar;->addView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method private isMenusEmpty(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 345
    if-nez p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v1

    .line 349
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 350
    .local v0, "menuCount":I
    if-eqz v0, :cond_0

    .line 354
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setListViewMaxHeight()V
    .locals 4

    .prologue
    .line 424
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 430
    .local v1, "p":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 436
    const/4 v0, 0x2

    .line 441
    .local v0, "maxItemCount":I
    :goto_1
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 442
    iget v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxListViewheight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    iget v2, p0, Lamigo/widget/AmigoMagicBar;->mMaxListViewheight:I

    int-to-float v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mListModeAnimationHeght:F

    goto :goto_0

    .line 438
    .end local v0    # "maxItemCount":I
    :cond_2
    const/4 v0, 0x4

    .restart local v0    # "maxItemCount":I
    goto :goto_1

    .line 445
    :cond_3
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 446
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getListItemHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lamigo/widget/AmigoMagicBar;->mListModeAnimationHeght:F

    goto :goto_0
.end method

.method private setTabButtonMenuIconAndText()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 308
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    .local v0, "arr$":[Landroid/widget/Button;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 309
    .local v5, "tabBtn":Landroid/widget/Button;
    iget-object v7, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 310
    .local v4, "menuItem":Landroid/view/MenuItem;
    if-nez v4, :cond_1

    .line 308
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_1
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v7}, Lamigo/widget/AmigoMagicBar;->getChameleonDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v7}, Lamigo/widget/AmigoMagicBar;->zoomIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v12, v7, v12, v12}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 316
    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 322
    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v7, v13, [[I

    new-array v8, v11, [I

    const v9, -0x101009e

    aput v9, v8, v10

    aput-object v8, v7, v10

    new-array v8, v11, [I

    const v9, 0x101009e

    aput v9, v8, v10

    aput-object v8, v7, v11

    new-array v8, v13, [I

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v9

    aput v9, v8, v10

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v9

    aput v9, v8, v11

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 330
    .local v6, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 332
    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 333
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v7, :cond_0

    .line 334
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 338
    .end local v4    # "menuItem":Landroid/view/MenuItem;
    .end local v5    # "tabBtn":Landroid/widget/Button;
    .end local v6    # "textColors":Landroid/content/res/ColorStateList;
    :cond_2
    return-void
.end method

.method private setViewHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 494
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 495
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 496
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 498
    return-void
.end method

.method private updateShadow()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 474
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    const v1, 0x902003f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 476
    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoMagicBar;->setViewHeight(I)V

    .line 481
    :goto_0
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 483
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :cond_0
    :goto_1
    return-void

    .line 478
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lamigo/widget/AmigoMagicBar;->setViewHeight(I)V

    .line 479
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    const v1, 0x50808080

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 486
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateView()V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->updateShadow()V

    .line 468
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->setMoreIconAndText()V

    .line 471
    :cond_0
    return-void
.end method

.method private zoomIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 389
    if-eqz p1, :cond_2

    .line 390
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 391
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 392
    .local v2, "height":I
    iget v4, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    if-gt v3, v4, :cond_0

    iget v4, p0, Lamigo/widget/AmigoMagicBar;->mMaxIconSize:I

    if-le v2, v4, :cond_1

    .line 393
    :cond_0
    invoke-direct {p0, p1}, Lamigo/widget/AmigoMagicBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 394
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object p1, v1

    .line 400
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "height":I
    .end local v3    # "width":I
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-object p1

    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeListViewVisiable(Z)V
    .locals 3
    .param p1, "withAnim"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 744
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->haveMagicListView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    if-eqz p1, :cond_1

    .line 750
    invoke-virtual {p0, v2}, Lamigo/widget/AmigoMagicBar;->setListViewVisibilityWithAnim(I)V

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {p0, v2}, Lamigo/widget/AmigoMagicBar;->setListViewVisibilityWithoutAnim(I)V

    goto :goto_0

    .line 755
    :cond_2
    if-eqz p1, :cond_3

    .line 756
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoMagicBar;->setListViewVisibilityWithAnim(I)V

    goto :goto_0

    .line 758
    :cond_3
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoMagicBar;->setListViewVisibilityWithoutAnim(I)V

    goto :goto_0
.end method

.method public clearMagicBarData()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->initView()V

    .line 204
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    .line 205
    return-void
.end method

.method public getItemHeight()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lamigo/widget/AmigoMagicBar;->mItemHeight:I

    return v0
.end method

.method public getListItemHeight()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lamigo/widget/AmigoMagicBar;->mListItemHeight:I

    return v0
.end method

.method public getTitleModeHeight()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lamigo/widget/AmigoMagicBar;->mTitleModeHeight:I

    return v0
.end method

.method public isExpand()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHaveData()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideMode()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lamigo/widget/AmigoMagicBar;->isHideMode:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 560
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 562
    const-string v2, "AmigoMagicBar"

    const-string v3, "animation hasStarted, tab item can not click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const v1, 0x90b0041

    .line 567
    .local v1, "moreButtonId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 568
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mMoreListener:Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mMoreListener:Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;

    invoke-interface {v2, p1}, Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;->onMoreItemSelected(Landroid/view/View;)Z

    goto :goto_0

    .line 573
    :cond_2
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mListener:Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;

    if-eqz v2, :cond_0

    .line 576
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 577
    .local v0, "menuItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mListener:Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;

    invoke-interface {v2, v0}, Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 701
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x905000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lamigo/widget/AmigoMagicBar;->mMaxListViewheight:I

    .line 702
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->setListViewMaxHeight()V

    .line 703
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->adjustTabButtonMinWidth()V

    .line 704
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    const-string v0, "AmigoMagicBar"

    const-string v1, "animation hasStarted, list item can not click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mListener:Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;

    if-eqz v0, :cond_0

    .line 606
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mListener:Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;

    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 584
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mLongClickListener:Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;

    if-nez v1, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v3

    .line 588
    :cond_1
    const v0, 0x90b0041

    .line 589
    .local v0, "moreButtonId":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 593
    :cond_2
    iget-object v2, p0, Lamigo/widget/AmigoMagicBar;->mLongClickListener:Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;->onOptionsItemLongClick(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 716
    invoke-direct {p0, p2}, Lamigo/widget/AmigoMagicBar;->adjuestListViewHeightIfNeed(I)V

    .line 718
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 719
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public setHideMode(Z)V
    .locals 0
    .param p1, "isHideMode"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Lamigo/widget/AmigoMagicBar;->isHideMode:Z

    .line 617
    return-void
.end method

.method public setListViewVisibilityWithAnim(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 800
    :cond_0
    if-nez p1, :cond_1

    .line 801
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 802
    iget v0, p0, Lamigo/widget/AmigoMagicBar;->mListModeAnimationHeght:F

    invoke-direct {p0, v2, v2, v0, v2}, Lamigo/widget/AmigoMagicBar;->initAnim(FFFF)V

    .line 803
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->updateView()V

    .line 804
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mShadow:Landroid/view/View;

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 805
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTab:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 806
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mLayouAnimController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 807
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->startLayoutAnimation()V

    goto :goto_0

    .line 809
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoMagicBar;->mListModeAnimationHeght:F

    invoke-direct {p0, v2, v2, v2, v0}, Lamigo/widget/AmigoMagicBar;->initAnim(FFFF)V

    .line 810
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lamigo/widget/AmigoMagicBar$1;

    invoke-direct {v1, p0}, Lamigo/widget/AmigoMagicBar$1;-><init>(Lamigo/widget/AmigoMagicBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 827
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMagicBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setListViewVisibilityWithoutAnim(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 789
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 790
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->updateView()V

    .line 791
    return-void
.end method

.method public setMagicBarVisibilityWithAnim(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 775
    :cond_0
    if-nez p1, :cond_2

    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMagicBar;->setVisibility(I)V

    .line 777
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v1, v1, v0, v1}, Lamigo/widget/AmigoMagicBar;->initAnim(FFFF)V

    .line 782
    :goto_0
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mOnMagicBarVisibleChangedListener:Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mOnMagicBarVisibleChangedListener:Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;

    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;->onMagicBarVisibleChanged(I)V

    .line 785
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMagicBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 786
    return-void

    .line 779
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoMagicBar;->setVisibility(I)V

    .line 780
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v1, v1, v1, v0}, Lamigo/widget/AmigoMagicBar;->initAnim(FFFF)V

    goto :goto_0
.end method

.method public setMagicBarVisibilityWithoutAnim(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 764
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoMagicBar;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mOnMagicBarVisibleChangedListener:Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar;->mOnMagicBarVisibleChangedListener:Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;

    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;->onMagicBarVisibleChanged(I)V

    .line 768
    :cond_0
    return-void
.end method

.method public setMenus(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lamigo/widget/AmigoMagicBar;->isMenusEmpty(Landroid/view/Menu;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 209
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    .line 305
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 214
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 215
    iget-object v1, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    .local v1, "arr$":[Landroid/widget/Button;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v2, v1, v4

    .line 216
    .local v2, "btn":Landroid/widget/Button;
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .end local v2    # "btn":Landroid/widget/Button;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v0, "alwaysMenuItem":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v5, "ifRoomMenuItem":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v9, "othersMenuItem":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v8

    .line 223
    .local v8, "menuItemCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 224
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/MenuItem;->isVisible()Z

    move-result v11

    if-nez v11, :cond_2

    .line 223
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 228
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 229
    .local v7, "menuItem":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 230
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 234
    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 235
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 239
    :cond_4
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 242
    .end local v7    # "menuItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v10, "tabMenuItem":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_7

    .line 247
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->setMoreIconAndText()V

    .line 248
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_a

    .line 250
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MenuItem;

    .line 251
    .local v7, "menuItem":Landroid/view/MenuItem;
    const/4 v11, 0x3

    if-ge v3, v11, :cond_6

    .line 252
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    iget-object v12, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v12, v12, v3

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 254
    :cond_6
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 259
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    :cond_7
    const/4 v3, 0x0

    :goto_6
    const/4 v11, 0x3

    if-ge v3, v11, :cond_9

    .line 260
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_8

    .line 261
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MenuItem;

    .line 262
    .restart local v7    # "menuItem":Landroid/view/MenuItem;
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    iget-object v12, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v12, v12, v3

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 266
    :cond_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_d

    .line 267
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->setMoreIconAndText()V

    .line 268
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_a

    .line 270
    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MenuItem;

    .line 271
    .restart local v7    # "menuItem":Landroid/view/MenuItem;
    if-eqz v7, :cond_a

    .line 272
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    :cond_a
    :goto_7
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->setTabButtonMenuIconAndText()V

    .line 289
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    new-instance v12, Lamigo/widget/AmigoMagicBar$MenuListAdapter;

    invoke-direct {v12, p0}, Lamigo/widget/AmigoMagicBar$MenuListAdapter;-><init>(Lamigo/widget/AmigoMagicBar;)V

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    invoke-virtual {v11, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->setListViewMaxHeight()V

    .line 293
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 294
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    .line 301
    :cond_b
    :goto_8
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 302
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 304
    :cond_c
    invoke-direct {p0}, Lamigo/widget/AmigoMagicBar;->updateShadow()V

    goto/16 :goto_0

    .line 277
    :cond_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_a

    .line 278
    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/MenuItem;

    .line 279
    .restart local v7    # "menuItem":Landroid/view/MenuItem;
    if-eqz v7, :cond_a

    .line 280
    iget-object v11, p0, Lamigo/widget/AmigoMagicBar;->menusOnTab:Ljava/util/Map;

    iget-object v12, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    const/4 v13, 0x3

    aget-object v12, v12, v13

    invoke-interface {v11, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 296
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    :cond_e
    iget-boolean v11, p0, Lamigo/widget/AmigoMagicBar;->isHideMode:Z

    if-nez v11, :cond_b

    .line 297
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    goto :goto_8
.end method

.method public setMoreIconAndText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 359
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mAmigoOptionMenuMoreBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lamigo/widget/AmigoMagicBar;->getChameleonDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 360
    .local v3, "moreIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x902003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lamigo/widget/AmigoMagicBar;->getChameleonDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 362
    .local v0, "closeIcon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x3

    .line 363
    .local v2, "moreButtonIndex":I
    invoke-virtual {p0}, Lamigo/widget/AmigoMagicBar;->isExpand()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    invoke-virtual {v4, v6, v0, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    const v5, 0x9090018

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 371
    :goto_0
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 374
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 375
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v4, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_0

    .line 376
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 381
    :cond_0
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->menusOnList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    :goto_1
    return-void

    .line 367
    :cond_1
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    invoke-virtual {v4, v6, v3, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    const v5, 0x9090019

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 384
    :cond_2
    iget-object v4, p0, Lamigo/widget/AmigoMagicBar;->mTabButtons:[Landroid/widget/Button;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOnMagicBarVisibleChangedListener(Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;)V
    .locals 0
    .param p1, "l"    # Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;

    .prologue
    .line 550
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar;->mOnMagicBarVisibleChangedListener:Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;

    .line 551
    return-void
.end method

.method public setonMoreItemSelectedListener(Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;

    .prologue
    .line 542
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar;->mMoreListener:Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;

    .line 543
    return-void
.end method

.method public setonOptionsItemLongClickListener(Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;)V
    .locals 0
    .param p1, "l"    # Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;

    .prologue
    .line 546
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar;->mLongClickListener:Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;

    .line 547
    return-void
.end method

.method public setonOptionsItemSelectedListener(Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;

    .prologue
    .line 538
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar;->mListener:Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;

    .line 539
    return-void
.end method

.method public setonTransparentTouchListener(Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;)V
    .locals 0
    .param p1, "l"    # Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;

    .prologue
    .line 534
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar;->mTouchListener:Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;

    .line 535
    return-void
.end method
