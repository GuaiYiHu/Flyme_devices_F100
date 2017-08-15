.class public abstract Lcom/amigo/internal/app/AmigoAlertActivity;
.super Lamigo/app/AmigoActivity;
.source "AmigoAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/amigo/internal/app/AmigoAlertController;

.field protected mAlertParams:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lamigo/app/AmigoActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->finish()V

    .line 71
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->finish()V

    .line 79
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-super {p0}, Lamigo/app/AmigoActivity;->finish()V

    .line 65
    invoke-virtual {p0, v0, v0}, Lcom/amigo/internal/app/AmigoAlertActivity;->overridePendingTransition(II)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 50
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x9010093

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 51
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 52
    const v2, 0x9080004

    invoke-virtual {p0, v2}, Lcom/amigo/internal/app/AmigoAlertActivity;->setTheme(I)V

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lamigo/app/AmigoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getInstance()Lamigo/changecolors/ChameleonColorManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lamigo/changecolors/ChameleonColorManager;->register(Landroid/content/Context;)V

    .line 56
    new-instance v2, Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/amigo/internal/app/AmigoAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v2, p0, Lcom/amigo/internal/app/AmigoAlertActivity;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    .line 57
    new-instance v2, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    invoke-direct {v2, p0}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amigo/internal/app/AmigoAlertActivity;->mAlertParams:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    .line 59
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lamigo/app/AmigoActivity;->onDestroy()V

    .line 107
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getInstance()Lamigo/changecolors/ChameleonColorManager;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/changecolors/ChameleonColorManager;->unregister()V

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertActivity;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/amigo/internal/app/AmigoAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lamigo/app/AmigoActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertActivity;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/amigo/internal/app/AmigoAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lamigo/app/AmigoActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertActivity;->mAlertParams:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertActivity;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->apply(Lcom/amigo/internal/app/AmigoAlertController;)V

    .line 90
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertActivity;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0}, Lcom/amigo/internal/app/AmigoAlertController;->installContent()V

    .line 91
    return-void
.end method
