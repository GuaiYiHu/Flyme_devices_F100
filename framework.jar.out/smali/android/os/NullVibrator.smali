.class public Landroid/os/NullVibrator;
.super Landroid/os/Vibrator;
.source "NullVibrator.java"


# static fields
.field private static final sInstance:Landroid/os/NullVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/NullVibrator;

    invoke-direct {v0}, Landroid/os/NullVibrator;-><init>()V

    sput-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Landroid/os/NullVibrator;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-object v0
.end method


# virtual methods
.method public amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 103
    return-void
.end method

.method public amigoVibrate(Landroid/os/Bundle;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 110
    array-length v0, p4

    if-lt p5, v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 113
    :cond_0
    return-void
.end method

.method public amigoVibrate(Ljava/lang/String;ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "milliseconds"    # J
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 82
    invoke-virtual {p0, p1, p4, p5}, Landroid/os/NullVibrator;->amigoVibrate(Ljava/lang/String;J)V

    .line 83
    return-void
.end method

.method public amigoVibrate(Ljava/lang/String;ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "pattern"    # [J
    .param p5, "repeat"    # I
    .param p6, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 90
    array-length v0, p4

    if-lt p5, v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 93
    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public cancelAmigoVibrate(Ljava/lang/String;)V
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isAmigoVibrator(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 46
    invoke-virtual {p0, p3, p4}, Landroid/os/NullVibrator;->vibrate(J)V

    .line 47
    return-void
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 55
    array-length v0, p3

    if-lt p4, v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method public vibrateEx([B)V
    .locals 0
    .param p1, "params"    # [B

    .prologue
    .line 66
    return-void
.end method
