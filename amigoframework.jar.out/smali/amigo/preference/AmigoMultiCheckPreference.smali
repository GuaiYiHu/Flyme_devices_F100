.class public Lamigo/preference/AmigoMultiCheckPreference;
.super Lamigo/preference/AmigoDialogPreference;
.source "AmigoMultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoMultiCheckPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mOrigValues:[Z

.field private mSetValues:[Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoMultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lamigo/preference/AmigoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 38
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 39
    .local v2, "id":I
    sparse-switch v2, :sswitch_data_0

    .line 37
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :sswitch_0
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringArrayValue(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 43
    iget-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoMultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 48
    :sswitch_1
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringArrayValue(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 50
    iget-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lamigo/preference/AmigoMultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 55
    :sswitch_2
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringValue(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_1

    .line 61
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_1
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoListPreference:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 64
    iget-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lamigo/preference/AmigoMultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 67
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lamigo/preference/AmigoMultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoPreference:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    return-void

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x10100b2 -> :sswitch_0
        0x10101e9 -> :sswitch_2
        0x10101f8 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic access$000(Lamigo/preference/AmigoMultiCheckPreference;)[Z
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoMultiCheckPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method private setEntryValuesCS([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    .line 142
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoMultiCheckPreference;->setValues([Z)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    if-eqz p1, :cond_1

    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 240
    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 239
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 245
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    invoke-super {p0}, Lamigo/preference/AmigoDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getValues()[Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onDialogClosed(Z)V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiCheckPreference;->getValues()[Z

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoMultiCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mOrigValues:[Z

    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    iget-object v2, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 281
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lamigo/app/AmigoAlertDialog$Builder;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V

    .line 252
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mOrigValues:[Z

    .line 258
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    new-instance v2, Lamigo/preference/AmigoMultiCheckPreference$1;

    invoke-direct {v2, p0}, Lamigo/preference/AmigoMultiCheckPreference$1;-><init>(Lamigo/preference/AmigoMultiCheckPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lamigo/app/AmigoAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 265
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoMultiCheckPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 312
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 309
    check-cast v0, Lamigo/preference/AmigoMultiCheckPreference$SavedState;

    .line 310
    .local v0, "myState":Lamigo/preference/AmigoMultiCheckPreference$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoMultiCheckPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    iget-object v1, v0, Lamigo/preference/AmigoMultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoMultiCheckPreference;->setValues([Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Lamigo/preference/AmigoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 291
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiCheckPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 296
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoMultiCheckPreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoMultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 297
    .local v0, "myState":Lamigo/preference/AmigoMultiCheckPreference$SavedState;
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiCheckPreference;->getValues()[Z

    move-result-object v2

    iput-object v2, v0, Lamigo/preference/AmigoMultiCheckPreference$SavedState;->values:[Z

    move-object v1, v0

    .line 298
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 286
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoMultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 98
    iput-object p1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 99
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    .line 100
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mOrigValues:[Z

    .line 101
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lamigo/preference/AmigoMultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "entryValues"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 128
    iput-object p1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 130
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 131
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    if-nez p1, :cond_1

    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "state"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    aput-boolean p2, v0, p1

    .line 172
    return-void
.end method

.method public setValues([Z)V
    .locals 4
    .param p1, "values"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 180
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget-object v1, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    array-length v0, p1

    iget-object v2, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    array-length v0, p1

    :goto_0
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 186
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lamigo/preference/AmigoMultiCheckPreference;->mSetValues:[Z

    array-length v0, v0

    goto :goto_0
.end method
