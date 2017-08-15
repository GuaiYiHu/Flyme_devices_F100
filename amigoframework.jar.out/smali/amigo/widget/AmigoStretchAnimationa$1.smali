.class Lamigo/widget/AmigoStretchAnimationa$1;
.super Ljava/lang/Object;
.source "AmigoStretchAnimationa.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoStretchAnimationa;->createAnimator(Lamigo/widget/AmigoStretchAnimationa$ChildView;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoStretchAnimationa;

.field final synthetic val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoStretchAnimationa;Lamigo/widget/AmigoStretchAnimationa$ChildView;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lamigo/widget/AmigoStretchAnimationa$1;->this$0:Lamigo/widget/AmigoStretchAnimationa;

    iput-object p2, p0, Lamigo/widget/AmigoStretchAnimationa$1;->val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 245
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa$1;->val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;

    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa$1;->val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;

    iget v1, v1, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mRawHeight:I

    iput v1, v0, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    .line 235
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa$1;->val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;

    invoke-virtual {v0}, Lamigo/widget/AmigoStretchAnimationa$ChildView;->revertLayoutParams()V

    .line 237
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa$1;->this$0:Lamigo/widget/AmigoStretchAnimationa;

    const/4 v1, 0x0

    # setter for: Lamigo/widget/AmigoStretchAnimationa;->mRunning:Z
    invoke-static {v0, v1}, Lamigo/widget/AmigoStretchAnimationa;->access$002(Lamigo/widget/AmigoStretchAnimationa;Z)Z

    .line 238
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa$1;->this$0:Lamigo/widget/AmigoStretchAnimationa;

    const/4 v1, 0x1

    # setter for: Lamigo/widget/AmigoStretchAnimationa;->mLastUpdate:Z
    invoke-static {v0, v1}, Lamigo/widget/AmigoStretchAnimationa;->access$102(Lamigo/widget/AmigoStretchAnimationa;Z)Z

    .line 239
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 227
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 220
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa$1;->this$0:Lamigo/widget/AmigoStretchAnimationa;

    const/4 v1, 0x1

    # setter for: Lamigo/widget/AmigoStretchAnimationa;->mRunning:Z
    invoke-static {v0, v1}, Lamigo/widget/AmigoStretchAnimationa;->access$002(Lamigo/widget/AmigoStretchAnimationa;Z)Z

    .line 221
    return-void
.end method
