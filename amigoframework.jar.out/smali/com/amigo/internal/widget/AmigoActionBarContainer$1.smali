.class Lcom/amigo/internal/widget/AmigoActionBarContainer$1;
.super Ljava/lang/Object;
.source "AmigoActionBarContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 570
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 574
    .local v0, "y":I
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I
    invoke-static {v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$000(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->setBottom(I)V

    .line 576
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getActivityContent()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mFisActivityContentTop:I
    invoke-static {v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$100(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTop(I)V

    .line 578
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$200(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->setBottom(I)V

    .line 579
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainer:Lcom/amigo/internal/widget/AmigoExtraViewContainer;
    invoke-static {v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$200(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoExtraViewContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->getHeight()I

    move-result v2

    # invokes: Lcom/amigo/internal/widget/AmigoActionBarContainer;->layoutExtraView(I)V
    invoke-static {v1, v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$300(Lcom/amigo/internal/widget/AmigoActionBarContainer;I)V

    .line 580
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setTop(I)V

    .line 582
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$400(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v1

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I
    invoke-static {v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$000(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setBottom(I)V

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$500(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoActionBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->setTop(I)V

    .line 585
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mActionBarView:Lcom/amigo/internal/widget/AmigoActionBarView;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$500(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lcom/amigo/internal/widget/AmigoActionBarView;

    move-result-object v1

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mInitActionBarBottom:I
    invoke-static {v2}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$000(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->setBottom(I)V

    .line 587
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mDragListener:Lamigo/app/AmigoActionBar$OnExtraViewDragListener;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$600(Lcom/amigo/internal/widget/AmigoActionBarContainer;)Lamigo/app/AmigoActionBar$OnExtraViewDragListener;

    move-result-object v1

    int-to-float v2, v0

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContainer$1;->this$0:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarContainer;->mExtraViewContainerHeight:I
    invoke-static {v3}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->access$700(Lcom/amigo/internal/widget/AmigoActionBarContainer;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-interface {v1, v2, v0}, Lamigo/app/AmigoActionBar$OnExtraViewDragListener;->onDragUpdate(FI)V

    .line 590
    :cond_1
    return-void
.end method
