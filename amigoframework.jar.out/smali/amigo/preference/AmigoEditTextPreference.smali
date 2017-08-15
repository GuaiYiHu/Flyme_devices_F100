.class public Lamigo/preference/AmigoEditTextPreference;
.super Lamigo/preference/AmigoDialogPreference;
.source "AmigoEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Lamigo/widget/AmigoEditText;

.field private mEditTextMarginBootom:I

.field private mEditTextMarginLeft:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const v0, 0x1010092

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/preference/AmigoEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance v0, Lamigo/widget/AmigoEditText;

    invoke-direct {v0, p1, p2}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mEditText:Lamigo/widget/AmigoEditText;

    .line 54
    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mEditText:Lamigo/widget/AmigoEditText;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoEditText;->setId(I)V

    .line 62
    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mEditText:Lamigo/widget/AmigoEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoEditText;->setEnabled(Z)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginBootom:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x9050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginLeft:I

    .line 70
    return-void
.end method


# virtual methods
.method public getEditText()Lamigo/widget/AmigoEditText;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mEditText:Lamigo/widget/AmigoEditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Lamigo/widget/AmigoEditText;)V
    .locals 6
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 134
    const v2, 0x90b001f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 140
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lamigo/preference/AmigoEditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lamigo/preference/AmigoEditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    iget v2, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginLeft:I

    const/4 v3, 0x0

    iget v4, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginLeft:I

    iget v5, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginBootom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 151
    :goto_0
    invoke-virtual {v0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void

    .line 147
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget v2, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginLeft:I

    iget v3, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginBootom:I

    iget v4, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginLeft:I

    iget v5, p0, Lamigo/preference/AmigoEditTextPreference;->mEditTextMarginBootom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mEditText:Lamigo/widget/AmigoEditText;

    .line 117
    .local v0, "editText":Lamigo/widget/AmigoEditText;
    invoke-virtual {p0}, Lamigo/preference/AmigoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lamigo/widget/AmigoEditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v0}, Lamigo/widget/AmigoEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 120
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    .line 121
    if-eqz v1, :cond_0

    .line 122
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 124
    :cond_0
    invoke-virtual {p0, p1, v0}, Lamigo/preference/AmigoEditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Lamigo/widget/AmigoEditText;)V

    .line 126
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 157
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onDialogClosed(Z)V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v1, p0, Lamigo/preference/AmigoEditTextPreference;->mEditText:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoEditTextPreference;->setText(Ljava/lang/String;)V

    .line 165
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 169
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 222
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 219
    check-cast v0, Lamigo/preference/AmigoEditTextPreference$SavedState;

    .line 220
    .local v0, "myState":Lamigo/preference/AmigoEditTextPreference$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 221
    iget-object v1, v0, Lamigo/preference/AmigoEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoEditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Lamigo/preference/AmigoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 201
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lamigo/preference/AmigoEditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 206
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 207
    .local v0, "myState":Lamigo/preference/AmigoEditTextPreference$SavedState;
    invoke-virtual {p0}, Lamigo/preference/AmigoEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lamigo/preference/AmigoEditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 208
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lamigo/preference/AmigoEditTextPreference;->setText(Ljava/lang/String;)V

    .line 175
    return-void

    .line 174
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lamigo/preference/AmigoEditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 93
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Lamigo/preference/AmigoEditTextPreference;->mText:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoEditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 97
    invoke-virtual {p0}, Lamigo/preference/AmigoEditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 98
    .local v0, "isBlocking":Z
    if-eq v0, v1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoEditTextPreference;->notifyDependencyChange(Z)V

    .line 101
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lamigo/preference/AmigoEditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lamigo/preference/AmigoDialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
