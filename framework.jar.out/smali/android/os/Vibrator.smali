.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# instance fields
.field private final DEFAULT_DURATION:J

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Vibrator;->DEFAULT_DURATION:J

    .line 40
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/Vibrator;->DEFAULT_DURATION:J

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public amigoVibrate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/os/Vibrator;->amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 198
    return-void
.end method

.method public abstract amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
.end method

.method public abstract amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
.end method

.method public amigoVibrate(Ljava/lang/String;)V
    .locals 2
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 167
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Vibrator;->amigoVibrate(Ljava/lang/String;J)V

    .line 168
    return-void
.end method

.method public abstract amigoVibrate(Ljava/lang/String;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
.end method

.method public abstract amigoVibrate(Ljava/lang/String;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
.end method

.method public amigoVibrate(Ljava/lang/String;J)V
    .locals 2
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/Vibrator;->amigoVibrate(Ljava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 172
    return-void
.end method

.method public amigoVibrate(Ljava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 8
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "milliseconds"    # J
    .param p4, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/os/Vibrator;->amigoVibrate(Ljava/lang/String;ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 176
    return-void
.end method

.method public amigoVibrate(Ljava/lang/String;[JI)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/Vibrator;->amigoVibrate(Ljava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 180
    return-void
.end method

.method public amigoVibrate(Ljava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "pattern"    # [J
    .param p3, "repeat"    # I
    .param p4, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/os/Vibrator;->amigoVibrate(Ljava/lang/String;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 184
    return-void
.end method

.method public abstract cancel()V
.end method

.method public abstract cancelAmigoVibrate(Ljava/lang/String;)V
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract isAmigoVibrator(Ljava/lang/String;)Z
.end method

.method public abstract vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
.end method

.method public abstract vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
.end method

.method public vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 66
    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 81
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 105
    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .locals 6
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 133
    return-void
.end method

.method public abstract vibrateEx([B)V
.end method
