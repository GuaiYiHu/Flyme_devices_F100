.class public Lamigo/widget/AmigoSwitch;
.super Landroid/widget/Switch;
.source "AmigoSwitch.java"


# instance fields
.field mThumbColors:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-direct {p0}, Lamigo/widget/AmigoSwitch;->changeColor()V

    .line 33
    return-void
.end method

.method private changeColor()V
    .locals 6

    .prologue
    .line 36
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    const v0, 0x904000f

    .line 38
    .local v0, "colorId":I
    invoke-virtual {p0}, Lamigo/widget/AmigoSwitch;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lamigo/widget/AmigoSwitch;->mThumbColors:Landroid/content/res/ColorStateList;

    .line 40
    invoke-virtual {p0}, Lamigo/widget/AmigoSwitch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 42
    .local v4, "trackDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 43
    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 44
    .local v3, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 45
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v5

    invoke-direct {p0, v5}, Lamigo/widget/AmigoSwitch;->stateIsChecked([I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 47
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 54
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "index":I
    .end local v3    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoSwitch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 55
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_2

    .line 56
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 59
    .end local v0    # "colorId":I
    .end local v4    # "trackDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method private changeThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, -0x1

    .line 74
    invoke-virtual {p0}, Lamigo/widget/AmigoSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lamigo/widget/AmigoSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoSwitch;->mThumbColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lamigo/widget/AmigoSwitch;->mThumbColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lamigo/widget/AmigoSwitch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private stateIsChecked([I)Z
    .locals 3
    .param p1, "myDrawableState"    # [I

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 93
    aget v1, p1, v0

    const v2, 0x10100a0

    if-ne v1, v2, :cond_0

    .line 94
    const/4 v1, 0x1

    .line 97
    :goto_1
    return v1

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lamigo/widget/AmigoSwitch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, v0}, Lamigo/widget/AmigoSwitch;->changeThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0}, Landroid/widget/Switch;->drawableStateChanged()V

    .line 71
    return-void
.end method
