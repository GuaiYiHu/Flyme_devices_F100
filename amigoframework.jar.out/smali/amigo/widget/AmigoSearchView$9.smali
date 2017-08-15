.class Lamigo/widget/AmigoSearchView$9;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1431
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$9;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 1438
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$9;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->onItemSelected(I)Z
    invoke-static {v0, p3}, Lamigo/widget/AmigoSearchView;->access$1500(Lamigo/widget/AmigoSearchView;I)Z

    .line 1439
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
