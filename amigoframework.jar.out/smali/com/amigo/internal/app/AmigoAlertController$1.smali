.class Lcom/amigo/internal/app/AmigoAlertController$1;
.super Ljava/lang/Object;
.source "AmigoAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/app/AmigoAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/app/AmigoAlertController;


# direct methods
.method constructor <init>(Lcom/amigo/internal/app/AmigoAlertController;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$000(Lcom/amigo/internal/app/AmigoAlertController;)Lamigo/widget/AmigoButton;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$100(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$100(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 161
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$800(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/amigo/internal/app/AmigoAlertController;->access$800(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v4}, Lcom/amigo/internal/app/AmigoAlertController;->access$700(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/content/DialogInterface;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 170
    return-void

    .line 151
    :cond_2
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$200(Lcom/amigo/internal/app/AmigoAlertController;)Lamigo/widget/AmigoButton;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$300(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$300(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$400(Lcom/amigo/internal/app/AmigoAlertController;)Lamigo/widget/AmigoButton;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$500(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 154
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$500(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mButtonCancel:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$600(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$700(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController$1;->this$0:Lcom/amigo/internal/app/AmigoAlertController;

    # getter for: Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->access$700(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
