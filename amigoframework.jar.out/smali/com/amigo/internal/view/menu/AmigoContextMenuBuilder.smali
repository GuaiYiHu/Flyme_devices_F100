.class public Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;
.super Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
.source "AmigoContextMenuBuilder.java"

# interfaces
.implements Landroid/view/ContextMenu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->mFragment:Landroid/app/Fragment;

    .line 70
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderIconInt(I)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderTitleInt(I)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/ContextMenu;

    return-object v0
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;)Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;
    .locals 2
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    instance-of v1, p1, Lamigo/widget/AmigoListView;

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 55
    new-instance v0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;

    invoke-direct {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;-><init>(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V

    .line 56
    .local v0, "helper":Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoContextMenuBuilder;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->setFragment(Landroid/app/Fragment;)V

    .line 57
    invoke-virtual {v0, p2}, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 61
    .end local v0    # "helper":Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
