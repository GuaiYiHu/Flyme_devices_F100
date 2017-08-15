.class Lamigo/app/AmigoActionBarImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AmigoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/app/AmigoActionBarImpl;


# direct methods
.method constructor <init>(Lamigo/app/AmigoActionBarImpl;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$200(Lamigo/app/AmigoActionBarImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$200(Lamigo/app/AmigoActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 238
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$300(Lamigo/app/AmigoActionBarImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 243
    :cond_0
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$300(Lamigo/app/AmigoActionBarImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$400(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setTransitioning(Z)V

    .line 245
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lamigo/app/AmigoActionBarImpl;->access$502(Lamigo/app/AmigoActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 246
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0}, Lamigo/app/AmigoActionBarImpl;->completeDeferredDestroyActionMode()V

    .line 247
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$600(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$1;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mOverlayLayout:Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$600(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 250
    :cond_1
    return-void
.end method
