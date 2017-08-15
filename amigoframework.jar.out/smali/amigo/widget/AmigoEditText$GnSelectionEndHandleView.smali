.class Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;
.super Lamigo/widget/AmigoEditText$GnHandleView;
.source "AmigoEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnSelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoEditText;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 908
    iput-object p1, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    .line 909
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoEditText$GnHandleView;-><init>(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 910
    return-void
.end method

.method private checkY(IF)F
    .locals 7
    .param p1, "selectionStart"    # I
    .param p2, "y"    # F

    .prologue
    .line 983
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 984
    .local v3, "lineCount":I
    const/4 v4, 0x0

    .line 985
    .local v4, "selectionStartline":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 986
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 987
    .local v5, "start":I
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 988
    .local v0, "end":I
    if-lt p1, v5, :cond_1

    if-gt p1, v0, :cond_1

    .line 989
    move v4, v1

    .line 993
    .end local v0    # "end":I
    .end local v5    # "start":I
    :cond_0
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getLineAtCoordinate(F)I
    invoke-static {v6, p2}, Lamigo/widget/AmigoEditText;->access$200(Lamigo/widget/AmigoEditText;F)I

    move-result v2

    .line 994
    .local v2, "line":I
    :goto_1
    if-eq v2, v4, :cond_3

    .line 995
    if-le v2, v4, :cond_2

    .line 996
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLineHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 1000
    :goto_2
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getLineAtCoordinate(F)I
    invoke-static {v6, p2}, Lamigo/widget/AmigoEditText;->access$200(Lamigo/widget/AmigoEditText;F)I

    move-result v2

    goto :goto_1

    .line 985
    .end local v2    # "line":I
    .restart local v0    # "end":I
    .restart local v5    # "start":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v0    # "end":I
    .end local v5    # "start":I
    .restart local v2    # "line":I
    :cond_2
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLineHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr p2, v6

    goto :goto_2

    .line 1003
    :cond_3
    return p2
.end method

.method private getLetterWidth(I)I
    .locals 5
    .param p1, "line"    # I

    .prologue
    .line 973
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 974
    .local v0, "end":I
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 975
    .local v1, "lastLineEnd":I
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3}, Lamigo/widget/AmigoEditText;->getRight()I

    move-result v3

    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v4}, Lamigo/widget/AmigoEditText;->getLeft()I

    move-result v4

    sub-int v2, v3, v4

    .line 976
    .local v2, "width":I
    if-ne v0, v1, :cond_0

    .line 977
    const/4 v3, 0x0

    .line 979
    :goto_0
    return v3

    :cond_0
    sub-int v3, v0, v1

    div-int v3, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public computeHandlePositionY(I)F
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1009
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    int-to-float v0, v0

    return v0
.end method

.method public computePointPositionY(FFF)F
    .locals 1
    .param p1, "rawY"    # F
    .param p2, "touchToWindowOffsetY"    # F
    .param p3, "touchOffsetY"    # F

    .prologue
    .line 1014
    sub-float v0, p1, p2

    add-float/2addr v0, p3

    return v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 914
    if-eqz p2, :cond_0

    .line 915
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x13

    div-int/lit8 v0, v0, 0x1c

    .line 917
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x1c

    goto :goto_0
.end method

.method protected getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 924
    const/4 v1, 0x0

    .line 926
    .local v1, "textHeight":I
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 927
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 929
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v2, v3

    .line 932
    .end local v0    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    return v2
.end method

.method public isHandleInParent()Z
    .locals 3

    .prologue
    .line 1024
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iget v1, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->mPositionX:I

    iget v2, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->mPositionY:I

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoEditText;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method public isStartHandle()Z
    .locals 1

    .prologue
    .line 1019
    const/4 v0, 0x0

    return v0
.end method

.method public updatePosition(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 950
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v8, p1, p2}, Lamigo/widget/AmigoEditText;->getOffsetForPosition(FF)I

    move-result v6

    .line 951
    .local v6, "offset":I
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getLineAtCoordinate(F)I
    invoke-static {v8, p2}, Lamigo/widget/AmigoEditText;->access$200(Lamigo/widget/AmigoEditText;F)I

    move-result v5

    .line 952
    .local v5, "line":I
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v8}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 953
    .local v3, "end":I
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v8}, Lamigo/widget/AmigoEditText;->getRight()I

    move-result v1

    .line 954
    .local v1, "edittextRight":I
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v8}, Lamigo/widget/AmigoEditText;->getPaddingRight()I

    move-result v2

    .line 955
    .local v2, "edittextRightPadding":I
    invoke-direct {p0, v5}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->getLetterWidth(I)I

    move-result v4

    .line 956
    .local v4, "letterWidth":I
    add-int/lit8 v8, v3, -0x1

    if-ne v6, v8, :cond_0

    sub-int v8, v1, v2

    sub-int/2addr v8, v4

    int-to-float v8, v8

    cmpl-float v8, p1, v8

    if-lez v8, :cond_0

    .line 957
    add-int/lit8 v6, v6, 0x1

    .line 959
    :cond_0
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iget v7, v8, Lamigo/widget/AmigoEditText;->mStart:I

    .line 960
    .local v7, "selectionStart":I
    if-gt v6, v7, :cond_1

    .line 961
    invoke-direct {p0, v7, p2}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->checkY(IF)F

    move-result v0

    .line 962
    .local v0, "checkedY":F
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v8, p1, v0}, Lamigo/widget/AmigoEditText;->getOffsetForPosition(FF)I

    move-result v6

    .line 963
    if-gt v6, v7, :cond_1

    .line 964
    add-int/lit8 v8, v7, 0x1

    iget-object v9, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v9}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 968
    .end local v0    # "checkedY":F
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 969
    iget-object v8, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iput v6, v8, Lamigo/widget/AmigoEditText;->mEnd:I

    .line 970
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 942
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 944
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->updateDrawable()V

    .line 945
    return-void
.end method
