.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 35
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 41
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 43
    return-void
.end method

.method private static usageForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 212
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static/range {p6 .. p6}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v7}, Landroid/os/IVibratorService;->vibrateAmigoEffectBundle(Landroid/os/Bundle;ILjava/lang/String;JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v8

    .line 214
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 223
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 230
    :cond_0
    array-length v0, p4

    if-ge p5, v0, :cond_1

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {p6}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/os/IVibratorService;->vibrateAmigoEffectBundlePattern(Landroid/os/Bundle;ILjava/lang/String;[JIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v8

    .line 235
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public amigoVibrate(Ljava/lang/String;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 10
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 169
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static/range {p6 .. p6}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v7}, Landroid/os/IVibratorService;->vibrateAmigoEffect(Ljava/lang/String;ILjava/lang/String;JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v8

    .line 171
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public amigoVibrate(Ljava/lang/String;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 9
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 181
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 188
    :cond_0
    array-length v0, p4

    if-ge p5, v0, :cond_1

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {p6}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/os/IVibratorService;->vibrateAmigoEffectPattern(Ljava/lang/String;ILjava/lang/String;[JIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v8

    .line 193
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelAmigoVibrate(Ljava/lang/String;)V
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IVibratorService;->cancelAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 48
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->hasVibrator()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isAmigoVibrator(Ljava/lang/String;)Z
    .locals 3
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 137
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1, p1}, Landroid/os/IVibratorService;->isAmigoVibrator(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 63
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 64
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {p5}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    iget-object v7, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v1 .. v7}, Landroid/os/IVibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_0
    array-length v0, p3

    if-ge p4, v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {p5}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v5

    iget-object v6, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v7

    .line 92
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public vibrateEx([B)V
    .locals 3
    .param p1, "params"    # [B

    .prologue
    .line 118
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 120
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Landroid/os/IVibratorService;->vibrateEx([BLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
