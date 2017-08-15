.class public Lamigo/widget/AmigoListDismissAnimation;
.super Ljava/lang/Object;
.source "AmigoListDismissAnimation.java"


# instance fields
.field private final DURATION:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mCallback:Lamigo/widget/OnAmigoItemDismissCallback;

.field private mListView:Landroid/widget/AbsListView;

.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0xc8

    iput v0, p0, Lamigo/widget/AmigoListDismissAnimation;->DURATION:I

    .line 36
    iput-object p1, p0, Lamigo/widget/AmigoListDismissAnimation;->mListView:Landroid/widget/AbsListView;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoListDismissAnimation;)Lamigo/widget/OnAmigoItemDismissCallback;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoListDismissAnimation;

    .prologue
    .line 27
    iget-object v0, p0, Lamigo/widget/AmigoListDismissAnimation;->mCallback:Lamigo/widget/OnAmigoItemDismissCallback;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/widget/AmigoListDismissAnimation;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoListDismissAnimation;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lamigo/widget/AmigoListDismissAnimation;->invokeCallback(Ljava/util/Collection;)V

    return-void
.end method

.method private createAnimatorForView(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "continu"    # Z

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 115
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 117
    .local v5, "originalHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 119
    .local v6, "oriDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v5, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 120
    .local v7, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lamigo/widget/AmigoListDismissAnimation$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lamigo/widget/AmigoListDismissAnimation$2;-><init>(Lamigo/widget/AmigoListDismissAnimation;ZLandroid/view/View;Landroid/view/ViewGroup$LayoutParams;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 154
    new-instance v0, Lamigo/widget/AmigoListDismissAnimation$3;

    invoke-direct {v0, p0, v4, p1}, Lamigo/widget/AmigoListDismissAnimation$3;-><init>(Lamigo/widget/AmigoListDismissAnimation;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    return-object v7
.end method

.method private getVisibleViewsForPositions(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "positions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v2, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lamigo/widget/AmigoListDismissAnimation;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 105
    iget-object v3, p0, Lamigo/widget/AmigoListDismissAnimation;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lamigo/widget/AmigoListDismissAnimation;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method private invokeCallback(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "positions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    .local v2, "positionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 168
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 169
    .local v0, "dismissPositions":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 170
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v3, p0, Lamigo/widget/AmigoListDismissAnimation;->mCallback:Lamigo/widget/OnAmigoItemDismissCallback;

    iget-object v4, p0, Lamigo/widget/AmigoListDismissAnimation;->mListView:Landroid/widget/AbsListView;

    invoke-interface {v3, v4, v0}, Lamigo/widget/OnAmigoItemDismissCallback;->onDismiss(Landroid/widget/AbsListView;[I)V

    .line 173
    return-void
.end method


# virtual methods
.method public endAnimation()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 101
    :cond_0
    return-void
.end method

.method public setAmigoItemDismissCallback(Lamigo/widget/OnAmigoItemDismissCallback;)V
    .locals 0
    .param p1, "callback"    # Lamigo/widget/OnAmigoItemDismissCallback;

    .prologue
    .line 40
    iput-object p1, p0, Lamigo/widget/AmigoListDismissAnimation;->mCallback:Lamigo/widget/OnAmigoItemDismissCallback;

    .line 41
    return-void
.end method

.method public startAnimation(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "positions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .local v7, "positionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mListView:Landroid/widget/AbsListView;

    if-nez v9, :cond_0

    .line 46
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Call setListView() on this AnimateDismissAdapter before calling setAdapter()!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 50
    :cond_0
    invoke-direct {p0, v7}, Lamigo/widget/AmigoListDismissAnimation;->getVisibleViewsForPositions(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mViews:Ljava/util/List;

    .line 52
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .line 55
    .local v3, "continu":Z
    const/4 v6, -0x2

    .line 56
    .local v6, "pos":I
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 57
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v9, v8}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 58
    .local v2, "childPos":I
    add-int/lit8 v9, v2, -0x1

    if-ne v6, v9, :cond_1

    const/4 v3, 0x1

    .line 59
    :goto_1
    move v6, v2

    .line 60
    invoke-direct {p0, v8, v3}, Lamigo/widget/AmigoListDismissAnimation;->createAnimatorForView(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 62
    .end local v2    # "childPos":I
    .end local v8    # "view":Landroid/view/View;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v1, v9, [Landroid/animation/Animator;

    .line 63
    .local v1, "animatorsArray":[Landroid/animation/Animator;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v9, v1

    if-ge v4, v9, :cond_3

    .line 64
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Animator;

    aput-object v9, v1, v4

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 66
    :cond_3
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 67
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 68
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 69
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lamigo/widget/AmigoListDismissAnimation$1;

    invoke-direct {v10, p0, v7}, Lamigo/widget/AmigoListDismissAnimation$1;-><init>(Lamigo/widget/AmigoListDismissAnimation;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 96
    .end local v0    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v1    # "animatorsArray":[Landroid/animation/Animator;
    .end local v3    # "continu":Z
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "pos":I
    :cond_4
    :goto_3
    return-void

    .line 92
    :cond_5
    iget-object v9, p0, Lamigo/widget/AmigoListDismissAnimation;->mCallback:Lamigo/widget/OnAmigoItemDismissCallback;

    if-eqz v9, :cond_4

    .line 93
    invoke-direct {p0, v7}, Lamigo/widget/AmigoListDismissAnimation;->invokeCallback(Ljava/util/Collection;)V

    goto :goto_3
.end method
