.class Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "AmigoListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;)V
    .locals 1

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 209
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 210
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 247
    iget-object v5, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    iget-object v5, v5, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getExpandedItem()Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    move-result-object v1

    .line 248
    .local v1, "expandedItem":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    if-eqz v1, :cond_1

    .line 249
    iget-object v5, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    iget-object v5, v5, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 250
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 251
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 252
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 253
    .local v3, "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 254
    iput v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    .line 260
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    :goto_1
    return-void

    .line 251
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 213
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    iget-object v2, v2, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 214
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    # getter for: Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mItemIndexOffset:I
    invoke-static {v3}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->access$000(Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;)I

    move-result v3

    sub-int v0, v2, v3

    .line 215
    .local v0, "count":I
    iget v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-gez v2, :cond_0

    .line 218
    .end local v0    # "count":I
    :goto_0
    return v0

    .restart local v0    # "count":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 222
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    iget-object v1, v1, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;>;"
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    # getter for: Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mItemIndexOffset:I
    invoke-static {v1}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->access$000(Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;)I

    move-result v1

    add-int/2addr p1, v1

    .line 224
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 225
    add-int/lit8 p1, p1, 0x1

    .line 227
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->getItem(I)Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 233
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 237
    if-nez p2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    iget-object v1, v1, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->this$0:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    iget v2, v2, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 241
    check-cast v0, Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;

    .line 242
    .local v0, "itemView":Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->getItem(I)Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;->initialize(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;I)V

    .line 243
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    .line 265
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 266
    return-void
.end method
