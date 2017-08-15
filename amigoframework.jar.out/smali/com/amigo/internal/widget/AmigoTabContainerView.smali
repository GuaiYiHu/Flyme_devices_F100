.class public Lcom/amigo/internal/widget/AmigoTabContainerView;
.super Landroid/widget/RelativeLayout;
.source "AmigoTabContainerView.java"

# interfaces
.implements Lamigo/changecolors/IChangeColors;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/widget/AmigoTabContainerView$1;,
        Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;,
        Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;,
        Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;,
        Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final INDICATORVIEW_MARGIN_BOTTOM:I = 0x3

.field private static final INDICATORVIEW_MARGIN_LEFT:I = 0x6

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final ANIM_DURATION:I

.field private final INDICATOR_DEFAULT_HEIGHT:I

.field private final INDICATOR_DEFAULT_WIDTH:I

.field private mActionBarOverlay:Z

.field private mAllowCollapse:Z

.field private mAnimatingHeightOffset:I

.field private mClickable:Z

.field private mContentHeight:I

.field private mContentLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mIndicatorMarginLeft:I

.field private mIndicatorTop:I

.field private mIndicatroWidth:I

.field private mMaxTabWidth:I

.field private mPrevSelected:I

.field private mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;

.field private mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

.field private mTabTouchListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;

.field private mToLeft:Z

.field private mToRight:Z

.field protected final mVisAnimListener:Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private oriX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 464
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/amigo/internal/widget/AmigoTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/16 v1, 0xc8

    iput v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->ANIM_DURATION:I

    .line 52
    const/4 v1, 0x2

    iput v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->INDICATOR_DEFAULT_HEIGHT:I

    .line 54
    const/16 v1, 0xa

    iput v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->INDICATOR_DEFAULT_WIDTH:I

    .line 58
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mToLeft:Z

    .line 59
    iput v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mCurrentIndex:I

    .line 60
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mToRight:Z

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mClickable:Z

    .line 72
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mActionBarOverlay:Z

    .line 73
    const/4 v1, -0x1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mPrevSelected:I

    .line 465
    new-instance v1, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;-><init>(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    iput-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;

    .line 77
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->get(Landroid/content/Context;)Lcom/amigo/internal/view/AmigoActionBarPolicy;

    move-result-object v0

    .line 79
    .local v0, "abp":Lcom/amigo/internal/view/AmigoActionBarPolicy;
    invoke-virtual {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setContentHeight(I)V

    .line 80
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->createTabLayout()Lcom/amigo/internal/widget/AmigoTabIndicator;

    move-result-object v1

    iput-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    .line 82
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->addView(Landroid/view/View;)V

    .line 86
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mIndicatorMarginLeft:I

    .line 88
    return-void
.end method

.method static synthetic access$200(Lcom/amigo/internal/widget/AmigoTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoTabContainerView;

    .prologue
    .line 35
    iget v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/amigo/internal/widget/AmigoTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoTabContainerView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mActionBarOverlay:Z

    return v0
.end method

.method static synthetic access$400(Lcom/amigo/internal/widget/AmigoTabContainerView;)Lcom/amigo/internal/widget/AmigoTabIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoTabContainerView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amigo/internal/widget/AmigoTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoTabContainerView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mClickable:Z

    return v0
.end method

.method private createTabLayout()Lcom/amigo/internal/widget/AmigoTabIndicator;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 206
    new-instance v0, Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Lcom/amigo/internal/widget/AmigoTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 208
    .local v0, "tabLayout":Lcom/amigo/internal/widget/AmigoTabIndicator;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->setMeasureWithLargestChildEnabled(Z)V

    .line 209
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->setGravity(I)V

    .line 210
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-object v0
.end method

.method private createTabView(Lamigo/app/AmigoActionBar$Tab;Z)Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p2, "forAdapter"    # Z

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;-><init>(Lcom/amigo/internal/widget/AmigoTabContainerView;Landroid/content/Context;Lamigo/app/AmigoActionBar$Tab;Z)V

    .line 185
    .local v0, "tabView":Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {v0, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setFocusable(Z)V

    .line 192
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabClickListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 193
    new-instance v1, Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;-><init>(Lcom/amigo/internal/widget/AmigoTabContainerView;Lcom/amigo/internal/widget/AmigoTabContainerView$1;)V

    iput-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabClickListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabClickListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabTouchListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;

    if-nez v1, :cond_2

    .line 198
    new-instance v1, Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;

    invoke-direct {v1, p0, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;-><init>(Lcom/amigo/internal/widget/AmigoTabContainerView;Lcom/amigo/internal/widget/AmigoTabContainerView$1;)V

    iput-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabTouchListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabTouchListener:Lcom/amigo/internal/widget/AmigoTabContainerView$TabTouchListener;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lamigo/app/AmigoActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-direct {p0, p1, v5}, Lcom/amigo/internal/widget/AmigoTabContainerView;->createTabView(Lamigo/app/AmigoActionBar$Tab;Z)Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;

    move-result-object v0

    .line 161
    .local v0, "tabView":Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Lcom/amigo/internal/widget/AmigoTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 165
    if-eqz p3, :cond_0

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setSelected(Z)V

    .line 168
    :cond_0
    iget-boolean v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->requestLayout()V

    .line 171
    :cond_1
    return-void
.end method

.method public addTab(Lamigo/app/AmigoActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-direct {p0, p1, v5}, Lcom/amigo/internal/widget/AmigoTabContainerView;->createTabView(Lamigo/app/AmigoActionBar$Tab;Z)Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;

    move-result-object v0

    .line 149
    .local v0, "tabView":Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lcom/amigo/internal/widget/AmigoTabIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mPrevSelected:I

    if-gez v1, :cond_0

    .line 152
    iput v5, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mPrevSelected:I

    .line 154
    :cond_0
    if-eqz p2, :cond_1

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->setSelected(Z)V

    .line 157
    :cond_1
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 467
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 470
    :cond_0
    if-nez p1, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setAlpha(F)V

    .line 474
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 475
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 476
    sget-object v1, Lcom/amigo/internal/widget/AmigoTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 478
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 488
    :goto_0
    return-void

    .line 481
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 482
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 483
    sget-object v1, Lcom/amigo/internal/widget/AmigoTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 485
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 486
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public changeColors()V
    .locals 1

    .prologue
    .line 529
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAppbarColor_A1()I

    move-result v0

    .line 533
    .local v0, "primaryBackgroundColor":I
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->get(Landroid/content/Context;)Lcom/amigo/internal/view/AmigoActionBarPolicy;

    move-result-object v0

    .line 119
    .local v0, "abp":Lcom/amigo/internal/view/AmigoActionBarPolicy;
    invoke-virtual {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mStackedTabMaxWidth:I

    .line 120
    invoke-virtual {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setContentHeight(I)V

    .line 121
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 94
    .local v1, "widthMode":I
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildCount()I

    move-result v0

    .line 95
    .local v0, "childCount":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    if-eq v1, v4, :cond_0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    .line 96
    :cond_0
    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I

    .line 101
    :goto_0
    iget v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I

    iget v3, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I

    .line 105
    :goto_1
    iget v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mContentHeight:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 108
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lcom/amigo/internal/widget/AmigoTabIndicator;->measure(II)V

    .line 110
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 111
    return-void

    .line 99
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I

    goto :goto_0

    .line 103
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mMaxTabWidth:I

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "percent"    # F
    .param p3, "offset"    # I

    .prologue
    .line 421
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildCount()I

    move-result v0

    .line 422
    .local v0, "tabLayoutChildCount":I
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v1, p1, p2, p3}, Lcom/amigo/internal/widget/AmigoTabIndicator;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->removeAllViews()V

    .line 457
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->requestLayout()V

    .line 460
    :cond_0
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->removeViewAt(I)V

    .line 447
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->requestLayout()V

    .line 450
    :cond_0
    return-void
.end method

.method public setActionBarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z

    .prologue
    .line 537
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mActionBarOverlay:Z

    .line 538
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 524
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mAllowCollapse:Z

    .line 525
    return-void
.end method

.method public setClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mClickable:Z

    .line 415
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mContentHeight:I

    .line 144
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->requestLayout()V

    .line 145
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->setIndicatorBackgroundColor(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 128
    const-string v2, "AmigotabContainerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTabSelected position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPrevSelected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mPrevSelected:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v2, p1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 131
    .local v1, "selectedChild":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 132
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    iget v3, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mPrevSelected:I

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "prevChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 134
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 136
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 137
    iput p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mPrevSelected:I

    .line 140
    .end local v0    # "prevChild":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->update()V

    .line 178
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->requestLayout()V

    .line 181
    :cond_0
    return-void
.end method
