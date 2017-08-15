.class public Lamigo/app/AmigoAlertDialog;
.super Landroid/app/Dialog;
.source "AmigoAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/app/AmigoAlertDialog$Builder;,
        Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;
    }
.end annotation


# static fields
.field public static final THEME_AMIGO_DARK:I = 0x8

.field public static final THEME_AMIGO_FULLSCREEN:I = 0x6

.field public static final THEME_AMIGO_FULLSCREEN_NEW:I = 0x9

.field public static final THEME_AMIGO_LIGHT:I = 0x7

.field public static final THEME_AMIGO_STRONG_HINT:I = 0xa

.field public static final THEME_DEVICE_DEFAULT_DARK:I = 0x4

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x5

.field public static final THEME_HOLO_DARK:I = 0x2

.field public static final THEME_HOLO_LIGHT:I = 0x3

.field public static final THEME_TRADITIONAL:I = 0x1


# instance fields
.field private mAlert:Lcom/amigo/internal/app/AmigoAlertController;

.field private mContext:Landroid/content/Context;

.field private mOnWindowFocusChangeListener:Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lamigo/app/AmigoAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 108
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .prologue
    .line 123
    invoke-static {p1, p2}, Lamigo/app/AmigoAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 126
    new-instance v0, Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {p0}, Lamigo/app/AmigoAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/amigo/internal/app/AmigoAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    .line 127
    invoke-virtual {p0}, Lamigo/app/AmigoAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lamigo/app/AmigoAlertDialog;->mContext:Landroid/content/Context;

    .line 131
    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 132
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/app/AmigoAlertController;->setHasCancelIcon(Z)V

    .line 135
    invoke-virtual {p0}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/app/AmigoAlertController;->setGnWidget3Style(Z)V

    .line 148
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lamigo/app/AmigoAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 153
    invoke-virtual {p0, p2}, Lamigo/app/AmigoAlertDialog;->setCancelable(Z)V

    .line 154
    invoke-virtual {p0, p3}, Lamigo/app/AmigoAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 155
    new-instance v0, Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {p0}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/amigo/internal/app/AmigoAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lamigo/app/AmigoAlertDialog;)Lcom/amigo/internal/app/AmigoAlertController;
    .locals 1
    .param p0, "x0"    # Lamigo/app/AmigoAlertDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    const v2, 0x9080004

    const/4 v5, 0x1

    .line 161
    if-eq p1, v5, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    :cond_0
    move p1, v2

    .line 188
    .end local p1    # "resid":I
    :cond_1
    :goto_0
    return p1

    .line 168
    .restart local p1    # "resid":I
    :cond_2
    const/16 v3, 0x9

    if-ne p1, v3, :cond_3

    .line 169
    const p1, 0x9080005

    goto :goto_0

    .line 170
    :cond_3
    const/4 v3, 0x7

    if-eq p1, v3, :cond_4

    const/16 v3, 0x8

    if-ne p1, v3, :cond_5

    :cond_4
    move p1, v2

    .line 171
    goto :goto_0

    .line 172
    :cond_5
    const/high16 v3, 0x1000000

    if-ge p1, v3, :cond_1

    .line 174
    const/16 v3, 0xa

    if-ne p1, v3, :cond_6

    .line 175
    const p1, 0x9080024

    goto :goto_0

    .line 177
    :cond_6
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 178
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x9010093

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 181
    .local v1, "ret":Z
    if-eqz v1, :cond_7

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 188
    :goto_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    .line 185
    :cond_7
    iput v2, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1
.end method


# virtual methods
.method public getButton(I)Lamigo/widget/AmigoButton;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->getButton(I)Lamigo/widget/AmigoButton;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0}, Lcom/amigo/internal/app/AmigoAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getOnWindowFocusChangeListener()Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mOnWindowFocusChangeListener:Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 383
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setGnWidget3Style(Z)V

    .line 386
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    iget-object v2, p0, Lamigo/app/AmigoAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    const v3, 0x9080024

    if-ne v2, v3, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setStrongHint(Z)V

    .line 387
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0}, Lcom/amigo/internal/app/AmigoAlertController;->installContent()V

    .line 388
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 392
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/amigo/internal/app/AmigoAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 398
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/amigo/internal/app/AmigoAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 405
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mOnWindowFocusChangeListener:Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mOnWindowFocusChangeListener:Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;

    invoke-interface {v0, p1}, Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    .line 408
    :cond_0
    return-void
.end method

.method public setButton(IILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "buttonStyle"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1095
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/amigo/internal/app/AmigoAlertController;->setButtonStyle(II)V

    .line 1096
    invoke-virtual {p0, p1, p3, p4}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1097
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 280
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/amigo/internal/app/AmigoAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 281
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 266
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/amigo/internal/app/AmigoAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 267
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 322
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 290
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 335
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 299
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 348
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 307
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 308
    return-void
.end method

.method public setCancelable(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1104
    if-nez p1, :cond_0

    .line 1105
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/app/AmigoAlertController;->setHasCancelIcon(Z)V

    .line 1107
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1108
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->setIcon(I)V

    .line 357
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 360
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 361
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 369
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 370
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 371
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/amigo/internal/app/AmigoAlertController;->setIcon(I)V

    .line 372
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 375
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->setInverseBackgroundForced(Z)V

    .line 376
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 230
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method

.method public setOnWindowFocusChangeListener(Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;

    .prologue
    .line 416
    iput-object p1, p0, Lamigo/app/AmigoAlertDialog;->mOnWindowFocusChangeListener:Lamigo/app/AmigoAlertDialog$OnWindowFocusChangeListener;

    .line 417
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    invoke-virtual {v0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->setView(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amigo/internal/app/AmigoAlertController;->setView(Landroid/view/View;IIII)V

    .line 253
    return-void
.end method
