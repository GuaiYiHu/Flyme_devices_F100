.class public Lamigo/app/AmigoActionBarImpl$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "AmigoActionBarImpl.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lamigo/app/AmigoActionBarImpl;


# direct methods
.method public constructor <init>(Lamigo/app/AmigoActionBarImpl;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1170
    iput-object p1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 1171
    iput-object p2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1172
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lamigo/app/AmigoActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1174
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1175
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1252
    :try_start_0
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1254
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1189
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    iget-object v2, v2, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    if-eq v2, p0, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mHiddenByApp:Z
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$700(Lamigo/app/AmigoActionBarImpl;)Z

    move-result v2

    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mHiddenBySystem:Z
    invoke-static {v3}, Lamigo/app/AmigoActionBarImpl;->access$800(Lamigo/app/AmigoActionBarImpl;)Z

    move-result v3

    # invokes: Lamigo/app/AmigoActionBarImpl;->checkShowingFlags(ZZZ)Z
    invoke-static {v2, v3, v4}, Lamigo/app/AmigoActionBarImpl;->access$900(ZZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1201
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    iput-object p0, v2, Lamigo/app/AmigoActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 1202
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    iget-object v3, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object v3, v2, Lamigo/app/AmigoActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 1207
    :goto_1
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    invoke-virtual {v2}, Lamigo/app/AmigoActivity;->getOptionMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1208
    .local v1, "optionMenu":Landroid/view/Menu;
    if-eqz v1, :cond_4

    .line 1209
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    invoke-virtual {v2, v4}, Lamigo/app/AmigoActivity;->setOptionsMenuHideMode(Z)V

    .line 1210
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    invoke-virtual {v2}, Lamigo/app/AmigoActivity;->isUseOriginalActionBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1211
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2, v1}, Lamigo/app/AmigoActionBarImpl;->setCustomMenu(Landroid/view/Menu;)V

    .line 1212
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    invoke-virtual {v2, v5}, Lamigo/app/AmigoActivity;->parserMenuInfo(Landroid/view/Menu;)V

    .line 1224
    :cond_1
    :goto_2
    iput-object v5, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 1228
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2, v4}, Lamigo/app/AmigoActionBarImpl;->animateToMode(Z)V

    .line 1231
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->closeMode()V

    .line 1232
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1200(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarView;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/amigo/internal/widget/AmigoActionBarView;->sendAccessibilityEvent(I)V

    .line 1234
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    iput-object v5, v2, Lamigo/app/AmigoActionBarImpl;->mActionMode:Lamigo/app/AmigoActionBarImpl$ActionModeImpl;

    goto :goto_0

    .line 1204
    .end local v1    # "optionMenu":Landroid/view/Menu;
    :cond_2
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v2, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    .line 1214
    .restart local v1    # "optionMenu":Landroid/view/Menu;
    :cond_3
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    invoke-virtual {v2, v1}, Lamigo/app/AmigoActivity;->parserMenuInfo(Landroid/view/Menu;)V

    goto :goto_2

    .line 1217
    :cond_4
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lamigo/app/AmigoActivity;->setOptionsMenuHideMode(Z)V

    .line 1218
    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    invoke-virtual {v2}, Lamigo/app/AmigoActivity;->getAmigoMagicBar()Lamigo/widget/AmigoMagicBar;

    move-result-object v0

    .line 1219
    .local v0, "amigoMagicBar":Lamigo/widget/AmigoMagicBar;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lamigo/app/AmigoActionBarImpl;->access$1000(Lamigo/app/AmigoActionBarImpl;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lamigo/app/AmigoActivity;

    invoke-virtual {v2}, Lamigo/app/AmigoActivity;->isUseOriginalActionBar()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1220
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lamigo/widget/AmigoMagicBar;->setMagicBarVisibilityWithAnim(I)V

    goto :goto_2
.end method

.method public getCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1179
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v1}, Lamigo/app/AmigoActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1241
    :try_start_0
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    :cond_0
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1247
    return-void

    .line 1245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1319
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1335
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1311
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1338
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1343
    :goto_0
    return-void

    .line 1341
    :cond_0
    invoke-virtual {p0}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->invalidate()V

    .line 1342
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 1322
    iget-object v1, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 1323
    const/4 v0, 0x0

    .line 1331
    :cond_0
    :goto_0
    return v0

    .line 1326
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v2}, Lamigo/app/AmigoActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1260
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 1262
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1281
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$100(Lamigo/app/AmigoActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1282
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1266
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1267
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1276
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$100(Lamigo/app/AmigoActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 1277
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1271
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1272
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 1296
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1297
    iget-object v0, p0, Lamigo/app/AmigoActionBarImpl$ActionModeImpl;->this$0:Lamigo/app/AmigoActionBarImpl;

    # getter for: Lamigo/app/AmigoActionBarImpl;->mContextView:Lcom/amigo/internal/widget/AmigoActionBarContextView;
    invoke-static {v0}, Lamigo/app/AmigoActionBarImpl;->access$1100(Lamigo/app/AmigoActionBarImpl;)Lcom/amigo/internal/widget/AmigoActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setTitleOptional(Z)V

    .line 1298
    return-void
.end method
