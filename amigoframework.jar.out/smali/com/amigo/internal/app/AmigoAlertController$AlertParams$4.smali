.class Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AmigoAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->createListView(Lcom/amigo/internal/app/AmigoAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

.field final synthetic val$listView:Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/amigo/internal/app/AmigoAlertController$AlertParams;Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;Lcom/amigo/internal/app/AmigoAlertController;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->val$listView:Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;

    iput-object p3, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->val$listView:Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$700(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$4;->val$listView:Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1180
    return-void
.end method
