.class Lamigo/widget/AmigoAnimateDismissAdapter$3;
.super Ljava/lang/Object;
.source "AmigoAnimateDismissAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoAnimateDismissAdapter;->createAnimatorForView(Landroid/view/View;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAnimateDismissAdapter;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAnimateDismissAdapter;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$3;->this$0:Lamigo/widget/AmigoAnimateDismissAdapter;

    iput-object p2, p0, Lamigo/widget/AmigoAnimateDismissAdapter$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lamigo/widget/AmigoAnimateDismissAdapter$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 184
    iget-object v1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    return-void
.end method
