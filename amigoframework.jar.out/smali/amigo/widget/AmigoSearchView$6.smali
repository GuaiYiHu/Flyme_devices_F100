.class Lamigo/widget/AmigoSearchView$6;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 940
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$6;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 943
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$6;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$300(Lamigo/widget/AmigoSearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 944
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$6;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->onSearchClicked()V
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$400(Lamigo/widget/AmigoSearchView;)V

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$6;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$500(Lamigo/widget/AmigoSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 946
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$6;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->onCloseClicked()V
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$600(Lamigo/widget/AmigoSearchView;)V

    goto :goto_0

    .line 951
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$6;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$700(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 952
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$6;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$800(Lamigo/widget/AmigoSearchView;)V

    goto :goto_0
.end method
