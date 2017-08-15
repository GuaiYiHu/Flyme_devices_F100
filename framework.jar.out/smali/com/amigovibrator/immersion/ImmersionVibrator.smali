.class public Lcom/amigovibrator/immersion/ImmersionVibrator;
.super Lcom/amigovibrator/AmigoVibrator;
.source "ImmersionVibrator.java"


# static fields
.field private static immersion:Lcom/amigovibrator/immersion/ImmersionVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/amigovibrator/immersion/ImmersionVibrator;->immersion:Lcom/amigovibrator/immersion/ImmersionVibrator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/amigovibrator/AmigoVibrator;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amigovibrator/immersion/ImmersionVibrator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/amigovibrator/immersion/ImmersionVibrator;->immersion:Lcom/amigovibrator/immersion/ImmersionVibrator;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/amigovibrator/immersion/ImmersionVibrator;->immersion:Lcom/amigovibrator/immersion/ImmersionVibrator;

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/amigovibrator/immersion/ImmersionVibrator;

    invoke-direct {v0, p0}, Lcom/amigovibrator/immersion/ImmersionVibrator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amigovibrator/immersion/ImmersionVibrator;->immersion:Lcom/amigovibrator/immersion/ImmersionVibrator;

    .line 34
    sget-object v0, Lcom/amigovibrator/immersion/ImmersionVibrator;->immersion:Lcom/amigovibrator/immersion/ImmersionVibrator;

    goto :goto_0
.end method
