.class Lamigo/widget/AmigoTextViewEditToolbar$1;
.super Ljava/lang/Object;
.source "AmigoTextViewEditToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoTextViewEditToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoTextViewEditToolbar;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoTextViewEditToolbar;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lamigo/widget/AmigoTextViewEditToolbar$1;->this$0:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 46
    iget-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar$1;->this$0:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar$1;->this$0:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    # invokes: Lamigo/widget/AmigoTextViewEditToolbar;->onItemAction(I)Z
    invoke-static {v0, v1}, Lamigo/widget/AmigoTextViewEditToolbar;->access$000(Lamigo/widget/AmigoTextViewEditToolbar;I)Z

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 58
    iget-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar$1;->this$0:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->hide()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :sswitch_0
    iget-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar$1;->this$0:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->hide()V

    .line 55
    iget-object v0, p0, Lamigo/widget/AmigoTextViewEditToolbar$1;->this$0:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->show()V

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020028 -> :sswitch_0
    .end sparse-switch
.end method
