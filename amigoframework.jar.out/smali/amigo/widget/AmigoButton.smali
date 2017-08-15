.class public Lamigo/widget/AmigoButton;
.super Landroid/widget/TextView;
.source "AmigoButton.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final BUTTON_CONTRA_STYLE:I = 0x2

.field public static final BUTTON_LOADING_INFINITY_STYLE:I = 0x4

.field public static final BUTTON_LOADING_STYLE:I = 0x5

.field public static final BUTTON_NORMAL_STYLE:I = 0x0

.field public static final BUTTON_RECOM_STYLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AmigoButton"


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mButtonStyle:I

.field private mOldBtnHeight:I

.field private mOldBtnWidth:I

.field private mOldText:Ljava/lang/CharSequence;

.field private mOldTextColorStateList:Landroid/content/res/ColorStateList;

.field private mSmallFontSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    invoke-virtual {p0}, Lamigo/widget/AmigoButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x905000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoButton;->mSmallFontSize:F

    .line 110
    invoke-direct {p0}, Lamigo/widget/AmigoButton;->changeColor()V

    .line 111
    return-void
.end method

.method private changeColor()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 114
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {p0}, Lamigo/widget/AmigoButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 120
    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 121
    .local v2, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 123
    invoke-virtual {v2}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v4

    if-lez v4, :cond_3

    .line 124
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    instance-of v4, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_2

    .line 126
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v1}, Lamigo/widget/AmigoButton;->changeStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V

    .line 136
    .end local v2    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    :goto_0
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, v9, [[I

    new-array v5, v8, [I

    const v6, -0x101009e

    aput v6, v5, v7

    aput-object v5, v4, v7

    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    aput-object v5, v4, v8

    new-array v5, v9, [I

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v6

    aput v6, v5, v7

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v6

    aput v6, v5, v8

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 144
    .local v3, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v3}, Lamigo/widget/AmigoButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 146
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "textColors":Landroid/content/res/ColorStateList;
    :cond_1
    return-void

    .line 128
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    :cond_2
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 131
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private changeStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V
    .locals 4
    .param p1, "stateListDrawble"    # Landroid/graphics/drawable/StateListDrawable;

    .prologue
    .line 149
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 150
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v2

    invoke-direct {p0, v2}, Lamigo/widget/AmigoButton;->stateIsDisable([I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private stateIsDisable([I)Z
    .locals 3
    .param p1, "myDrawableState"    # [I

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 159
    aget v1, p1, v0

    const v2, -0x101009e

    if-ne v1, v2, :cond_0

    .line 160
    const/4 v1, 0x1

    .line 163
    :goto_1
    return v1

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 169
    const-class v0, Lamigo/widget/AmigoButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 175
    const-class v0, Lamigo/widget/AmigoButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public setButtonStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 191
    iput p1, p0, Lamigo/widget/AmigoButton;->mButtonStyle:I

    .line 193
    packed-switch p1, :pswitch_data_0

    .line 211
    :pswitch_0
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setUpdate(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 256
    return-void
.end method
