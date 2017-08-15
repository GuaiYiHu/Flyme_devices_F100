.class public Lcom/amigo/internal/widget/AmigoActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "AmigoActionBarContainer.java"


# static fields
.field private static final ANIM_DURATION:I = 0x12c


# instance fields
.field private mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

.field private mActivityContent:Landroid/view/View;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContainerHeight:I

.field private mContext:Landroid/content/Context;

.field private mDistance:I

.field private mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

.field private mExtraView:Landroid/view/View;

.field private mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

.field private mExtraViewContainerHeight:I

.field private mFisActivityContentTop:I

.field private mHasEmbeddedTabs:Z

.field private mInitActionBarBottom:I

.field private mInitActivityTop:I

.field private mIsDragCloseEnd:Z

.field private mIsDragClosed:Z

.field private mIsDragEnable:Z

.field private mIsDragOpenEnd:Z

.field private mIsDragOpenStart:Z

.field private mIsDragOpened:Z

.field private mIsSplit:Z

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mOriActionBarVieBottom:I

.field private mOriActionBarViewTop:I

.field private mOriActivityContentTop:I

.field private mOriBottom:I

.field private mOriIntellgentContainerBottom:I

.field private mOriTabBottom:I

.field private mOriTabTop:I

.field private mOriY:F

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenStart:Z

    .line 43
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenEnd:Z

    .line 44
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragCloseEnd:Z

    .line 45
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpened:Z

    .line 46
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragClosed:Z

    .line 49
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mHasEmbeddedTabs:Z

    .line 52
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    .line 403
    iput-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragEnable:Z

    .line 406
    const/4 v3, -0x1

    iput v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mFisActivityContentTop:I

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mContext:Landroid/content/Context;

    .line 63
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 65
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    iget-boolean v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setWillNotDraw(Z)V

    .line 81
    return-void

    :cond_1
    move v1, v2

    .line 79
    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 30
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    return v0
.end method

.method static synthetic access$100(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 30
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mFisActivityContentTop:I

    return v0
.end method

.method static synthetic access$200(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoExtraViewContainer;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amigo/internal/widget/AmigoActionBarContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->layoutExtraView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoActionBarView;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 30
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    return v0
.end method

.method private actionbarCloseAnimation(I)V
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 566
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    .line 567
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 568
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 569
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 570
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;

    invoke-direct {v1, p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;-><init>(Lcom/amigo/internal/widget/AmigoActionBarContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 593
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;

    invoke-direct {v1, p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;-><init>(Lcom/amigo/internal/widget/AmigoActionBarContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    return-void
.end method

.method private layoutExtraView(I)V
    .locals 4
    .param p1, "containerHeight"    # I

    .prologue
    .line 558
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 559
    .local v2, "viewHeight":I
    sub-int v3, p1, v2

    div-int/lit8 v1, v3, 0x2

    .line 560
    .local v1, "top":I
    add-int v0, v1, v2

    .line 561
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTop(I)V

    .line 562
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBottom(I)V

    .line 563
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 415
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragEnable:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 416
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 537
    :goto_0
    return v5

    .line 418
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 537
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    .line 420
    :pswitch_0
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_3

    .line 421
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 423
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriY:F

    .line 424
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getBottom()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriBottom:I

    .line 425
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->getBottom()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriIntellgentContainerBottom:I

    .line 427
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoActionBarView;->getTop()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriTabTop:I

    .line 428
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoActionBarView;->getBottom()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriTabBottom:I

    .line 429
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mHasEmbeddedTabs:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v5, :cond_4

    .line 430
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getTop()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriTabTop:I

    .line 431
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getBottom()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriTabBottom:I

    .line 434
    :cond_4
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getActivityContent()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriActivityContentTop:I

    .line 435
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mFisActivityContentTop:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getActivityContent()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mFisActivityContentTop:I

    goto :goto_1

    .line 440
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriY:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    .line 441
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    if-eqz v5, :cond_2

    .line 442
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriBottom:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    add-int v1, v5, v6

    .line 443
    .local v1, "bottom":I
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriTabTop:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    add-int v4, v5, v6

    .line 444
    .local v4, "tabContainerTop":I
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriTabBottom:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    add-int v3, v5, v6

    .line 447
    .local v3, "tabContainerBottom":I
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriActivityContentTop:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    add-int v0, v5, v6

    .line 448
    .local v0, "activityTop":I
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mOriIntellgentContainerBottom:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    add-int v2, v5, v6

    .line 449
    .local v2, "extraViewBottom":I
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    if-ge v1, v5, :cond_6

    .line 450
    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    .line 451
    const/4 v4, 0x0

    .line 452
    iget v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    .line 455
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mFisActivityContentTop:I

    .line 457
    const/4 v2, 0x0

    .line 458
    iput-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragCloseEnd:Z

    .line 476
    :goto_2
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setBottom(I)V

    .line 477
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getActivityContent()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setTop(I)V

    .line 479
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    invoke-virtual {v5, v2}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->setBottom(I)V

    .line 480
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->layoutExtraView(I)V

    .line 481
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v5, :cond_5

    .line 482
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5, v4}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setTop(I)V

    .line 483
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5, v3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setBottom(I)V

    .line 484
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5, v7}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setClickable(Z)V

    .line 487
    :cond_5
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v5, v4}, Lcom/amigo/internal/widget/AmigoActionBarView;->setTop(I)V

    .line 489
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v5, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setBottom(I)V

    .line 490
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v5, v7}, Lcom/amigo/internal/widget/AmigoActionBarView;->setClickable(Z)V

    .line 492
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    if-eqz v5, :cond_2

    .line 493
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenEnd:Z

    if-eqz v5, :cond_8

    .line 494
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpened:Z

    if-nez v5, :cond_2

    .line 495
    iput-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpened:Z

    .line 496
    iput-boolean v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenStart:Z

    .line 497
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v5, v6, v2}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragUpdate(FI)V

    .line 498
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    invoke-interface {v5}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragOpenEnd()V

    goto/16 :goto_1

    .line 459
    :cond_6
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    if-lez v5, :cond_7

    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    add-int/2addr v5, v6

    if-le v1, v5, :cond_7

    .line 461
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    add-int v1, v5, v6

    .line 462
    iget v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    .line 463
    move v3, v1

    .line 465
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mFisActivityContentTop:I

    add-int v0, v5, v6

    .line 467
    iget v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    .line 468
    iput-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenEnd:Z

    .line 469
    iget v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    iput v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDistance:I

    goto :goto_2

    .line 471
    :cond_7
    iput-boolean v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenEnd:Z

    .line 472
    iput-boolean v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpened:Z

    .line 473
    iput-boolean v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragCloseEnd:Z

    .line 474
    iput-boolean v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragClosed:Z

    goto/16 :goto_2

    .line 500
    :cond_8
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragCloseEnd:Z

    if-eqz v5, :cond_9

    .line 501
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragClosed:Z

    if-nez v5, :cond_2

    .line 502
    iput-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragClosed:Z

    .line 503
    iput-boolean v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenStart:Z

    .line 504
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v7}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragUpdate(FI)V

    .line 505
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    invoke-interface {v5}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragCloseEnd()V

    goto/16 :goto_1

    .line 509
    :cond_9
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenStart:Z

    if-eqz v5, :cond_a

    .line 510
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    int-to-float v6, v2

    iget v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-interface {v5, v6, v2}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragUpdate(FI)V

    goto/16 :goto_1

    .line 513
    :cond_a
    iput-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenStart:Z

    .line 514
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    invoke-interface {v5}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragOpenStart()V

    goto/16 :goto_1

    .line 522
    .end local v0    # "activityTop":I
    .end local v1    # "bottom":I
    .end local v2    # "extraViewBottom":I
    .end local v3    # "tabContainerBottom":I
    .end local v4    # "tabContainerTop":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    if-ne v5, v6, :cond_c

    .line 523
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v5, :cond_b

    .line 524
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5, v8}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setClickable(Z)V

    .line 526
    :cond_b
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v5, v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->setClickable(Z)V

    goto/16 :goto_1

    .line 528
    :cond_c
    iget-boolean v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragOpenEnd:Z

    if-nez v5, :cond_2

    .line 529
    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->getBottom()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->actionbarCloseAnimation(I)V

    goto/16 :goto_1

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 152
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 161
    :cond_2
    return-void
.end method

.method public getActivityContent()Landroid/view/View;
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActivityContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x90b004b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActivityContent:Landroid/view/View;

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActivityContent:Landroid/view/View;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 166
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 175
    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 543
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->get(Landroid/content/Context;)Lcom/amigo/internal/view/AmigoActionBarPolicy;

    move-result-object v0

    .line 544
    .local v0, "policy":Lcom/amigo/internal/view/AmigoActionBarPolicy;
    invoke-virtual {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mHasEmbeddedTabs:Z

    .line 550
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragUpdate(FI)V

    .line 552
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    invoke-interface {v1}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragCloseEnd()V

    .line 554
    :cond_0
    invoke-virtual {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mContainerHeight:I

    .line 555
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/AmigoActionBarView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 86
    const v0, 0x90b0048

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/widget/AmigoActionBarView;

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    .line 87
    const v0, 0x90b004a

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    .line 88
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 311
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 313
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getBottom()I

    move-result v8

    iput v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    .line 315
    iget v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I

    iput v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActivityTop:I

    .line 317
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->setBottom(I)V

    .line 319
    iget-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragEnable:Z

    if-eqz v8, :cond_0

    .line 320
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    invoke-virtual {v8}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->getExtraView()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraView:Landroid/view/View;

    .line 321
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 322
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I

    .line 326
    :cond_0
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v8}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    const/4 v4, 0x1

    .line 328
    .local v4, "hasTabs":Z
    :goto_0
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v8}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_5

    .line 329
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getMeasuredHeight()I

    move-result v2

    .line 330
    .local v2, "containerHeight":I
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v8}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getMeasuredHeight()I

    move-result v7

    .line 332
    .local v7, "tabHeight":I
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->getDisplayOptions()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_8

    .line 334
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getChildCount()I

    move-result v3

    .line 335
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 336
    invoke-virtual {p0, v5}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 338
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-ne v1, v8, :cond_3

    .line 335
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 326
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "containerHeight":I
    .end local v3    # "count":I
    .end local v4    # "hasTabs":Z
    .end local v5    # "i":I
    .end local v7    # "tabHeight":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 341
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "containerHeight":I
    .restart local v3    # "count":I
    .restart local v4    # "hasTabs":Z
    .restart local v5    # "i":I
    .restart local v7    # "tabHeight":I
    :cond_3
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v8}, Lcom/amigo/internal/widget/AmigoActionBarView;->isCollapsed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 342
    invoke-virtual {v1, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 345
    .end local v1    # "child":Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v7}, Lcom/amigo/internal/widget/AmigoTabContainerView;->layout(IIII)V

    .line 351
    .end local v2    # "containerHeight":I
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v7    # "tabHeight":I
    :cond_5
    :goto_3
    const/4 v6, 0x0

    .line 352
    .local v6, "needsInvalidate":Z
    iget-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    if-eqz v8, :cond_9

    .line 353
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    .line 354
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    const/4 v6, 0x1

    .line 370
    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 371
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->invalidate()V

    .line 374
    :cond_7
    return-void

    .line 347
    .end local v6    # "needsInvalidate":Z
    .restart local v2    # "containerHeight":I
    .restart local v7    # "tabHeight":I
    :cond_8
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    sub-int v9, v2, v7

    move/from16 v0, p4

    invoke-virtual {v8, p2, v9, v0, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->layout(IIII)V

    goto :goto_3

    .line 358
    .end local v2    # "containerHeight":I
    .end local v7    # "tabHeight":I
    .restart local v6    # "needsInvalidate":Z
    :cond_9
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    .line 359
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v9}, Lcom/amigo/internal/widget/AmigoActionBarView;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v10}, Lcom/amigo/internal/widget/AmigoActionBarView;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v11}, Lcom/amigo/internal/widget/AmigoActionBarView;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v12}, Lcom/amigo/internal/widget/AmigoActionBarView;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    const/4 v6, 0x1

    .line 363
    :cond_a
    if-eqz v4, :cond_b

    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsStacked:Z

    if-eqz v8, :cond_6

    .line 364
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v9}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v10}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v11}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getRight()I

    move-result v11

    iget-object v12, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v12}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    const/4 v6, 0x1

    goto :goto_4

    .line 363
    :cond_b
    const/4 v8, 0x0

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 279
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 287
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-nez v4, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 293
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarView;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    .line 295
    .local v0, "actionBarViewHeight":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setMeasuredDimension(II)V

    .line 298
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 299
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 300
    .local v3, "mode":I
    if-ne v3, v6, :cond_0

    .line 301
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 302
    .local v2, "maxHeight":I
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v5}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public setActivityContent(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActivityContent:Landroid/view/View;

    .line 631
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsDragEnable:Z

    .line 411
    return-void
.end method

.method public setExtraView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->setExtraView(Landroid/view/View;)V

    .line 642
    return-void
.end method

.method public setOnExtraViewDragListener(Lamigo/app/AmigoActionBar$OnExtraViewDragListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    .line 646
    return-void
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 96
    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    :cond_1
    iget-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setWillNotDraw(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->invalidate()V

    .line 102
    return-void

    :cond_3
    move v0, v1

    .line 99
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 130
    return-void
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 107
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 110
    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    :cond_1
    iget-boolean v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setWillNotDraw(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->invalidate()V

    .line 116
    return-void

    :cond_3
    move v0, v1

    .line 113
    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setTabContainer(Lcom/amigo/internal/widget/AmigoTabContainerView;)V
    .locals 2
    .param p1, "tabContainer"    # Lcom/amigo/internal/widget/AmigoTabContainerView;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->removeView(Landroid/view/View;)V

    .line 219
    :cond_0
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;

    .line 221
    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 225
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setAllowCollapse(Z)V

    .line 232
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsTransitioning:Z

    .line 193
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setDescendantFocusability(I)V

    .line 194
    return-void

    .line 193
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 135
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 136
    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 141
    :cond_1
    return-void

    .end local v0    # "isVisible":Z
    :cond_2
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
