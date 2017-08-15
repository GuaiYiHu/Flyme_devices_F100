.class public abstract Lcom/amigovibrator/AmigoVibrator;
.super Ljava/lang/Object;
.source "AmigoVibrator.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amigovibrator/AmigoVibrator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAllEffectNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEffective(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public playAmigoVibrate(Lcom/amigovibrator/AmigoVibratorInfo;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "effectInfo"    # Lcom/amigovibrator/AmigoVibratorInfo;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 43
    return-void
.end method

.method public playAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 32
    return-void
.end method

.method public stopAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 35
    return-void
.end method
