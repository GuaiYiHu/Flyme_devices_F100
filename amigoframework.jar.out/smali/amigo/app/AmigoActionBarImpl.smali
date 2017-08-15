.class public Lamigo/app/AmigoActionBarImpl;
.super Lamigo/app/AmigoActionBar;
.source "AmigoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/app/AmigoActionBarImpl$ActionModeImpl;,
        Lamigo/app/AmigoActionBarImpl$TabImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Amigo_WidgetDemoL.AmigoActionBarImpl"


# instance fields
.field private mActionBarOverlay:Z

.field mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

.field private mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

.field private mControlCreate:Z

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/app/AmigoActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSpliteView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

.field private mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lamigo/app/AmigoActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field private mTopVisibilityView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    invoke-direct {p0}, Lamigo/app/AmigoActionBar;-><init>()V

    .line 177
    const/4 v1, -0x1

    iput v1, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 188
    iput-boolean v2, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    .line 198
    iput v2, p0, Lamigo/app/AmigoActionBarImpl;->mCurWindowVisibility:I

    .line 209
    iput-boolean v3, p0, Lamigo/app/AmigoActionBarImpl;->mNowShowing:Z

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 220
    iput-boolean v3, p0, Lamigo/app/AmigoActionBarImpl;->mControlCreate:Z

    .line 233
    new-instance v1, Lamigo/app/AmigoActionBarImpl$1;

    invoke-direct {v1, p0}, Lamigo/app/AmigoActionBarImpl$1;-><init>(Lamigo/app/AmigoActionBarImpl;)V

    iput-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 253
    new-instance v1, Lamigo/app/AmigoActionBarImpl$2;

    invoke-direct {v1, p0}, Lamigo/app/AmigoActionBarImpl$2;-><init>(Lamigo/app/AmigoActionBarImpl;)V

    iput-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 262
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    .line 266
    check-cast p1, Lamigo/app/AmigoActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lamigo/app/AmigoActivity;->getViewWithAmigoActionBar()Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, "decor":Landroid/view/View;
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionBarOverlay:Z

    .line 268
    invoke-direct {p0, v0}, Lamigo/app/AmigoActionBarImpl;->init(Landroid/view/View;)V

    .line 269
    iget-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionBarOverlay:Z

    if-nez v1, :cond_0

    .line 270
    const v1, 0x90b004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    .line 277
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Lamigo/app/AmigoActionBar;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 188
    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    .line 198
    iput v1, p0, Lamigo/app/AmigoActionBarImpl;->mCurWindowVisibility:I

    .line 209
    iput-boolean v2, p0, Lamigo/app/AmigoActionBarImpl;->mNowShowing:Z

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 220
    iput-boolean v2, p0, Lamigo/app/AmigoActionBarImpl;->mControlCreate:Z

    .line 233
    new-instance v0, Lamigo/app/AmigoActionBarImpl$1;

    invoke-direct {v0, p0}, Lamigo/app/AmigoActionBarImpl$1;-><init>(Lamigo/app/AmigoActionBarImpl;)V

    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 253
    new-instance v0, Lamigo/app/AmigoActionBarImpl$2;

    invoke-direct {v0, p0}, Lamigo/app/AmigoActionBarImpl$2;-><init>(Lamigo/app/AmigoActionBarImpl;)V

    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 280
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl;->mDialog:Landroid/app/Dialog;

    .line 281
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lamigo/app/AmigoActionBarImpl;->init(Landroid/view/View;)V

    .line 282
    return-void
.end method

.method static synthetic access$000(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoTabContainerView;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/app/AmigoActionBarImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1200(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarView;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/app/AmigoActionBarImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lamigo/app/AmigoActionBarImpl;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    return-object v0
.end method

.method static synthetic access$502(Lamigo/app/AmigoActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 52
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lamigo/app/AmigoActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lamigo/app/AmigoActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 52
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lamigo/app/AmigoActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 224
    if-eqz p2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 227
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl;->selectTab(Lamigo/app/AmigoActionBar$Tab;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->removeAllTabs()V

    .line 368
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    .line 369
    return-void
.end method

.method private configureTab(Lamigo/app/AmigoActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 380
    move-object v3, p1

    check-cast v3, Lamigo/app/AmigoActionBarImpl$TabImpl;

    .line 381
    .local v3, "tabi":Lamigo/app/AmigoActionBarImpl$TabImpl;
    invoke-virtual {v3}, Lamigo/app/AmigoActionBarImpl$TabImpl;->getCallback()Lamigo/app/AmigoActionBar$TabListener;

    move-result-object v0

    .line 383
    .local v0, "callback":Lamigo/app/AmigoActionBar$TabListener;
    if-nez v0, :cond_0

    .line 384
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    :cond_0
    invoke-virtual {v3, p2}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setPosition(I)V

    .line 388
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 390
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 391
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 392
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-virtual {v4, v2}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setPosition(I)V

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 501
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    new-instance v0, Lcom/amigo/internal/widget/AmigoTabContainerView;

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;-><init>(Landroid/content/Context;)V

    .line 507
    .local v0, "tabContainerView":Lcom/amigo/internal/widget/AmigoTabContainerView;
    iget-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {v0, v3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v1, v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->setEmbeddedTabView(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    .line 521
    :goto_1
    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    .line 522
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    iget-boolean v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionBarOverlay:Z

    invoke-virtual {v1, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setActionBarOverlay(Z)V

    .line 523
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionBarOverlay:Z

    if-nez v1, :cond_0

    .line 524
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->changeColors()V

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {p0}, Lamigo/app/AmigoActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 512
    invoke-virtual {v0, v3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    .line 513
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 514
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 519
    :cond_3
    :goto_2
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setTabContainer(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    goto :goto_1

    .line 517
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 631
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 632
    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mShowingForMode:Z

    .line 633
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 636
    :cond_0
    invoke-direct {p0, v1}, Lamigo/app/AmigoActionBarImpl;->updateVisibility(Z)V

    .line 638
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 677
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    .line 678
    const v7, 0x90b004d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    iput-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    .line 680
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    if-eqz v7, :cond_0

    .line 681
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    invoke-virtual {v7, p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->setActionBar(Lamigo/app/AmigoActionBarImpl;)V

    .line 684
    :cond_0
    const v7, 0x90b0060

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 686
    .local v6, "viewStub":Landroid/view/ViewStub;
    const/4 v4, 0x0

    .line 687
    .local v4, "mActionbarContainerView":Landroid/view/ViewGroup;
    if-eqz v6, :cond_1

    .line 688
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    .end local v4    # "mActionbarContainerView":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 689
    .restart local v4    # "mActionbarContainerView":Landroid/view/ViewGroup;
    const v7, 0x90b0048

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/amigo/internal/widget/AmigoActionBarView;

    iput-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    .line 691
    const v7, 0x90b004e

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/amigo/internal/widget/AmigoActionBarContextView;

    iput-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    .line 693
    const v7, 0x90b0047

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/amigo/internal/widget/AmigoActionBarContainer;

    iput-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .line 698
    :cond_1
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    .line 699
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    iput-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    .line 703
    :cond_2
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    if-nez v7, :cond_4

    .line 704
    :cond_3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " can only be used "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "with a compatible window decor layout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 707
    :cond_4
    iget-object v10, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v7, Lamigo/app/AmigoActivity;

    invoke-virtual {v10, v7}, Lcom/amigo/internal/widget/AmigoActionBarView;->setActivity(Lamigo/app/AmigoActivity;)V

    .line 708
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v10, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    invoke-virtual {v7, v10}, Lcom/amigo/internal/widget/AmigoActionBarView;->setContextView(Lcom/amigo/internal/widget/AmigoActionBarContextView;)V

    .line 709
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v7}, Lcom/amigo/internal/widget/AmigoActionBarView;->isSplitActionBar()Z

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_0
    iput v7, p0, Lamigo/app/AmigoActionBarImpl;->mContextDisplayMode:I

    .line 712
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v7}, Lcom/amigo/internal/widget/AmigoActionBarView;->getDisplayOptions()I

    move-result v2

    .line 713
    .local v2, "current":I
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_a

    move v3, v8

    .line 714
    .local v3, "homeAsUp":Z
    :goto_1
    if-eqz v3, :cond_5

    .line 715
    iput-boolean v8, p0, Lamigo/app/AmigoActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 718
    :cond_5
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 719
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    move v9, v8

    :cond_7
    invoke-virtual {p0, v9}, Lamigo/app/AmigoActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 720
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v7

    invoke-direct {p0, v7}, Lamigo/app/AmigoActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 722
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lamigo/app/AmigoActionBarImpl;->mActionBarOverlay:Z

    if-nez v7, :cond_8

    .line 724
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAppbarColor_A1()I

    move-result v5

    .line 727
    .local v5, "primaryBackgroundColor":I
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 729
    .local v1, "backgroundDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v1}, Lamigo/app/AmigoActionBarImpl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 730
    invoke-virtual {p0, v1}, Lamigo/app/AmigoActionBarImpl;->setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    invoke-virtual {p0, v1}, Lamigo/app/AmigoActionBarImpl;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 733
    iget-object v7, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v7}, Lcom/amigo/internal/widget/AmigoActionBarView;->changeColors()V

    .line 736
    .end local v1    # "backgroundDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v5    # "primaryBackgroundColor":I
    :cond_8
    return-void

    .end local v0    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v2    # "current":I
    .end local v3    # "homeAsUp":Z
    :cond_9
    move v7, v9

    .line 709
    goto :goto_0

    .restart local v2    # "current":I
    :cond_a
    move v3, v9

    .line 713
    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 916
    iput-boolean p1, p0, Lamigo/app/AmigoActionBarImpl;->mHasEmbeddedTabs:Z

    .line 919
    iget-boolean v3, p0, Lamigo/app/AmigoActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 920
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v3, v4}, Lcom/amigo/internal/widget/AmigoActionBarView;->setEmbeddedTabView(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    .line 921
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v3, v4}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setTabContainer(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    .line 926
    :goto_0
    invoke-virtual {p0}, Lamigo/app/AmigoActionBarImpl;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 927
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v3, :cond_0

    .line 928
    if-eqz v0, :cond_3

    .line 929
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v3, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    .line 930
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 931
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 937
    :cond_0
    :goto_2
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-boolean v4, p0, Lamigo/app/AmigoActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setCollapsable(Z)V

    .line 938
    return-void

    .line 923
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setTabContainer(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    .line 924
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v3, v4}, Lcom/amigo/internal/widget/AmigoActionBarView;->setEmbeddedTabView(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 926
    goto :goto_1

    .line 934
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 937
    goto :goto_3
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1074
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 1075
    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mShowingForMode:Z

    .line 1076
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 1079
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lamigo/app/AmigoActionBarImpl;->updateVisibility(Z)V

    .line 1081
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 1136
    iget-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    iget-boolean v2, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lamigo/app/AmigoActionBarImpl;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lamigo/app/AmigoActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 1138
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 1139
    iget-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 1140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mNowShowing:Z

    .line 1141
    invoke-virtual {p0, p1}, Lamigo/app/AmigoActionBarImpl;->doShow(Z)V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 1145
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mNowShowing:Z

    .line 1146
    invoke-virtual {p0, p1}, Lamigo/app/AmigoActionBarImpl;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lamigo/app/AmigoActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/app/AmigoActionBar$OnMenuVisibilityListener;

    .prologue
    .line 311
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method public addTab(Lamigo/app/AmigoActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;

    .prologue
    .line 316
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lamigo/app/AmigoActionBarImpl;->addTab(Lamigo/app/AmigoActionBar$Tab;Z)V

    .line 317
    return-void
.end method

.method public addTab(Lamigo/app/AmigoActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lamigo/app/AmigoActionBarImpl;->addTab(Lamigo/app/AmigoActionBar$Tab;IZ)V

    .line 332
    return-void
.end method

.method public addTab(Lamigo/app/AmigoActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 336
    invoke-direct {p0}, Lamigo/app/AmigoActionBarImpl;->ensureTabsExist()V

    .line 337
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->addTab(Lamigo/app/AmigoActionBar$Tab;IZ)V

    .line 338
    invoke-direct {p0, p1, p2}, Lamigo/app/AmigoActionBarImpl;->configureTab(Lamigo/app/AmigoActionBar$Tab;I)V

    .line 339
    if-eqz p3, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lamigo/app/AmigoActionBarImpl;->selectTab(Lamigo/app/AmigoActionBar$Tab;)V

    .line 342
    :cond_0
    return-void
.end method

.method public addTab(Lamigo/app/AmigoActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 321
    invoke-direct {p0}, Lamigo/app/AmigoActionBarImpl;->ensureTabsExist()V

    .line 322
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->addTab(Lamigo/app/AmigoActionBar$Tab;Z)V

    .line 323
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lamigo/app/AmigoActionBarImpl;->configureTab(Lamigo/app/AmigoActionBar$Tab;I)V

    .line 324
    if-eqz p2, :cond_0

    .line 325
    invoke-virtual {p0, p1}, Lamigo/app/AmigoActionBarImpl;->selectTab(Lamigo/app/AmigoActionBar$Tab;)V

    .line 327
    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 345
    if-eqz p1, :cond_1

    .line 346
    invoke-direct {p0}, Lamigo/app/AmigoActionBarImpl;->showForActionMode()V

    .line 352
    :goto_0
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->setVisibility(I)V

    .line 353
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->animateToVisibility(I)V

    .line 354
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->animateToVisibility(I)V

    .line 358
    :cond_0
    return-void

    .line 348
    :cond_1
    invoke-direct {p0}, Lamigo/app/AmigoActionBarImpl;->hideForActionMode()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 352
    goto :goto_1

    .line 353
    :cond_3
    const/16 v0, 0x8

    goto :goto_2

    :cond_4
    move v1, v2

    .line 356
    goto :goto_3
.end method

.method public changeColors()V
    .locals 0

    .prologue
    .line 1413
    return-void
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 374
    iput-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 375
    iput-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 377
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 397
    iget-boolean v2, p0, Lamigo/app/AmigoActionBarImpl;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 406
    :cond_0
    return-void

    .line 400
    :cond_1
    iput-boolean p1, p0, Lamigo/app/AmigoActionBarImpl;->mLastMenuVisibility:Z

    .line 402
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 403
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 404
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lamigo/app/AmigoActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 10
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 409
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 410
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 413
    :cond_0
    iget v4, p0, Lamigo/app/AmigoActionBarImpl;->mCurWindowVisibility:I

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lamigo/app/AmigoActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_4

    .line 414
    :cond_1
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 415
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v4, v8}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setTransitioning(Z)V

    .line 416
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 417
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 418
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 419
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 420
    .local v3, "topLeft":[I
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 421
    aget v4, v3, v8

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 423
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const-string v5, "translationY"

    new-array v6, v8, [F

    aput v2, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 425
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 426
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    const-string v5, "translationY"

    new-array v6, v7, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    aput v2, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 432
    :cond_3
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    const v5, 0x10c0002

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 436
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 437
    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 438
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 442
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v2    # "endingY":F
    :goto_0
    return-void

    .line 440
    :cond_4
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 419
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 11
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 445
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 446
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 448
    :cond_0
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 450
    iget v4, p0, Lamigo/app/AmigoActionBarImpl;->mCurWindowVisibility:I

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lamigo/app/AmigoActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_5

    .line 451
    :cond_1
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 452
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 453
    .local v2, "startingY":F
    if-eqz p1, :cond_2

    .line 454
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 455
    .local v3, "topLeft":[I
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 456
    aget v4, v3, v9

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 458
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 459
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 460
    .local v0, "anim":Landroid/animation/AnimatorSet;
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const-string v5, "translationY"

    new-array v6, v9, [F

    aput v7, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 461
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 462
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    const-string v5, "translationY"

    new-array v6, v10, [F

    aput v2, v6, v8

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 469
    :cond_3
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    const v5, 0x10c0003

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 479
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 480
    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 481
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 495
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v2    # "startingY":F
    :goto_0
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    if-eqz v4, :cond_4

    .line 496
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 498
    :cond_4
    return-void

    .line 483
    :cond_5
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 484
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 485
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 486
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 493
    :cond_6
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 454
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 545
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 552
    :cond_0
    :goto_0
    return v1

    .line 547
    :pswitch_0
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 549
    :pswitch_1
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 550
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 563
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 569
    :cond_0
    :goto_0
    return v0

    .line 565
    :pswitch_0
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lamigo/app/AmigoActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Lamigo/app/AmigoActionBar$Tab;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lamigo/app/AmigoActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/app/AmigoActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 595
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 596
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 597
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 598
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 599
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 601
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 602
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 607
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 604
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasNonEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lamigo/app/AmigoActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lamigo/app/AmigoActionBarImpl;->updateVisibility(Z)V

    .line 628
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 641
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 642
    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z

    .line 643
    invoke-direct {p0, v1}, Lamigo/app/AmigoActionBarImpl;->updateVisibility(Z)V

    .line 645
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lamigo/app/AmigoActivity;

    invoke-virtual {v0}, Lamigo/app/AmigoActivity;->invalOptionsMenu()V

    .line 306
    return-void
.end method

.method public isActionModeHasMenu()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1365
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    if-nez v2, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v1

    .line 1368
    :cond_1
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1369
    .local v0, "actionModeMenu":Landroid/view/Menu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isActionModeShowing()Z
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->isActionModeShowing()Z

    move-result v0

    .line 1361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mNowShowing:Z

    return v0
.end method

.method public isSystemShowing()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Lamigo/app/AmigoActionBar$Tab;
    .locals 1

    .prologue
    .line 749
    new-instance v0, Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lamigo/app/AmigoActionBarImpl$TabImpl;-><init>(Lamigo/app/AmigoActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 753
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->get(Landroid/content/Context;)Lcom/amigo/internal/view/AmigoActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/view/AmigoActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lamigo/app/AmigoActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 754
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 758
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->onPageScrolled(IFI)V

    .line 761
    :cond_0
    return-void
.end method

.method public onScrollToEnd(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 770
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lamigo/app/AmigoActionBarImpl;->cleanupTabs()V

    .line 775
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lamigo/app/AmigoActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/app/AmigoActionBar$OnMenuVisibilityListener;

    .prologue
    .line 779
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 780
    return-void
.end method

.method public removeTab(Lamigo/app/AmigoActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;

    .prologue
    .line 784
    invoke-virtual {p1}, Lamigo/app/AmigoActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl;->removeTabAt(I)V

    .line 785
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 789
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-nez v4, :cond_1

    .line 808
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-virtual {v4}, Lamigo/app/AmigoActionBarImpl$TabImpl;->getPosition()I

    move-result v3

    .line 794
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v4, p1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->removeTabAt(I)V

    .line 795
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActionBarImpl$TabImpl;

    .line 796
    .local v2, "removedTab":Lamigo/app/AmigoActionBarImpl$TabImpl;
    if-eqz v2, :cond_2

    .line 797
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setPosition(I)V

    .line 800
    :cond_2
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 801
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 802
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-virtual {v4, v0}, Lamigo/app/AmigoActionBarImpl$TabImpl;->setPosition(I)V

    .line 801
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 793
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lamigo/app/AmigoActionBarImpl$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 805
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lamigo/app/AmigoActionBarImpl$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 806
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lamigo/app/AmigoActionBarImpl;->selectTab(Lamigo/app/AmigoActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamigo/app/AmigoActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Lamigo/app/AmigoActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Lamigo/app/AmigoActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    .line 812
    invoke-virtual {p0}, Lamigo/app/AmigoActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 813
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lamigo/app/AmigoActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    .line 840
    .end local p1    # "tab":Lamigo/app/AmigoActionBar$Tab;
    :cond_1
    :goto_0
    return-void

    .line 817
    .restart local p1    # "tab":Lamigo/app/AmigoActionBar$Tab;
    :cond_2
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 820
    .local v0, "trans":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_4

    .line 821
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 822
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lamigo/app/AmigoActionBarImpl$TabImpl;->getCallback()Lamigo/app/AmigoActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Lamigo/app/AmigoActionBar$TabListener;->onTabReselected(Lamigo/app/AmigoActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 824
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {p1}, Lamigo/app/AmigoActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setTabSelected(I)V

    .line 837
    .end local p1    # "tab":Lamigo/app/AmigoActionBar$Tab;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 838
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 827
    .restart local p1    # "tab":Lamigo/app/AmigoActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lamigo/app/AmigoActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setTabSelected(I)V

    .line 828
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    if-eqz v1, :cond_6

    .line 829
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lamigo/app/AmigoActionBarImpl$TabImpl;->getCallback()Lamigo/app/AmigoActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Lamigo/app/AmigoActionBar$TabListener;->onTabUnselected(Lamigo/app/AmigoActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 831
    :cond_6
    check-cast p1, Lamigo/app/AmigoActionBarImpl$TabImpl;

    .end local p1    # "tab":Lamigo/app/AmigoActionBar$Tab;
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    .line 832
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 833
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lamigo/app/AmigoActionBarImpl$TabImpl;->getCallback()Lamigo/app/AmigoActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mSelectedTab:Lamigo/app/AmigoActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Lamigo/app/AmigoActionBar$TabListener;->onTabSelected(Lamigo/app/AmigoActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_1
.end method

.method public setActivityContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1152
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setActivityContent(Landroid/view/View;)V

    .line 1153
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 844
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 845
    return-void
.end method

.method public setCustomMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1405
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setMenu(Landroid/view/Menu;)V

    .line 1408
    :cond_0
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 849
    invoke-virtual {p0}, Lamigo/app/AmigoActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 850
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 854
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 855
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lamigo/app/AmigoActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lamigo/app/AmigoActionBar$LayoutParams;

    .prologue
    .line 859
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 861
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 864
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 865
    invoke-virtual {p0, p1}, Lamigo/app/AmigoActionBarImpl;->setDisplayHomeAsUpEnabled(Z)V

    .line 867
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 871
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lamigo/app/AmigoActionBarImpl;->setDisplayOptions(II)V

    .line 872
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 2
    .param p1, "options"    # I

    .prologue
    const/4 v0, 0x1

    .line 876
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 877
    iput-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 879
    :cond_0
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v1, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setDisplayOptions(I)V

    .line 881
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl;->setDisplayShowExtraViewEnabled(Z)V

    .line 882
    return-void

    .line 881
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(II)V
    .locals 5
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    const/4 v1, 0x1

    .line 886
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->getDisplayOptions()I

    move-result v0

    .line 887
    .local v0, "current":I
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    .line 888
    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 890
    :cond_0
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    and-int v3, p1, p2

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v4, v0

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView;->setDisplayOptions(I)V

    .line 892
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p0, v1}, Lamigo/app/AmigoActionBarImpl;->setDisplayShowExtraViewEnabled(Z)V

    .line 893
    return-void

    .line 892
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 897
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lamigo/app/AmigoActionBarImpl;->setDisplayOptions(II)V

    .line 898
    return-void

    .line 897
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowExtraViewEnabled(Z)V
    .locals 1
    .param p1, "showExtraView"    # Z

    .prologue
    .line 1401
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setDragEnable(Z)V

    .line 1402
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 902
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lamigo/app/AmigoActionBarImpl;->setDisplayOptions(II)V

    .line 903
    return-void

    .line 902
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 907
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lamigo/app/AmigoActionBarImpl;->setDisplayOptions(II)V

    .line 908
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 912
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lamigo/app/AmigoActionBarImpl;->setDisplayOptions(II)V

    .line 913
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtraView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1157
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setExtraView(Landroid/view/View;)V

    .line 1158
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 942
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setHomeButtonEnabled(Z)V

    .line 943
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 952
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setIcon(I)V

    .line 953
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 947
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 948
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 957
    invoke-direct {p0}, Lamigo/app/AmigoActionBarImpl;->ensureTabsExist()V

    .line 958
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setIndicatorBackgroundColor(I)V

    .line 959
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lamigo/app/AmigoActionBar$OnNavigationListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Lamigo/app/AmigoActionBar$OnNavigationListener;

    .prologue
    .line 963
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 964
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p2}, Lcom/amigo/internal/widget/AmigoActionBarView;->setCallback(Lamigo/app/AmigoActionBar$OnNavigationListener;)V

    .line 965
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setLogo(I)V

    .line 975
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 969
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 970
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 979
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->getNavigationMode()I

    move-result v0

    .line 980
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 987
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v2, p0, Lamigo/app/AmigoActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v2, :cond_0

    .line 988
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 989
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 993
    :cond_0
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v2, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setNavigationMode(I)V

    .line 994
    packed-switch p1, :pswitch_data_1

    .line 1004
    :cond_1
    :goto_1
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lamigo/app/AmigoActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setCollapsable(Z)V

    .line 1005
    return-void

    .line 982
    :pswitch_0
    invoke-virtual {p0}, Lamigo/app/AmigoActionBarImpl;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    .line 983
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lamigo/app/AmigoActionBarImpl;->selectTab(Lamigo/app/AmigoActionBar$Tab;)V

    .line 984
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 996
    :pswitch_1
    invoke-direct {p0}, Lamigo/app/AmigoActionBarImpl;->ensureTabsExist()V

    .line 997
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mTabContainerView:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v2, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    .line 998
    iget v2, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    if-eq v2, v4, :cond_1

    .line 999
    iget v2, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v2}, Lamigo/app/AmigoActionBarImpl;->setSelectedNavigationItem(I)V

    .line 1000
    iput v4, p0, Lamigo/app/AmigoActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 980
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 994
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnActionBarDoubleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1384
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setOnActionBarDoubleClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1380
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    return-void
.end method

.method public setOnExtraViewDragListener(Lamigo/app/AmigoActionBar$OnExtraViewDragListener;)V
    .locals 1
    .param p1, "listener"    # Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    .prologue
    .line 1162
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setOnExtraViewDragListener(Lamigo/app/AmigoActionBar$OnExtraViewDragListener;)V

    .line 1163
    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1017
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :pswitch_0
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/app/AmigoActionBar$Tab;

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl;->selectTab(Lamigo/app/AmigoActionBar$Tab;)V

    .line 1020
    :goto_0
    return-void

    .line 1014
    :pswitch_1
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1023
    iput-boolean p1, p0, Lamigo/app/AmigoActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 1024
    if-nez p1, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 1027
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1033
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1036
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1046
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1047
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1041
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1042
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1055
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1056
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1050
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1051
    return-void
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 1059
    iput p1, p0, Lamigo/app/AmigoActionBarImpl;->mCurWindowVisibility:I

    .line 1060
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1064
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 1065
    iput-boolean v1, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z

    .line 1066
    invoke-direct {p0, v1}, Lamigo/app/AmigoActionBarImpl;->updateVisibility(Z)V

    .line 1071
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z

    .line 1086
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lamigo/app/AmigoActionBarImpl;->updateVisibility(Z)V

    .line 1088
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 6
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v5, 0x0

    .line 1091
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    if-eqz v3, :cond_0

    .line 1092
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    invoke-virtual {v3}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->finish()V

    .line 1095
    :cond_0
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    invoke-virtual {v3}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->killMode()V

    .line 1096
    new-instance v2, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    invoke-direct {v2, p0, p1}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;-><init>(Lamigo/app/AmigoActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 1097
    .local v2, "mode":Lamigo/app/AmigoActionBarImpl$ActionModeImpl;
    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1098
    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->invalidate()V

    .line 1099
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    invoke-virtual {v3, v2}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 1100
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lamigo/app/AmigoActionBarImpl;->animateToMode(Z)V

    .line 1110
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1111
    iput-object v2, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    .line 1113
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    invoke-virtual {v3}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1114
    .local v0, "actionModeMenu":Landroid/view/Menu;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1115
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v3, Lamigo/app/AmigoActivity;

    invoke-virtual {v3}, Lamigo/app/AmigoActivity;->setOptionsMenuUnExpand()V

    .line 1117
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v3, Lamigo/app/AmigoActivity;

    invoke-virtual {v3, v0}, Lamigo/app/AmigoActivity;->parserMenuInfo(Landroid/view/Menu;)V

    .line 1119
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v3, Lamigo/app/AmigoActivity;

    invoke-virtual {v3, v5}, Lamigo/app/AmigoActivity;->setOptionsMenuHideMode(Z)V

    .line 1123
    :cond_1
    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v3, Lamigo/app/AmigoActivity;

    invoke-virtual {v3}, Lamigo/app/AmigoActivity;->getAmigoMagicBar()Lamigo/widget/AmigoMagicBar;

    move-result-object v1

    .line 1124
    .local v1, "amigoMagicBar":Lamigo/widget/AmigoMagicBar;
    if-eqz v1, :cond_2

    .line 1125
    invoke-virtual {v1, v5}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithAnim(I)V

    .line 1131
    .end local v0    # "actionModeMenu":Landroid/view/Menu;
    .end local v1    # "amigoMagicBar":Lamigo/widget/AmigoMagicBar;
    .end local v2    # "mode":Lamigo/app/AmigoActionBarImpl$ActionModeImpl;
    :cond_2
    :goto_0
    return-object v2

    .restart local v2    # "mode":Lamigo/app/AmigoActionBarImpl$ActionModeImpl;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startOptionsMenu()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lamigo/app/AmigoActivity;

    invoke-virtual {v0}, Lamigo/app/AmigoActivity;->startOptionsMenu()V

    .line 296
    return-void
.end method

.method public updateActionMode()V
    .locals 3

    .prologue
    .line 1388
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    if-nez v1, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    invoke-virtual {v1}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1392
    .local v0, "actionModeMenu":Landroid/view/Menu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1393
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lamigo/app/AmigoActivity;

    invoke-virtual {v1}, Lamigo/app/AmigoActivity;->setOptionsMenuUnExpand()V

    .line 1394
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lamigo/app/AmigoActivity;

    invoke-virtual {v1, v0}, Lamigo/app/AmigoActivity;->parserMenuInfo(Landroid/view/Menu;)V

    .line 1395
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lamigo/app/AmigoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lamigo/app/AmigoActivity;->setOptionsMenuHideMode(Z)V

    goto :goto_0
.end method
