.class Lamigo/app/AmigoListActivity$2;
.super Ljava/lang/Object;
.source "AmigoListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 154
    iput-object p1, p0, Lamigo/app/AmigoListActivity$2;->this$0:Lamigo/app/AmigoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lamigo/app/AmigoListActivity$2;->this$0:Lamigo/app/AmigoListActivity;

    move-object v1, p1

    check-cast v1, Lamigo/widget/AmigoListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lamigo/app/AmigoListActivity;->onListItemClick(Lamigo/widget/AmigoListView;Landroid/view/View;IJ)V

    .line 158
    return-void
.end method
