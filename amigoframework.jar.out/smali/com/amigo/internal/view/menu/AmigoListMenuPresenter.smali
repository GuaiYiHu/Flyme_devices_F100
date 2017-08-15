.class public Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;
.super Ljava/lang/Object;
.source "AmigoListMenuPresenter.java"

# interfaces
.implements Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

.field mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mItemLayoutRes:I

    .line 59
    iput p2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mThemeRes:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;-><init>(II)V

    .line 48
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    .prologue
    .line 20
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p2, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p2, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;-><init>(Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;)V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/amigo/internal/view/menu/AmigoMenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x903001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    .line 84
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;-><init>(Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;)V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .prologue
    .line 64
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .line 74
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 77
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 68
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;->onCloseMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->getItem(I)Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 150
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 202
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    if-nez v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 195
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 122
    :cond_0
    new-instance v0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;-><init>(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 123
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;->onOpenSubMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)Z

    .line 126
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 175
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 178
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 167
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 170
    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 171
    return-void
.end method

.method public setCallback(Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    .line 115
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mId:I

    .line 182
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mItemIndexOffset:I

    .line 142
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenuView:Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->updateMenuView(Z)V

    .line 145
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mAdapter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 110
    :cond_0
    return-void
.end method
