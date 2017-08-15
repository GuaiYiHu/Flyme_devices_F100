.class public Lcom/mediatek/xcap/client/XcapClient;
.super Ljava/lang/Object;
.source "XcapClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLTrustAllSocketFactory;,
        Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;,
        Lcom/mediatek/xcap/client/XcapClient$DedicatedNetworkSSLSocketFactory;
    }
.end annotation


# static fields
.field private static final ACTION_GBA_FORBIDDEN:Ljava/lang/String; = "android.intent.action.ACTION_GBA_FORBIDDEN"

.field private static final ENGLOG:Z

.field private static final MAX_SOCKET_CONNECTION:I = 0x1e

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "XcapClient"

.field private static final TLS_TRUST_ALL:Z = true


# instance fields
.field private mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mContext:Landroid/content/Context;

.field private mCredentials:Lorg/apache/http/auth/Credentials;

.field private mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsGbaForbidden:Z

.field private mNetwork:Landroid/net/Network;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Lcom/mediatek/xcap/client/NameResolver;

.field private mShouldUseIpv6:Z

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/xcap/client/XcapClient;->ENGLOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 117
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    .line 133
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->composeUserAgent()V

    .line 134
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 117
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    .line 153
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->composeUserAgent()V

    .line 155
    if-eqz p1, :cond_0

    .line 156
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 157
    new-instance v0, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    invoke-direct {v0, v1}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/net/Network;Z)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "shouldUseIpv6"    # Z

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 117
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    .line 170
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->composeUserAgent()V

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 174
    new-instance v0, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    invoke-direct {v0, v1}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    .line 175
    iput-boolean p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mShouldUseIpv6:Z

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 117
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    .line 143
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Network;)V
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 117
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    .line 188
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 190
    if-eqz p2, :cond_0

    .line 191
    iput-object p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 192
    new-instance v0, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    invoke-direct {v0, v1}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Network;Z)V
    .locals 2
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "network"    # Landroid/net/Network;
    .param p3, "shouldUseIpv6"    # Z

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 107
    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 117
    invoke-static {}, Lcom/mediatek/xcap/client/XcapDebugParam;->getInstance()Lcom/mediatek/xcap/client/XcapDebugParam;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    .line 206
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 208
    if-eqz p2, :cond_0

    .line 209
    iput-object p2, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    .line 210
    new-instance v0, Lcom/mediatek/xcap/client/NetworkSpecificResolver;

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    invoke-direct {v0, v1}, Lcom/mediatek/xcap/client/NetworkSpecificResolver;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    .line 211
    iput-boolean p3, p0, Lcom/mediatek/xcap/client/XcapClient;->mShouldUseIpv6:Z

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/xcap/client/XcapClient;->initialize()V

    .line 215
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/xcap/client/XcapClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/xcap/client/XcapClient;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/xcap/client/XcapClient;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/xcap/client/XcapClient;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method private composeUserAgent()V
    .locals 4

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "isGbaEnabled":Z
    const-string v2, "GbaService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 229
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 230
    const-string v2, "XcapClient"

    const-string v3, "GbaService Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x1

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v2}, Lcom/mediatek/xcap/client/XcapDebugParam;->getXcapUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XCAP Client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    const-string v2, " 3gpp-gba"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 12
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v8, 0x3

    .line 403
    .local v8, "tryCount":I
    const/4 v7, 0x0

    .line 404
    .local v7, "success":Z
    const/4 v5, 0x0

    .line 406
    .local v5, "response":Lorg/apache/http/HttpResponse;
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    instance-of v9, v9, Lcom/mediatek/gba/GbaCredentials;

    if-eqz v9, :cond_0

    .line 407
    const-string v9, "XcapClient"

    const-string v10, "registerReceiver for GBA HTTP 403 forbidden"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/mediatek/xcap/client/XcapClient;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/mediatek/xcap/client/XcapClient;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    :cond_0
    const-string v9, "org.apache.http.wire"

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 415
    if-eqz p2, :cond_1

    .line 416
    move-object v0, p2

    .local v0, "arr$":[Lorg/apache/http/Header;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 417
    .local v2, "header":Lorg/apache/http/Header;
    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "arr$":[Lorg/apache/http/Header;
    .end local v2    # "header":Lorg/apache/http/Header;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    if-eqz v9, :cond_2

    .line 422
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v9

    new-instance v10, Lorg/apache/http/auth/AuthScope;

    sget-object v11, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    invoke-direct {v10, v11}, Lorg/apache/http/auth/AuthScope;-><init>(Lorg/apache/http/auth/AuthScope;)V

    iget-object v11, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    invoke-interface {v9, v10, v11}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 426
    :cond_2
    sget-boolean v9, Lcom/mediatek/xcap/client/XcapClient;->ENGLOG:Z

    if-eqz v9, :cond_3

    .line 427
    const-string v9, "XcapClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "execute:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_3
    :goto_1
    if-lez v8, :cond_5

    if-nez v7, :cond_5

    .line 432
    :try_start_1
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 434
    if-eqz v5, :cond_8

    .line 435
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 437
    .local v6, "statusCode":I
    const/16 v9, 0xc8

    if-eq v6, v9, :cond_4

    const/16 v9, 0x193

    if-ne v6, v9, :cond_6

    .line 438
    :cond_4
    const/4 v7, 0x1

    .line 471
    if-nez v7, :cond_5

    .line 472
    add-int/lit8 v8, v8, -0x1

    .line 474
    if-lez v8, :cond_5

    .line 475
    const-wide/16 v10, 0x1388

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    const-string v9, "XcapClient"

    const-string v10, "retry once"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 485
    .end local v6    # "statusCode":I
    :cond_5
    :goto_2
    return-object v5

    .line 440
    .restart local v6    # "statusCode":I
    :cond_6
    const/16 v9, 0x199

    if-ne v6, v9, :cond_9

    .line 441
    :try_start_3
    const-string v9, "true"

    const-string v10, "xcap.handl409"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_7

    .line 442
    const/4 v7, 0x1

    .line 471
    if-nez v7, :cond_5

    .line 472
    add-int/lit8 v8, v8, -0x1

    .line 474
    if-lez v8, :cond_5

    .line 475
    const-wide/16 v10, 0x1388

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    const-string v9, "XcapClient"

    const-string v10, "retry once"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 481
    .end local v6    # "statusCode":I
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 445
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "statusCode":I
    :cond_7
    :try_start_5
    const-string v9, "XcapClient"

    const-string v10, "HTTP status code is not 200 or 403"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 471
    .end local v6    # "statusCode":I
    :cond_8
    :goto_3
    if-nez v7, :cond_3

    .line 472
    add-int/lit8 v8, v8, -0x1

    .line 474
    if-lez v8, :cond_3

    .line 475
    const-wide/16 v10, 0x1388

    :try_start_6
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    const-string v9, "XcapClient"

    const-string v10, "retry once"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 447
    .restart local v6    # "statusCode":I
    :cond_9
    const/16 v9, 0x191

    if-ne v6, v9, :cond_a

    .line 448
    :try_start_7
    const-string v9, "gba.auth"

    const-string v10, "401"

    invoke-static {v9, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    const-string v9, "XcapClient"

    const-string v10, "HTTP status code is 401. Force to run GBA"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 454
    .end local v6    # "statusCode":I
    :catch_1
    move-exception v1

    .line 455
    .local v1, "e":Ljava/net/UnknownHostException;
    :try_start_8
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 471
    if-nez v7, :cond_3

    .line 472
    add-int/lit8 v8, v8, -0x1

    .line 474
    if-lez v8, :cond_3

    .line 475
    const-wide/16 v10, 0x1388

    :try_start_9
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    const-string v9, "XcapClient"

    const-string v10, "retry once"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 451
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v6    # "statusCode":I
    :cond_a
    :try_start_a
    const-string v9, "XcapClient"

    const-string v10, "HTTP status code is not 200 or 403 or 409"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 456
    .end local v6    # "statusCode":I
    :catch_2
    move-exception v1

    .line 457
    .local v1, "e":Ljava/io/IOException;
    :try_start_b
    const-string v9, "XcapClient"

    const-string v10, "got IOException !!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 459
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 471
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-nez v7, :cond_b

    .line 472
    add-int/lit8 v8, v8, -0x1

    .line 474
    if-lez v8, :cond_b

    .line 475
    const-wide/16 v10, 0x1388

    :try_start_c
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    const-string v10, "XcapClient"

    const-string v11, "retry once"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    throw v9
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    .line 460
    :catch_3
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x1

    .line 462
    :try_start_d
    const-string v9, "User name may not be null"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 463
    const-string v9, "XcapClient"

    const-string v10, "Credential user name may not be null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-boolean v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mIsGbaForbidden:Z

    if-eqz v9, :cond_c

    .line 465
    new-instance v9, Ljava/io/IOException;

    const-string v10, "GBA Authentication hit HTTP 403 Forbidden"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 468
    :cond_c
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 471
    :cond_d
    if-nez v7, :cond_3

    .line 472
    add-int/lit8 v8, v8, -0x1

    .line 474
    if-lez v8, :cond_3

    .line 475
    const-wide/16 v10, 0x1388

    :try_start_e
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    const-string v9, "XcapClient"

    const-string v10, "retry once"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1
.end method

.method private initialize()V
    .locals 14

    .prologue
    const/16 v11, 0x7530

    const/4 v10, 0x0

    const/16 v13, 0x1bb

    .line 242
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 243
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    sget-object v9, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 244
    invoke-static {v4, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 245
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mUserAgent:Ljava/lang/String;

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 246
    const-string v9, "UTF-8"

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 248
    invoke-static {v4, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 249
    invoke-static {v4, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 250
    invoke-static {v4, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 251
    invoke-static {v4, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoSndTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 252
    const/16 v9, 0x2000

    invoke-static {v4, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 254
    invoke-static {v4, v10}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 255
    const/4 v9, 0x1

    invoke-static {v4, v9}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    .line 258
    new-instance v0, Lcom/mediatek/xcap/client/XcapClient$1;

    invoke-direct {v0, p0}, Lcom/mediatek/xcap/client/XcapClient$1;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    .line 266
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    const-wide/16 v10, 0xbb8

    invoke-static {v4, v10, v11}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 267
    invoke-static {v4, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 268
    const/16 v9, 0x1e

    invoke-static {v4, v9}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 270
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 272
    .local v6, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 275
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mDebugParam:Lcom/mediatek/xcap/client/XcapDebugParam;

    invoke-virtual {v9}, Lcom/mediatek/xcap/client/XcapDebugParam;->getEnableXcapTrustAll()Z

    move-result v2

    .line 277
    .local v2, "isTrustAll":Z
    if-eqz v2, :cond_2

    .line 278
    const-string v9, "XcapClient"

    const-string v10, "XCAP trust all server"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    .line 283
    .local v8, "trustStore":Ljava/security/KeyStore;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 285
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    if-eqz v9, :cond_1

    .line 288
    new-instance v7, Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;

    invoke-direct {v7, p0, v8}, Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;-><init>(Lcom/mediatek/xcap/client/XcapClient;Ljava/security/KeyStore;)V

    .line 292
    .local v7, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    sget-object v9, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v7, v9}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 293
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    const/16 v11, 0x1bb

    invoke-direct {v9, v10, v7, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 334
    .end local v7    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v8    # "trustStore":Ljava/security/KeyStore;
    :goto_1
    new-instance v5, Lorg/apache/http/auth/AuthSchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/auth/AuthSchemeRegistry;-><init>()V

    .line 335
    .local v5, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    const-string v9, "Digest"

    new-instance v10, Lorg/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v10}, Lorg/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    .line 341
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    if-eqz v9, :cond_4

    .line 342
    const-string v9, "XcapClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network specific resolver netid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    invoke-virtual {v11}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v3, Lcom/mediatek/xcap/client/NetworkSpecificThreadSafeClientConnManager;

    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mResolver:Lcom/mediatek/xcap/client/NameResolver;

    iget-boolean v10, p0, Lcom/mediatek/xcap/client/XcapClient;->mShouldUseIpv6:Z

    invoke-direct {v3, v4, v6, v9, v10}, Lcom/mediatek/xcap/client/NetworkSpecificThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;Lcom/mediatek/xcap/client/NameResolver;Z)V

    .line 351
    .local v3, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    :goto_2
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v9, :cond_0

    .line 352
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 355
    :cond_0
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v10, Lcom/mediatek/xcap/client/XcapClient$2;

    invoke-direct {v10, p0}, Lcom/mediatek/xcap/client/XcapClient$2;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    invoke-virtual {v9, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 364
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    iput-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mIntentFilter:Landroid/content/IntentFilter;

    .line 365
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ACTION_GBA_FORBIDDEN"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    new-instance v9, Lcom/mediatek/xcap/client/XcapClient$3;

    invoke-direct {v9, p0}, Lcom/mediatek/xcap/client/XcapClient$3;-><init>(Lcom/mediatek/xcap/client/XcapClient;)V

    iput-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    return-void

    .line 290
    .end local v3    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v5    # "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    .restart local v8    # "trustStore":Ljava/security/KeyStore;
    :cond_1
    :try_start_1
    new-instance v7, Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;

    invoke-direct {v7, p0, v8}, Lcom/mediatek/xcap/client/XcapClient$SSLTrustAllSocketFactory;-><init>(Lcom/mediatek/xcap/client/XcapClient;Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .restart local v7    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0

    .line 295
    .end local v7    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v8    # "trustStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    invoke-direct {v9, v10, v11, v13}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_1

    .line 298
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 299
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v1

    .line 301
    .local v1, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto/16 :goto_1

    .line 302
    .end local v1    # "e":Ljava/security/KeyManagementException;
    :catch_3
    move-exception v1

    .line 303
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_1

    .line 304
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v1

    .line 305
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto/16 :goto_1

    .line 306
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_5
    move-exception v1

    .line 307
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto/16 :goto_1

    .line 308
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_6
    move-exception v1

    .line 309
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 312
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v9, p0, Lcom/mediatek/xcap/client/XcapClient;->mNetwork:Landroid/net/Network;

    if-eqz v9, :cond_3

    .line 326
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    invoke-direct {v9, v10, v11, v13}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_1

    .line 329
    :cond_3
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    invoke-direct {v9, v10, v11, v13}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto/16 :goto_1

    .line 347
    .restart local v5    # "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    :cond_4
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v4, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .restart local v3    # "manager":Lorg/apache/http/conn/ClientConnectionManager;
    goto/16 :goto_2
.end method

.method private setRequestEntity(Lorg/apache/http/client/methods/HttpPut;[BLjava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpPut;
    .param p2, "content"    # [B
    .param p3, "mimetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 490
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 492
    return-void
.end method


# virtual methods
.method public delete(Ljava/net/URI;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mediatek/xcap/client/XcapClient;->delete(Ljava/net/URI;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/net/URI;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .param p3, "eTag"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 614
    .local v0, "request":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p4, :cond_0

    .line 615
    invoke-virtual {v0, p4, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/mediatek/xcap/client/XcapClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/net/URI;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p2}, Lcom/mediatek/xcap/client/XcapClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 516
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 532
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/xcap/client/XcapClient;->put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/net/URI;Ljava/lang/String;[B[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "mimetype"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .param p4, "additionalRequestHeaders"    # [Lorg/apache/http/Header;
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 570
    .local v0, "request":Lorg/apache/http/client/methods/HttpPut;
    invoke-direct {p0, v0, p3, p2}, Lcom/mediatek/xcap/client/XcapClient;->setRequestEntity(Lorg/apache/http/client/methods/HttpPut;[BLjava/lang/String;)V

    .line 571
    if-eqz p6, :cond_0

    .line 572
    invoke-virtual {v0, p6, p5}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    invoke-direct {p0, v0, p4}, Lcom/mediatek/xcap/client/XcapClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public setAuthenticationCredentials(Lorg/apache/http/auth/Credentials;)V
    .locals 0
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    .line 384
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mCredentials:Lorg/apache/http/auth/Credentials;

    instance-of v0, v0, Lcom/mediatek/gba/GbaCredentials;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/mediatek/xcap/client/XcapClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/xcap/client/XcapClient;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    :cond_1
    return-void
.end method
