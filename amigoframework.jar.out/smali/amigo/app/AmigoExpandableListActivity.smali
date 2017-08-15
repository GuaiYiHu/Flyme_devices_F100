.class public Lamigo/app/AmigoExpandableListActivity;
.super Lamigo/app/AmigoActivity;
.source "AmigoExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lamigo/widget/AmigoExpandableListView$OnChildClickListener;
.implements Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;
.implements Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;


# instance fields
.field mAdapter:Landroid/widget/ExpandableListAdapter;

.field mFinishedStart:Z

.field mList:Lamigo/widget/AmigoExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lamigo/app/AmigoActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/app/AmigoExpandableListActivity;->mFinishedStart:Z

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    const v0, 0x9030023

    invoke-virtual {p0, v0}, Lamigo/app/AmigoExpandableListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListView()Lamigo/widget/AmigoExpandableListView;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lamigo/app/AmigoExpandableListActivity;->ensureList()V

    .line 111
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    return-object v0
.end method

.method public getSelectedId()J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListView;->getSelectedId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v0}, Lamigo/widget/AmigoExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public onChildClick(Lamigo/widget/AmigoExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Lamigo/widget/AmigoExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lamigo/app/AmigoActivity;->onContentChanged()V

    .line 73
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lamigo/app/AmigoExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lamigo/app/AmigoExpandableListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoExpandableListView;

    iput-object v1, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    .line 75
    iget-object v1, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a AmigoExpandableListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v1, v0}, Lamigo/widget/AmigoExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    :cond_1
    iget-object v1, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v1, p0}, Lamigo/widget/AmigoExpandableListView;->setOnChildClickListener(Lamigo/widget/AmigoExpandableListView$OnChildClickListener;)V

    .line 83
    iget-object v1, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v1, p0}, Lamigo/widget/AmigoExpandableListView;->setOnGroupExpandListener(Lamigo/widget/AmigoExpandableListView$OnGroupExpandListener;)V

    .line 84
    iget-object v1, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v1, p0}, Lamigo/widget/AmigoExpandableListView;->setOnGroupCollapseListener(Lamigo/widget/AmigoExpandableListView$OnGroupCollapseListener;)V

    .line 86
    iget-boolean v1, p0, Lamigo/app/AmigoExpandableListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lamigo/app/AmigoExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-virtual {p0, v1}, Lamigo/app/AmigoExpandableListActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 89
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lamigo/app/AmigoExpandableListActivity;->mFinishedStart:Z

    .line 90
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 30
    return-void
.end method

.method public onGroupCollapse(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 46
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 52
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0}, Lamigo/app/AmigoExpandableListActivity;->ensureList()V

    .line 62
    invoke-super {p0, p1}, Lamigo/app/AmigoActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public setListAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lamigo/app/AmigoExpandableListActivity;->ensureList()V

    .line 98
    iput-object p1, p0, Lamigo/app/AmigoExpandableListActivity;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 99
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 163
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v0, p1, p2, p3}, Lamigo/widget/AmigoExpandableListView;->setSelectedChild(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSelectedGroup(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lamigo/app/AmigoExpandableListActivity;->mList:Lamigo/widget/AmigoExpandableListView;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoExpandableListView;->setSelectedGroup(I)V

    .line 174
    return-void
.end method
