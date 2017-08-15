.class Lcom/amigo/internal/widget/AmigoActionBarContainer$2;
.super Ljava/lang/Object;
.source "AmigoActionBarContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/widget/AmigoActionBarContainer;->actionbarCloseAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;


# direct methods
.method constructor <init>(Lcom/amigo/internal/widget/AmigoActionBarContainer;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 617
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setClickable(Z)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$500(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoActionBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setClickable(Z)V

    .line 621
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragUpdate(FI)V

    .line 623
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v0

    invoke-interface {v0}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragCloseEnd()V

    .line 625
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 605
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setClickable(Z)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$500(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoActionBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->setClickable(Z)V

    .line 609
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragUpdate(FI)V

    .line 611
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v0

    invoke-interface {v0}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragCloseEnd()V

    .line 613
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 601
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 597
    return-void
.end method
