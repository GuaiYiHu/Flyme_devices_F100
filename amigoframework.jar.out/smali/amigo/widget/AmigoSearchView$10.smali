.class Lamigo/widget/AmigoSearchView$10;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1727
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$10;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1737
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1729
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1733
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$10;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Lamigo/widget/AmigoSearchView;->access$1600(Lamigo/widget/AmigoSearchView;Ljava/lang/CharSequence;)V

    .line 1734
    return-void
.end method
