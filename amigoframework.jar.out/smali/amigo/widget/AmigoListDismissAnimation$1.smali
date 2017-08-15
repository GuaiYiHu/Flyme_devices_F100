.class Lamigo/widget/AmigoListDismissAnimation$1;
.super Ljava/lang/Object;
.source "AmigoListDismissAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoListDismissAnimation;->startAnimation(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoListDismissAnimation;

.field final synthetic val$positionsCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoListDismissAnimation;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lamigo/widget/AmigoListDismissAnimation$1;->this$0:Lamigo/widget/AmigoListDismissAnimation;

    iput-object p2, p0, Lamigo/widget/AmigoListDismissAnimation$1;->val$positionsCopy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 88
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-object v0, p0, Lamigo/widget/AmigoListDismissAnimation$1;->this$0:Lamigo/widget/AmigoListDismissAnimation;

    # getter for: Lamigo/widget/AmigoListDismissAnimation;->mCallback:Lamigo/widget/OnAmigoItemDismissCallback;
    invoke-static {v0}, Lamigo/widget/AmigoListDismissAnimation;->access$000(Lamigo/widget/AmigoListDismissAnimation;)Lamigo/widget/OnAmigoItemDismissCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lamigo/widget/AmigoListDismissAnimation$1;->this$0:Lamigo/widget/AmigoListDismissAnimation;

    iget-object v1, p0, Lamigo/widget/AmigoListDismissAnimation$1;->val$positionsCopy:Ljava/util/List;

    # invokes: Lamigo/widget/AmigoListDismissAnimation;->invokeCallback(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoListDismissAnimation;->access$100(Lamigo/widget/AmigoListDismissAnimation;Ljava/util/Collection;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 77
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 73
    return-void
.end method
