.class public Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "AmigoVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/preference/AmigoVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lamigo/preference/AmigoVolumePreference;


# direct methods
.method public constructor <init>(Lamigo/preference/AmigoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I

    .prologue
    .line 252
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;-><init>(Lamigo/preference/AmigoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Lamigo/preference/AmigoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "defaultUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 255
    iput-object p1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->this$0:Lamigo/preference/AmigoVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 236
    iput v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 238
    iput v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 240
    new-instance v0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer$1;-><init>(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 256
    iput-object p2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 257
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 258
    iput p4, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 259
    iput-object p3, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 261
    invoke-direct {p0, p3, p5}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 262
    return-void
.end method

.method static synthetic access$000(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    .prologue
    .line 226
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    .prologue
    .line 226
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;

    .prologue
    .line 226
    iget v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "defaultUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 265
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 266
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 267
    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 268
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 270
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v3, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 274
    if-nez p2, :cond_0

    .line 275
    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_3

    .line 276
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 285
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_1
    :goto_1
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 296
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 298
    :cond_2
    return-void

    .line 277
    :cond_3
    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_4

    .line 278
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 280
    :cond_4
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    if-eq v1, v6, :cond_1

    .line 289
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 290
    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    goto :goto_1
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 362
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->startSample()V

    .line 365
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 367
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 370
    iget v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 371
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 372
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->startSample()V

    .line 373
    iget v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 374
    iput v2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 381
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 377
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 378
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 379
    invoke-virtual {p0, v1}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 312
    if-nez p3, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, p2}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lamigo/preference/AmigoVolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Lamigo/preference/AmigoVolumePreference$VolumeStore;

    .prologue
    .line 391
    iget v0, p1, Lamigo/preference/AmigoVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 392
    iget v0, p1, Lamigo/preference/AmigoVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 393
    iget v0, p1, Lamigo/preference/AmigoVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 394
    iget v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 396
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lamigo/preference/AmigoVolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Lamigo/preference/AmigoVolumePreference$VolumeStore;

    .prologue
    .line 384
    iget v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 385
    iget v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lamigo/preference/AmigoVolumePreference$VolumeStore;->volume:I

    .line 386
    iget v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Lamigo/preference/AmigoVolumePreference$VolumeStore;->originalVolume:I

    .line 388
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 327
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 330
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->startSample()V

    .line 333
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 321
    iput p1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 322
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 308
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 337
    return-void
.end method

.method public startSample()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->this$0:Lamigo/preference/AmigoVolumePreference;

    invoke-virtual {v0, p0}, Lamigo/preference/AmigoVolumePreference;->onSampleStarting(Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;)V

    .line 345
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 348
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 302
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 303
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 304
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lamigo/preference/AmigoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 354
    :cond_0
    return-void
.end method
