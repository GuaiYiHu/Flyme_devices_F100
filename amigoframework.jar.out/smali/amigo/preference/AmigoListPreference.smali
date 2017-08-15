.class public Lamigo/preference/AmigoListPreference;
.super Lamigo/preference/AmigoDialogPreference;
.source "AmigoListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lamigo/preference/AmigoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 40
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 41
    .local v2, "id":I
    sparse-switch v2, :sswitch_data_0

    .line 39
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :sswitch_0
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringArrayValue(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 46
    :sswitch_1
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringArrayValue(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 49
    :sswitch_2
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    goto :goto_1

    .line 55
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_0
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoListPreference:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoPreference:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x10100b2 -> :sswitch_0
        0x10101e9 -> :sswitch_2
        0x10101f8 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic access$002(Lamigo/preference/AmigoListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/preference/AmigoListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lamigo/preference/AmigoListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 223
    if-eqz p1, :cond_1

    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 225
    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 224
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Lamigo/preference/AmigoListPreference;->getValueIndex()I

    move-result v0

    .line 213
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lamigo/preference/AmigoListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 159
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    invoke-super {p0}, Lamigo/preference/AmigoDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 271
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onDialogClosed(Z)V

    .line 273
    if-eqz p1, :cond_0

    iget v1, p0, Lamigo/preference/AmigoListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lamigo/preference/AmigoListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoListPreference;->setValue(Ljava/lang/String;)V

    .line 279
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 283
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Lamigo/app/AmigoAlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V

    .line 241
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    invoke-direct {p0}, Lamigo/preference/AmigoListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoListPreference;->mClickedDialogEntryIndex:I

    .line 247
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lamigo/preference/AmigoListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lamigo/preference/AmigoListPreference$1;

    invoke-direct {v2, p0}, Lamigo/preference/AmigoListPreference$1;-><init>(Lamigo/preference/AmigoListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lamigo/app/AmigoAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 266
    invoke-virtual {p1, v3, v3}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 267
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 315
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 312
    check-cast v0, Lamigo/preference/AmigoListPreference$SavedState;

    .line 313
    .local v0, "myState":Lamigo/preference/AmigoListPreference$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 314
    iget-object v1, v0, Lamigo/preference/AmigoListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 293
    invoke-super {p0}, Lamigo/preference/AmigoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 294
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lamigo/preference/AmigoListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 299
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoListPreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 300
    .local v0, "myState":Lamigo/preference/AmigoListPreference$SavedState;
    invoke-virtual {p0}, Lamigo/preference/AmigoListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lamigo/preference/AmigoListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 301
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 288
    if-eqz p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lamigo/preference/AmigoListPreference;->setValue(Ljava/lang/String;)V

    .line 289
    return-void

    .line 288
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lamigo/preference/AmigoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 88
    iput-object p1, p0, Lamigo/preference/AmigoListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 89
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 124
    invoke-virtual {p0}, Lamigo/preference/AmigoListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 116
    iput-object p1, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    if-nez p1, :cond_1

    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lamigo/preference/AmigoListPreference;->mValue:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoListPreference;->persistString(Ljava/lang/String;)Z

    .line 146
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lamigo/preference/AmigoListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoListPreference;->setValue(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method
