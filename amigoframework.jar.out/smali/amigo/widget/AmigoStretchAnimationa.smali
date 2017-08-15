.class public Lamigo/widget/AmigoStretchAnimationa;
.super Ljava/lang/Object;
.source "AmigoStretchAnimationa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoStretchAnimationa$ChildView;
    }
.end annotation


# instance fields
.field private final DISTANCE:I

.field private final DURATION:I

.field private final TAG:Ljava/lang/String;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamigo/widget/AmigoStretchAnimationa$ChildView;",
            ">;"
        }
    .end annotation
.end field

.field private mFromBottomHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFromTopHeight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGoUp:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastUpdate:Z

.field private mMotionY:I

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "AmigoStretchAnimationa->"

    iput-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lamigo/widget/AmigoStretchAnimationa;->mRunning:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mGoUp:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    .line 38
    const/16 v0, 0xc8

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa;->DURATION:I

    .line 41
    iput-boolean v1, p0, Lamigo/widget/AmigoStretchAnimationa;->mLastUpdate:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mMotionY:I

    .line 44
    const/16 v0, 0x28

    iput v0, p0, Lamigo/widget/AmigoStretchAnimationa;->DISTANCE:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromTopHeight:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromBottomHeight:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lamigo/widget/AmigoStretchAnimationa;Z)Z
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoStretchAnimationa;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lamigo/widget/AmigoStretchAnimationa;->mRunning:Z

    return p1
.end method

.method static synthetic access$102(Lamigo/widget/AmigoStretchAnimationa;Z)Z
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoStretchAnimationa;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lamigo/widget/AmigoStretchAnimationa;->mLastUpdate:Z

    return p1
.end method

.method private createAnimator(Lamigo/widget/AmigoStretchAnimationa$ChildView;I)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Lamigo/widget/AmigoStretchAnimationa$ChildView;
    .param p2, "startHeight"    # I

    .prologue
    .line 213
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 214
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    new-instance v1, Lamigo/widget/AmigoStretchAnimationa$1;

    invoke-direct {v1, p0, p1}, Lamigo/widget/AmigoStretchAnimationa$1;-><init>(Lamigo/widget/AmigoStretchAnimationa;Lamigo/widget/AmigoStretchAnimationa$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    new-instance v1, Lamigo/widget/AmigoStretchAnimationa$2;

    invoke-direct {v1, p0, p1}, Lamigo/widget/AmigoStretchAnimationa$2;-><init>(Lamigo/widget/AmigoStretchAnimationa;Lamigo/widget/AmigoStretchAnimationa$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 256
    return-object v0
.end method

.method private initOriginHeight(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 78
    .local v1, "count":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 79
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 80
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 81
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public addChildren(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-boolean v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mGoUp:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromTopHeight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 59
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromTopHeight:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoStretchAnimationa;->initOriginHeight(Ljava/util/List;Ljava/util/List;)V

    .line 61
    :cond_2
    iget-boolean v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mGoUp:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromBottomHeight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 62
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromBottomHeight:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoStretchAnimationa;->initOriginHeight(Ljava/util/List;Ljava/util/List;)V

    .line 64
    :cond_3
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 66
    .local v4, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 69
    .local v2, "child":Landroid/view/View;
    iget-boolean v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mGoUp:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromTopHeight:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 70
    .local v5, "originHeight":I
    iget-object v6, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    new-instance v0, Lamigo/widget/AmigoStretchAnimationa$ChildView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lamigo/widget/AmigoStretchAnimationa$ChildView;-><init>(Lamigo/widget/AmigoStretchAnimationa;Landroid/view/View;III)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v5    # "originHeight":I
    :cond_4
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mFromBottomHeight:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_1
.end method

.method public isGoUp()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mGoUp:Z

    return v0
.end method

.method public isLastUpdate()Z
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mLastUpdate:Z

    .line 127
    .local v0, "last":Z
    iget-boolean v1, p0, Lamigo/widget/AmigoStretchAnimationa;->mLastUpdate:Z

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamigo/widget/AmigoStretchAnimationa;->mLastUpdate:Z

    .line 130
    :cond_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lamigo/widget/AmigoStretchAnimationa;->mRunning:Z

    return v0
.end method

.method public overAnimation(FZ)V
    .locals 8
    .param p1, "increase"    # F
    .param p2, "autoOver"    # Z

    .prologue
    .line 186
    const/4 v2, 0x0

    .line 187
    .local v2, "count":I
    if-eqz p2, :cond_0

    .line 188
    iget-object v5, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 193
    :goto_0
    if-nez v2, :cond_1

    .line 210
    :goto_1
    return-void

    .line 190
    :cond_0
    iget-object v5, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 197
    :cond_1
    new-array v1, v2, [Landroid/animation/Animator;

    .line 198
    .local v1, "animators":[Landroid/animation/Animator;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 199
    iget-object v5, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamigo/widget/AmigoStretchAnimationa$ChildView;

    .line 200
    .local v4, "view":Lamigo/widget/AmigoStretchAnimationa$ChildView;
    if-eqz p2, :cond_2

    .line 201
    iget v5, v4, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lamigo/widget/AmigoStretchAnimationa;->createAnimator(Lamigo/widget/AmigoStretchAnimationa$ChildView;I)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v1, v3

    .line 198
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 203
    :cond_2
    iget v5, v4, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    invoke-direct {p0, v4, v5}, Lamigo/widget/AmigoStretchAnimationa;->createAnimator(Lamigo/widget/AmigoStretchAnimationa$ChildView;I)Landroid/animation/Animator;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_3

    .line 206
    .end local v4    # "view":Lamigo/widget/AmigoStretchAnimationa$ChildView;
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 207
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 208
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 209
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1
.end method

.method public overScroll(III)V
    .locals 4
    .param p1, "motionY"    # I
    .param p2, "motionPostion"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mRunning:Z

    .line 89
    iget v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mMotionY:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 90
    iput p1, p0, Lamigo/widget/AmigoStretchAnimationa;->mMotionY:I

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 92
    iget-object v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoStretchAnimationa$ChildView;

    .line 93
    .local v0, "child":Lamigo/widget/AmigoStretchAnimationa$ChildView;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 94
    invoke-virtual {v0, p3}, Lamigo/widget/AmigoStretchAnimationa$ChildView;->computeCurHeight(I)V

    .line 95
    invoke-virtual {v0}, Lamigo/widget/AmigoStretchAnimationa$ChildView;->changeChildLayout()V

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "child":Lamigo/widget/AmigoStretchAnimationa$ChildView;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public revertViewSize()V
    .locals 3

    .prologue
    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 103
    iget-object v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoStretchAnimationa$ChildView;

    .line 104
    .local v0, "child":Lamigo/widget/AmigoStretchAnimationa$ChildView;
    iget v2, v0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    iput v2, v0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    .line 105
    invoke-virtual {v0}, Lamigo/widget/AmigoStretchAnimationa$ChildView;->revertLayoutParams()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "child":Lamigo/widget/AmigoStretchAnimationa$ChildView;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mRunning:Z

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mLastUpdate:Z

    .line 109
    iget-object v2, p0, Lamigo/widget/AmigoStretchAnimationa;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 110
    return-void
.end method

.method public setGoUp(Z)V
    .locals 0
    .param p1, "up"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lamigo/widget/AmigoStretchAnimationa;->mGoUp:Z

    .line 122
    return-void
.end method
