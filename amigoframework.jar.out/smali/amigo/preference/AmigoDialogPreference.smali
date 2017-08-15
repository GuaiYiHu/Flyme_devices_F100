.class public abstract Lamigo/preference/AmigoDialogPreference;
.super Lamigo/preference/AmigoPreference;
.source "AmigoDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mFullScreenStyle:Z

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/preference/AmigoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    iput-boolean v4, p0, Lamigo/preference/AmigoDialogPreference;->mFullScreenStyle:Z

    .line 61
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 64
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 65
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 63
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :pswitch_1
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 68
    iget-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 75
    :pswitch_2
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    goto :goto_1

    .line 80
    :pswitch_3
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 83
    :pswitch_4
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 86
    :pswitch_5
    iget v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    goto :goto_1

    .line 92
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_1
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoDialogPreference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 95
    iget-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    .line 98
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 100
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 101
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 103
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 104
    const/4 v3, 0x5

    iget v4, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    return-void

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x10101f2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 364
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 365
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 366
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 393
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 396
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 397
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 399
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 400
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 401
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :cond_0
    const/4 v2, 0x0

    .line 407
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 408
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 411
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoDialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 414
    iput p2, p0, Lamigo/preference/AmigoDialogPreference;->mWhichButtonClicked:I

    .line 415
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 377
    iget v2, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 382
    :goto_0
    return-object v1

    .line 381
    :cond_0
    iget-object v2, p0, Lamigo/preference/AmigoDialogPreference;->mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

    invoke-virtual {v2}, Lamigo/app/AmigoAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 382
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 433
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 419
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lamigo/preference/AmigoPreferenceManager;->unregisterOnActivityDestroyListener(Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;)V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 422
    iget v0, p0, Lamigo/preference/AmigoDialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoDialogPreference;->onDialogClosed(Z)V

    .line 423
    return-void

    .line 422
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lamigo/app/AmigoAlertDialog$Builder;

    .prologue
    .line 287
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoDialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 473
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 482
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 477
    check-cast v0, Lamigo/preference/AmigoDialogPreference$SavedState;

    .line 478
    .local v0, "myState":Lamigo/preference/AmigoDialogPreference$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 479
    iget-boolean v1, v0, Lamigo/preference/AmigoDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, v0, Lamigo/preference/AmigoDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoDialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 458
    invoke-super {p0}, Lamigo/preference/AmigoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 459
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 466
    :goto_0
    return-object v0

    .line 463
    :cond_1
    new-instance v0, Lamigo/preference/AmigoDialogPreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 464
    .local v0, "myState":Lamigo/preference/AmigoDialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lamigo/preference/AmigoDialogPreference$SavedState;->isDialogShowing:Z

    .line 465
    iget-object v2, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lamigo/preference/AmigoDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 192
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 181
    iput-object p1, p0, Lamigo/preference/AmigoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 182
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 266
    iput p1, p0, Lamigo/preference/AmigoDialogPreference;->mDialogLayoutResId:I

    .line 267
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    iput-object p1, p0, Lamigo/preference/AmigoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 157
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    iput-object p1, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 127
    return-void
.end method

.method protected setFullScreenStyle(Z)V
    .locals 0
    .param p1, "fullScreenStyle"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lamigo/preference/AmigoDialogPreference;->mFullScreenStyle:Z

    .line 520
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 245
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 237
    iput-object p1, p0, Lamigo/preference/AmigoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 238
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 217
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 209
    iput-object p1, p0, Lamigo/preference/AmigoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 210
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 306
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Lamigo/preference/AmigoDialogPreference;->mWhichButtonClicked:I

    .line 309
    iget-boolean v3, p0, Lamigo/preference/AmigoDialogPreference;->mFullScreenStyle:Z

    if-eqz v3, :cond_2

    .line 310
    new-instance v3, Lamigo/app/AmigoAlertDialog$Builder;

    invoke-direct {v3, v1}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lamigo/app/AmigoAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

    .line 326
    :goto_0
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 329
    iget-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

    invoke-virtual {v3, v0}, Lamigo/app/AmigoAlertDialog$Builder;->setView(Landroid/view/View;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 334
    :goto_1
    iget-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoDialogPreference;->onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V

    .line 336
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lamigo/preference/AmigoPreferenceManager;->registerOnActivityDestroyListener(Lamigo/preference/AmigoPreferenceManager$OnActivityDestroyListener;)V

    .line 339
    iget-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

    invoke-virtual {v3}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lamigo/preference/AmigoDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 340
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 343
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoDialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    invoke-direct {p0, v2}, Lamigo/preference/AmigoDialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 346
    :cond_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 347
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 348
    return-void

    .line 317
    .end local v0    # "contentView":Landroid/view/View;
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_2
    new-instance v3, Lamigo/app/AmigoAlertDialog$Builder;

    invoke-direct {v3, v1}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lamigo/app/AmigoAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

    goto :goto_0

    .line 331
    .restart local v0    # "contentView":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lamigo/preference/AmigoDialogPreference;->mBuilder:Lamigo/app/AmigoAlertDialog$Builder;

    iget-object v4, p0, Lamigo/preference/AmigoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lamigo/app/AmigoAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    goto :goto_1
.end method
