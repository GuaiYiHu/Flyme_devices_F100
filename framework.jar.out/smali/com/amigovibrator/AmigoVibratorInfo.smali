.class public Lcom/amigovibrator/AmigoVibratorInfo;
.super Ljava/lang/Object;
.source "AmigoVibratorInfo.java"


# static fields
.field public static final EFFECT_NAME:Ljava/lang/String; = "effect_name"

.field public static final EFFECT_ON:Ljava/lang/String; = "effect_on"

.field public static final EFFECT_PLAY_ALWAYS:Ljava/lang/String; = "always"

.field public static final EFFECT_REPEAT:Ljava/lang/String; = "effect_repeat"

.field public static final EFFECT_RINGING:Ljava/lang/String; = "ringing"

.field public static final EFFECT_RING_STATE:Ljava/lang/String; = "effect_ring_state"


# instance fields
.field private effectName:Ljava/lang/String;

.field private repeat:I

.field private ringing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/amigovibrator/AmigoVibratorInfo;->effectName:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/amigovibrator/AmigoVibratorInfo;->repeat:I

    .line 31
    iput-boolean v1, p0, Lcom/amigovibrator/AmigoVibratorInfo;->ringing:Z

    .line 32
    return-void
.end method


# virtual methods
.method public getEffectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorInfo;->effectName:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectRepeat()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/amigovibrator/AmigoVibratorInfo;->repeat:I

    return v0
.end method

.method public getRingState()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/amigovibrator/AmigoVibratorInfo;->ringing:Z

    return v0
.end method

.method public setEffectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amigovibrator/AmigoVibratorInfo;->effectName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setEffectRepeat(I)V
    .locals 0
    .param p1, "times"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/amigovibrator/AmigoVibratorInfo;->repeat:I

    .line 44
    return-void
.end method

.method public setRingState(Z)V
    .locals 0
    .param p1, "isRinging"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/amigovibrator/AmigoVibratorInfo;->ringing:Z

    .line 52
    return-void
.end method
