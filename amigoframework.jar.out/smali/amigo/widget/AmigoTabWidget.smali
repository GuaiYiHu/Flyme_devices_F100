.class public Lamigo/widget/AmigoTabWidget;
.super Landroid/widget/TabWidget;
.source "AmigoTabWidget.java"

# interfaces
.implements Lamigo/changecolors/IChangeColors;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoTabWidget$1;,
        Lamigo/widget/AmigoTabWidget$TabClickListener;,
        Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_TAB_INDICATOR_BOTTOM_PADDING:I = 0x1

.field private static final ACTIONBAR_TAB_INDICATOR_HEIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AmigoTabWidget"


# instance fields
.field private mIndexForSelection:I

.field private mSelectedUnderlineBottomPadding:I

.field private final mSelectedUnderlinePaint:Landroid/graphics/Paint;

.field private mSelectedUnderlineThickness:I

.field private mSelectionChangedListener:Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;

.field private mSelectionOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const v0, 0x10102f4

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v7, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    invoke-virtual {p0, v7}, Lamigo/widget/AmigoTabWidget;->setStripEnabled(Z)V

    .line 80
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lamigo/widget/AmigoTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    .local v3, "res":Landroid/content/res/Resources;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlineThickness:I

    .line 85
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlineBottomPadding:I

    .line 87
    const v5, 0x106000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 88
    .local v4, "underlineColor":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    .line 89
    iget-object v5, p0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    if-eqz p2, :cond_0

    .line 91
    sget-object v5, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 94
    .local v2, "mBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lamigo/widget/AmigoTabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "mBackground":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAppbarColor_A1()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 100
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lamigo/widget/AmigoTabWidget;->setGravity(I)V

    .line 103
    invoke-virtual {p0, v7}, Lamigo/widget/AmigoTabWidget;->setWillNotDraw(Z)V

    .line 104
    return-void
.end method

.method static synthetic access$100(Lamigo/widget/AmigoTabWidget;)Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoTabWidget;

    .prologue
    .line 44
    iget-object v0, p0, Lamigo/widget/AmigoTabWidget;->mSelectionChangedListener:Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_0

    .line 179
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 181
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 188
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 189
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 190
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 191
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 192
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 193
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x905001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnAppbar_T3()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    :goto_0
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 207
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 208
    const-string v3, "mSelectedTab"

    invoke-static {p0, v3}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 209
    .local v1, "mSelectedTab":I
    if-ne v1, v6, :cond_2

    .line 210
    invoke-virtual {p0, v5}, Lamigo/widget/AmigoTabWidget;->setCurrentTab(I)V

    .line 211
    const-string v3, "mSelectedTab"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/amigo/internal/util/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    :cond_2
    new-instance v3, Lamigo/widget/AmigoTabWidget$TabClickListener;

    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getTabCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lamigo/widget/AmigoTabWidget$TabClickListener;-><init>(Lamigo/widget/AmigoTabWidget;ILamigo/widget/AmigoTabWidget$1;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 220
    return-void

    .line 201
    .end local v1    # "mSelectedTab":I
    :cond_3
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x9040012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public changeColors()V
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 289
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoTabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoTabWidget;->getChildCount()I

    move-result v7

    .line 239
    .local v7, "childCount":I
    if-lez v7, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mIndexForSelection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 241
    .local v16, "selectedTitle":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 242
    .local v14, "selectedLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v15

    .line 243
    .local v15, "selectedRight":I
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoTabWidget;->isRtl()Z

    move-result v10

    .line 244
    .local v10, "isRtl":Z
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mIndexForSelection:I

    if-lez v1, :cond_2

    const/4 v8, 0x1

    .line 246
    .local v8, "hasNextTab":Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-eqz v8, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget v2, v0, Lamigo/widget/AmigoTabWidget;->mIndexForSelection:I

    if-eqz v10, :cond_5

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 250
    .local v13, "nextTitle":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 251
    .local v11, "nextLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v12

    .line 253
    .local v12, "nextRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mSelectionOffset:F

    int-to-float v2, v11

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lamigo/widget/AmigoTabWidget;->mSelectionOffset:F

    sub-float/2addr v2, v3

    int-to-float v3, v14

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 255
    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mSelectionOffset:F

    int-to-float v2, v12

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lamigo/widget/AmigoTabWidget;->mSelectionOffset:F

    sub-float/2addr v2, v3

    int-to-float v3, v15

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v15, v1

    .line 259
    .end local v11    # "nextLeft":I
    .end local v12    # "nextRight":I
    .end local v13    # "nextTitle":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoTabWidget;->getHeight()I

    move-result v9

    .line 260
    .local v9, "height":I
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlineThickness:I

    sub-int v1, v9, v1

    move-object/from16 v0, p0

    iget v3, v0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlineBottomPadding:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlineBottomPadding:I

    sub-int v1, v9, v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    .end local v8    # "hasNextTab":Z
    .end local v9    # "height":I
    .end local v10    # "isRtl":Z
    .end local v14    # "selectedLeft":I
    .end local v15    # "selectedRight":I
    .end local v16    # "selectedTitle":Landroid/view/View;
    :cond_1
    return-void

    .line 244
    .restart local v10    # "isRtl":Z
    .restart local v14    # "selectedLeft":I
    .restart local v15    # "selectedRight":I
    .restart local v16    # "selectedTitle":Landroid/view/View;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lamigo/widget/AmigoTabWidget;->mIndexForSelection:I

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoTabWidget;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 248
    .restart local v8    # "hasNextTab":Z
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 111
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 112
    const-string v2, "mSelectedTab"

    invoke-static {p0, v2}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p2, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "i":I
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getTabCount()I

    move-result v1

    .line 121
    .local v1, "numTabs":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 123
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoTabWidget;->setCurrentTab(I)V

    .line 124
    iget-object v2, p0, Lamigo/widget/AmigoTabWidget;->mSelectionChangedListener:Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 125
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoTabWidget;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 131
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 230
    iput p1, p0, Lamigo/widget/AmigoTabWidget;->mIndexForSelection:I

    .line 231
    iput p2, p0, Lamigo/widget/AmigoTabWidget;->mSelectionOffset:F

    .line 232
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->invalidate()V

    .line 233
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v7, -0x1

    const v6, 0x1020016

    .line 140
    const-string v3, "mSelectedTab"

    invoke-static {p0, v3}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 141
    .local v1, "mSelectedTab":I
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getTabCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    if-ne p1, v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v3, "AmigoTabWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentTab: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " preTab: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    if-eq v1, v7, :cond_2

    .line 148
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 149
    .local v2, "pretv":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 150
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnAppbar_T3()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .end local v2    # "pretv":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    .local v0, "curtv":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 155
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    goto :goto_0

    .line 159
    .end local v0    # "curtv":Landroid/widget/TextView;
    :cond_4
    if-eq v1, v7, :cond_5

    .line 160
    invoke-virtual {p0, v1}, Lamigo/widget/AmigoTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 161
    .restart local v2    # "pretv":Landroid/widget/TextView;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 162
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x9040012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .end local v2    # "pretv":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .restart local v0    # "curtv":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 169
    invoke-virtual {p0}, Lamigo/widget/AmigoTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x9040011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lamigo/widget/AmigoTabWidget;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    return-void
.end method

.method setTabSelectionListener(Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;

    .prologue
    .line 278
    iput-object p1, p0, Lamigo/widget/AmigoTabWidget;->mSelectionChangedListener:Lamigo/widget/AmigoTabWidget$OnTabSelectionChanged;

    .line 279
    return-void
.end method
