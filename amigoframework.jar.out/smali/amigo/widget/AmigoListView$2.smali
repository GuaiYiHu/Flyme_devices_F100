.class Lamigo/widget/AmigoListView$2;
.super Ljava/lang/Object;
.source "AmigoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoListView;->setFastScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lamigo/widget/AmigoListView;Z)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lamigo/widget/AmigoListView$2;->this$0:Lamigo/widget/AmigoListView;

    iput-boolean p2, p0, Lamigo/widget/AmigoListView$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lamigo/widget/AmigoListView$2;->this$0:Lamigo/widget/AmigoListView;

    iget-boolean v1, p0, Lamigo/widget/AmigoListView$2;->val$enabled:Z

    # invokes: Lamigo/widget/AmigoListView;->setFastScrollerEnabledUiThread(Z)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoListView;->access$100(Lamigo/widget/AmigoListView;Z)V

    .line 155
    return-void
.end method
