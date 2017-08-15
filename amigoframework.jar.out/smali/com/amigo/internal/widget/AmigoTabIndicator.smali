.class public Lcom/amigo/internal/widget/AmigoTabIndicator;
.super Landroid/widget/LinearLayout;
.source "AmigoTabIndicator.java"


# static fields
.field private static final ACTIONBAR_TAB_INDICATOR_BOTTOM_PADDING:I = 0x1

.field private static final ACTIONBAR_TAB_INDICATOR_HEIGHT:I = 0x2


# instance fields
.field private mIndexForSelection:I

.field private mSelectedUnderlineBottomPadding:I

.field private final mSelectedUnderlinePaint:Landroid/graphics/Paint;

.field private mSelectedUnderlineThickness:I

.field private mSelectionOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amigo/internal/widget/AmigoTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const v0, 0x10102f4

    invoke-direct {p0, p1, p2, v0}, Lcom/amigo/internal/widget/AmigoTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defaultStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, "res":Landroid/content/res/Resources;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlineThickness:I

    .line 53
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlineBottomPadding:I

    .line 55
    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 56
    .local v2, "underlineColor":I
    const v3, 0x106000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 57
    .local v0, "backgroundColor":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    .line 58
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->setBackgroundColor(I)V

    .line 61
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/AmigoTabIndicator;->setWillNotDraw(Z)V

    .line 62
    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildCount()I

    move-result v7

    .line 81
    .local v7, "childCount":I
    if-lez v7, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mIndexForSelection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 83
    .local v16, "selectedTitle":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 84
    .local v14, "selectedLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v15

    .line 85
    .local v15, "selectedRight":I
    invoke-direct/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->isRtl()Z

    move-result v10

    .line 86
    .local v10, "isRtl":Z
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mIndexForSelection:I

    if-lez v1, :cond_2

    const/4 v8, 0x1

    .line 88
    .local v8, "hasNextTab":Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-eqz v8, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget v2, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mIndexForSelection:I

    if-eqz v10, :cond_5

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 92
    .local v13, "nextTitle":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 93
    .local v11, "nextLeft":I
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v12

    .line 95
    .local v12, "nextRight":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectionOffset:F

    int-to-float v2, v11

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectionOffset:F

    sub-float/2addr v2, v3

    int-to-float v3, v14

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v14, v1

    .line 97
    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectionOffset:F

    int-to-float v2, v12

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectionOffset:F

    sub-float/2addr v2, v3

    int-to-float v3, v15

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v15, v1

    .line 101
    .end local v11    # "nextLeft":I
    .end local v12    # "nextRight":I
    .end local v13    # "nextTitle":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getHeight()I

    move-result v9

    .line 102
    .local v9, "height":I
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlineThickness:I

    sub-int v1, v9, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlineBottomPadding:I

    sub-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v4, v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlineBottomPadding:I

    sub-int v1, v9, v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    .end local v8    # "hasNextTab":Z
    .end local v9    # "height":I
    .end local v10    # "isRtl":Z
    .end local v14    # "selectedLeft":I
    .end local v15    # "selectedRight":I
    .end local v16    # "selectedTitle":Landroid/view/View;
    :cond_1
    return-void

    .line 86
    .restart local v10    # "isRtl":Z
    .restart local v14    # "selectedLeft":I
    .restart local v15    # "selectedRight":I
    .restart local v16    # "selectedTitle":Landroid/view/View;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mIndexForSelection:I

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 90
    .restart local v8    # "hasNextTab":Z
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mIndexForSelection:I

    .line 72
    iput p2, p0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectionOffset:F

    .line 73
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoTabIndicator;->invalidate()V

    .line 74
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoTabIndicator;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    return-void
.end method
