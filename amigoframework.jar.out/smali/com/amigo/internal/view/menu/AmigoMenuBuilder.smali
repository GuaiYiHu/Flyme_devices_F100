.class public Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
.super Ljava/lang/Object;
.source "AmigoMenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/view/menu/AmigoMenuBuilder$ItemInvoker;,
        Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:Menu:actionviewstates"

.field static final CATEGORY_MASK:I = -0x10000

.field static final CATEGORY_SHIFT:I = 0x10

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:Menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:Menu:presenters"

.field private static final TAG:Ljava/lang/String; = "AmigoMenuBuilder"

.field static final USER_MASK:I = 0xffff

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mDefaultShowAsAction:I

    .line 128
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 129
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 131
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mOptionalIconsVisible:Z

    .line 133
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsClosing:Z

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 176
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 182
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsVisibleItemsStale:Z

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 186
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsActionItemsStale:Z

    .line 188
    invoke-direct {p0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 189
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 9
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 380
    invoke-static {p3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getOrdering(I)I

    move-result v6

    .line 382
    .local v6, "ordering":I
    new-instance v0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mDefaultShowAsAction:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;-><init>(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 385
    .local v0, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 391
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 393
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 226
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->stopDispatchingItemsChanged()V

    .line 230
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 231
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 232
    .local v1, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v1, :cond_1

    .line 233
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_1
    invoke-interface {v1, p1}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 238
    .end local v1    # "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 283
    const-string v6, "android:Menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 285
    .local v4, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-object v6, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 289
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 290
    .local v3, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v3, :cond_3

    .line 291
    iget-object v6, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_3
    invoke-interface {v3}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->getId()I

    move-result v1

    .line 294
    .local v1, "id":I
    if-lez v1, :cond_2

    .line 295
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 296
    .local v2, "parcel":Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 297
    invoke-interface {v3, v2}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    iget-object v6, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 264
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 265
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 266
    .local v2, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v2, :cond_2

    .line 267
    iget-object v6, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_2
    invoke-interface {v2}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->getId()I

    move-result v1

    .line 270
    .local v1, "id":I
    if-lez v1, :cond_1

    .line 271
    invoke-interface {v2}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 272
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    .line 273
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 279
    .end local v1    # "id":I
    .end local v2    # "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v6, "android:Menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)Z
    .locals 5
    .param p1, "SubMenu"    # Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    .prologue
    .line 242
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    const/4 v3, 0x0

    .line 255
    :cond_0
    return v3

    .line 245
    :cond_1
    const/4 v3, 0x0

    .line 247
    .local v3, "result":Z
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 248
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 249
    .local v1, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v1, :cond_3

    .line 250
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_3
    if-nez v3, :cond_2

    .line 252
    invoke-interface {v1, p1}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->onSubMenuSelected(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 741
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 742
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 743
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 744
    add-int/lit8 v2, v0, 0x1

    .line 748
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :goto_1
    return v2

    .line 741
    .restart local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 748
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 674
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 676
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 677
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_1
    sget-object v1, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 487
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 492
    if-eqz p2, :cond_0

    .line 493
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1095
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1097
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1098
    iput-object p5, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1101
    iput-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1102
    iput-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1121
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 1122
    return-void

    .line 1104
    :cond_0
    if-lez p1, :cond_3

    .line 1105
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1110
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1111
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1117
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1106
    :cond_3
    if-eqz p2, :cond_1

    .line 1107
    iput-object p2, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1112
    :cond_4
    if-eqz p4, :cond_2

    .line 1113
    iput-object p4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 3
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 707
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    const v2, 0x9070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mShortcutsVisible:Z

    .line 710
    return-void

    .line 707
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 434
    iget-object v10, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 435
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 436
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 438
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 439
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->removeGroup(I)V

    .line 442
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 443
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 444
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 445
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 447
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 449
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 450
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 442
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 436
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 444
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 454
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/amigo/internal/view/menu/AmigoMenuPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsActionItemsStale:Z

    .line 207
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 429
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 422
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    new-instance v0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0, v1}, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;-><init>(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    .line 423
    .local v0, "SubMenu":Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
    invoke-virtual {v1, v0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setSubMenu(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)V

    .line 425
    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 413
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;->onMenuModeChange(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V

    .line 738
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mExpandedItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mExpandedItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 516
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 501
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 502
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->clear()V

    .line 503
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->clearHeader()V

    .line 504
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 505
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 506
    invoke-virtual {p0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 507
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1086
    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1087
    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1088
    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 1091
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->close(Z)V

    .line 918
    return-void
.end method

.method final close(Z)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 900
    iget-boolean v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 913
    :goto_0
    return-void

    .line 903
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsClosing:Z

    .line 904
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 905
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 906
    .local v1, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v1, :cond_1

    .line 907
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 909
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->onCloseMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Z)V

    goto :goto_1

    .line 912
    .end local v1    # "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 1253
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mExpandedItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    if-eq v4, p1, :cond_2

    .line 1254
    :cond_0
    const/4 v0, 0x0

    .line 1272
    :cond_1
    :goto_0
    return v0

    .line 1256
    :cond_2
    const/4 v0, 0x0

    .line 1258
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->stopDispatchingItemsChanged()V

    .line 1259
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1260
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 1261
    .local v2, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v2, :cond_4

    .line 1262
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1263
    :cond_4
    invoke-interface {v2, p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1267
    .end local v2    # "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->startDispatchingItemsChanged()V

    .line 1269
    if-eqz v0, :cond_1

    .line 1270
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mExpandedItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "Menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 728
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;->onMenuItemSelected(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 1230
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1231
    const/4 v0, 0x0

    .line 1249
    :cond_0
    :goto_0
    return v0

    .line 1233
    :cond_1
    const/4 v0, 0x0

    .line 1235
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->stopDispatchingItemsChanged()V

    .line 1236
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1237
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 1238
    .local v2, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v2, :cond_3

    .line 1239
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1240
    :cond_3
    invoke-interface {v2, p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->expandItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1244
    .end local v2    # "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->startDispatchingItemsChanged()V

    .line 1246
    if-eqz v0, :cond_0

    .line 1247
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mExpandedItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->size()I

    move-result v2

    .line 629
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 630
    const/4 p2, 0x0

    .line 633
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 634
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 636
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 641
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :goto_1
    return v0

    .line 633
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->size()I

    move-result v3

    .line 593
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 594
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 595
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 606
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :goto_1
    return-object v1

    .line 597
    .restart local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 598
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 600
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 601
    goto :goto_1

    .line 593
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->size()I

    move-result v2

    .line 612
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 613
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 614
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 619
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :goto_1
    return v0

    .line 612
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 814
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 815
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 816
    invoke-virtual {p0, v2, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 818
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-object v8

    .line 822
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 823
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 825
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 828
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 829
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 830
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    goto :goto_0

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 836
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 837
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 838
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 839
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 842
    goto :goto_0

    .line 838
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 836
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    const/16 v10, 0x43

    .line 774
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 775
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 776
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 778
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 780
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 799
    :cond_0
    return-void

    .line 785
    :cond_1
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 786
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 787
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 788
    .local v3, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 789
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 791
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 792
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 796
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 791
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 10

    .prologue
    .line 1031
    iget-boolean v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1036
    :cond_0
    const/4 v0, 0x0

    .line 1037
    .local v0, "flagged":Z
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 1038
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 1039
    .local v5, "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-nez v5, :cond_1

    .line 1040
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1042
    :cond_1
    invoke-interface {v5}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 1046
    .end local v5    # "presenter":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 1047
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1048
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1049
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 1050
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1051
    .local v4, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1052
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 1053
    .local v3, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1054
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1056
    :cond_3
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1062
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .end local v4    # "itemsSize":I
    .end local v7    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    :cond_4
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1063
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1064
    iget-object v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1066
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->flagActionItems()V

    .line 1071
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string v0, "android:Menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mExpandedItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 650
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->flagActionItems()V

    .line 1082
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 0

    .prologue
    .line 1207
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    iget-boolean v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    .line 986
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 1002
    :goto_0
    return-object v3

    .line 989
    :cond_0
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 991
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 993
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 994
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 995
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 999
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsVisibleItemsStale:Z

    .line 1000
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsActionItemsStale:Z

    .line 1002
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->size()I

    move-result v2

    .line 581
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 582
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 583
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 584
    const/4 v3, 0x1

    .line 588
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :goto_1
    return v3

    .line 581
    .restart local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 654
    invoke-virtual {p0, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsActionItemsStale:Z

    .line 981
    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 982
    return-void
.end method

.method onItemVisibleChanged(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 968
    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsVisibleItemsStale:Z

    .line 969
    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 970
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 928
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 929
    if-eqz p1, :cond_0

    .line 930
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsVisibleItemsStale:Z

    .line 931
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mIsActionItemsStale:Z

    .line 934
    :cond_0
    invoke-direct {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_1
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 850
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 854
    move-object v2, p1

    check-cast v2, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 856
    .local v2, "itemImpl":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move v1, v6

    .line 888
    :cond_1
    :goto_0
    return v1

    .line 860
    :cond_2
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->invoke()Z

    move-result v1

    .line 862
    .local v1, "invoked":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v3

    .line 863
    .local v3, "provider":Landroid/view/ActionProvider;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v5

    .line 864
    .local v4, "providerHasSubMenu":Z
    :goto_1
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->hasCollapsibleActionView()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 865
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->expandActionView()Z

    move-result v6

    or-int/2addr v1, v6

    .line 866
    if-eqz v1, :cond_1

    .line 867
    invoke-virtual {p0, v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->close(Z)V

    goto :goto_0

    .end local v4    # "providerHasSubMenu":Z
    :cond_3
    move v4, v6

    .line 863
    goto :goto_1

    .line 868
    .restart local v4    # "providerHasSubMenu":Z
    :cond_4
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->hasSubMenu()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v4, :cond_8

    .line 869
    :cond_5
    invoke-virtual {p0, v6}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->close(Z)V

    .line 871
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->hasSubMenu()Z

    move-result v6

    if-nez v6, :cond_6

    .line 872
    new-instance v6, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v2}, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;-><init>(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    invoke-virtual {v2, v6}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setSubMenu(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)V

    .line 875
    :cond_6
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    .line 876
    .local v0, "SubMenu":Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
    if-eqz v4, :cond_7

    .line 877
    invoke-virtual {v3, v0}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 879
    :cond_7
    invoke-direct {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->dispatchSubMenuSelected(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 880
    if-nez v1, :cond_1

    .line 881
    invoke-virtual {p0, v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->close(Z)V

    goto :goto_0

    .line 883
    .end local v0    # "SubMenu":Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
    :cond_8
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_1

    .line 884
    invoke-virtual {p0, v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    move-result-object v1

    .line 754
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    const/4 v0, 0x0

    .line 756
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {p0, v1, p3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 760
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 761
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->close(Z)V

    .line 764
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 464
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 465
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 466
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 467
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v4}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 469
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 473
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 475
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->removeItemAtInt(IZ)V

    .line 459
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->removeItemAtInt(IZ)V

    .line 498
    return-void
.end method

.method public removeMenuPresenter(Lcom/amigo/internal/view/menu/AmigoMenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .prologue
    .line 217
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 218
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuPresenter;

    .line 219
    .local v1, "item":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 220
    :cond_1
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v1    # "item":Lcom/amigo/internal/view/menu/AmigoMenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/amigo/internal/view/menu/AmigoMenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    .prologue
    .line 340
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v7

    .line 346
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->size()I

    move-result v4

    .line 347
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 348
    invoke-virtual {p0, v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 349
    .local v3, "item":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    .line 350
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 351
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 353
    :cond_2
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 354
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    .line 355
    .local v0, "SubMenu":Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 347
    .end local v0    # "SubMenu":Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    .end local v3    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const-string v8, "android:Menu:expandedactionview"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 360
    .local v1, "expandedId":I
    if-lez v1, :cond_0

    .line 361
    invoke-virtual {p0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 362
    .local v5, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v5, :cond_0

    .line 363
    invoke-interface {v5}, Landroid/view/MenuItem;->expandActionView()Z

    goto :goto_0
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    .prologue
    .line 313
    const/4 v5, 0x0

    .line 315
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->size()I

    move-result v3

    .line 316
    .local v3, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 317
    invoke-virtual {p0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 318
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    .line 319
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 320
    if-nez v5, :cond_0

    .line 321
    new-instance v5, Landroid/util/SparseArray;

    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 323
    .restart local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 324
    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    const-string v6, "android:Menu:expandedactionview"

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    :cond_1
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 329
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    .line 330
    .local v0, "SubMenu":Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 316
    .end local v0    # "SubMenu":Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    .line 335
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 337
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    return-void
.end method

.method public setCallback(Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCallback:Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

    .line 374
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1219
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mDefaultShowAsAction:I

    .line 193
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 519
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 521
    .local v2, "group":I
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 523
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 524
    .local v1, "curItem":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 525
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 522
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 534
    .end local v1    # "curItem":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 537
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 539
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 540
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 541
    .local v2, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 542
    invoke-virtual {v2, p3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setExclusiveCheckable(Z)V

    .line 543
    invoke-virtual {v2, p2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    .end local v2    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 568
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 570
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 571
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 572
    .local v2, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 573
    invoke-virtual {v2, p2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 570
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    .end local v2    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 549
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 554
    .local v0, "N":I
    const/4 v1, 0x0

    .line 555
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 556
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 557
    .local v3, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 558
    invoke-virtual {v3, p2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 559
    const/4 v1, 0x1

    .line 555
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    .end local v3    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    .line 564
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 565
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1172
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1173
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1159
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1160
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1146
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1147
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1133
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1134
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1185
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1186
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1222
    iput-boolean p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mOptionalIconsVisible:Z

    .line 1223
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 658
    iput-boolean p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mQwertyMode:Z

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 661
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 952
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 954
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 955
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 956
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 958
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 947
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 949
    :cond_0
    return-void
.end method
