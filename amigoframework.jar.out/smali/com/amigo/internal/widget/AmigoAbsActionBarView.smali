.class public abstract Lcom/amigo/internal/widget/AmigoAbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AmigoAbsActionBarView.java"

# interfaces
.implements Lamigo/changecolors/IChangeColors;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field protected mIsActionMode:Z

.field protected mIsActionModeShowing:Z

.field protected mMenuView:Landroid/view/ViewGroup;

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitActionBar:Z

    .line 38
    new-instance v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;-><init>(Lcom/amigo/internal/widget/AmigoAbsActionBarView;)V

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    .line 44
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionMode:Z

    .line 45
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionModeShowing:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitActionBar:Z

    .line 38
    new-instance v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;-><init>(Lcom/amigo/internal/widget/AmigoAbsActionBarView;)V

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    .line 44
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionMode:Z

    .line 45
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionModeShowing:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitActionBar:Z

    .line 38
    new-instance v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;-><init>(Lcom/amigo/internal/widget/AmigoAbsActionBarView;)V

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    .line 44
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionMode:Z

    .line 45
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionModeShowing:Z

    .line 58
    return-void
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 266
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 12
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v10, 0xc8

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 146
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 152
    :cond_0
    if-nez p1, :cond_2

    .line 161
    const-string v3, "TranslationY"

    new-array v4, v6, [F

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->getContentHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    aput v7, v4, v9

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 164
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 165
    sget-object v3, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 167
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 170
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mMenuView:Landroid/view/ViewGroup;

    const-string v4, "TranslationY"

    new-array v5, v6, [F

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->getContentHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v8

    aput v7, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 173
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 176
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 205
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 184
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v3, "TranslationY"

    new-array v4, v6, [F

    aput v7, v4, v8

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->getContentHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v9

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 187
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    sget-object v3, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 190
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 193
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mMenuView:Landroid/view/ViewGroup;

    const-string v4, "TranslationY"

    new-array v5, v6, [F

    aput v7, v5, v8

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->getContentHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 196
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 197
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 199
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 201
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 254
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisAnimListener:Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 257
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 260
    sub-int/2addr p2, p4

    .line 262
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    const v5, 0x9010066

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 69
    .local v1, "height":I
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->setContentHeight(I)V

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    iget-boolean v2, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v2, :cond_0

    .line 74
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->setSplitActionBar(Z)V

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    :cond_1
    return-void
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 271
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 272
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 274
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 275
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 280
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 277
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView$1;-><init>(Lcom/amigo/internal/widget/AmigoAbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 230
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mContentHeight:I

    .line 124
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->requestLayout()V

    .line 125
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 107
    return-void
.end method

.method public setSplitView(Lcom/amigo/internal/widget/AmigoActionBarContainer;)V
    .locals 0
    .param p1, "splitView"    # Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .line 133
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitWhenNarrow:Z

    .line 117
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 213
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 215
    :cond_1
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
