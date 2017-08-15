.class public Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;
.super Ljava/lang/Object;
.source "AmigoMenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;


# instance fields
.field private mDialog:Lamigo/app/AmigoAlertDialog;

.field private mFragment:Landroid/app/Fragment;

.field private mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

.field mPresenter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

.field private mPresenterCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .line 32
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, "mIsActivityFinish":Z
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    .local v1, "context":Landroid/content/Context;
    instance-of v3, v1, Lamigo/app/AmigoActivity;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 130
    check-cast v0, Lamigo/app/AmigoActivity;

    .line 131
    .local v0, "activity":Lamigo/app/AmigoActivity;
    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Lamigo/app/AmigoActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lamigo/app/AmigoActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 135
    .end local v0    # "activity":Lamigo/app/AmigoActivity;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 137
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v3}, Lamigo/app/AmigoAlertDialog;->dismiss()V

    .line 139
    :cond_2
    return-void

    .line 132
    .restart local v0    # "activity":Lamigo/app/AmigoActivity;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v4}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    invoke-virtual {v4}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .line 173
    .local v3, "menuItem":Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 174
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;->getMenuItemClickListener()Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v0

    .line 180
    .local v0, "clickListener":Landroid/view/MenuItem$OnMenuItemClickListener;
    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    :cond_2
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v4, :cond_3

    .line 182
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4, v3}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 184
    :cond_3
    check-cast v1, Lamigo/app/AmigoActivity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1, v3}, Lamigo/app/AmigoActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Z)V
    .locals 2
    .param p1, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 148
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    if-ne p1, v1, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->dismiss()V

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenterCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenterCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    invoke-interface {v1, p1, p2}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;->onCloseMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Z)V

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lamigo/app/AmigoActivity;

    .line 156
    .local v0, "activity":Lamigo/app/AmigoActivity;
    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 157
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    iget-object v1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->onCloseMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;Z)V

    .line 144
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 82
    const/16 v4, 0x52

    if-eq p2, v4, :cond_0

    const/4 v4, 0x4

    if-ne p2, v4, :cond_2

    .line 83
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 84
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v4}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 85
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 89
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 112
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :goto_0
    return v3

    .line 95
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v4}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 97
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 98
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 99
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 101
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    invoke-virtual {v4, v3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->close(Z)V

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 112
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_2
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, p3, v4}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    goto :goto_0
.end method

.method public onOpenSubMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenterCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenterCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;->onOpenSubMenu(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mFragment:Landroid/app/Fragment;

    .line 191
    return-void
.end method

.method public setPresenterCallback(Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenterCallback:Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;

    .line 118
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 42
    iget-object v3, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .line 45
    .local v3, "menu":Lcom/amigo/internal/view/menu/AmigoMenuBuilder;
    new-instance v0, Lamigo/app/AmigoAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v0, "builder":Lamigo/app/AmigoAlertDialog$Builder;
    new-instance v4, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x903001d

    invoke-direct {v4, v5, v6}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    .line 50
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->setCallback(Lcom/amigo/internal/view/menu/AmigoMenuPresenter$Callback;)V

    .line 51
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    iget-object v5, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->addMenuPresenter(Lcom/amigo/internal/view/menu/AmigoMenuPresenter;)V

    .line 52
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mPresenter:Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;

    invoke-virtual {v4}, Lcom/amigo/internal/view/menu/AmigoListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 55
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 65
    :goto_0
    invoke-virtual {v0, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    .line 69
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v4, p0}, Lamigo/app/AmigoAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 71
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v4}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 72
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 73
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 76
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 78
    iget-object v4, p0, Lcom/amigo/internal/view/menu/AmigoMenuDialogHelper;->mDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v4}, Lamigo/app/AmigoAlertDialog;->show()V

    .line 79
    return-void

    .line 61
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lamigo/app/AmigoAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    goto :goto_0
.end method
