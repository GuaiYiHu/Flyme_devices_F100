.class public Lamigo/widget/AmigoProgressBar;
.super Landroid/widget/ProgressBar;
.source "AmigoProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-direct {p0}, Lamigo/widget/AmigoProgressBar;->changeColers()V

    .line 29
    return-void
.end method

.method private changeColers()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 35
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 36
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 39
    :cond_0
    return-void
.end method
