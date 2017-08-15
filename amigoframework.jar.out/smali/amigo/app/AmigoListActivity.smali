.class public Lamigo/app/AmigoListActivity;
.super Lamigo/app/AmigoActivity;
.source "AmigoListActivity.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mFinishedStart:Z

.field private mHandler:Landroid/os/Handler;

.field protected mList:Lamigo/widget/AmigoListView;

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lamigo/app/AmigoActivity;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lamigo/app/AmigoListActivity;->mHandler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/app/AmigoListActivity;->mFinishedStart:Z

    .line 28
    new-instance v0, Lamigo/app/AmigoListActivity$1;

    invoke-direct {v0, p0}, Lamigo/app/AmigoListActivity$1;-><init>(Lamigo/app/AmigoListActivity;)V

    iput-object v0, p0, Lamigo/app/AmigoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lamigo/app/AmigoListActivity$2;

    invoke-direct {v0, p0}, Lamigo/app/AmigoListActivity$2;-><init>(Lamigo/app/AmigoListActivity;)V

    iput-object v0, p0, Lamigo/app/AmigoListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const v0, 0x9030022

    invoke-virtual {p0, v0}, Lamigo/app/AmigoListActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getListView()Lamigo/widget/AmigoListView;
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lamigo/app/AmigoListActivity;->ensureList()V

    .line 136
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    invoke-virtual {v0}, Lamigo/widget/AmigoListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    invoke-virtual {v0}, Lamigo/widget/AmigoListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lamigo/app/AmigoActivity;->onContentChanged()V

    .line 78
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lamigo/app/AmigoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lamigo/app/AmigoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoListView;

    iput-object v1, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    .line 80
    iget-object v1, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a AmigoListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    invoke-virtual {v1, v0}, Lamigo/widget/AmigoListView;->setEmptyView(Landroid/view/View;)V

    .line 88
    :cond_1
    iget-object v1, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    iget-object v2, p0, Lamigo/app/AmigoListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-boolean v1, p0, Lamigo/app/AmigoListActivity;->mFinishedStart:Z

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lamigo/app/AmigoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lamigo/app/AmigoListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    :cond_2
    iget-object v1, p0, Lamigo/app/AmigoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lamigo/app/AmigoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lamigo/app/AmigoListActivity;->mFinishedStart:Z

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lamigo/app/AmigoListActivity;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    invoke-super {p0}, Lamigo/app/AmigoActivity;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onListItemClick(Lamigo/widget/AmigoListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Lamigo/widget/AmigoListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 46
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0}, Lamigo/app/AmigoListActivity;->ensureList()V

    .line 57
    invoke-super {p0, p1}, Lamigo/app/AmigoActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0}, Lamigo/app/AmigoListActivity;->ensureList()V

    .line 102
    iput-object p1, p0, Lamigo/app/AmigoListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 103
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lamigo/app/AmigoListActivity;->mList:Lamigo/widget/AmigoListView;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoListView;->setSelection(I)V

    .line 115
    return-void
.end method
