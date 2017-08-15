.class public abstract Lamigo/preference/AmigoTwoStatePreference;
.super Lamigo/preference/AmigoPreference;
.source "AmigoTwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoTwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSendClickAccessibilityEvent:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoTwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lamigo/preference/AmigoTwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-super {p0}, Lamigo/preference/AmigoPreference;->onClick()V

    .line 45
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 47
    .local v0, "newValue":Z
    :goto_0
    iput-boolean v1, p0, Lamigo/preference/AmigoTwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoTwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :goto_1
    return-void

    .line 45
    .end local v0    # "newValue":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    .restart local v0    # "newValue":Z
    :cond_1
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoTwoStatePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoTwoStatePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 257
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 254
    check-cast v0, Lamigo/preference/AmigoTwoStatePreference$SavedState;

    .line 255
    .local v0, "myState":Lamigo/preference/AmigoTwoStatePreference$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoTwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 256
    iget-boolean v1, v0, Lamigo/preference/AmigoTwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoTwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Lamigo/preference/AmigoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 236
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 241
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoTwoStatePreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoTwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 242
    .local v0, "myState":Lamigo/preference/AmigoTwoStatePreference$SavedState;
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lamigo/preference/AmigoTwoStatePreference$SavedState;->checked:Z

    move-object v1, v0

    .line 243
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoTwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoTwoStatePreference;->setChecked(Z)V

    .line 176
    return-void

    .line 174
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method sendAccessibilityEvent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 184
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lamigo/preference/AmigoTwoStatePreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 186
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 187
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 191
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lamigo/preference/AmigoTwoStatePreference;->mSendClickAccessibilityEvent:Z

    .line 192
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-boolean v2, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    if-eq v2, p1, :cond_2

    move v0, v1

    .line 64
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lamigo/preference/AmigoTwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_1

    .line 65
    :cond_0
    iput-boolean p1, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    .line 66
    iput-boolean v1, p0, Lamigo/preference/AmigoTwoStatePreference;->mCheckedSet:Z

    .line 67
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoTwoStatePreference;->persistBoolean(Z)Z

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoTwoStatePreference;->notifyDependencyChange(Z)V

    .line 70
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->notifyChanged()V

    .line 73
    :cond_1
    return-void

    .line 63
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lamigo/preference/AmigoTwoStatePreference;->mDisableDependentsState:Z

    .line 165
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoTwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    iput-object p1, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 125
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->notifyChanged()V

    .line 128
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoTwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    iput-object p1, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 97
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->notifyChanged()V

    .line 100
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    iget-boolean v3, p0, Lamigo/preference/AmigoTwoStatePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    .line 87
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lamigo/preference/AmigoPreference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 86
    .end local v0    # "shouldDisable":Z
    :cond_2
    iget-boolean v3, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 200
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 202
    const/4 v3, 0x1

    .line 203
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 204
    iget-object v4, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const/4 v3, 0x0

    .line 211
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {p0}, Lamigo/preference/AmigoTwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 215
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 217
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const/4 v3, 0x0

    .line 222
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const/16 v0, 0x8

    .line 223
    .local v0, "newVisibility":I
    if-nez v3, :cond_2

    .line 225
    const/4 v0, 0x0

    .line 227
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 228
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_3
    return-void

    .line 206
    .restart local v3    # "useDefaultSummary":Z
    :cond_4
    iget-boolean v4, p0, Lamigo/preference/AmigoTwoStatePreference;->mChecked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, p0, Lamigo/preference/AmigoTwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const/4 v3, 0x0

    goto :goto_0
.end method
