.class public Lamigo/widget/AmigoCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "AmigoCheckedTextView.java"


# static fields
.field private static final STATE_CHECKED:I = 0x1

.field private static final STATE_DEFAULT:I


# instance fields
.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    const/4 v2, -0x1

    iput v2, p0, Lamigo/widget/AmigoCheckedTextView;->mState:I

    .line 41
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    sget-object v2, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    iget-object v2, p0, Lamigo/widget/AmigoCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lamigo/widget/AmigoCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoCheckedTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 51
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 52
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 54
    :cond_1
    invoke-static {p0}, Lamigo/changecolors/ChangeColorUtil;->changeTextViewTextColor(Landroid/widget/TextView;)V

    .line 58
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void
.end method

.method private changeMarkDrawable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-virtual {p0}, Lamigo/widget/AmigoCheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoCheckedTextView;->stateIsChecked([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget v0, p0, Lamigo/widget/AmigoCheckedTextView;->mState:I

    if-eq v0, v3, :cond_0

    .line 84
    iget-object v0, p0, Lamigo/widget/AmigoCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 87
    iput v3, p0, Lamigo/widget/AmigoCheckedTextView;->mState:I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoCheckedTextView;->mState:I

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lamigo/widget/AmigoCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoCheckedTextView;->mState:I

    goto :goto_0
.end method

.method private stateIsChecked([I)Z
    .locals 3
    .param p1, "myDrawableState"    # [I

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 63
    aget v1, p1, v0

    const v2, 0x10100a0

    if-ne v1, v2, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 67
    :goto_1
    return v1

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoCheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lamigo/widget/AmigoCheckedTextView;->changeMarkDrawable()V

    .line 77
    :cond_0
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 78
    return-void
.end method
