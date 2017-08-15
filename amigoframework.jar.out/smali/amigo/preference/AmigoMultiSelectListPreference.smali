.class public Lamigo/preference/AmigoMultiSelectListPreference;
.super Lamigo/preference/AmigoDialogPreference;
.source "AmigoMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lamigo/preference/AmigoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 31
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 38
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 42
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 43
    .local v2, "id":I
    sparse-switch v2, :sswitch_data_0

    .line 41
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :sswitch_0
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringArrayValue(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 48
    :sswitch_1
    invoke-static {p1, p2, v1}, Lamigo/preference/NativePreferenceManager;->getAttributeStringArrayValue(Landroid/content/Context;Landroid/util/AttributeSet;I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 54
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_0
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoMultiSelectListPreference:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x10100b2 -> :sswitch_0
        0x10101f8 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic access$076(Lamigo/preference/AmigoMultiSelectListPreference;I)Z
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoMultiSelectListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iget-boolean v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Lamigo/preference/AmigoMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoMultiSelectListPreference;

    .prologue
    .line 27
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/preference/AmigoMultiSelectListPreference;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoMultiSelectListPreference;

    .prologue
    .line 27
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getSelectedItems()[Z
    .locals 6

    .prologue
    .line 190
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 191
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 192
    .local v1, "entryCount":I
    iget-object v4, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 193
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 195
    .local v3, "result":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 196
    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p1, :cond_1

    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 156
    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 155
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 161
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 204
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onDialogClosed(Z)V

    .line 206
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 207
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 208
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 212
    .end local v0    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mPreferenceChanged:Z

    .line 213
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 217
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 218
    .local v0, "defaultValues":[Ljava/lang/CharSequence;
    array-length v3, v0

    .line 219
    .local v3, "valueCount":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 221
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 222
    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lamigo/app/AmigoAlertDialog$Builder;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lamigo/preference/AmigoDialogPreference;->onPrepareDialogBuilder(Lamigo/app/AmigoAlertDialog$Builder;)V

    .line 168
    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_1
    invoke-direct {p0}, Lamigo/preference/AmigoMultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 175
    .local v0, "checkedItems":[Z
    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lamigo/preference/AmigoMultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lamigo/preference/AmigoMultiSelectListPreference$1;-><init>(Lamigo/preference/AmigoMultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lamigo/app/AmigoAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    .line 185
    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 186
    iget-object v1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 187
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Lamigo/preference/AmigoDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 236
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 241
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoMultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 242
    .local v0, "myState":Lamigo/preference/AmigoMultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lamigo/preference/AmigoMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    .line 243
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lamigo/preference/AmigoMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 231
    return-void

    .line 230
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 79
    iput-object p1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 80
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lamigo/preference/AmigoMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 107
    iput-object p1, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 108
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 135
    iget-object v0, p0, Lamigo/preference/AmigoMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 138
    return-void
.end method
