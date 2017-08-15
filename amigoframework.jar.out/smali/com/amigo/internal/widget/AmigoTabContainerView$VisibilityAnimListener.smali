.class public Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AmigoTabContainerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;


# direct methods
.method protected constructor <init>(Lcom/amigo/internal/widget/AmigoTabContainerView;)V
    .locals 1

    .prologue
    .line 489
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 516
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 510
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    iget v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 520
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    iput-object p1, v0, Lcom/amigo/internal/widget/AmigoTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 502
    iput-boolean v1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 503
    return-void
.end method

.method public withFinalVisibility(I)Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 495
    return-object p0
.end method
