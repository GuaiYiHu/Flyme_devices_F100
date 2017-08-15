.class public Lcom/amigovibrator/AmigoVibratorCustomer;
.super Ljava/lang/Object;
.source "AmigoVibratorCustomer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoVibrator"

.field private static mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;


# instance fields
.field mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    .line 29
    const-string/jumbo v1, "ro.amigo.vibrator"

    const-string v2, "immersion"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/amigovibrator/AmigoVibratorFactory;->initVibrator(Ljava/lang/String;Landroid/content/Context;)Lcom/amigovibrator/AmigoVibrator;

    move-result-object v1

    iput-object v1, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amigovibrator/AmigoVibratorCustomer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    .line 41
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/amigovibrator/AmigoVibratorCustomer;

    invoke-direct {v0, p0}, Lcom/amigovibrator/AmigoVibratorCustomer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    .line 41
    sget-object v0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibratorCustomer:Lcom/amigovibrator/AmigoVibratorCustomer;

    goto :goto_0
.end method


# virtual methods
.method public getAllEffectNames()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    invoke-virtual {v0}, Lcom/amigovibrator/AmigoVibrator;->getAllEffectNames()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEffective(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    invoke-virtual {v0, p1}, Lcom/amigovibrator/AmigoVibrator;->isEffective(Ljava/lang/String;)Z

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playAmigoVibrate(Lcom/amigovibrator/AmigoVibratorInfo;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "effectInfo"    # Lcom/amigovibrator/AmigoVibratorInfo;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    invoke-virtual {v0, p1, p2}, Lcom/amigovibrator/AmigoVibrator;->playAmigoVibrate(Lcom/amigovibrator/AmigoVibratorInfo;Landroid/os/IBinder;)V

    .line 76
    :cond_0
    return-void
.end method

.method public playAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    invoke-virtual {v0, p1, p2}, Lcom/amigovibrator/AmigoVibrator;->playAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    :cond_0
    return-void
.end method

.method public stopAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "effectName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amigovibrator/AmigoVibratorCustomer;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    invoke-virtual {v0, p1, p2}, Lcom/amigovibrator/AmigoVibrator;->stopAmigoVibrate(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    :cond_0
    return-void
.end method
