.class Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/amigo/internal/app/AmigoAlertController$AlertParams;Lcom/amigo/internal/app/AmigoAlertController;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;->val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;->val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$700(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1167
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;->this$0:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams$3;->val$dialog:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/amigo/internal/app/AmigoAlertController;->access$700(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1170
    :cond_0
    return-void
.end method
