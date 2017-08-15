.class public Lcom/amigovibrator/AmigoVibratorFactory;
.super Ljava/lang/Object;
.source "AmigoVibratorFactory.java"


# static fields
.field private static mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/amigovibrator/AmigoVibratorFactory;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initVibrator(Ljava/lang/String;Landroid/content/Context;)Lcom/amigovibrator/AmigoVibrator;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    const-string v1, "immersion"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-static {p1}, Lcom/amigovibrator/immersion/ImmersionVibrator;->getInstance(Landroid/content/Context;)Lcom/amigovibrator/immersion/ImmersionVibrator;

    move-result-object v0

    sput-object v0, Lcom/amigovibrator/AmigoVibratorFactory;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    .line 30
    sget-object v0, Lcom/amigovibrator/AmigoVibratorFactory;->mAmigoVibrator:Lcom/amigovibrator/AmigoVibrator;

    goto :goto_0
.end method
