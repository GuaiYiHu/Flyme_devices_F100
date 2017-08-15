.class Lcom/android/internal/policy/impl/AmigoGlobalActions$17;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->runScaleAnim(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

.field final synthetic val$isShut:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;->val$isShut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 724
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->runShutMovie()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$2000(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    .line 725
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;->val$isShut:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 730
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 720
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 715
    return-void
.end method
