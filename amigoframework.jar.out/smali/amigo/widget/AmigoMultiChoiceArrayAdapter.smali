.class public abstract Lamigo/widget/AmigoMultiChoiceArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AmigoMultiChoiceArrayAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Lamigo/widget/AmigoMultiChoiceAdapter;
.implements Lamigo/widget/AmigoListView$MultiChoiceScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;",
        "Landroid/view/ActionMode$Callback;",
        "Lamigo/widget/AmigoMultiChoiceAdapter;",
        "Lamigo/widget/AmigoListView$MultiChoiceScrollListener;"
    }
.end annotation


# instance fields
.field private helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;I)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I

    .prologue
    .line 68
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 35
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 69
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;II)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I

    .prologue
    .line 51
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 35
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 52
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 35
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 40
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    .local p5, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 46
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 58
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 35
    new-instance v0, Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    .line 64
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->restoreSelectionFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method


# virtual methods
.method public enterMultiChoiceMode()V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->enterMultiChoiceMode()V

    .line 140
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->finishActionMode()V

    .line 102
    return-void
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

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
    .line 89
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->getCheckedItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->getViewImpl(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "viewWithoutSelection":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, "holder":Ljava/lang/Object;
    const v3, 0x1020001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoCheckBox;

    .line 117
    .local v0, "checkboxView":Lamigo/widget/AmigoCheckBox;
    if-nez v0, :cond_0

    .line 118
    iget-object v3, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v3, v2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->addMultichoiceView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 121
    :cond_0
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    :cond_1
    iget-object v3, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

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
    .line 129
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isChecked(J)Z
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 97
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->isChecked(J)Z

    move-result v0

    return v0
.end method

.method public isItemCheckable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 106
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onDestroyActionMode()V

    .line 107
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 145
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->save(Landroid/os/Bundle;)V

    .line 82
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
    .line 73
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<-Landroid/widget/BaseAdapter;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setAdapterView(Landroid/widget/AdapterView;)V

    .line 74
    return-void
.end method

.method public setItemChecked(JZ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 85
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setItemChecked(JZ)V

    .line 86
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 77
    .local p0, "this":Lamigo/widget/AmigoMultiChoiceArrayAdapter;, "Lamigo/widget/AmigoMultiChoiceArrayAdapter<TT;>;"
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceArrayAdapter;->helper:Lamigo/widget/AmigoMultiChoiceAdapterHelper;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoMultiChoiceAdapterHelper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    return-void
.end method
