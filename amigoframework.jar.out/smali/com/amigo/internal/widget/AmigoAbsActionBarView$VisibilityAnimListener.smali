.class public Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AmigoAbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoAbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/amigo/internal/widget/AmigoAbsActionBarView;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 320
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 305
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    iget v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mSplitView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mMenuView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    iget-boolean v0, v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionMode:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    iget v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mIsActionModeShowing:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 324
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoAbsActionBarView;

    iput-object p1, v0, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 296
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 297
    return-void
.end method

.method public withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/amigo/internal/widget/AmigoAbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 289
    return-object p0
.end method
