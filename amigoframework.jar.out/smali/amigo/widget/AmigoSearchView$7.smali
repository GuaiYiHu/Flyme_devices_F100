.class Lamigo/widget/AmigoSearchView$7;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 989
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 998
    iget-object v2, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;
    invoke-static {v2}, Lamigo/widget/AmigoSearchView;->access$700(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;
    invoke-static {v2}, Lamigo/widget/AmigoSearchView;->access$700(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1000
    iget-object v1, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v1, p1, p2, p3}, Lamigo/widget/AmigoSearchView;->access$900(Lamigo/widget/AmigoSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1022
    :goto_0
    return v1

    .line 1005
    :cond_0
    iget-object v2, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;
    invoke-static {v2}, Lamigo/widget/AmigoSearchView;->access$700(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    move-result-object v2

    # invokes: Lamigo/widget/AmigoSearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v2}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->access$1000(Lamigo/widget/AmigoSearchView$SearchAutoComplete;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1006
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1007
    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    .line 1008
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1009
    iget-object v2, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # invokes: Lamigo/widget/AmigoSearchView;->onSubmitQuery()V
    invoke-static {v2}, Lamigo/widget/AmigoSearchView;->access$1100(Lamigo/widget/AmigoSearchView;)V

    goto :goto_0

    .line 1013
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v2}, Lamigo/widget/AmigoSearchView;->access$1200(Lamigo/widget/AmigoSearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 1014
    iget-object v2, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v2}, Lamigo/widget/AmigoSearchView;->access$1200(Lamigo/widget/AmigoSearchView;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1015
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1016
    iget-object v2, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lamigo/widget/AmigoSearchView$7;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mQueryTextView:Lamigo/widget/AmigoSearchView$SearchAutoComplete;
    invoke-static {v4}, Lamigo/widget/AmigoSearchView;->access$700(Lamigo/widget/AmigoSearchView;)Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lamigo/widget/AmigoSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p2, v3, v4}, Lamigo/widget/AmigoSearchView;->access$1300(Lamigo/widget/AmigoSearchView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
