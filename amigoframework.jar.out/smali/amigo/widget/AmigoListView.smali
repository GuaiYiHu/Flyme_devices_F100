.class public Lamigo/widget/AmigoListView;
.super Landroid/widget/ListView;
.source "AmigoListView.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoListView$MultiChoiceScrollListener;
    }
.end annotation


# static fields
.field public static final FRAME_DURATION:I = 0x10

.field public static final RETURN_TOP_DURATION:I = 0xd0


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mFastScrollAlwaysVisible:Z

.field private mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFastScroller:Lamigo/widget/AmigoFastScroller;

.field private mFragment:Landroid/app/Fragment;

.field private mGesture:Landroid/view/GestureDetector;

.field private mLastScrollState:I

.field private mMaximumVelocity:I

.field private mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

.field private mModifiedDivider:Z

.field private mMotionPosition:I

.field private mMotionY:I

.field private mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollListener:Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

.field private mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

.field private mStretchEnable:Z

.field private mVPEffectEnable:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    iput-object v3, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    .line 54
    iput-boolean v4, p0, Lamigo/widget/AmigoListView;->mStretchEnable:Z

    .line 59
    const-string v2, "AmigoListView-->"

    iput-object v2, p0, Lamigo/widget/AmigoListView;->TAG:Ljava/lang/String;

    .line 60
    iput-boolean v4, p0, Lamigo/widget/AmigoListView;->mModifiedDivider:Z

    .line 62
    const/4 v2, -0x1

    iput v2, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    .line 73
    iput-object v3, p0, Lamigo/widget/AmigoListView;->mScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object v3, p0, Lamigo/widget/AmigoListView;->mGesture:Landroid/view/GestureDetector;

    .line 76
    iput-object v3, p0, Lamigo/widget/AmigoListView;->mScrollListener:Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

    .line 79
    iput-boolean v4, p0, Lamigo/widget/AmigoListView;->mVPEffectEnable:Z

    .line 115
    iput-object p1, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    .line 116
    new-instance v1, Lamigo/widget/AmigoListView$1;

    invoke-direct {v1, p0}, Lamigo/widget/AmigoListView$1;-><init>(Lamigo/widget/AmigoListView;)V

    .line 127
    .local v1, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lamigo/widget/AmigoListView;->mGesture:Landroid/view/GestureDetector;

    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoListView;->mOwnerThread:Ljava/lang/Thread;

    .line 130
    iget-boolean v2, p0, Lamigo/widget/AmigoListView;->mStretchEnable:Z

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoListView;->setOverScrollMode(I)V

    .line 132
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 133
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoListView;->mMaximumVelocity:I

    .line 135
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9020033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->changeColor()V

    .line 141
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoListView;)Lamigo/widget/AmigoListView$MultiChoiceScrollListener;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoListView;

    .prologue
    .line 36
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mScrollListener:Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/widget/AmigoListView;Z)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoListView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lamigo/widget/AmigoListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$200(Lamigo/widget/AmigoListView;Z)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoListView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lamigo/widget/AmigoListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$300(Lamigo/widget/AmigoListView;Landroid/view/View;IJ)V
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoListView;->showContextMenuDialog(Landroid/view/View;IJ)V

    return-void
.end method

.method private changeColor()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 325
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 326
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 332
    :cond_0
    return-void
.end method

.method private changeColorScrollBar(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "scrollBar"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 310
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 312
    iput-object p1, p0, Lamigo/widget/AmigoListView;->mScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 313
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 317
    :cond_0
    iget-object p1, p0, Lamigo/widget/AmigoListView;->mScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    .end local p1    # "scrollBar":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object p1
.end method

.method private computeIncrease()F
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 711
    iget-object v3, p0, Lamigo/widget/AmigoListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v2

    .line 715
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 716
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    iget v3, p0, Lamigo/widget/AmigoListView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v7, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 717
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    .line 718
    .local v0, "initialVelocity":I
    const-string v3, "AmigoListView-->"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialVelocity--> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-gez v0, :cond_2

    .line 720
    iget-object v3, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v3, v6}, Lamigo/widget/AmigoStretchAnimationa;->setGoUp(Z)V

    .line 724
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v8, :cond_3

    .line 725
    const v2, 0x3f8ccccd    # 1.1f

    goto :goto_0

    .line 722
    :cond_2
    iget-object v3, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v3, v7}, Lamigo/widget/AmigoStretchAnimationa;->setGoUp(Z)V

    goto :goto_1

    .line 727
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v3, v8, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v9, :cond_4

    .line 728
    const v2, 0x3f99999a    # 1.2f

    goto :goto_0

    .line 730
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v3, v9, :cond_0

    .line 731
    const v2, 0x3fa66666    # 1.3f

    goto :goto_0
.end method

.method private correctLayout()V
    .locals 10

    .prologue
    .line 582
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 584
    .local v0, "bottom":I
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getDividerHeight()I

    move-result v2

    .line 586
    .local v2, "dividerHeight":I
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 587
    invoke-virtual {p0, v4}, Lamigo/widget/AmigoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 589
    .local v5, "l":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v8, v5

    .line 590
    .local v6, "r":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 592
    .local v3, "h":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    .line 593
    .local v7, "top":I
    invoke-direct {p0, v0, v3, v7}, Lamigo/widget/AmigoListView;->validTop(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 594
    sub-int v8, v0, v3

    invoke-virtual {v1, v5, v8, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 597
    sub-int v8, v0, v3

    sub-int v0, v8, v2

    .line 586
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 602
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "h":I
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "top":I
    :cond_1
    return-void
.end method

.method private getChildren()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v4}, Lamigo/widget/AmigoStretchAnimationa;->isGoUp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 547
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 548
    invoke-virtual {p0, v3}, Lamigo/widget/AmigoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 549
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/4 v2, -0x1

    .line 555
    .local v2, "count":I
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .restart local v3    # "i":I
    :goto_1
    if-le v3, v2, :cond_3

    .line 556
    invoke-virtual {p0, v3}, Lamigo/widget/AmigoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 557
    .restart local v0    # "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 558
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 562
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    :cond_3
    return-object v1
.end method

.method private hideContextMenuDialog()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->close()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    .line 403
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 407
    :cond_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 647
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 649
    :cond_0
    return-void
.end method

.method private isFlingState()Z
    .locals 2

    .prologue
    .line 627
    iget v0, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 628
    const/4 v0, 0x1

    .line 630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverBottom()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 617
    const/4 v1, 0x1

    .line 618
    .local v1, "isBottom":Z
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 619
    .local v0, "bottom":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    move v1, v2

    .line 622
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 620
    goto :goto_0

    :cond_2
    move v2, v3

    .line 622
    goto :goto_1
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyDivider()V
    .locals 3

    .prologue
    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 91
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private printChildInfo()V
    .locals 5

    .prologue
    .line 606
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 607
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 609
    const-string v2, "AmigoListView-->"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v2, "AmigoListView-->"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v2, "AmigoListView-->"

    const-string v3, "\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private revertChildrenTrans()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 741
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 742
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 743
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 744
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 741
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private scrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 694
    iget v1, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lamigo/widget/AmigoListView;->isOverBottom()Z

    move-result v1

    if-nez v1, :cond_2

    .line 695
    iget-object v1, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    if-nez v1, :cond_0

    .line 696
    new-instance v1, Lamigo/widget/AmigoStretchAnimationa;

    invoke-direct {v1}, Lamigo/widget/AmigoStretchAnimationa;-><init>()V

    iput-object v1, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    .line 698
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getFirstVisiblePosition()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 699
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->computeIncrease()F

    move-result v0

    .line 700
    .local v0, "incrase":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v1}, Lamigo/widget/AmigoStretchAnimationa;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 701
    iget-object v1, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-direct {p0}, Lamigo/widget/AmigoListView;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoStretchAnimationa;->addChildren(Ljava/util/List;)V

    .line 702
    iget-object v1, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lamigo/widget/AmigoStretchAnimationa;->overAnimation(FZ)V

    .line 706
    .end local v0    # "incrase":F
    :cond_2
    iput p2, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    .line 707
    return-void
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoFastScroller;->setAlwaysShow(Z)V

    .line 198
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoFastScroller;->setEnabled(Z)V

    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->resolvePadding()V

    .line 281
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0}, Lamigo/widget/AmigoFastScroller;->updateLayout()V

    .line 284
    :cond_1
    return-void

    .line 276
    :cond_2
    if-eqz p1, :cond_0

    .line 277
    new-instance v0, Lamigo/widget/AmigoFastScroller;

    iget v1, p0, Lamigo/widget/AmigoListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lamigo/widget/AmigoFastScroller;-><init>(Lamigo/widget/AmigoListView;I)V

    iput-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    .line 278
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showContextMenuDialog(Landroid/view/View;IJ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 350
    invoke-virtual {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 352
    .local v0, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    new-instance v2, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    iget-object v3, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    .line 353
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    invoke-virtual {v2, v0}, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 354
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    iget-object v3, p0, Lamigo/widget/AmigoListView;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->setFragment(Landroid/app/Fragment;)V

    .line 355
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    iget-object v3, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    invoke-interface {v2, v3, p0, v0}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 359
    :cond_0
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 360
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 362
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->size()I

    move-result v1

    .line 363
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 364
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mMenuBuilder:Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;

    .line 367
    :cond_2
    return-void
.end method

.method private validTop(III)Z
    .locals 2
    .param p1, "bottom"    # I
    .param p2, "h"    # I
    .param p3, "top"    # I

    .prologue
    .line 634
    sub-int v0, p1, p2

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 377
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 570
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->needModifiedDivider()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->modifyDivider()V

    .line 574
    :cond_0
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mStretchEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v0}, Lamigo/widget/AmigoStretchAnimationa;->isGoUp()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v0}, Lamigo/widget/AmigoStretchAnimationa;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v0}, Lamigo/widget/AmigoStretchAnimationa;->isLastUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->correctLayout()V

    .line 578
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 579
    return-void
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0}, Lamigo/widget/AmigoFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-super {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v1}, Lamigo/widget/AmigoFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getViewPagerEffectEnable()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mVPEffectEnable:Z

    return v0
.end method

.method protected invokeScrollStatedChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 768
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mStretchEnable:Z

    if-eqz v0, :cond_0

    .line 769
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoListView;->scrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 771
    :cond_0
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-nez v2, :cond_2

    .line 249
    iget-boolean v2, p0, Lamigo/widget/AmigoListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lamigo/widget/AmigoListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v2}, Lamigo/widget/AmigoFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v2}, Lamigo/widget/AmigoFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-nez v0, :cond_0

    .line 259
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mFastScrollEnabled:Z

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0}, Lamigo/widget/AmigoFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getViewPagerEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->revertChildrenTrans()V

    .line 763
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 764
    return-void
.end method

.method public needModifiedDivider()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mModifiedDivider:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/Activity;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 412
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/Activity;

    .prologue
    .line 418
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/Activity;

    .prologue
    .line 423
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->hideContextMenuDialog()V

    .line 424
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/Activity;

    .prologue
    .line 429
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/Activity;
    .param p2, "arg1"    # Landroid/os/Bundle;

    .prologue
    .line 434
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/Activity;

    .prologue
    .line 440
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "arg0"    # Landroid/app/Activity;

    .prologue
    .line 446
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 304
    invoke-direct {p0, p2}, Lamigo/widget/AmigoListView;->changeColorScrollBar(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "horizontalScrollBar":Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 305
    invoke-super/range {v0 .. v6}, Landroid/widget/ListView;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 306
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    .line 297
    invoke-direct {p0, p2}, Lamigo/widget/AmigoListView;->changeColorScrollBar(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "verticalScrollBar":Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 298
    invoke-super/range {v0 .. v6}, Landroid/widget/ListView;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 299
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 288
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v2, p1}, Lamigo/widget/AmigoFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 231
    .local v0, "intercepted":Z
    if-eqz v0, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 236
    .end local v0    # "intercepted":Z
    :goto_0
    return v1

    .line 235
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 236
    .local v1, "onInterceptTouchEvent":Z
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 664
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 665
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoFastScroller;->onItemCountChanged(II)V

    .line 668
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRtlPropertiesChanged(I)V

    .line 673
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoFastScroller;->setScrollbarPosition(I)V

    .line 676
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 654
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 657
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0, p2, p3, p4}, Lamigo/widget/AmigoFastScroller;->onScroll(III)V

    .line 660
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 393
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 681
    iget v0, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    if-eq p2, v0, :cond_0

    .line 682
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 683
    iput p2, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    .line 684
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 687
    :cond_0
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mStretchEnable:Z

    if-eqz v0, :cond_1

    .line 688
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoListView;->scrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 691
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 212
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lamigo/widget/AmigoFastScroller;->onSizeChanged(IIII)V

    .line 215
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 464
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 465
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v4, :cond_0

    .line 466
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v4, p1}, Lamigo/widget/AmigoFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 467
    .local v1, "intercepted":Z
    if-eqz v1, :cond_0

    .line 468
    const/4 v4, 0x1

    .line 499
    .end local v1    # "intercepted":Z
    :goto_0
    return v4

    .line 471
    :cond_0
    iget-boolean v4, p0, Lamigo/widget/AmigoListView;->mStretchEnable:Z

    if-eqz v4, :cond_2

    .line 472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 473
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 474
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 475
    .local v2, "x":I
    invoke-virtual {p0, v2, v3}, Lamigo/widget/AmigoListView;->pointToPosition(II)I

    move-result v4

    iput v4, p0, Lamigo/widget/AmigoListView;->mMotionPosition:I

    .line 476
    iput v3, p0, Lamigo/widget/AmigoListView;->mMotionY:I

    .line 477
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->initVelocityTrackerIfNotExists()V

    .line 478
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 479
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .line 492
    :pswitch_0
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v4}, Lamigo/widget/AmigoStretchAnimationa;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lamigo/widget/AmigoStretchAnimationa;->overAnimation(FZ)V

    .line 497
    :cond_1
    :goto_1
    :pswitch_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v4}, Lamigo/widget/AmigoStretchAnimationa;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    iget-object v4, p0, Lamigo/widget/AmigoListView;->mStretchAnimationa:Lamigo/widget/AmigoStretchAnimationa;

    invoke-virtual {v4}, Lamigo/widget/AmigoStretchAnimationa;->revertViewSize()V

    goto :goto_1

    .line 499
    .end local v0    # "action":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 505
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getMaxScrollAmount()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public registerFragmentForContextMenu(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 384
    iput-object p1, p0, Lamigo/widget/AmigoListView;->mFragment:Landroid/app/Fragment;

    .line 385
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 201
    iget v0, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 203
    iput p1, p0, Lamigo/widget/AmigoListView;->mLastScrollState:I

    .line 204
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 207
    :cond_0
    return-void
.end method

.method public returnTop()V
    .locals 9

    .prologue
    .line 781
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getCount()I

    move-result v4

    .line 782
    .local v4, "totalCount":I
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getChildCount()I

    move-result v5

    .line 783
    .local v5, "visiableCount":I
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getFirstVisiblePosition()I

    move-result v3

    .line 785
    .local v3, "sourcePos":I
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 789
    const/16 v6, 0xd0

    add-int/lit8 v7, v3, 0x0

    div-int v2, v6, v7

    .line 790
    .local v2, "frameDuration":I
    const-string v6, "AmigoListView-->"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sourcePos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", frameDuration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/16 v6, 0x10

    if-le v2, v6, :cond_1

    .line 793
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoListView;->smoothScrollToPosition(I)V

    .line 816
    .end local v2    # "frameDuration":I
    :cond_0
    :goto_0
    return-void

    .line 795
    .restart local v2    # "frameDuration":I
    :cond_1
    const/16 v1, 0xd

    .line 796
    .local v1, "frameCount":I
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getFirstVisiblePosition()I

    move-result v6

    div-int v0, v6, v1

    .line 797
    .local v0, "distance":I
    new-instance v6, Lamigo/widget/AmigoListView$5;

    invoke-direct {v6, p0, v0}, Lamigo/widget/AmigoListView$5;-><init>(Lamigo/widget/AmigoListView;I)V

    invoke-virtual {p0, v6}, Lamigo/widget/AmigoListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 172
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 173
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoListView;->setFastScrollEnabled(Z)V

    .line 176
    :cond_0
    iput-boolean p1, p0, Lamigo/widget/AmigoListView;->mFastScrollAlwaysVisible:Z

    .line 177
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0, p1}, Lamigo/widget/AmigoListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    new-instance v0, Lamigo/widget/AmigoListView$3;

    invoke-direct {v0, p0, p1}, Lamigo/widget/AmigoListView$3;-><init>(Lamigo/widget/AmigoListView;Z)V

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    iget-boolean v0, p0, Lamigo/widget/AmigoListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 146
    iput-boolean p1, p0, Lamigo/widget/AmigoListView;->mFastScrollEnabled:Z

    .line 148
    invoke-direct {p0}, Lamigo/widget/AmigoListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, p1}, Lamigo/widget/AmigoListView;->setFastScrollerEnabledUiThread(Z)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    new-instance v0, Lamigo/widget/AmigoListView$2;

    invoke-direct {v0, p0, p1}, Lamigo/widget/AmigoListView$2;-><init>(Lamigo/widget/AmigoListView;Z)V

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 163
    iput p1, p0, Lamigo/widget/AmigoListView;->mFastScrollStyle:I

    .line 164
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-nez v0, :cond_0

    .line 165
    iput p1, p0, Lamigo/widget/AmigoListView;->mFastScrollStyle:I

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setModifiedDiveder(Z)V
    .locals 0
    .param p1, "modify"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lamigo/widget/AmigoListView;->mModifiedDivider:Z

    .line 83
    return-void
.end method

.method setMultiChoiceScrollListener(Lamigo/widget/AmigoListView$MultiChoiceScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

    .prologue
    .line 819
    iput-object p1, p0, Lamigo/widget/AmigoListView;->mScrollListener:Lamigo/widget/AmigoListView$MultiChoiceScrollListener;

    .line 820
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 372
    iput-object p1, p0, Lamigo/widget/AmigoListView;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 373
    invoke-virtual {p0}, Lamigo/widget/AmigoListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 374
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 337
    new-instance v0, Lamigo/widget/AmigoListView$4;

    invoke-direct {v0, p0, p1}, Lamigo/widget/AmigoListView$4;-><init>(Lamigo/widget/AmigoListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 346
    .local v0, "wrapListener":Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 347
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 641
    iput-object p1, p0, Lamigo/widget/AmigoListView;->mOnscrListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 642
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 643
    return-void
.end method

.method public setStretchEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 459
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 268
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lamigo/widget/AmigoListView;->mFastScroller:Lamigo/widget/AmigoFastScroller;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoFastScroller;->setScrollbarPosition(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public setViewPagerEffectEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 750
    iput-boolean p1, p0, Lamigo/widget/AmigoListView;->mVPEffectEnable:Z

    .line 751
    return-void
.end method
