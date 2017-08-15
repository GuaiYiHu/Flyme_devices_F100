.class Lamigo/widget/AmigoMagicBar$1;
.super Ljava/lang/Object;
.source "AmigoMagicBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoMagicBar;->setListViewVisibilityWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoMagicBar;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoMagicBar;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lamigo/widget/AmigoMagicBar$1;->this$0:Lamigo/widget/AmigoMagicBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 814
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar$1;->this$0:Lamigo/widget/AmigoMagicBar;

    # getter for: Lamigo/widget/AmigoMagicBar;->mMagicListView:Landroid/widget/ListView;
    invoke-static {v0}, Lamigo/widget/AmigoMagicBar;->access$200(Lamigo/widget/AmigoMagicBar;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lamigo/widget/AmigoMagicBar$1;->this$0:Lamigo/widget/AmigoMagicBar;

    # invokes: Lamigo/widget/AmigoMagicBar;->updateView()V
    invoke-static {v0}, Lamigo/widget/AmigoMagicBar;->access$300(Lamigo/widget/AmigoMagicBar;)V

    .line 816
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 820
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 824
    return-void
.end method
