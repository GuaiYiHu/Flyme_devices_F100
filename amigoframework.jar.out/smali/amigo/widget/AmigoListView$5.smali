.class Lamigo/widget/AmigoListView$5;
.super Ljava/lang/Object;
.source "AmigoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoListView;->returnTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoListView;

.field final synthetic val$distance:I


# direct methods
.method constructor <init>(Lamigo/widget/AmigoListView;I)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lamigo/widget/AmigoListView$5;->this$0:Lamigo/widget/AmigoListView;

    iput p2, p0, Lamigo/widget/AmigoListView$5;->val$distance:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 801
    iget-object v2, p0, Lamigo/widget/AmigoListView$5;->this$0:Lamigo/widget/AmigoListView;

    invoke-virtual {v2}, Lamigo/widget/AmigoListView;->getFirstVisiblePosition()I

    move-result v0

    .line 802
    .local v0, "currentPos":I
    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 805
    :cond_0
    iget v2, p0, Lamigo/widget/AmigoListView$5;->val$distance:I

    sub-int v1, v0, v2

    .line 806
    .local v1, "tagetPos":I
    if-gez v1, :cond_1

    .line 807
    const/4 v1, 0x0

    .line 809
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoListView$5;->this$0:Lamigo/widget/AmigoListView;

    invoke-virtual {v2, v1}, Lamigo/widget/AmigoListView;->setSelection(I)V

    .line 810
    iget-object v2, p0, Lamigo/widget/AmigoListView$5;->this$0:Lamigo/widget/AmigoListView;

    invoke-virtual {v2}, Lamigo/widget/AmigoListView;->invalidate()V

    .line 811
    iget-object v2, p0, Lamigo/widget/AmigoListView$5;->this$0:Lamigo/widget/AmigoListView;

    invoke-virtual {v2, p0}, Lamigo/widget/AmigoListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
