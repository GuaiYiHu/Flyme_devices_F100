.class Lamigo/widget/AmigoNumberPicker$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AmigoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lamigo/widget/AmigoNumberPicker;

.field final synthetic val$showDecrementButton:Landroid/animation/ObjectAnimator;

.field final synthetic val$showIncrementButton:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoNumberPicker;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 1

    .prologue
    .line 695
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$5;->this$0:Lamigo/widget/AmigoNumberPicker;

    iput-object p2, p0, Lamigo/widget/AmigoNumberPicker$5;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lamigo/widget/AmigoNumberPicker$5;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoNumberPicker$5;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 712
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$5;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$500(Lamigo/widget/AmigoNumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoNumberPicker$5;->mCanceled:Z

    .line 715
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 700
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker$5;->mCanceled:Z

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$5;->this$0:Lamigo/widget/AmigoNumberPicker;

    const/4 v1, 0x1

    # invokes: Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoNumberPicker;->access$400(Lamigo/widget/AmigoNumberPicker;I)V

    .line 704
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoNumberPicker$5;->mCanceled:Z

    .line 705
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$5;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$5;->val$showIncrementButton:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 706
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$5;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$5;->val$showDecrementButton:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 708
    return-void
.end method
