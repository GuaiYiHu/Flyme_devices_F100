.class Lamigo/app/AmigoListActivity$1;
.super Ljava/lang/Object;
.source "AmigoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/app/AmigoListActivity;


# direct methods
.method constructor <init>(Lamigo/app/AmigoListActivity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lamigo/app/AmigoListActivity$1;->this$0:Lamigo/app/AmigoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lamigo/app/AmigoListActivity$1;->this$0:Lamigo/app/AmigoListActivity;

    iget-object v0, v0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    iget-object v1, p0, Lamigo/app/AmigoListActivity$1;->this$0:Lamigo/app/AmigoListActivity;

    iget-object v1, v1, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 31
    return-void
.end method
