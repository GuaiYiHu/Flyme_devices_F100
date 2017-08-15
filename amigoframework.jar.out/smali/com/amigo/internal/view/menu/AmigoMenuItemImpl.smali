.class public Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
.super Ljava/lang/Object;
.source "AmigoMenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AmigoMenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amigo/internal/view/menu/AmigoMenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p3, "group"    # I
    .param p4, "id"    # I
    .param p5, "categoryOrder"    # I
    .param p6, "ordering"    # I
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconResId:I

    .line 52
    const/16 v0, 0x10

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 60
    iput v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    .line 65
    iput-boolean v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIsActionViewExpanded:Z

    .line 121
    iput-object p2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .line 122
    iput p4, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mId:I

    .line 123
    iput p3, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mGroup:I

    .line 124
    iput p5, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mCategoryOrder:I

    .line 125
    iput p6, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mOrdering:I

    .line 126
    iput-object p7, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 127
    iput p8, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    .line 129
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mContext:Landroid/content/Context;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemActionRequestChanged(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    .line 504
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 623
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 628
    const/4 v0, 0x1

    goto :goto_0

    .line 631
    :cond_2
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    :cond_3
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->collapseItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 610
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->expandItemActionView(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    .line 578
    :goto_0
    return-object v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    .line 576
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 219
    iget-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 374
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 385
    :goto_0
    return-object v0

    .line 378
    :cond_0
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 380
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconResId:I

    .line 381
    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 385
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getMenuItemClickListener()Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 234
    iget-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getShortcut()C

    move-result v1

    .line 271
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 272
    const-string v2, ""

    .line 295
    :goto_0
    return-object v2

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 279
    :sswitch_0
    sget-object v2, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    :sswitch_1
    sget-object v2, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :sswitch_2
    sget-object v2, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 276
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mSubMenu:Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;

    .prologue
    .line 337
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amigo/internal/view/menu/AmigoMenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mSubMenu:Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 138
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getRootMenu()Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->dispatchMenuItemSelected(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AmigoMenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 514
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 407
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 453
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    iget v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 454
    goto :goto_0

    .line 456
    :cond_2
    iget v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 518
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 590
    :cond_0
    iput-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    .line 591
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 592
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 593
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    new-instance v1, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl$1;

    invoke-direct {v1, p0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl$1;-><init>(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 599
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 565
    iget-object v2, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 567
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 568
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionView:Landroid/view/View;

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 557
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 558
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemActionRequestChanged(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    .line 561
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 649
    iput-boolean p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIsActionViewExpanded:Z

    .line 650
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 651
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 223
    iget-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 230
    :goto_0
    return-object p0

    .line 226
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutAlphabeticChar:C

    .line 228
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 215
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 411
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 412
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 413
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v1, v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 417
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 412
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 433
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 441
    :goto_0
    return-object p0

    .line 438
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 445
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 446
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 447
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v1, v2}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 450
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 446
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 180
    return-object p0

    .line 175
    :cond_0
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 421
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 422
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 398
    iput p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconResId:I

    .line 401
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 403
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 389
    iput v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconResId:I

    .line 390
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 391
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 393
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 206
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 496
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 238
    iget-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 245
    :goto_0
    return-object p0

    .line 241
    :cond_0
    iput-char p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutNumericChar:C

    .line 243
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 641
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 486
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 249
    iput-char p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutNumericChar:C

    .line 250
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShortcutAlphabeticChar:C

    .line 252
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 254
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 538
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_0
    iput p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    .line 551
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemActionRequestChanged(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    .line 552
    return-void

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 604
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setShowAsAction(I)V

    .line 605
    return-object p0
.end method

.method setSubMenu(Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;)V
    .locals 1
    .param p1, "SubMenu"    # Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mSubMenu:Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    .line 321
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 322
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 343
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 345
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mSubMenu:Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mSubMenu:Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/view/menu/AmigoSubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 349
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 364
    if-nez p1, :cond_0

    .line 365
    iget-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemsChanged(Z)V

    .line 370
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->onItemVisibleChanged(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)V

    .line 481
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 469
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 470
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    .line 471
    iget v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 470
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
