.class public Lamigo/app/AmigoActivity;
.super Landroid/app/Activity;
.source "AmigoActivity.java"

# interfaces
.implements Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;
.implements Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;
.implements Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;
.implements Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

.field private mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

.field private mContentLayout:Landroid/widget/FrameLayout;

.field private mControlCreate:Z

.field private mDelay:Z

.field private mEmptyLayout:Landroid/widget/LinearLayout;

.field private mFeatureActionBarHide:Z

.field private mHideMode:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMagicbarBg:Landroid/widget/LinearLayout;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOptionMenu:Landroid/view/Menu;

.field private mScreenActionBarLayout:Landroid/view/ViewGroup;

.field private mShowAgain:Z

.field private mThemeActionBarHide:Z

.field private mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field magicbarTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    iput-boolean v1, p0, Lamigo/app/AmigoActivity;->mShowAgain:Z

    .line 70
    iput-boolean v1, p0, Lamigo/app/AmigoActivity;->mDelay:Z

    .line 74
    iput-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    .line 82
    iput-object v2, p0, Lamigo/app/AmigoActivity;->mActionBar:Landroid/app/ActionBar;

    .line 897
    new-instance v0, Lamigo/app/AmigoActivity$5;

    invoke-direct {v0, p0}, Lamigo/app/AmigoActivity$5;-><init>(Lamigo/app/AmigoActivity;)V

    iput-object v0, p0, Lamigo/app/AmigoActivity;->magicbarTouchListener:Landroid/view/View$OnTouchListener;

    .line 928
    iput-boolean v1, p0, Lamigo/app/AmigoActivity;->mControlCreate:Z

    return-void
.end method

.method static synthetic access$000(Lamigo/app/AmigoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mEmptyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/app/AmigoActivity;)Lamigo/widget/AmigoMagicBar;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/app/AmigoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isMagicbarExpand()Z

    move-result v0

    return v0
.end method

.method private addContentViewWithAmigoActionBar(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 634
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 635
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoActivity;->setContentViewWithAmigoActionBar(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    :goto_0
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 642
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    .line 643
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 645
    :cond_0
    return-void

    .line 637
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_1
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private cancelAnimationListener()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 391
    :cond_0
    return-void
.end method

.method private generalScreenLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 859
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 861
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isFeatureAcitonBarHide()Z

    move-result v2

    iput-boolean v2, p0, Lamigo/app/AmigoActivity;->mFeatureActionBarHide:Z

    .line 862
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->setWindowFeatureNoTitle()V

    .line 864
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_0

    .line 865
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lamigo/app/AmigoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 869
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 870
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010057

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 871
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_2

    .line 872
    const v0, 0x903002c

    .line 882
    .local v0, "layoutResource":I
    :goto_0
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    .line 884
    .end local v0    # "layoutResource":I
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_1
    return-void

    .line 874
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    :cond_2
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102e4

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 875
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 876
    :cond_3
    const v0, 0x9030026

    .restart local v0    # "layoutResource":I
    goto :goto_0

    .line 878
    .end local v0    # "layoutResource":I
    :cond_4
    const v0, 0x903001a

    .restart local v0    # "layoutResource":I
    goto :goto_0
.end method

.method private handItemClick()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->changeListViewVisiable(Z)V

    .line 447
    :cond_0
    return-void
.end method

.method private haveOptionsMenu()Z
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mOptionMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActivity;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideOriginalActionBar()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mActionBar:Landroid/app/ActionBar;

    .line 588
    :cond_0
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamigo/app/AmigoActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 591
    :cond_1
    return-void
.end method

.method private initAmigoActionBar()V
    .locals 2

    .prologue
    .line 559
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->generalScreenLayout()V

    .line 561
    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mFeatureActionBarHide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mThemeActionBarHide:Z

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-nez v0, :cond_2

    .line 567
    new-instance v0, Lamigo/app/AmigoActionBarImpl;

    invoke-direct {v0, p0}, Lamigo/app/AmigoActionBarImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    .line 568
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    iget-object v1, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoActionBarImpl;->setActivityContent(Landroid/view/View;)V

    .line 571
    :cond_2
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->isChild()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mFeatureActionBarHide:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mThemeActionBarHide:Z

    if-eqz v0, :cond_4

    .line 572
    :cond_3
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0}, Lamigo/app/AmigoActionBarImpl;->hide()V

    .line 576
    :cond_4
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->hideOriginalActionBar()V

    goto :goto_0
.end method

.method private initMagicBarBgLayout()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    const v1, 0x90b0039

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mMagicbarBg:Landroid/widget/LinearLayout;

    .line 892
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMagicbarBg:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMagicbarBg:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lamigo/app/AmigoActivity;->magicbarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 895
    :cond_0
    return-void
.end method

.method private initMenu()V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 952
    :cond_0
    return-void
.end method

.method private isAmigoActionBarHide()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 798
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 799
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010056

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 800
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    .line 811
    :cond_0
    :goto_0
    return v1

    .line 804
    :cond_1
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102cd

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 805
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 811
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDialogTheme()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 159
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 160
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x10100ae

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 161
    const v0, 0x9080027

    .line 162
    .local v0, "id":I
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-ne v3, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFeatureAcitonBarHide()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 748
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    :cond_0
    :goto_0
    return v0

    .line 751
    :cond_1
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 753
    goto :goto_0
.end method

.method private isMagicbarExpand()Z
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0}, Lamigo/widget/AmigoMagicBar;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThemeActionBarHide()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 759
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 760
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010056

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 761
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v1

    .line 765
    :cond_1
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102cd

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 766
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 772
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setContentViewWithAmigoActionBar(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .prologue
    .line 650
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->generalScreenLayout()V

    .line 652
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    const v1, 0x90b004b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    .line 655
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    const v1, 0x90b003a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mEmptyLayout:Landroid/widget/LinearLayout;

    .line 657
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    const v1, 0x90b003b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoMagicBar;

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    .line 659
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    iget-boolean v1, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->setHideMode(Z)V

    .line 661
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonOptionsItemSelectedListener(Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;)V

    .line 662
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonMoreItemSelectedListener(Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;)V

    .line 663
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonTransparentTouchListener(Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;)V

    .line 664
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonOptionsItemLongClickListener(Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;)V

    .line 666
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    new-instance v1, Lamigo/app/AmigoActivity$3;

    invoke-direct {v1, p0}, Lamigo/app/AmigoActivity$3;-><init>(Lamigo/app/AmigoActivity;)V

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->setOnMagicBarVisibleChangedListener(Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;)V

    .line 676
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initMagicBarBgLayout()V

    .line 679
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 680
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 682
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 684
    return-void
.end method

.method private setContentViewWithAmigoActionBar(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 690
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lamigo/app/AmigoActivity;->setContentViewWithAmigoActionBar(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    return-void
.end method

.method private setContentViewWithAmigoActionBar(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 695
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->generalScreenLayout()V

    .line 697
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    const v1, 0x90b004b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    .line 700
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    const v1, 0x90b003a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mEmptyLayout:Landroid/widget/LinearLayout;

    .line 702
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    const v1, 0x90b003b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoMagicBar;

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    .line 703
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonOptionsItemSelectedListener(Lamigo/widget/AmigoMagicBar$onOptionsItemSelectedListener;)V

    .line 704
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonMoreItemSelectedListener(Lamigo/widget/AmigoMagicBar$onMoreItemSelectedListener;)V

    .line 705
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonTransparentTouchListener(Lamigo/widget/AmigoMagicBar$OnTransparentTouchListener;)V

    .line 706
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p0}, Lamigo/widget/AmigoMagicBar;->setonOptionsItemLongClickListener(Lamigo/widget/AmigoMagicBar$onOptionsItemLongClickListener;)V

    .line 710
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    new-instance v1, Lamigo/app/AmigoActivity$4;

    invoke-direct {v1, p0}, Lamigo/app/AmigoActivity$4;-><init>(Lamigo/app/AmigoActivity;)V

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->setOnMagicBarVisibleChangedListener(Lamigo/widget/AmigoMagicBar$OnMagicBarVisibleChangedListener;)V

    .line 719
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initMagicBarBgLayout()V

    .line 722
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 723
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mContentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 727
    return-void
.end method

.method private setLayoutVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithAnim(I)V

    .line 408
    :cond_0
    return-void
.end method

.method private setWindowFeatureNoTitle()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lamigo/app/AmigoActivity;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public OnTransparentTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 327
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->handItemClick()V

    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public SetAmigoMagicBarNull()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    .line 355
    :cond_0
    return-void
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 629
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoActivity;->addContentViewWithAmigoActionBar(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initAmigoActionBar()V

    .line 631
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 168
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isDialogTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v1, v1}, Lamigo/app/AmigoActivity;->overridePendingTransition(II)V

    .line 171
    :cond_0
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 741
    invoke-super {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getAmigoActionBar()Lamigo/app/AmigoActionBar;
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initAmigoActionBar()V

    .line 551
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    return-object v0
.end method

.method public getAmigoMagicBar()Lamigo/widget/AmigoMagicBar;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    return-object v0
.end method

.method public getOptionMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public getOptionsMenuHideMode()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    return v0
.end method

.method public getViewWithAmigoActionBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mScreenActionBarLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public invalOptionsMenu()V
    .locals 2

    .prologue
    .line 942
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initMenu()V

    .line 943
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 944
    const/4 v0, 0x0

    iget-object v1, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0, v1}, Lamigo/app/AmigoActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 945
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 946
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 4

    .prologue
    .line 920
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lamigo/app/AmigoActivity$6;

    invoke-direct {v1, p0}, Lamigo/app/AmigoActivity$6;-><init>(Lamigo/app/AmigoActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 926
    return-void
.end method

.method public isUseOriginalActionBar()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 975
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    const v5, 0x9010066

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lamigo/app/AmigoActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 977
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 981
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    return v2

    .line 978
    :catch_0
    move-exception v1

    .line 979
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AmigoActivity"

    const-string v4, "get amigoOptionMenuAsUp error"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 340
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0, p1}, Lamigo/app/AmigoActionBarImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMagicBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 110
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010058

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 111
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getBackgroudColor_B1()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->isUseOriginalActionBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0, p1}, Lamigo/app/AmigoActionBarImpl;->setCustomMenu(Landroid/view/Menu;)V

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-nez v1, :cond_2

    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 184
    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 196
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v1}, Lamigo/app/AmigoActionBarImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 201
    :cond_3
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v1, p1}, Lamigo/widget/AmigoMagicBar;->setMenus(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 451
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-nez v2, :cond_1

    .line 452
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    const/16 v2, 0x52

    if-ne p1, v2, :cond_7

    .line 457
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl;->isActionModeShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl;->isActionModeHasMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    :cond_2
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isMagicbarExpand()Z

    move-result v2

    if-nez v2, :cond_3

    .line 465
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl;->isActionModeShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 468
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->startOptionsMenu()V

    .line 473
    :cond_3
    iget-boolean v2, p0, Lamigo/app/AmigoActivity;->mShowAgain:Z

    if-nez v2, :cond_4

    .line 475
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v1, v3}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    .line 477
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 480
    :cond_4
    iget-boolean v2, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    if-eqz v2, :cond_6

    .line 481
    iput-boolean v4, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    .line 485
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->haveOptionsMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 486
    invoke-direct {p0, v4}, Lamigo/app/AmigoActivity;->setLayoutVisibility(I)V

    goto :goto_0

    .line 489
    :cond_5
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    goto :goto_0

    .line 496
    :cond_6
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mEmptyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 501
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->handItemClick()V

    goto :goto_0

    .line 504
    :cond_7
    const/4 v2, 0x4

    if-ne p1, v2, :cond_a

    .line 507
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isMagicbarExpand()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 513
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v2, v1}, Lamigo/widget/AmigoMagicBar;->changeListViewVisiable(Z)V

    goto :goto_0

    .line 520
    :cond_8
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl;->isActionModeShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 521
    iget-object v2, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 522
    .local v0, "actionMode":Landroid/view/ActionMode;
    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_0

    .line 528
    .end local v0    # "actionMode":Landroid/view/ActionMode;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 531
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onMoreItemSelected(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 315
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isMagicbarExpand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0}, Lamigo/app/AmigoActionBarImpl;->isActionModeShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->startOptionsMenu()V

    .line 320
    :cond_0
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->handItemClick()V

    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemLongClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 247
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->isUseOriginalActionBar()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    iget-object v6, p0, Lamigo/app/AmigoActivity;->mOptionMenu:Landroid/view/Menu;

    if-eqz v6, :cond_0

    .line 249
    iget-object v6, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    iget-object v7, p0, Lamigo/app/AmigoActivity;->mOptionMenu:Landroid/view/Menu;

    invoke-virtual {v6, v7}, Lamigo/app/AmigoActionBarImpl;->setCustomMenu(Landroid/view/Menu;)V

    .line 251
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    .line 297
    :goto_0
    return v6

    .line 254
    :cond_1
    iget-object v6, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-nez v6, :cond_2

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 257
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 259
    .local v3, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v3}, Landroid/view/SubMenu;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/CharSequence;

    .line 260
    .local v5, "subMenuTitles":[Ljava/lang/CharSequence;
    invoke-interface {v3}, Landroid/view/SubMenu;->size()I

    move-result v6

    new-array v4, v6, [I

    .line 261
    .local v4, "subMenuIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Landroid/view/SubMenu;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 262
    invoke-interface {v3, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    .line 263
    invoke-interface {v3, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    aput v6, v4, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_3
    new-instance v6, Lamigo/app/AmigoAlertDialog$Builder;

    invoke-direct {v6, p0}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lamigo/app/AmigoActivity$2;

    invoke-direct {v7, p0, v3, v4}, Lamigo/app/AmigoActivity$2;-><init>(Lamigo/app/AmigoActivity;Landroid/view/SubMenu;[I)V

    invoke-virtual {v6, v5, v7}, Lamigo/app/AmigoAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lamigo/app/AmigoAlertDialog$Builder;->show()Lamigo/app/AmigoAlertDialog;

    .line 276
    .end local v2    # "i":I
    .end local v3    # "subMenu":Landroid/view/SubMenu;
    .end local v4    # "subMenuIds":[I
    .end local v5    # "subMenuTitles":[Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v6}, Lamigo/app/AmigoActionBarImpl;->isActionModeShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 277
    iget-object v6, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v6}, Lamigo/app/AmigoActionBarImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 278
    .local v0, "actionMode":Landroid/view/ActionMode;
    if-eqz v0, :cond_5

    move-object v6, v0

    .line 279
    check-cast v6, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    invoke-virtual {v6}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->getCallback()Landroid/view/ActionMode$Callback;

    move-result-object v1

    .line 281
    .local v1, "callback":Landroid/view/ActionMode$Callback;
    invoke-interface {v1, v0, p1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 287
    .end local v0    # "actionMode":Landroid/view/ActionMode;
    .end local v1    # "callback":Landroid/view/ActionMode$Callback;
    :cond_5
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isMagicbarExpand()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 291
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->handItemClick()V

    .line 297
    :cond_6
    const/4 v6, 0x1

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    .line 212
    iput-object p1, p0, Lamigo/app/AmigoActivity;->mOptionMenu:Landroid/view/Menu;

    .line 214
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->isUseOriginalActionBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0, p1}, Lamigo/app/AmigoActionBarImpl;->setCustomMenu(Landroid/view/Menu;)V

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-nez v1, :cond_2

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_2
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 232
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v1}, Lamigo/app/AmigoActionBarImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 237
    :cond_3
    iget-object v1, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v1, p1}, Lamigo/widget/AmigoMagicBar;->setMenus(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mDelay:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lamigo/app/AmigoActivity$1;

    invoke-direct {v1, p0}, Lamigo/app/AmigoActivity$1;-><init>(Lamigo/app/AmigoActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/app/AmigoActivity;->mDelay:Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->setStatusBarColor()V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->setListViewVisibilityWithoutAnim(I)V

    .line 154
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 840
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initAmigoActionBar()V

    .line 841
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0, p1}, Lamigo/app/AmigoActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 844
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parserMenuInfo(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 536
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 540
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 541
    :cond_1
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0}, Lamigo/widget/AmigoMagicBar;->clearMagicBarData()V

    goto :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMagicBar;->setMenus(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 598
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isThemeActionBarHide()Z

    move-result v0

    iput-boolean v0, p0, Lamigo/app/AmigoActivity;->mThemeActionBarHide:Z

    .line 600
    invoke-direct {p0, p1}, Lamigo/app/AmigoActivity;->setContentViewWithAmigoActionBar(I)V

    .line 601
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initAmigoActionBar()V

    .line 602
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 608
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isThemeActionBarHide()Z

    move-result v0

    iput-boolean v0, p0, Lamigo/app/AmigoActivity;->mThemeActionBarHide:Z

    .line 610
    invoke-direct {p0, p1}, Lamigo/app/AmigoActivity;->setContentViewWithAmigoActionBar(Landroid/view/View;)V

    .line 611
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initAmigoActionBar()V

    .line 612
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 618
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->isThemeActionBarHide()Z

    move-result v0

    iput-boolean v0, p0, Lamigo/app/AmigoActivity;->mThemeActionBarHide:Z

    .line 620
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoActivity;->setContentViewWithAmigoActionBar(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initAmigoActionBar()V

    .line 622
    return-void
.end method

.method public setOptionsMenuHideMode(Z)V
    .locals 2
    .param p1, "is_hide"    # Z

    .prologue
    .line 358
    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    if-eq v0, p1, :cond_0

    .line 359
    iput-boolean p1, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    .line 361
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-nez v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    iget-boolean v1, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->setHideMode(Z)V

    .line 366
    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mHideMode:Z

    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->cancelAnimationListener()V

    .line 373
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lamigo/app/AmigoActivity;->setLayoutVisibility(I)V

    goto :goto_0
.end method

.method public setOptionsMenuHideMode(ZZ)V
    .locals 0
    .param p1, "is_hide"    # Z
    .param p2, "show_again"    # Z

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lamigo/app/AmigoActivity;->setOptionsMenuHideMode(Z)V

    .line 397
    iput-boolean p2, p0, Lamigo/app/AmigoActivity;->mShowAgain:Z

    .line 399
    return-void
.end method

.method public setOptionsMenuUnExpand()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithoutAnim(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public setStatusBarColor()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 957
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    const v5, 0x9010066

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lamigo/app/AmigoActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 959
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 961
    .local v1, "color":I
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 963
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getStatusbarBackgroudColor_S1()I

    move-result v1

    .line 965
    :cond_0
    if-eq v7, v1, :cond_1

    .line 966
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "color":I
    :cond_1
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 835
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 836
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 827
    invoke-virtual {p0}, Lamigo/app/AmigoActivity;->getAmigoActionBar()Lamigo/app/AmigoActionBar;

    move-result-object v0

    .line 828
    .local v0, "actionBar":Lamigo/app/AmigoActionBar;
    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0, p1}, Lamigo/app/AmigoActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 831
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lamigo/app/AmigoActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startOptionsMenu()V
    .locals 1

    .prologue
    .line 932
    invoke-direct {p0}, Lamigo/app/AmigoActivity;->initMenu()V

    .line 933
    iget-boolean v0, p0, Lamigo/app/AmigoActivity;->mControlCreate:Z

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 935
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/app/AmigoActivity;->mControlCreate:Z

    .line 938
    :cond_0
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 939
    return-void
.end method

.method public updateOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 301
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    if-nez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    iget-object v0, p0, Lamigo/app/AmigoActivity;->mAmigoMagicBar:Lamigo/widget/AmigoMagicBar;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMagicBar;->setMenus(Landroid/view/Menu;)V

    goto :goto_0
.end method
