.class Lamigo/widget/AmigoTextViewHelper;
.super Ljava/lang/Object;
.source "AmigoTextViewHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getHorizontal(Landroid/widget/TextView;F)F
    .locals 3
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "wx"    # F

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, p1, v1

    .line 62
    .local v0, "x":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 63
    const/4 v0, 0x0

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 69
    return v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public static getLineNumber(Landroid/widget/TextView;F)I
    .locals 2
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "wy"    # F

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 32
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p0, p1}, Lamigo/widget/AmigoTextViewHelper;->getVertical(Landroid/widget/TextView;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    return v1
.end method

.method public static getLineText(Landroid/widget/TextView;F)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "wy"    # F

    .prologue
    .line 49
    invoke-static {p0, p1}, Lamigo/widget/AmigoTextViewHelper;->getLineNumber(Landroid/widget/TextView;F)I

    move-result v2

    .line 50
    .local v2, "line":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 51
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 52
    .local v3, "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 53
    .local v0, "end":I
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public static getOffset(Landroid/widget/TextView;FF)I
    .locals 2
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "wx"    # F
    .param p2, "wy"    # F

    .prologue
    .line 43
    invoke-static {p0, p2}, Lamigo/widget/AmigoTextViewHelper;->getLineNumber(Landroid/widget/TextView;F)I

    move-result v0

    .line 44
    .local v0, "line":I
    invoke-static {p0, v0, p1}, Lamigo/widget/AmigoTextViewHelper;->getOffsetByLine(Landroid/widget/TextView;IF)I

    move-result v1

    return v1
.end method

.method public static getOffsetByLine(Landroid/widget/TextView;IF)I
    .locals 2
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "line"    # I
    .param p2, "wx"    # F

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 38
    .local v0, "layout":Landroid/text/Layout;
    invoke-static {p0, p2}, Lamigo/widget/AmigoTextViewHelper;->getHorizontal(Landroid/widget/TextView;F)F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    return v1
.end method

.method private static getVertical(Landroid/widget/TextView;F)F
    .locals 3
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "wy"    # F

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, p1, v1

    .line 78
    .local v0, "y":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 79
    const/4 v0, 0x0

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 85
    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public static selectParagraph(Landroid/widget/TextView;FF)V
    .locals 11
    .param p0, "widget"    # Landroid/widget/TextView;
    .param p1, "wx"    # F
    .param p2, "wy"    # F

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0xa

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13
    .local v7, "text":Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lamigo/widget/AmigoTextViewHelper;->getOffset(Landroid/widget/TextView;FF)I

    move-result v2

    .line 14
    .local v2, "offset":I
    move v3, v2

    .line 15
    .local v3, "offset1":I
    move v4, v2

    .line 16
    .local v4, "offset2":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 17
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 18
    .local v0, "c":C
    if-ne v0, v9, :cond_0

    .line 19
    add-int/lit8 v3, v3, -0x1

    .line 22
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 23
    .local v1, "index":I
    if-ne v1, v10, :cond_1

    const/4 v5, 0x0

    .line 24
    .local v5, "start":I
    :goto_0
    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 25
    if-ne v1, v10, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 26
    .local v6, "stop":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Landroid/text/Spannable;

    invoke-static {v8, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 27
    return-void

    .line 23
    .end local v5    # "start":I
    .end local v6    # "stop":I
    :cond_1
    add-int/lit8 v5, v1, 0x1

    goto :goto_0

    .restart local v5    # "start":I
    :cond_2
    move v6, v1

    .line 25
    goto :goto_1
.end method
