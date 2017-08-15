.class Lamigo/app/AmigoProgressDialog$1;
.super Landroid/os/Handler;
.source "AmigoProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/app/AmigoProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/app/AmigoProgressDialog;


# direct methods
.method constructor <init>(Lamigo/app/AmigoProgressDialog;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 121
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$000(Lamigo/app/AmigoProgressDialog;)Lamigo/widget/AmigoProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Lamigo/widget/AmigoProgressBar;->getProgress()I

    move-result v4

    .line 122
    .local v4, "progress":I
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgress:Lamigo/widget/AmigoProgressBar;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$000(Lamigo/app/AmigoProgressDialog;)Lamigo/widget/AmigoProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Lamigo/widget/AmigoProgressBar;->getMax()I

    move-result v1

    .line 123
    .local v1, "max":I
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$100(Lamigo/app/AmigoProgressDialog;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 124
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressNumberFormat:Ljava/lang/String;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$100(Lamigo/app/AmigoProgressDialog;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "format":Ljava/lang/String;
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$200(Lamigo/app/AmigoProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v0    # "format":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$300(Lamigo/app/AmigoProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 130
    int-to-double v6, v4

    int-to-double v8, v1

    div-double v2, v6, v8

    .line 131
    .local v2, "percent":D
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$300(Lamigo/app/AmigoProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    .local v5, "tmp":Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 134
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$400(Lamigo/app/AmigoProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v2    # "percent":D
    .end local v5    # "tmp":Landroid/text/SpannableString;
    :goto_1
    return-void

    .line 127
    :cond_0
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressNumber:Landroid/widget/TextView;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$200(Lamigo/app/AmigoProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v6, p0, Lamigo/app/AmigoProgressDialog$1;->this$0:Lamigo/app/AmigoProgressDialog;

    # getter for: Lamigo/app/AmigoProgressDialog;->mProgressPercent:Landroid/widget/TextView;
    invoke-static {v6}, Lamigo/app/AmigoProgressDialog;->access$400(Lamigo/app/AmigoProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
