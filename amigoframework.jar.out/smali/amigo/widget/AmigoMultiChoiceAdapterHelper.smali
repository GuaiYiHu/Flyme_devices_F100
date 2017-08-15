.class public Lamigo/widget/AmigoMultiChoiceAdapterHelper;
.super Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;
.source "AmigoMultiChoiceAdapterHelper.java"


# instance fields
.field private actionMode:Landroid/view/ActionMode;


# direct methods
.method protected constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "owner"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;-><init>(Landroid/widget/BaseAdapter;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected clearActionMode()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    .line 68
    return-void
.end method

.method protected finishActionMode()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 44
    :cond_0
    return-void
.end method

.method protected isActionModeStarted()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setActionModeTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    return-void
.end method

.method protected startActionMode(Landroid/view/View;)V
    .locals 2
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-virtual {p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lamigo/app/AmigoActivity;

    .line 33
    .local v0, "activity":Lamigo/app/AmigoActivity;
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->mOwner:Landroid/widget/BaseAdapter;

    check-cast v1, Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget-object v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected updateActionMode()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 51
    :cond_0
    return-void
.end method
