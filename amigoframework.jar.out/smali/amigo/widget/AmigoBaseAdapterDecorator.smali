.class public abstract Lamigo/widget/AmigoBaseAdapterDecorator;
.super Landroid/widget/BaseAdapter;
.source "AmigoBaseAdapterDecorator.java"


# instance fields
.field protected final mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

.field private mListView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "baseAdapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getAbsListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDecoratedBaseAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 118
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 122
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 123
    return-void
.end method

.method public setAbsListView(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 39
    iput-object p1, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    .line 41
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lamigo/widget/AmigoBaseAdapterDecorator;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lamigo/widget/AmigoBaseAdapterDecorator;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoBaseAdapterDecorator;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 44
    :cond_0
    return-void
.end method

.method public setListView(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mListView:Landroid/widget/AbsListView;

    .line 33
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lamigo/widget/AmigoBaseAdapterDecorator;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lamigo/widget/AmigoBaseAdapterDecorator;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoBaseAdapterDecorator;->setListView(Landroid/widget/AbsListView;)V

    .line 36
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 127
    iget-object v0, p0, Lamigo/widget/AmigoBaseAdapterDecorator;->mDecoratedBaseAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 128
    return-void
.end method
