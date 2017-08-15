.class Lamigo/widget/AmigoAlphabetIndexView$1;
.super Ljava/lang/Object;
.source "AmigoAlphabetIndexView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoAlphabetIndexView;->startAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAlphabetIndexView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAlphabetIndexView;Z)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    iput-boolean p2, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 811
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    const/4 v1, 0x0

    # setter for: Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z
    invoke-static {v0, v1}, Lamigo/widget/AmigoAlphabetIndexView;->access$102(Lamigo/widget/AmigoAlphabetIndexView;Z)Z

    .line 812
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 806
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    const/4 v1, 0x0

    # setter for: Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z
    invoke-static {v0, v1}, Lamigo/widget/AmigoAlphabetIndexView;->access$102(Lamigo/widget/AmigoAlphabetIndexView;Z)Z

    .line 807
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 802
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x0

    .line 791
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    # setter for: Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z
    invoke-static {v4, v6}, Lamigo/widget/AmigoAlphabetIndexView;->access$102(Lamigo/widget/AmigoAlphabetIndexView;Z)Z

    .line 792
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    iget-object v4, v4, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    # getter for: Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I
    invoke-static {v5}, Lamigo/widget/AmigoAlphabetIndexView;->access$200(Lamigo/widget/AmigoAlphabetIndexView;)I

    move-result v5

    aget-object v2, v4, v5

    .line 793
    .local v2, "holder":Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    iget-boolean v5, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->val$show:Z

    # invokes: Lamigo/widget/AmigoAlphabetIndexView;->createBeginValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    invoke-static {v4, v5, v2}, Lamigo/widget/AmigoAlphabetIndexView;->access$300(Lamigo/widget/AmigoAlphabetIndexView;ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v0

    .line 794
    .local v0, "beginValue":Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    iget-boolean v5, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->val$show:Z

    # invokes: Lamigo/widget/AmigoAlphabetIndexView;->createEndValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    invoke-static {v4, v5, v2}, Lamigo/widget/AmigoAlphabetIndexView;->access$400(Lamigo/widget/AmigoAlphabetIndexView;ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v1

    .line 795
    .local v1, "endValue":Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    # invokes: Lamigo/widget/AmigoAlphabetIndexView;->createMiddleValue(Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    invoke-static {v4, v2}, Lamigo/widget/AmigoAlphabetIndexView;->access$500(Lamigo/widget/AmigoAlphabetIndexView;Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v3

    .line 796
    .local v3, "middleValue":Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView$1;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    # getter for: Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v4}, Lamigo/widget/AmigoAlphabetIndexView;->access$600(Lamigo/widget/AmigoAlphabetIndexView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 797
    return-void
.end method
