.class Lamigo/widget/AmigoFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AmigoFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoFastScroller;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoFastScroller;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lamigo/widget/AmigoFastScroller$2;->this$0:Lamigo/widget/AmigoFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 240
    iget-object v1, p0, Lamigo/widget/AmigoFastScroller$2;->this$0:Lamigo/widget/AmigoFastScroller;

    iget-object v0, p0, Lamigo/widget/AmigoFastScroller$2;->this$0:Lamigo/widget/AmigoFastScroller;

    # getter for: Lamigo/widget/AmigoFastScroller;->mShowingPrimary:Z
    invoke-static {v0}, Lamigo/widget/AmigoFastScroller;->access$100(Lamigo/widget/AmigoFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lamigo/widget/AmigoFastScroller;->mShowingPrimary:Z
    invoke-static {v1, v0}, Lamigo/widget/AmigoFastScroller;->access$102(Lamigo/widget/AmigoFastScroller;Z)Z

    .line 241
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
