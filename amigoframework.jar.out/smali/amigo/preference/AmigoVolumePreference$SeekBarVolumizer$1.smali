.class Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "AmigoVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 240
    iput-object p1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;->this$1:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 244
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;->this$1:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    # getter for: Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->access$000(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;->this$1:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    # getter for: Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->access$100(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;->this$1:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    # getter for: Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->access$100(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;->this$1:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    # getter for: Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->access$200(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 246
    .local v0, "volume":I
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;->this$1:Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    # getter for: Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->access$000(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 248
    .end local v0    # "volume":I
    :cond_0
    return-void
.end method
