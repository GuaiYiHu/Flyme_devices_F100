.class public Lamigo/widget/AmigoSeekBar;
.super Landroid/widget/SeekBar;
.source "AmigoSeekBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 37
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 38
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 40
    :cond_0
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-direct {p0}, Lamigo/widget/AmigoSeekBar;->changeColers()V

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private changeColers()V
    .locals 8

    .prologue
    .line 47
    invoke-virtual {p0}, Lamigo/widget/AmigoSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 48
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 49
    instance-of v7, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    move-object v6, v3

    .line 50
    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    .line 51
    .local v6, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 52
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v4

    .line 53
    .local v4, "state":[I
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 54
    .local v5, "stateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v4}, Lamigo/widget/AmigoSeekBar;->stateIsDisable([I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 51
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    if-eqz v5, :cond_0

    instance-of v7, v5, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_0

    move-object v2, v5

    .line 59
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 60
    .local v2, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v2}, Lamigo/widget/AmigoSeekBar;->changeLayerDrawable(Landroid/graphics/drawable/LayerDrawable;)V

    goto :goto_1

    .line 64
    .end local v1    # "index":I
    .end local v2    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "state":[I
    .end local v5    # "stateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    instance-of v7, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_3

    move-object v2, v3

    .line 65
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 66
    .restart local v2    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {p0, v2}, Lamigo/widget/AmigoSeekBar;->changeLayerDrawable(Landroid/graphics/drawable/LayerDrawable;)V

    .line 71
    .end local v2    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    invoke-virtual {p0}, Lamigo/widget/AmigoSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 73
    instance-of v7, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v7, :cond_4

    .line 74
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 77
    :cond_4
    return-void
.end method

.method private changeLayerDrawable(Landroid/graphics/drawable/LayerDrawable;)V
    .locals 3
    .param p1, "layerDrawable"    # Landroid/graphics/drawable/LayerDrawable;

    .prologue
    .line 81
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 82
    .local v1, "progress":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 85
    :cond_0
    const/high16 v2, 0x1020000

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    :cond_1
    return-void
.end method

.method private stateIsDisable([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 94
    aget v1, p1, v0

    const v2, -0x101009e

    if-ne v1, v2, :cond_0

    .line 95
    const/4 v1, 0x1

    .line 98
    :goto_1
    return v1

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
