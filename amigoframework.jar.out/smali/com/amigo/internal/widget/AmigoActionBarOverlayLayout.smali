.class public Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;
.super Landroid/widget/RelativeLayout;
.source "AmigoActionBarOverlayLayout.java"


# static fields
.field static final mActionBarSizeAttr:[I


# instance fields
.field private mActionBar:Lamigo/app/AmigoActionBarImpl;

.field private mActionBarBottom:Landroid/view/View;

.field private mActionBarHeight:I

.field private mActionBarTop:Landroid/view/View;

.field private mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

.field private mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

.field private mContent:Landroid/view/View;

.field private mLastSystemUiVisibility:I

.field private mWindowVisibility:I

.field private final mZeroRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    sput-object v0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarSizeAttr:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mWindowVisibility:I

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    .line 30
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mWindowVisibility:I

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    .line 35
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 113
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p3, :cond_2

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_2

    .line 115
    const/4 v0, 0x1

    .line 116
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 118
    :cond_2
    if-eqz p4, :cond_3

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_3

    .line 119
    const/4 v0, 0x1

    .line 120
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 122
    :cond_3
    if-eqz p6, :cond_4

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_4

    .line 123
    const/4 v0, 0x1

    .line 124
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 126
    :cond_4
    if-eqz p5, :cond_0

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 128
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarSizeAttr:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarHeight:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->pullChildren()V

    .line 137
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v10

    .line 138
    .local v10, "vis":I
    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_8

    const/4 v8, 0x1

    .line 141
    .local v8, "stable":Z
    :goto_0
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    .line 142
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 150
    :cond_0
    and-int/lit16 v0, v10, 0x600

    if-nez v0, :cond_9

    .line 151
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 153
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    :goto_1
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0}, Lamigo/app/AmigoActionBarImpl;->hasNonEmbeddedTabs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v9

    .line 166
    .local v9, "tabs":Landroid/view/View;
    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 168
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 172
    .end local v9    # "tabs":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 176
    :cond_5
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 180
    :cond_6
    if-eqz v7, :cond_7

    .line 181
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestLayout()V

    .line 184
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 138
    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 155
    .restart local v7    # "changed":Z
    .restart local v8    # "stable":Z
    :cond_9
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mZeroRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    goto :goto_1
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 5
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 81
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->pullChildren()V

    .line 82
    iget v4, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v4, p1

    .line 83
    .local v1, "diff":I
    iput p1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 84
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_2

    move v0, v3

    .line 85
    .local v0, "barVisible":Z
    :goto_0
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v3}, Lamigo/app/AmigoActionBarImpl;->isSystemShowing()Z

    move-result v2

    .line 86
    .local v2, "wasVisible":Z
    :goto_1
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v3, :cond_0

    .line 87
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v3}, Lamigo/app/AmigoActionBarImpl;->showForSystem()V

    .line 90
    :cond_0
    :goto_2
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 95
    :cond_1
    return-void

    .line 84
    .end local v0    # "barVisible":Z
    .end local v2    # "wasVisible":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "barVisible":Z
    :cond_3
    move v2, v3

    .line 85
    goto :goto_1

    .line 88
    .restart local v2    # "wasVisible":Z
    :cond_4
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v3}, Lamigo/app/AmigoActionBarImpl;->hideForSystem()V

    goto :goto_2
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 100
    iput p1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mWindowVisibility:I

    .line 101
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    invoke-virtual {v0, p1}, Lamigo/app/AmigoActionBarImpl;->setWindowVisibility(I)V

    .line 104
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 2

    .prologue
    const v1, 0x90b0047

    .line 188
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 189
    const v0, 0x90b004b

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 192
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;

    .line 193
    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/widget/AmigoActionBarContainer;

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mContainerView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    .line 195
    const v0, 0x90b0048

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/widget/AmigoActionBarView;

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionView:Lcom/amigo/internal/widget/AmigoActionBarView;

    .line 200
    :cond_0
    return-void
.end method

.method public setActionBar(Lamigo/app/AmigoActionBarImpl;)V
    .locals 3
    .param p1, "impl"    # Lamigo/app/AmigoActionBarImpl;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    .line 46
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mActionBar:Lamigo/app/AmigoActionBarImpl;

    iget v2, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mWindowVisibility:I

    invoke-virtual {v1, v2}, Lamigo/app/AmigoActionBarImpl;->setWindowVisibility(I)V

    .line 50
    iget v1, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 51
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 52
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 53
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 56
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 59
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_0
.end method
