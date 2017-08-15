.class abstract Lamigo/widget/AmigoTextViewToolbar;
.super Lamigo/widget/AmigoViewToolbar;
.source "AmigoTextViewToolbar.java"


# static fields
.field protected static final ID_PASTE:I = 0x1020022


# instance fields
.field protected final ID_PASTE_STR:I

.field protected mEditText:Lamigo/widget/AmigoEditText;

.field protected mItemPaste:Landroid/widget/TextView;

.field private mLineHeight:I

.field private mScreenX:I

.field private mScreenY:I


# direct methods
.method constructor <init>(Lamigo/widget/AmigoEditText;)V
    .locals 1
    .param p1, "hostView"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lamigo/widget/AmigoViewToolbar;-><init>(Landroid/view/View;)V

    .line 14
    const v0, 0x9090004

    iput v0, p0, Lamigo/widget/AmigoTextViewToolbar;->ID_PASTE_STR:I

    .line 26
    iput-object p1, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    .line 27
    return-void
.end method

.method private calculateScreenPosition()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 53
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 54
    .local v6, "location":[I
    iget-object v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v10, v6}, Lamigo/widget/AmigoEditText;->getLocationOnScreen([I)V

    .line 55
    iget-object v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v10}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v8

    .line 56
    .local v8, "start":I
    iget-object v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v10}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v1

    .line 57
    .local v1, "end":I
    iget-object v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v10}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 58
    .local v2, "layout":Landroid/text/Layout;
    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 64
    .local v4, "line":I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 65
    .local v9, "top":I
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 66
    .local v0, "bottom":I
    sub-int v10, v0, v9

    iput v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mLineHeight:I

    .line 67
    iget v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mLineHeight:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v9

    aget v11, v6, v13

    add-int/2addr v10, v11

    iget-object v11, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getTotalPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getScrollY()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenY:I

    .line 68
    if-ne v8, v1, :cond_1

    .line 69
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    aget v11, v6, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getTotalPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenX:I

    .line 81
    :goto_1
    aget v10, v6, v13

    iget v11, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenY:I

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 73
    .local v3, "left":I
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 74
    .local v5, "lineEnd":I
    if-ne v4, v5, :cond_2

    .line 75
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 79
    .local v7, "right":I
    :goto_2
    add-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    aget v11, v6, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getTotalPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v11}, Lamigo/widget/AmigoEditText;->getScrollX()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenX:I

    goto :goto_1

    .line 77
    .end local v7    # "right":I
    :cond_2
    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .restart local v7    # "right":I
    goto :goto_2
.end method


# virtual methods
.method protected abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected initToolbarItem(II)Landroid/widget/TextView;
    .locals 4
    .param p1, "id"    # I
    .param p2, "textResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lamigo/widget/AmigoTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "textView":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 90
    iget-object v1, p0, Lamigo/widget/AmigoTextViewToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x9040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 93
    iget v1, p0, Lamigo/widget/AmigoTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    iget v2, p0, Lamigo/widget/AmigoTextViewToolbar;->mToolbarItemPaddingLeftAndRight:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    invoke-virtual {p0}, Lamigo/widget/AmigoTextViewToolbar;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v0
.end method

.method protected initToolbarItem()V
    .locals 2

    .prologue
    .line 31
    const v0, 0x1020022

    const v1, 0x9090004

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoTextViewToolbar;->initToolbarItem(II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoTextViewToolbar;->mItemPaste:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method move()V
    .locals 6

    .prologue
    .line 44
    iget-boolean v2, p0, Lamigo/widget/AmigoTextViewToolbar;->mShowing:Z

    if-eqz v2, :cond_0

    .line 45
    invoke-direct {p0}, Lamigo/widget/AmigoTextViewToolbar;->calculateScreenPosition()V

    .line 46
    iget-object v2, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v1

    .line 47
    .local v1, "start":I
    iget-object v2, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v0

    .line 48
    .local v0, "end":I
    iget v3, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenX:I

    iget v4, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenY:I

    iget v5, p0, Lamigo/widget/AmigoTextViewToolbar;->mLineHeight:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v5, v2}, Lamigo/widget/AmigoTextViewToolbar;->moveInternal(IIIZ)V

    .line 50
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    return-void

    .line 48
    .restart local v0    # "end":I
    .restart local v1    # "start":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method show()V
    .locals 6

    .prologue
    .line 35
    iget-boolean v2, p0, Lamigo/widget/AmigoTextViewToolbar;->mShowing:Z

    if-nez v2, :cond_0

    .line 36
    invoke-direct {p0}, Lamigo/widget/AmigoTextViewToolbar;->calculateScreenPosition()V

    .line 37
    iget-object v2, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v1

    .line 38
    .local v1, "start":I
    iget-object v2, p0, Lamigo/widget/AmigoTextViewToolbar;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v0

    .line 39
    .local v0, "end":I
    iget v3, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenX:I

    iget v4, p0, Lamigo/widget/AmigoTextViewToolbar;->mScreenY:I

    iget v5, p0, Lamigo/widget/AmigoTextViewToolbar;->mLineHeight:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v5, v2}, Lamigo/widget/AmigoTextViewToolbar;->showInternal(IIIZ)V

    .line 41
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    return-void

    .line 39
    .restart local v0    # "end":I
    .restart local v1    # "start":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
