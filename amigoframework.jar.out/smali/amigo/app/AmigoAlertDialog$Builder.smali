.class public Lamigo/app/AmigoAlertDialog$Builder;
.super Ljava/lang/Object;
.source "AmigoAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/app/AmigoAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lamigo/app/AmigoAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 452
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v3, 0x0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lamigo/app/AmigoAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    .line 468
    iput p2, p0, Lamigo/app/AmigoAlertDialog$Builder;->mTheme:I

    .line 470
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 471
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoAlertDialog$Builder;->setCancelIcon(Ljava/lang/Boolean;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 474
    :cond_0
    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 475
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/app/AmigoAlertDialog$Builder;->setCancelIcon(Ljava/lang/Boolean;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 476
    const v0, 0x902003d

    invoke-virtual {p0, v0}, Lamigo/app/AmigoAlertDialog$Builder;->setIcon(I)Lamigo/app/AmigoAlertDialog$Builder;

    .line 477
    const v0, 0x9090011

    invoke-virtual {p0, v0}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(I)Lamigo/app/AmigoAlertDialog$Builder;

    .line 479
    :cond_1
    return-void
.end method


# virtual methods
.method public create()Lamigo/app/AmigoAlertDialog;
    .locals 4

    .prologue
    .line 1045
    new-instance v0, Lamigo/app/AmigoAlertDialog;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lamigo/app/AmigoAlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lamigo/app/AmigoAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 1046
    .local v0, "dialog":Lamigo/app/AmigoAlertDialog;
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    # getter for: Lamigo/app/AmigoAlertDialog;->mAlert:Lcom/amigo/internal/app/AmigoAlertController;
    invoke-static {v0}, Lamigo/app/AmigoAlertDialog;->access$000(Lamigo/app/AmigoAlertDialog;)Lcom/amigo/internal/app/AmigoAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->apply(Lcom/amigo/internal/app/AmigoAlertController;)V

    .line 1047
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog;->setCancelable(Z)V

    .line 1049
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1050
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1052
    :cond_0
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1053
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1054
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1055
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1057
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 742
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 743
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 744
    return-object p0
.end method

.method public setCancelIcon(Ljava/lang/Boolean;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "hasCancelIcon"    # Ljava/lang/Boolean;

    .prologue
    .line 1026
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mHasCancelIcon:Z

    .line 1027
    return-object p0
.end method

.method public setCancelIcon(Ljava/lang/Boolean;Landroid/graphics/drawable/Drawable;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "hasCancelIcon"    # Ljava/lang/Boolean;
    .param p2, "cancelIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1031
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mHasCancelIcon:Z

    .line 1032
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelIcon:Landroid/graphics/drawable/Drawable;

    .line 1033
    return-object p0
.end method

.method public setCancelable(Z)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 665
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCancelable:Z

    .line 666
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 761
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 762
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 764
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 525
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 526
    return-object p0
.end method

.method public setIcon(I)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 555
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconId:I

    .line 556
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 565
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 566
    return-object p0
.end method

.method public setIconAttribute(I)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 575
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 576
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 577
    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIconId:I

    .line 578
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 1012
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mForceInverseBackground:Z

    .line 1013
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 714
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 715
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 716
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 726
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 727
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 728
    return-object p0
.end method

.method public setMessage(I)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 536
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 545
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 546
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 787
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 788
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 789
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItems:[Z

    .line 790
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsMultiChoice:Z

    .line 791
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 841
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 842
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p4, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 843
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 844
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsMultiChoice:Z

    .line 846
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 813
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 814
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 815
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItems:[Z

    .line 816
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsMultiChoice:Z

    .line 817
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 615
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 616
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 617
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 628
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 629
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 630
    return-object p0
.end method

.method public setNeutralButton(IILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "buttonStyle"    # I
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1082
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonStyle:I

    .line 1083
    invoke-virtual {p0, p2, p3}, Lamigo/app/AmigoAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 641
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 642
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 643
    return-object p0
.end method

.method public setNeutralButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "buttonStyle"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1087
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonStyle:I

    .line 1088
    invoke-virtual {p0, p2, p3}, Lamigo/app/AmigoAlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 654
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 655
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 656
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 683
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 684
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 693
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 694
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 952
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 953
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 703
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 704
    return-object p0
.end method

.method public setPositiveButton(IILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "buttonStyle"    # I
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1072
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonStyle:I

    .line 1073
    invoke-virtual {p0, p2, p3}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 589
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 590
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 591
    return-object p0
.end method

.method public setPositiveButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "buttonStyle"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1077
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonStyle:I

    .line 1078
    invoke-virtual {p0, p2, p3}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 602
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 603
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 604
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1020
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1021
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 866
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 867
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 868
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItem:I

    .line 869
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsSingleChoice:Z

    .line 870
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 891
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 892
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p4, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 893
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItem:I

    .line 894
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 895
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsSingleChoice:Z

    .line 896
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 936
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 937
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 938
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItem:I

    .line 939
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsSingleChoice:Z

    .line 940
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 914
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 915
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 916
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mCheckedItem:I

    .line 917
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mIsSingleChoice:Z

    .line 918
    return-object p0
.end method

.method public setTitle(I)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iget-object v1, v1, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 500
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 509
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 510
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 965
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mView:Landroid/view/View;

    .line 966
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 967
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lamigo/app/AmigoAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 994
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput-object p1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mView:Landroid/view/View;

    .line 995
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 996
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p2, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingLeft:I

    .line 997
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p3, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingTop:I

    .line 998
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p4, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingRight:I

    .line 999
    iget-object v0, p0, Lamigo/app/AmigoAlertDialog$Builder;->P:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    iput p5, v0, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mViewSpacingBottom:I

    .line 1000
    return-object p0
.end method

.method public show()Lamigo/app/AmigoAlertDialog;
    .locals 1

    .prologue
    .line 1065
    invoke-virtual {p0}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v0

    .line 1066
    .local v0, "dialog":Lamigo/app/AmigoAlertDialog;
    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->show()V

    .line 1067
    return-object v0
.end method
