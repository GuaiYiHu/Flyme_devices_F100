.class Lamigo/app/AmigoActionBarImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AmigoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/app/AmigoActionBarImpl;


# direct methods
.method constructor <init>(Lamigo/app/AmigoActionBarImpl;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$2;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 256
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$2;->this$0:Lamigo/app/AmigoActionBarImpl;

    const/4 v1, 0x0

    # setter for: Lamigo/app/AmigoActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lamigo/app/AmigoActionBarImpl;->access$502(Lamigo/app/AmigoActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 257
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$2;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$300(Lamigo/app/AmigoActionBarImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 258
    return-void
.end method
