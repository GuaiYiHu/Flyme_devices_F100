.class public abstract Lamigo/widget/AmigoMultiChoiceBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "AmigoMultiChoiceBaseAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lamigo/widget/AmigoMultiChoiceAdapter;
.implements Lamigo/widget/AmigoListView$MultiChoiceScrollListener;


# instance fields
.field private helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 92
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method


# virtual methods
.method public enterMultiChoiceMode()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->enterMultiChoiceMode()V

    .line 237
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->finishActionMode()V

    .line 186
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

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
    .line 146
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getCheckedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

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
    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->getViewImpl(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, "viewWithoutSelection":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 221
    .local v1, "holder":Ljava/lang/Object;
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoCheckBox;

    .line 223
    .local v0, "checkboxView":Lamigo/widget/AmigoCheckBox;
    if-nez v0, :cond_0

    .line 224
    iget-object v3, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v3, v2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->addMultichoiceView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 227
    :cond_0
    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 231
    :cond_1
    iget-object v3, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v3, p1, v2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method protected abstract getViewImpl(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isChecked(J)Z
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 166
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->isChecked(J)Z

    move-result v0

    return v0
.end method

.method public isItemCheckable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 200
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onDestroyActionMode()V

    .line 201
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 242
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->save(Landroid/os/Bundle;)V

    .line 125
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
    .line 103
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<-Landroid/widget/BaseAdapter;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setAdapterView(Landroid/widget/AdapterView;)V

    .line 104
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setItemChecked(JZ)V

    .line 138
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 113
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceBaseAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    return-void
.end method
