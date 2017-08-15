.class public Lamigo/widget/AmigoSpinner;
.super Landroid/widget/Spinner;
.source "AmigoSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoSpinner$DropdownPopup;,
        Lamigo/widget/AmigoSpinner$DropDownAdapter;
    }
.end annotation


# static fields
.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1


# instance fields
.field private mDropDownWidth:I

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mMode:I

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

.field private mPromptText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Lamigo/widget/AmigoSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 111
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lamigo/widget/AmigoSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 131
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lamigo/widget/AmigoSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "mode"    # I

    .prologue
    .line 156
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 158
    sget-object v2, Lcom/amigo/internal/R$styleable;->AmigoSpinner:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 160
    .local v7, "a":Landroid/content/res/TypedArray;
    move/from16 v0, p5

    iput v0, p0, Lamigo/widget/AmigoSpinner;->mMode:I

    .line 161
    iget v2, p0, Lamigo/widget/AmigoSpinner;->mMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 162
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoSpinner;->mMode:I

    .line 165
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    new-instance v1, Lamigo/widget/AmigoSpinner$DropdownPopup;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lamigo/widget/AmigoSpinner$DropdownPopup;-><init>(Lamigo/widget/AmigoSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 167
    .local v1, "popup":Lamigo/widget/AmigoSpinner$DropdownPopup;
    const/4 v2, 0x4

    const/4 v3, -0x2

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoSpinner;->mDropDownWidth:I

    .line 170
    iput-object v1, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    .line 171
    new-instance v2, Lamigo/widget/AmigoSpinner$1;

    invoke-direct {v2, p0, p0}, Lamigo/widget/AmigoSpinner$1;-><init>(Lamigo/widget/AmigoSpinner;Landroid/view/View;)V

    iput-object v2, p0, Lamigo/widget/AmigoSpinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    .line 187
    .end local v1    # "popup":Lamigo/widget/AmigoSpinner$DropdownPopup;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 188
    .local v9, "entries":[Ljava/lang/CharSequence;
    if-eqz v9, :cond_2

    .line 189
    const v11, 0x9030035

    .line 190
    .local v11, "layoutItem":I
    const v10, 0x9030036

    .line 191
    .local v10, "layoutDropdownItem":I
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p1, v11, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 193
    .local v8, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v8, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 194
    invoke-virtual {p0, v8}, Lamigo/widget/AmigoSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 197
    .end local v8    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v10    # "layoutDropdownItem":I
    .end local v11    # "layoutItem":I
    :cond_2
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->changeStateDrawable()V

    .line 199
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getBackgroudColor_B1()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoSpinner;)Lamigo/widget/AmigoSpinner$DropdownPopup;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSpinner;

    .prologue
    .line 30
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/widget/AmigoSpinner;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSpinner;

    .prologue
    .line 30
    iget v0, p0, Lamigo/widget/AmigoSpinner;->mDropDownWidth:I

    return v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoSpinner;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSpinner;

    .prologue
    .line 30
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lamigo/widget/AmigoSpinner;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSpinner;

    .prologue
    .line 30
    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method private changeStateDrawable()V
    .locals 6

    .prologue
    .line 214
    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 215
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    instance-of v5, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_2

    move-object v4, v0

    .line 216
    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 217
    .local v4, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 218
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v2

    .line 219
    .local v2, "state":[I
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 220
    .local v3, "stateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v2}, Lamigo/widget/AmigoSpinner;->stateIsSelected([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 217
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 227
    .end local v2    # "state":[I
    .end local v3    # "stateDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSpinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    .end local v1    # "index":I
    .end local v4    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    return-void
.end method

.method private isModeDropDown()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lamigo/widget/AmigoSpinner;->mMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stateIsSelected([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 259
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 260
    aget v1, p1, v0

    const v2, 0x10100a7

    if-ne v1, v2, :cond_0

    .line 261
    const/4 v1, 0x1

    .line 264
    :goto_1
    return v1

    .line 259
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPromptText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->dismiss()V

    .line 434
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 3

    .prologue
    .line 294
    iget v0, p0, Lamigo/widget/AmigoSpinner;->mMode:I

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lamigo/app/AmigoAlertDialog$Builder;

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoSpinner;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lamigo/app/AmigoAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog$Builder;->show()Lamigo/app/AmigoAlertDialog;

    .line 304
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner;->getTextAlignment()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoSpinner$DropdownPopup;->show(II)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 30
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    new-instance v0, Lamigo/widget/AmigoSpinner$DropDownAdapter;

    invoke-direct {v0, p1}, Lamigo/widget/AmigoSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Lamigo/widget/AmigoSpinner;->mListAdapter:Landroid/widget/ListAdapter;

    .line 275
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    iget-object v1, p0, Lamigo/widget/AmigoSpinner;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 408
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setVerticalOffset(I)V

    .line 420
    :cond_0
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 424
    iput p1, p0, Lamigo/widget/AmigoSpinner;->mDropDownWidth:I

    .line 425
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 253
    iput-object p1, p0, Lamigo/widget/AmigoSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 254
    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 235
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_0
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 286
    invoke-direct {p0}, Lamigo/widget/AmigoSpinner;->isModeDropDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_0
    iput-object p1, p0, Lamigo/widget/AmigoSpinner;->mPromptText:Ljava/lang/CharSequence;

    .line 290
    return-void
.end method
