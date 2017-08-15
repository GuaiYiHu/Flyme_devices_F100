.class Lamigo/widget/AmigoSearchView$11;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoSearchView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSearchView;)V
    .locals 0

    .prologue
    .line 2041
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 2050
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchViewZoomAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2000(Lamigo/widget/AmigoSearchView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2051
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchPlate:Landroid/view/View;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2100(Lamigo/widget/AmigoSearchView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2052
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$1900(Lamigo/widget/AmigoSearchView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2054
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->setupSearchViewUnfoldAnim()V
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2200(Lamigo/widget/AmigoSearchView;)V

    .line 2055
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$1900(Lamigo/widget/AmigoSearchView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;
    invoke-static {v1}, Lamigo/widget/AmigoSearchView;->access$2300(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchViewUnfoldAnim:Lamigo/widget/AmigoSearchView$UnfoldAnimation;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2300(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$UnfoldAnimation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2057
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchPlate:Landroid/view/View;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2100(Lamigo/widget/AmigoSearchView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2058
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$1900(Lamigo/widget/AmigoSearchView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mIsSearchSubmitMode:Z
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2400(Lamigo/widget/AmigoSearchView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mGnSearchGoButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2500(Lamigo/widget/AmigoSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2060
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mGnSearchGoButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2500(Lamigo/widget/AmigoSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2062
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchPlate:Landroid/view/View;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$2100(Lamigo/widget/AmigoSearchView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoSearchView$11;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchViewAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lamigo/widget/AmigoSearchView;->access$2600(Lamigo/widget/AmigoSearchView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2069
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2046
    return-void
.end method
