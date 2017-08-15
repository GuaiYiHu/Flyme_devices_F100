.class public Lamigo/changecolors/ChangeColorUtil;
.super Ljava/lang/Object;
.source "ChangeColorUtil.java"


# static fields
.field private static final ACCENT_COLOR:I = -0x7000

.field private static final COLOR_FORTHLY_ON_APPBAR:I = 0x10ffffff

.field private static final COLOR_PRIMARY_ON_APPBAR:I = -0x1

.field private static final COLOR_PRIMARY_ON_BACKGROUD:I = -0x34000000

.field private static final COLOR_SECONDARY_ON_APPBAR:I = -0x33000001

.field private static final COLOR_SECONDARY_ON_BACKGROUD:I = 0x66000000

.field private static final COLOR_THIRDLY_ON_APPBAR:I = 0x50ffffff

.field private static final COLOR_THIRDLY_ON_BACKGROUD:I = 0x33000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeTextColor(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 31
    const/high16 v0, -0x34000000    # -3.3554432E7f

    if-ne p0, v0, :cond_1

    .line 32
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result p0

    .line 62
    .end local p0    # "color":I
    :cond_0
    :goto_0
    return p0

    .line 35
    .restart local p0    # "color":I
    :cond_1
    const/high16 v0, 0x66000000

    if-ne p0, v0, :cond_2

    .line 36
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result p0

    goto :goto_0

    .line 39
    :cond_2
    const/high16 v0, 0x33000000

    if-ne p0, v0, :cond_3

    .line 40
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result p0

    goto :goto_0

    .line 43
    :cond_3
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 44
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result p0

    goto :goto_0

    .line 47
    :cond_4
    const v0, -0x33000001    # -1.3421772E8f

    if-ne p0, v0, :cond_5

    .line 48
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnAppbar_T2()I

    move-result p0

    goto :goto_0

    .line 51
    :cond_5
    const v0, 0x50ffffff

    if-ne p0, v0, :cond_6

    .line 52
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnAppbar_T3()I

    move-result p0

    goto :goto_0

    .line 55
    :cond_6
    const v0, 0x10ffffff

    if-ne p0, v0, :cond_7

    .line 56
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorForthlyOnAppbar_T4()I

    move-result p0

    goto :goto_0

    .line 59
    :cond_7
    const/16 v0, -0x7000

    if-ne p0, v0, :cond_0

    .line 60
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result p0

    goto :goto_0
.end method

.method public static changeTextViewTextColor(Landroid/widget/TextView;)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 18
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 20
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v1

    .line 21
    .local v1, "colors":[I
    array-length v4, v1

    new-array v3, v4, [I

    .line 22
    .local v3, "textColors":[I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 23
    aget v4, v1, v2

    invoke-static {v4}, Lamigo/changecolors/ChangeColorUtil;->changeTextColor(I)I

    move-result v4

    aput v4, v3, v2

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 28
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "colors":[I
    .end local v2    # "index":I
    .end local v3    # "textColors":[I
    :cond_1
    return-void
.end method
