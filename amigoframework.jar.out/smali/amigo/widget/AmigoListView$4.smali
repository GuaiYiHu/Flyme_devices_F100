.class Lamigo/widget/AmigoListView$4;
.super Ljava/lang/Object;
.source "AmigoListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoListView;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoListView;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lamigo/widget/AmigoListView$4;->this$0:Lamigo/widget/AmigoListView;

    iput-object p2, p0, Lamigo/widget/AmigoListView$4;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lamigo/widget/AmigoListView$4;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoListView$4;->val$listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoListView$4;->this$0:Lamigo/widget/AmigoListView;

    # invokes: Lamigo/widget/AmigoListView;->showContextMenuDialog(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lamigo/widget/AmigoListView;->access$300(Lamigo/widget/AmigoListView;Landroid/view/View;IJ)V

    .line 343
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
