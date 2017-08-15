.class Lcom/amigo/internal/widget/AmigoActionBarView$5;
.super Ljava/lang/Object;
.source "AmigoActionBarView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/widget/AmigoActionBarView;->setMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/amigo/internal/widget/AmigoActionBarView;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$5;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iput-object p2, p0, Lcom/amigo/internal/widget/AmigoActionBarView$5;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$5;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mActivity:Lamigo/app/AmigoActivity;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$400(Lcom/amigo/internal/widget/AmigoActionBarView;)Lamigo/app/AmigoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$5;->val$menuItem:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoActivity;->onOptionsItemLongClick(Landroid/view/MenuItem;)Z

    .line 1748
    const/4 v0, 0x0

    return v0
.end method
