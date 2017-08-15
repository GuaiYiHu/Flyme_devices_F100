.class public Lcom/android/server/se/AmigoSEException;
.super Ljava/lang/Exception;
.source "AmigoSEException.java"


# static fields
.field public static final INVALID_NEWWORK:I = 0x7d0

.field public static final INVALID_RECEIVE_DATA:I = 0x3e8

.field public static final INVALID_REQUEST_DATA:I = 0x257

.field public static final NO_PERMISSION:I = 0x193

.field public static final SERVER_ERROR:I = 0x1f4

.field public static final SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final TIMEOUT:I = 0x198

.field public static final UNKNOW:I = -0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 25
    invoke-static {p1}, Lcom/android/server/se/AmigoSEException;->errorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/se/AmigoSEException;-><init>(ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    iput p1, p0, Lcom/android/server/se/AmigoSEException;->code:I

    .line 31
    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 35
    iput p1, p0, Lcom/android/server/se/AmigoSEException;->code:I

    .line 36
    return-void
.end method

.method private static errorMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 43
    sparse-switch p0, :sswitch_data_0

    .line 59
    const-string v0, "unknow exception!!!"

    :goto_0
    return-object v0

    .line 45
    :sswitch_0
    const-string v0, "network timeout!!!"

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "no permission!!!"

    goto :goto_0

    .line 49
    :sswitch_2
    const-string v0, "server error!!!"

    goto :goto_0

    .line 51
    :sswitch_3
    const-string v0, "service unavailable!!!"

    goto :goto_0

    .line 53
    :sswitch_4
    const-string v0, "request data is invalid!!!"

    goto :goto_0

    .line 55
    :sswitch_5
    const-string v0, "recevive data is invalid!!!"

    goto :goto_0

    .line 57
    :sswitch_6
    const-string v0, "invalid network!!!"

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_1
        0x198 -> :sswitch_0
        0x1f4 -> :sswitch_2
        0x1f7 -> :sswitch_3
        0x257 -> :sswitch_4
        0x3e8 -> :sswitch_5
        0x7d0 -> :sswitch_6
    .end sparse-switch
.end method

.method static inDefinitiveError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 63
    const/16 v0, 0x198

    if-eq p0, v0, :cond_0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x257

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/se/AmigoSEException;->code:I

    return v0
.end method
