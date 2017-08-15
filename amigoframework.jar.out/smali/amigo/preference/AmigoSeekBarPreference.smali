.class public Lamigo/preference/AmigoSeekBarPreference;
.super Lamigo/preference/AmigoPreference;
.source "AmigoSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoSeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lamigo/preference/AmigoSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/preference/AmigoSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/preference/AmigoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const v0, 0x9030010

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoSeekBarPreference;->setLayoutResource(I)V

    .line 33
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 102
    iget v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 103
    iget p1, p0, Lamigo/preference/AmigoSeekBarPreference;->mMax:I

    .line 105
    :cond_0
    if-gez p1, :cond_1

    .line 106
    const/4 p1, 0x0

    .line 108
    :cond_1
    iget v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 109
    iput p1, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    .line 110
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoSeekBarPreference;->persistInt(I)Z

    .line 111
    if-eqz p2, :cond_2

    .line 112
    invoke-virtual {p0}, Lamigo/preference/AmigoSeekBarPreference;->notifyChanged()V

    .line 115
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->onBindView(Landroid/view/View;)V

    .line 50
    const v1, 0x90b0028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 52
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 53
    iget v1, p0, Lamigo/preference/AmigoSeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 54
    iget v1, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 55
    invoke-virtual {p0}, Lamigo/preference/AmigoSeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 77
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lamigo/preference/AmigoSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoSeekBarPreference;->setProgress(I)V

    .line 87
    :goto_0
    return v0

    .line 82
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 83
    invoke-virtual {p0}, Lamigo/preference/AmigoSeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoSeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 139
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoSeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-super {p0, p1}, Lamigo/preference/AmigoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 192
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 187
    check-cast v0, Lamigo/preference/AmigoSeekBarPreference$SavedState;

    .line 188
    .local v0, "myState":Lamigo/preference/AmigoSeekBarPreference$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoSeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 189
    iget v1, v0, Lamigo/preference/AmigoSeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    .line 190
    iget v1, v0, Lamigo/preference/AmigoSeekBarPreference$SavedState;->max:I

    iput v1, p0, Lamigo/preference/AmigoSeekBarPreference;->mMax:I

    .line 191
    invoke-virtual {p0}, Lamigo/preference/AmigoSeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lamigo/preference/AmigoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 166
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lamigo/preference/AmigoSeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 172
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoSeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoSeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 173
    .local v0, "myState":Lamigo/preference/AmigoSeekBarPreference$SavedState;
    iget v2, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    iput v2, v0, Lamigo/preference/AmigoSeekBarPreference$SavedState;->progress:I

    .line 174
    iget v2, p0, Lamigo/preference/AmigoSeekBarPreference;->mMax:I

    iput v2, v0, Lamigo/preference/AmigoSeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 175
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    iget v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lamigo/preference/AmigoSeekBarPreference;->setProgress(I)V

    .line 67
    return-void

    .line 65
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mTrackingTouch:Z

    .line 147
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mTrackingTouch:Z

    .line 152
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lamigo/preference/AmigoSeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 155
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 91
    iget v0, p0, Lamigo/preference/AmigoSeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 92
    iput p1, p0, Lamigo/preference/AmigoSeekBarPreference;->mMax:I

    .line 93
    invoke-virtual {p0}, Lamigo/preference/AmigoSeekBarPreference;->notifyChanged()V

    .line 95
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lamigo/preference/AmigoSeekBarPreference;->setProgress(IZ)V

    .line 99
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 127
    .local v0, "progress":I
    iget v1, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lamigo/preference/AmigoSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lamigo/preference/AmigoSeekBarPreference;->setProgress(IZ)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget v1, p0, Lamigo/preference/AmigoSeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
