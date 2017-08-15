.class public abstract Lamigo/widget/AmigoMultiChoiceCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "AmigoMultiChoiceCursorAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lamigo/widget/AmigoMultiChoiceAdapter;
.implements Lamigo/widget/AmigoListView$MultiChoiceScrollListener;


# instance fields
.field private helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

.field private mPos:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 43
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->mPos:I

    .line 40
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 44
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "flags"    # I

    .prologue
    .line 54
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->mPos:I

    .line 40
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 55
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "autoRequery"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->mPos:I

    .line 40
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 50
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cxt"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->bindViewImpl(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 134
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    iget v1, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->mPos:I

    invoke-virtual {v0, v1, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getView(ILandroid/view/View;)Landroid/view/View;

    .line 135
    return-void
.end method

.method protected abstract bindViewImpl(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public enterMultiChoiceMode()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->enterMultiChoiceMode()V

    .line 145
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->finishActionMode()V

    .line 96
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

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
    .line 75
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getCheckedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    iput p1, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->mPos:I

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isChecked(J)Z
    .locals 1
    .param p1, "itemId"    # J

    .prologue
    .line 83
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->isChecked(J)Z

    move-result v0

    return v0
.end method

.method public isItemCheckable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->newViewImpl(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, "viewWithoutSelection":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, "holder":Ljava/lang/Object;
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoCheckBox;

    .line 120
    .local v0, "checkboxView":Lamigo/widget/AmigoCheckBox;
    if-nez v0, :cond_0

    .line 121
    iget-object v3, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v3, v2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->addMultichoiceView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 124
    :cond_0
    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :cond_1
    return-object v2
.end method

.method protected abstract newViewImpl(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 100
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onDestroyActionMode()V

    .line 101
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 150
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->save(Landroid/os/Bundle;)V

    .line 68
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
    .line 59
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<-Landroid/widget/BaseAdapter;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setAdapterView(Landroid/widget/AdapterView;)V

    .line 60
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setItemChecked(JZ)V

    .line 88
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 1
    .param p1, "itemId"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setItemChecked(JZ)V

    .line 72
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 63
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceCursorAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method
