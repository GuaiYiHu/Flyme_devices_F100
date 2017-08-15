.class public Lamigo/widget/AmigoAnimateDismissAdapter;
.super Lamigo/widget/AmigoBaseAdapterDecorator;
.source "AmigoAnimateDismissAdapter.java"


# instance fields
.field private mCallback:Lamigo/widget/OnAmigoItemDismissCallback;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Lamigo/widget/OnAmigoItemDismissCallback;)V
    .locals 0
    .param p1, "baseAdapter"    # Landroid/widget/BaseAdapter;
    .param p2, "callback"    # Lamigo/widget/OnAmigoItemDismissCallback;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lamigo/widget/AmigoBaseAdapterDecorator;-><init>(Landroid/widget/BaseAdapter;)V

    .line 43
    iput-object p2, p0, Lamigo/widget/AmigoAnimateDismissAdapter;->mCallback:Lamigo/widget/OnAmigoItemDismissCallback;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoAnimateDismissAdapter;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoAnimateDismissAdapter;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAnimateDismissAdapter;->invokeCallback(Ljava/util/Collection;)V

    return-void
.end method

.method private createAnimatorForView(Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "continu"    # Z

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 145
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 147
    .local v7, "originalHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 149
    .local v5, "oriDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v7, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 150
    .local v6, "animator":Landroid/animation/ValueAnimator;
    new-instance v0, Lamigo/widget/AmigoAnimateDismissAdapter$2;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lamigo/widget/AmigoAnimateDismissAdapter$2;-><init>(Lamigo/widget/AmigoAnimateDismissAdapter;ZLandroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 180
    new-instance v0, Lamigo/widget/AmigoAnimateDismissAdapter$3;

    invoke-direct {v0, p0, v4, p1}, Lamigo/widget/AmigoAnimateDismissAdapter$3;-><init>(Lamigo/widget/AmigoAnimateDismissAdapter;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    return-object v6
.end method

.method private getVisibleViewsForPositions(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
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
    .line 121
    .local p1, "positions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v2, "positionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 133
    invoke-virtual {p0}, Lamigo/widget/AmigoAnimateDismissAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v3
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
    .line 111
    .local p1, "positions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v2, "positionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [I

    .line 114
    .local v0, "dismissPositions":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 115
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

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v3, p0, Lamigo/widget/AmigoAnimateDismissAdapter;->mCallback:Lamigo/widget/OnAmigoItemDismissCallback;

    invoke-virtual {p0}, Lamigo/widget/AmigoAnimateDismissAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lamigo/widget/OnAmigoItemDismissCallback;->onDismiss(Landroid/widget/AbsListView;[I)V

    .line 118
    return-void
.end method


# virtual methods
.method public animateDismiss(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoAnimateDismissAdapter;->animateDismiss(Ljava/util/Collection;)V

    .line 48
    return-void
.end method

.method public animateDismiss(Ljava/util/Collection;)V
    .locals 9
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
    .line 51
    .local p1, "positions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 52
    .local v5, "positionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lamigo/widget/AmigoAnimateDismissAdapter;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v7

    if-nez v7, :cond_0

    .line 53
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Call setListView() on this AnimateDismissAdapter before calling setAdapter()!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 57
    :cond_0
    invoke-direct {p0, v5}, Lamigo/widget/AmigoAnimateDismissAdapter;->getVisibleViewsForPositions(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 59
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .line 67
    .local v3, "continu":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 68
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    const/4 v3, 0x1

    .line 73
    :goto_1
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {p0, v7, v3}, Lamigo/widget/AmigoAnimateDismissAdapter;->createAnimatorForView(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 77
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 79
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v2, v7, [Landroid/animation/Animator;

    .line 80
    .local v2, "animatorsArray":[Landroid/animation/Animator;
    const/4 v4, 0x0

    :goto_2
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 81
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    aput-object v7, v2, v4

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 85
    new-instance v7, Lamigo/widget/AmigoAnimateDismissAdapter$1;

    invoke-direct {v7, p0, v5}, Lamigo/widget/AmigoAnimateDismissAdapter$1;-><init>(Lamigo/widget/AmigoAnimateDismissAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 108
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v2    # "animatorsArray":[Landroid/animation/Animator;
    .end local v3    # "continu":Z
    .end local v4    # "i":I
    :goto_3
    return-void

    .line 106
    :cond_4
    invoke-direct {p0, v5}, Lamigo/widget/AmigoAnimateDismissAdapter;->invokeCallback(Ljava/util/Collection;)V

    goto :goto_3
.end method
