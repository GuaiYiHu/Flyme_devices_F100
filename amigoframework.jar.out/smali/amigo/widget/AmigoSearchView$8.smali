.class Lamigo/widget/AmigoSearchView$8;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoSearchView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSearchView;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$8;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
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
    .line 1427
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$8;->this$0:Lamigo/widget/AmigoSearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lamigo/widget/AmigoSearchView;->onItemClicked(IILjava/lang/String;)Z
    invoke-static {v0, p3, v1, v2}, Lamigo/widget/AmigoSearchView;->access$1400(Lamigo/widget/AmigoSearchView;IILjava/lang/String;)Z

    .line 1428
    return-void
.end method
