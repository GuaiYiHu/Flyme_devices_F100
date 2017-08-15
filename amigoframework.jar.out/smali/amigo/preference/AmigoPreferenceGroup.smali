.class public abstract Lamigo/preference/AmigoPreferenceGroup;
.super Lamigo/preference/AmigoPreference;
.source "AmigoPreferenceGroup.java"

# interfaces
.implements Lamigo/preference/AmigoGenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamigo/preference/AmigoPreference;",
        "Lamigo/preference/AmigoGenericInflater$Parent",
        "<",
        "Lamigo/preference/AmigoPreference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lamigo/preference/AmigoPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/preference/AmigoPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    const/4 v3, 0x1

    iput-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    .line 39
    iput v4, p0, Lamigo/preference/AmigoPreferenceGroup;->mCurrentPreferenceOrder:I

    .line 41
    iput-boolean v4, p0, Lamigo/preference/AmigoPreferenceGroup;->mAttachedToActivity:Z

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 49
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 52
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 53
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :pswitch_0
    iget-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    goto :goto_1

    .line 61
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_0
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoPreferenceGroup:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x10101e7
        :pswitch_0
    .end packed-switch
.end method

.method private removePreferenceInt(Lamigo/preference/AmigoPreference;)Z
    .locals 1
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p1}, Lamigo/preference/AmigoPreference;->onPrepareForRemoval()V

    .line 193
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lamigo/preference/AmigoPreference;)V
    .locals 0
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroup;->addPreference(Lamigo/preference/AmigoPreference;)Z

    .line 109
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lamigo/preference/AmigoPreference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroup;->addItemFromInflater(Lamigo/preference/AmigoPreference;)V

    return-void
.end method

.method public addPreference(Lamigo/preference/AmigoPreference;)Z
    .locals 4
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    const/4 v2, 0x1

    .line 137
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 175
    :goto_0
    return v1

    .line 142
    :cond_0
    invoke-virtual {p1}, Lamigo/preference/AmigoPreference;->getOrder()I

    move-result v1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 143
    iget-boolean v1, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v1, :cond_1

    .line 144
    iget v1, p0, Lamigo/preference/AmigoPreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v1}, Lamigo/preference/AmigoPreference;->setOrder(I)V

    .line 147
    :cond_1
    instance-of v1, p1, Lamigo/preference/AmigoPreferenceGroup;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 150
    check-cast v1, Lamigo/preference/AmigoPreferenceGroup;

    iget-boolean v3, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v3}, Lamigo/preference/AmigoPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 154
    :cond_2
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 155
    .local v0, "insertionIndex":I
    if-gez v0, :cond_3

    .line 156
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 159
    :cond_3
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoPreferenceGroup;->onPrepareAddPreference(Lamigo/preference/AmigoPreference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 160
    const/4 v1, 0x0

    goto :goto_0

    .line 163
    :cond_4
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lamigo/preference/AmigoPreference;->onAttachedToHierarchy(Lamigo/preference/AmigoPreferenceManager;)V

    .line 169
    iget-boolean v1, p0, Lamigo/preference/AmigoPreferenceGroup;->mAttachedToActivity:Z

    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {p1}, Lamigo/preference/AmigoPreference;->onAttachedToActivity()V

    .line 173
    :cond_5
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->notifyHierarchyChanged()V

    move v1, v2

    .line 175
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 330
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceGroup;->getPreference(I)Lamigo/preference/AmigoPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lamigo/preference/AmigoPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 319
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 320
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceGroup;->getPreference(I)Lamigo/preference/AmigoPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lamigo/preference/AmigoPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;
    .locals 6
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 238
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    .end local p0    # "this":Lamigo/preference/AmigoPreferenceGroup;
    :goto_0
    return-object p0

    .line 241
    .restart local p0    # "this":Lamigo/preference/AmigoPreferenceGroup;
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 242
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 243
    invoke-virtual {p0, v1}, Lamigo/preference/AmigoPreferenceGroup;->getPreference(I)Lamigo/preference/AmigoPreference;

    move-result-object v2

    .line 244
    .local v2, "preference":Lamigo/preference/AmigoPreference;
    invoke-virtual {v2}, Lamigo/preference/AmigoPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v2

    .line 247
    goto :goto_0

    .line 250
    :cond_1
    instance-of v5, v2, Lamigo/preference/AmigoPreferenceGroup;

    if-eqz v5, :cond_2

    .line 251
    check-cast v2, Lamigo/preference/AmigoPreferenceGroup;

    .end local v2    # "preference":Lamigo/preference/AmigoPreference;
    invoke-virtual {v2, p1}, Lamigo/preference/AmigoPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lamigo/preference/AmigoPreference;

    move-result-object v4

    .line 253
    .local v4, "returnedPreference":Lamigo/preference/AmigoPreference;
    if-eqz v4, :cond_2

    move-object p0, v4

    .line 254
    goto :goto_0

    .line 242
    .end local v4    # "returnedPreference":Lamigo/preference/AmigoPreference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getPreference(I)Lamigo/preference/AmigoPreference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/preference/AmigoPreference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Lamigo/preference/AmigoPreference;->onAttachedToActivity()V

    .line 279
    const/4 v2, 0x1

    iput-boolean v2, p0, Lamigo/preference/AmigoPreferenceGroup;->mAttachedToActivity:Z

    .line 282
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 283
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceGroup;->getPreference(I)Lamigo/preference/AmigoPreference;

    move-result-object v2

    invoke-virtual {v2}, Lamigo/preference/AmigoPreference;->onAttachedToActivity()V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lamigo/preference/AmigoPreference;)Z
    .locals 1
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 217
    invoke-super {p0}, Lamigo/preference/AmigoPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lamigo/preference/AmigoPreference;->setEnabled(Z)V

    .line 221
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lamigo/preference/AmigoPreference;->onPrepareForRemoval()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/preference/AmigoPreferenceGroup;->mAttachedToActivity:Z

    .line 294
    return-void
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v1, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 203
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 204
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamigo/preference/AmigoPreference;

    invoke-direct {p0, v2}, Lamigo/preference/AmigoPreferenceGroup;->removePreferenceInt(Lamigo/preference/AmigoPreference;)Z

    .line 203
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->notifyHierarchyChanged()V

    .line 208
    return-void

    .line 206
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lamigo/preference/AmigoPreference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Lamigo/preference/AmigoPreference;)Z
    .locals 1
    .param p1, "preference"    # Lamigo/preference/AmigoPreference;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lamigo/preference/AmigoPreferenceGroup;->removePreferenceInt(Lamigo/preference/AmigoPreference;)Z

    move-result v0

    .line 186
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->notifyHierarchyChanged()V

    .line 187
    return v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 298
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->setEnabled(Z)V

    .line 301
    invoke-virtual {p0}, Lamigo/preference/AmigoPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 302
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoPreferenceGroup;->getPreference(I)Lamigo/preference/AmigoPreference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lamigo/preference/AmigoPreference;->setEnabled(Z)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lamigo/preference/AmigoPreferenceGroup;->mOrderingAsAdded:Z

    .line 92
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lamigo/preference/AmigoPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 310
    monitor-exit p0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
