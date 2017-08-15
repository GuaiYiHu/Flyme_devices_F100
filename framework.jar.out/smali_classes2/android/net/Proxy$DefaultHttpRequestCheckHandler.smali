.class Landroid/net/Proxy$DefaultHttpRequestCheckHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestCheckHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpRequestCheckHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    return-void
.end method


# virtual methods
.method public amigoCheckMmsPerm()Z
    .locals 4

    .prologue
    .line 377
    const-string v1, "Proxy"

    const-string v2, "amigoCheckMmsPerm for mms"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v1, Landroid/app/AmigoActivityManager;

    invoke-direct {v1}, Landroid/app/AmigoActivityManager;-><init>()V

    const-string v2, "android.permission.SEND_SMS_MMS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/AmigoActivityManager;->amigoCheckPermmison(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 379
    .local v0, "bGranted":Z
    :goto_0
    return v0

    .line 378
    .end local v0    # "bGranted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkEmailSendRequest()Z
    .locals 2

    .prologue
    .line 371
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission for email"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v0, "sub-permission.SEND_EMAIL"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkMmsSendRequest()Z
    .locals 2

    .prologue
    .line 365
    const-string v0, "Proxy"

    const-string v1, "checkCtaPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v0, "sub-permission.SEND_MMS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
