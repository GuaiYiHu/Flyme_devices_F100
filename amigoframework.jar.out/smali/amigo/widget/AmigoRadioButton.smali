.class public Lamigo/widget/AmigoRadioButton;
.super Landroid/widget/RadioButton;
.source "AmigoRadioButton.java"


# static fields
.field private static final STATE_CHECKED:I = 0x1

.field private static final STATE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AmigoRadioButton"


# instance fields
.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const/4 v2, -0x1

    iput v2, p0, Lamigo/widget/AmigoRadioButton;->mState:I

    .line 44
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    sget-object v2, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoRadioButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    iget-object v2, p0, Lamigo/widget/AmigoRadioButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Lamigo/widget/AmigoRadioButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 52
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 53
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 56
    :cond_0
    invoke-static {p0}, Lamigo/changecolors/ChangeColorUtil;->changeTextViewTextColor(Landroid/widget/TextView;)V

    .line 60
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

.method private changeButtonDrawable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-virtual {p0}, Lamigo/widget/AmigoRadioButton;->getDrawableState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoRadioButton;->stateIsChecked([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget v0, p0, Lamigo/widget/AmigoRadioButton;->mState:I

    if-eq v0, v3, :cond_0

    .line 76
    iget-object v0, p0, Lamigo/widget/AmigoRadioButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 77
    iput v3, p0, Lamigo/widget/AmigoRadioButton;->mState:I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoRadioButton;->mState:I

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lamigo/widget/AmigoRadioButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoRadioButton;->mState:I

    goto :goto_0
.end method

.method private stateIsChecked([I)Z
    .locals 3
    .param p1, "myDrawableState"    # [I

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 90
    aget v1, p1, v0

    const v2, 0x10100a0

    if-ne v1, v2, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 94
    :goto_1
    return v1

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoRadioButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lamigo/widget/AmigoRadioButton;->changeButtonDrawable()V

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    .line 70
    return-void
.end method
