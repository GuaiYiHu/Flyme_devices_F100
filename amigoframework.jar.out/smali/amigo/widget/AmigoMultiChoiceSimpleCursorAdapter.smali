.class public abstract Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AmigoMultiChoiceSimpleCursorAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lamigo/widget/AmigoMultiChoiceAdapter;
.implements Lamigo/widget/AmigoListView$MultiChoiceScrollListener;


# instance fields
.field private helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I
    .param p7, "flags"    # I

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 38
    new-instance v0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter$1;

    invoke-direct {v0, p0, p0}, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter$1;-><init>(Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 48
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method


# virtual methods
.method public enterMultiChoiceMode()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->enterMultiChoiceMode()V

    .line 131
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->finishActionMode()V

    .line 89
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getCheckedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->getViewImpl(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 100
    .local v2, "viewWithoutSelection":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "holder":Ljava/lang/Object;
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoCheckBox;

    .line 104
    .local v0, "checkboxView":Lamigo/widget/AmigoCheckBox;
    if-nez v0, :cond_0

    .line 105
    iget-object v3, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v3, v2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->addMultichoiceView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 108
    :cond_0
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    :cond_1
    iget-object v3, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v3, p1, v2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method protected getViewImpl(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isChecked(J)Z
    .locals 1
    .param p1, "itemId"    # J

    .prologue
    .line 76
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->isChecked(J)Z

    move-result v0

    return v0
.end method

.method public isItemCheckable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 93
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onDestroyActionMode()V

    .line 94
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->save(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public setAdapterView(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<-",
            "Landroid/widget/BaseAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<-Landroid/widget/BaseAdapter;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setAdapterView(Landroid/widget/AdapterView;)V

    .line 53
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setItemChecked(JZ)V

    .line 81
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 1
    .param p1, "itemId"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setItemChecked(JZ)V

    .line 65
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 56
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceSimpleCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    return-void
.end method
