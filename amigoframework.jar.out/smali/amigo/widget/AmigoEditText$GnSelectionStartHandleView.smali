.class Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;
.super Lamigo/widget/AmigoEditText$GnHandleView;
.source "AmigoEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnSelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoEditText;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 798
    iput-object p1, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    .line 799
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoEditText$GnHandleView;-><init>(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 800
    return-void
.end method

.method private checkY(IF)F
    .locals 7
    .param p1, "selectionEnd"    # I
    .param p2, "y"    # F

    .prologue
    .line 860
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 861
    .local v3, "lineCount":I
    const/4 v4, 0x0

    .line 862
    .local v4, "selectionEndline":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 863
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 864
    .local v5, "start":I
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 865
    .local v0, "end":I
    if-lt p1, v5, :cond_1

    if-gt p1, v0, :cond_1

    .line 866
    move v4, v1

    .line 870
    .end local v0    # "end":I
    .end local v5    # "start":I
    :cond_0
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getLineAtCoordinate(F)I
    invoke-static {v6, p2}, Lamigo/widget/AmigoEditText;->access$200(Lamigo/widget/AmigoEditText;F)I

    move-result v2

    .line 871
    .local v2, "line":I
    :goto_1
    if-eq v2, v4, :cond_3

    .line 872
    if-ge v2, v4, :cond_2

    .line 873
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLineHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr p2, v6

    .line 877
    :goto_2
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    # invokes: Lamigo/widget/AmigoEditText;->getLineAtCoordinate(F)I
    invoke-static {v6, p2}, Lamigo/widget/AmigoEditText;->access$200(Lamigo/widget/AmigoEditText;F)I

    move-result v2

    goto :goto_1

    .line 862
    .end local v2    # "line":I
    .restart local v0    # "end":I
    .restart local v5    # "start":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v0    # "end":I
    .end local v5    # "start":I
    .restart local v2    # "line":I
    :cond_2
    iget-object v6, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v6}, Lamigo/widget/AmigoEditText;->getLineHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p2, v6

    goto :goto_2

    .line 879
    :cond_3
    return p2
.end method


# virtual methods
.method public computeHandlePositionY(I)F
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 884
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget v1, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->mHotspotY:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    int-to-float v0, v0

    return v0
.end method

.method public computePointPositionY(FFF)F
    .locals 2
    .param p1, "rawY"    # F
    .param p2, "touchToWindowOffsetY"    # F
    .param p3, "touchOffsetY"    # F

    .prologue
    .line 889
    sub-float v0, p1, p2

    add-float/2addr v0, p3

    iget v1, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->mHotspotY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 804
    if-eqz p2, :cond_0

    .line 805
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x1c

    .line 807
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x13

    div-int/lit8 v0, v0, 0x1c

    goto :goto_0
.end method

.method protected getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 813
    const/4 v1, 0x0

    .line 815
    .local v1, "textHeight":I
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 818
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v2, v3

    .line 821
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
    .locals 4

    .prologue
    .line 900
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iget v1, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->mPositionX:I

    iget v2, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->mPositionY:I

    iget v3, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->mHotspotY:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoEditText;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method public isStartHandle()Z
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x1

    return v0
.end method

.method public updatePosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 839
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3, p1, p2}, Lamigo/widget/AmigoEditText;->getOffsetForPosition(FF)I

    move-result v1

    .line 844
    .local v1, "offset":I
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iget v2, v3, Lamigo/widget/AmigoEditText;->mEnd:I

    .line 846
    .local v2, "selectionEnd":I
    if-lt v1, v2, :cond_0

    .line 847
    invoke-direct {p0, v2, p2}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->checkY(IF)F

    move-result v0

    .line 848
    .local v0, "checkedY":F
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v3, p1, v0}, Lamigo/widget/AmigoEditText;->getOffsetForPosition(FF)I

    move-result v1

    .line 849
    if-lt v1, v2, :cond_0

    .line 850
    add-int/lit8 v3, v2, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 853
    .end local v0    # "checkedY":F
    :cond_0
    invoke-virtual {p0, v1, v4}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 855
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iput v2, v3, Lamigo/widget/AmigoEditText;->mEnd:I

    .line 856
    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    iput v1, v3, Lamigo/widget/AmigoEditText;->mStart:I

    .line 857
    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 833
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->updateDrawable()V

    .line 834
    return-void
.end method
