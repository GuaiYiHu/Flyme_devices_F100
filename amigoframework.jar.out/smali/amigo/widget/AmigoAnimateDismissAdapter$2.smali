.class Lamigo/widget/AmigoAnimateDismissAdapter$2;
.super Ljava/lang/Object;
.source "AmigoAnimateDismissAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$continu:Z

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$oriDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAnimateDismissAdapter;ZLandroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->this$0:Lamigo/widget/AmigoAnimateDismissAdapter;

    iput-boolean p2, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$continu:Z

    iput-object p3, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p5, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$oriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 177
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 170
    iget-object v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 171
    iget-object v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$oriDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 166
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 155
    iget-boolean v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$continu:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$view:Landroid/view/View;

    const v1, 0x9020030

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$2;->val$view:Landroid/view/View;

    const v1, 0x9020031

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
