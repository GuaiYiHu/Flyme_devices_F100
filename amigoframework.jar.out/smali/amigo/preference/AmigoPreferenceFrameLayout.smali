.class public Lamigo/preference/AmigoPreferenceFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AmigoPreferenceFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_BOTTOM:I

.field private static final DEFAULT_BORDER_LEFT:I

.field private static final DEFAULT_BORDER_RIGHT:I

.field private static final DEFAULT_BORDER_TOP:I


# instance fields
.field private final mBorderBottom:I

.field private final mBorderLeft:I

.field private final mBorderRight:I

.field private final mBorderTop:I

.field private mPaddingApplied:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoPreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoPreferenceFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .local v4, "density":F
    mul-float v5, v4, v6

    add-float/2addr v5, v7

    float-to-int v0, v5

    .line 39
    .local v0, "defaultBorderTop":I
    mul-float v5, v4, v6

    add-float/2addr v5, v7

    float-to-int v1, v5

    .line 40
    .local v1, "defaultBottomPadding":I
    mul-float v5, v4, v6

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 41
    .local v2, "defaultLeftPadding":I
    mul-float v5, v4, v6

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 43
    .local v3, "defaultRightPadding":I
    iput v8, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderTop:I

    .line 46
    iput v8, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderBottom:I

    .line 49
    iput v8, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderLeft:I

    .line 52
    iput v8, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderRight:I

    .line 57
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingTop()I

    move-result v3

    .line 70
    .local v3, "borderTop":I
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingBottom()I

    move-result v0

    .line 71
    .local v0, "borderBottom":I
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingLeft()I

    move-result v1

    .line 72
    .local v1, "borderLeft":I
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingRight()I

    move-result v2

    .line 74
    .local v2, "borderRight":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 75
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v10, v5, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;

    move-object v4, v10

    .line 78
    .local v4, "layoutParams":Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;
    :goto_0
    if-eqz v4, :cond_4

    iget-boolean v10, v4, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    if-eqz v10, :cond_4

    .line 79
    iget-boolean v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mPaddingApplied:Z

    if-eqz v10, :cond_0

    .line 80
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderTop:I

    sub-int/2addr v3, v10

    .line 81
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderBottom:I

    sub-int/2addr v0, v10

    .line 82
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderLeft:I

    sub-int/2addr v1, v10

    .line 83
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderRight:I

    sub-int/2addr v2, v10

    .line 84
    const/4 v10, 0x0

    iput-boolean v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mPaddingApplied:Z

    .line 98
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingTop()I

    move-result v9

    .line 99
    .local v9, "previousTop":I
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingBottom()I

    move-result v6

    .line 100
    .local v6, "previousBottom":I
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingLeft()I

    move-result v7

    .line 101
    .local v7, "previousLeft":I
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getPaddingRight()I

    move-result v8

    .line 102
    .local v8, "previousRight":I
    if-ne v9, v3, :cond_1

    if-ne v6, v0, :cond_1

    if-ne v7, v1, :cond_1

    if-eq v8, v2, :cond_2

    .line 104
    :cond_1
    invoke-virtual {p0, v1, v3, v2, v0}, Lamigo/preference/AmigoPreferenceFrameLayout;->setPadding(IIII)V

    .line 107
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    return-void

    .line 75
    .end local v4    # "layoutParams":Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;
    .end local v6    # "previousBottom":I
    .end local v7    # "previousLeft":I
    .end local v8    # "previousRight":I
    .end local v9    # "previousTop":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 89
    .restart local v4    # "layoutParams":Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;
    :cond_4
    iget-boolean v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mPaddingApplied:Z

    if-nez v10, :cond_0

    .line 90
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderTop:I

    add-int/2addr v3, v10

    .line 91
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderBottom:I

    add-int/2addr v0, v10

    .line 92
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderLeft:I

    add-int/2addr v1, v10

    .line 93
    iget v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mBorderRight:I

    add-int/2addr v2, v10

    .line 94
    const/4 v10, 0x1

    iput-boolean v10, p0, Lamigo/preference/AmigoPreferenceFrameLayout;->mPaddingApplied:Z

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    new-instance v0, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lamigo/preference/AmigoPreferenceFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method
