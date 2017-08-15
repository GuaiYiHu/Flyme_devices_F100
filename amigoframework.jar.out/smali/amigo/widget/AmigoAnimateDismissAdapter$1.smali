.class Lamigo/widget/AmigoAnimateDismissAdapter$1;
.super Ljava/lang/Object;
.source "AmigoAnimateDismissAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoAnimateDismissAdapter;->animateDismiss(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAnimateDismissAdapter;

.field final synthetic val$positionsCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAnimateDismissAdapter;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$1;->this$0:Lamigo/widget/AmigoAnimateDismissAdapter;

    iput-object p2, p0, Lamigo/widget/AmigoAnimateDismissAdapter$1;->val$positionsCopy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 102
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 97
    iget-object v0, p0, Lamigo/widget/AmigoAnimateDismissAdapter$1;->this$0:Lamigo/widget/AmigoAnimateDismissAdapter;

    iget-object v1, p0, Lamigo/widget/AmigoAnimateDismissAdapter$1;->val$positionsCopy:Ljava/util/List;

    # invokes: Lamigo/widget/AmigoAnimateDismissAdapter;->invokeCallback(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoAnimateDismissAdapter;->access$000(Lamigo/widget/AmigoAnimateDismissAdapter;Ljava/util/Collection;)V

    .line 98
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 93
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 89
    return-void
.end method
