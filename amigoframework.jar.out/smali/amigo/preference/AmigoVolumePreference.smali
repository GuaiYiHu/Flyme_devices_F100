.class public Lamigo/preference/AmigoVolumePreference;
.super Lamigo/preference/AmigoSeekBarDialogPreference;
.source "AmigoVolumePreference.java"

# interfaces
.implements Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;,
        Lamigo/preference/AmigoVolumePreference$SavedState;,
        Lamigo/preference/AmigoVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lamigo/preference/AmigoSeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {}, Lamigo/preference/NativePreferenceManager;->getAnalyzeNativePreferenceXml()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 45
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v2

    .line 46
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 44
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :pswitch_0
    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoVolumePreference;->mStreamType:I

    goto :goto_1

    .line 54
    .end local v1    # "i":I
    .end local v2    # "id":I
    :cond_0
    sget-object v3, Lcom/amigo/internal/R$styleable;->AmigoVolumePreference:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lamigo/preference/AmigoVolumePreference;->mStreamType:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void

    .line 46
    :pswitch_data_0
    .packed-switch 0x1010209
        :pswitch_0
    .end packed-switch
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lamigo/preference/AmigoPreferenceManager;->unregisterOnActivityStopListener(Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;)V

    .line 131
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 133
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x90b0028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 138
    :cond_0
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 140
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->stop()V

    .line 141
    iput-object v4, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    .line 144
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 123
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lamigo/preference/AmigoSeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 71
    const v1, 0x90b0028

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 72
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lamigo/preference/AmigoVolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;-><init>(Lamigo/preference/AmigoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    .line 74
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference;->getPreferenceManager()Lamigo/preference/AmigoPreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lamigo/preference/AmigoPreferenceManager;->registerOnActivityStopListener(Lamigo/preference/AmigoPreferenceManager$OnActivityStopListener;)V

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 81
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Lamigo/preference/AmigoSeekBarDialogPreference;->onDialogClosed(Z)V

    .line 112
    if-nez p1, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 116
    :cond_0
    invoke-direct {p0}, Lamigo/preference/AmigoVolumePreference;->cleanup()V

    .line 117
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    iget-object v3, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 87
    .local v0, "isdown":Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 104
    goto :goto_0

    .end local v0    # "isdown":Z
    :cond_2
    move v0, v2

    .line 86
    goto :goto_1

    .line 89
    .restart local v0    # "isdown":Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 90
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 94
    :sswitch_1
    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 99
    :sswitch_2
    if-eqz v0, :cond_0

    .line 100
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lamigo/preference/AmigoVolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lamigo/preference/AmigoSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 180
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 175
    check-cast v0, Lamigo/preference/AmigoVolumePreference$SavedState;

    .line 176
    .local v0, "myState":Lamigo/preference/AmigoVolumePreference$SavedState;
    invoke-virtual {v0}, Lamigo/preference/AmigoVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lamigo/preference/AmigoSeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 177
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lamigo/preference/AmigoVolumePreference$SavedState;->getVolumeStore()Lamigo/preference/AmigoVolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lamigo/preference/AmigoVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .param p1, "volumizer"    # Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    .prologue
    .line 147
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 150
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Lamigo/preference/AmigoSeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 155
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 160
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lamigo/preference/AmigoVolumePreference$SavedState;

    invoke-direct {v0, v1}, Lamigo/preference/AmigoVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    .local v0, "myState":Lamigo/preference/AmigoVolumePreference$SavedState;
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference;->mSeekBarVolumizer:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lamigo/preference/AmigoVolumePreference$SavedState;->getVolumeStore()Lamigo/preference/AmigoVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lamigo/preference/AmigoVolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 164
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 64
    iput p1, p0, Lamigo/preference/AmigoVolumePreference;->mStreamType:I

    .line 65
    return-void
.end method
