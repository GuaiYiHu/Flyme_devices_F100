.class Lamigo/widget/AmigoExpandableListView$2;
.super Ljava/lang/Object;
.source "AmigoExpandableListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoExpandableListView;->createcollapseAnimatorForView(Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoExpandableListView;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoExpandableListView;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1452
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListView$2;->this$0:Lamigo/widget/AmigoExpandableListView;

    iput-object p2, p0, Lamigo/widget/AmigoExpandableListView$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lamigo/widget/AmigoExpandableListView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1473
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1464
    const-string v0, "AmigoExpandListView"

    const-string v1, "createcollapseAnimatorForView onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1467
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView$2;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1468
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListView$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListView$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1460
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1456
    return-void
.end method
