.class public Lamigo/widget/AmigoExtractEditText;
.super Lamigo/widget/AmigoEditText;
.source "AmigoExtractEditText.java"


# instance fields
.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected deleteText_internal(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 171
    return-void
.end method

.method public finishInternalChanges()V
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    .line 53
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lamigo/widget/AmigoExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasVerticalScrollBar()Z
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lamigo/widget/AmigoExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lamigo/widget/AmigoExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lamigo/widget/AmigoExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lamigo/widget/AmigoExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 74
    iget v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 76
    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 78
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lamigo/widget/AmigoEditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lamigo/widget/AmigoEditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 89
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 207
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 62
    :try_start_0
    iget v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    .line 63
    invoke-super {p0, p1}, Lamigo/widget/AmigoEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    iget v1, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    throw v0
.end method

.method setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "ime"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 34
    iput-object p1, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 35
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 0
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 195
    return-void
.end method

.method public startInternalChanges()V
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lamigo/widget/AmigoExtractEditText;->mSettingExtractedText:I

    .line 44
    return-void
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 156
    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lamigo/widget/AmigoExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 159
    :cond_0
    return-void
.end method
