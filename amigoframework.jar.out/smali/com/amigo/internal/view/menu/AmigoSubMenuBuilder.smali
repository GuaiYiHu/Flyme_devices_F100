.class public Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;
.super Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
.source "AmigoSubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

.field private mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p3, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p2, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .line 18
    iput-object p3, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 19
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "AmigoMenu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->dispatchMenuItemSelected(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->dispatchMenuItemSelected(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->expandItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getItemId()I

    move-result v0

    .line 108
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    .line 109
    const/4 v1, 0x0

    .line 111
    :goto_1
    return-object v1

    .line 107
    .end local v0    # "itemId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    .restart local v0    # "itemId":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setCallback(Lcom/amigo/internal/view/menu/AmigoMenuBuilder$Callback;)V

    .line 52
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderIconInt(I)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderTitleInt(I)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 72
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mItem:Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 67
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setQwertyMode(Z)V

    .line 24
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->mParentMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setShortcutsVisible(Z)V

    .line 34
    return-void
.end method
