.class public final Lcom/android/server/se/HttpClientHelper;
.super Ljava/lang/Object;
.source "HttpClientHelper.java"


# static fields
.field private static final CONNECTION_TIME_OUT:I = 0x4e20

.field private static final SOCKET_BUFFER_SIZE:I = 0x800

.field private static final SO_TIME_OUT:I = 0x1d4c0

.field private static volatile httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static consume(Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 63
    if-nez p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 69
    .local v0, "instream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "instream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lorg/apache/http/HttpResponse;
    .locals 12
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "gzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x193

    const/16 v10, 0x7d0

    const/16 v9, 0x257

    const/16 v8, 0x198

    .line 145
    invoke-static {}, Lcom/android/server/se/HttpClientHelper;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 146
    .local v1, "hc":Lorg/apache/http/client/HttpClient;
    const/4 v2, 0x0

    .line 147
    .local v2, "resp":Lorg/apache/http/HttpResponse;
    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "Accept-Encoding"

    const-string v7, "gzip, deflate"

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 151
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 163
    .local v3, "status":I
    if-ne v3, v11, :cond_1

    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, "token":Ljava/lang/String;
    const-string v5, "Authorization"

    invoke-interface {p0, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 166
    const-string v5, "Authorization"

    invoke-interface {p0, v5, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_1
    invoke-interface {v1, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 180
    .end local v3    # "status":I
    .end local v4    # "token":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 181
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 184
    :cond_2
    return-object v2

    .line 169
    .restart local v3    # "status":I
    .restart local v4    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ex":Lorg/apache/http/client/ClientProtocolException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v9}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 171
    .end local v0    # "ex":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v8}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 173
    .end local v0    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_2
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v8}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 175
    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v10, v0}, Lcom/android/server/se/AmigoSEException;-><init>(ILjava/lang/Throwable;)V

    throw v5

    .line 152
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "status":I
    .end local v4    # "token":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 153
    .local v0, "ex":Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    const/16 v6, 0x257

    invoke-direct {v5, v6}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v0    # "ex":Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 162
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 163
    .restart local v3    # "status":I
    if-ne v3, v11, :cond_3

    .line 164
    const/4 v4, 0x0

    .line 165
    .restart local v4    # "token":Ljava/lang/String;
    const-string v6, "Authorization"

    invoke-interface {p0, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 166
    const-string v6, "Authorization"

    invoke-interface {p0, v6, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_3
    invoke-interface {v1, p0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v2

    .line 180
    .end local v3    # "status":I
    .end local v4    # "token":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_4

    .line 181
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_4
    throw v5

    .line 154
    :catch_5
    move-exception v0

    .line 155
    .local v0, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_4
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    const/16 v6, 0x198

    invoke-direct {v5, v6}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 156
    .end local v0    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_6
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    const/16 v6, 0x198

    invoke-direct {v5, v6}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 158
    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    :catch_7
    move-exception v0

    .line 159
    .local v0, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    const/16 v6, 0x7d0

    invoke-direct {v5, v6, v0}, Lcom/android/server/se/AmigoSEException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "status":I
    .restart local v4    # "token":Ljava/lang/String;
    :catch_8
    move-exception v0

    .line 170
    .local v0, "ex":Lorg/apache/http/client/ClientProtocolException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v9}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 171
    .end local v0    # "ex":Lorg/apache/http/client/ClientProtocolException;
    :catch_9
    move-exception v0

    .line 172
    .local v0, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v8}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 173
    .end local v0    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_a
    move-exception v0

    .line 174
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v8}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v5

    .line 175
    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    :catch_b
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v5, v10, v0}, Lcom/android/server/se/AmigoSEException;-><init>(ILjava/lang/Throwable;)V

    throw v5
.end method

.method private static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {v0, v0}, Lcom/android/server/se/HttpClientHelper;->getHttpClient(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method static getHttpClient(Ljava/lang/String;Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 2
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v1, Lcom/android/server/se/HttpClientHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_1

    .line 47
    sget-object v1, Lcom/android/server/se/HttpClientHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v1, :cond_1

    .line 49
    if-nez p0, :cond_0

    .line 50
    const-string p0, "unknow"

    .line 52
    :cond_0
    invoke-static {p0, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    sput-object v1, Lcom/android/server/se/HttpClientHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 53
    sget-object v1, Lcom/android/server/se/HttpClientHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 54
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x800

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    const v1, 0x1d4c0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 59
    .end local v0    # "params":Lorg/apache/http/params/HttpParams;
    :cond_1
    sget-object v1, Lcom/android/server/se/HttpClientHelper;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v1
.end method

.method public static invokeByGet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/se/HttpClientHelper;->invokeByGet(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static invokeByGet(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "gzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/se/HttpClientHelper;->invokeByGet(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static invokeByGet(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "gzip"    # Z
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v1, "AmigoSendErrorReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeByGet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-static {v0, p3}, Lcom/android/server/se/HttpClientHelper;->setAuthorization(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 210
    invoke-static {v0, p2}, Lcom/android/server/se/HttpClientHelper;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/se/HttpClientHelper;->parseResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static invokeByPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/se/HttpClientHelper;->invokeByPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static invokeByPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "gzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/se/HttpClientHelper;->invokeByPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static invokeByPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "gzip"    # Z
    .param p4, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    const-string v1, "AmigoSendErrorReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post HttpEntity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-static {v0, p4}, Lcom/android/server/se/HttpClientHelper;->setAuthorization(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 235
    invoke-static {v0, p3}, Lcom/android/server/se/HttpClientHelper;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/se/HttpClientHelper;->parseResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 230
    .end local v0    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static parseEntity(Lorg/apache/http/HttpEntity;Ljava/lang/String;)I
    .locals 13
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x3e8

    .line 80
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v9

    if-nez v9, :cond_0

    .line 81
    new-instance v9, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v9, v10}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v9

    .line 83
    :cond_0
    const/4 v7, 0x0

    .line 84
    .local v7, "result":I
    const/4 v1, 0x0

    .line 85
    .local v1, "gzip":Z
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 86
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    const/4 v1, 0x1

    .line 89
    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 90
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v8, "sb":Ljava/lang/StringBuffer;
    if-eqz v1, :cond_3

    .line 95
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    const/16 v12, 0x800

    invoke-direct {v10, v11, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v9, v10, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 100
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 101
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 108
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/net/SocketTimeoutException;
    :try_start_1
    new-instance v9, Lcom/android/server/se/AmigoSEException;

    const/16 v10, 0x198

    invoke-direct {v9, v10}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v0    # "ex":Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v9

    invoke-static {p0}, Lcom/android/server/se/HttpClientHelper;->consume(Lorg/apache/http/HttpEntity;)V

    throw v9

    .line 87
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 98
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 103
    .restart local v4    # "line":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "jsonResult":Ljava/lang/String;
    const-string v9, "AmigoSendErrorReport"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response Content: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 106
    new-instance v9, Lcom/android/server/se/AmigoSEException;

    const/16 v10, 0x3e8

    invoke-direct {v9, v10}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v9
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v3    # "jsonResult":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v9, Lcom/android/server/se/AmigoSEException;

    const/16 v10, 0x7d0

    invoke-direct {v9, v10}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "jsonResult":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/android/server/se/HttpClientHelper;->consume(Lorg/apache/http/HttpEntity;)V

    .line 115
    return v7
.end method

.method private static parseResponse(Lorg/apache/http/HttpResponse;Ljava/lang/String;)I
    .locals 7
    .param p0, "resp"    # Lorg/apache/http/HttpResponse;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "result":I
    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 124
    .local v3, "status":I
    const-string v4, "AmigoSendErrorReport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response status code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 126
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 127
    .local v0, "he":Lorg/apache/http/HttpEntity;
    move v2, v3

    .line 141
    .end local v0    # "he":Lorg/apache/http/HttpEntity;
    .end local v3    # "status":I
    :cond_0
    return v2

    .line 128
    .restart local v3    # "status":I
    :cond_1
    invoke-static {v3}, Lcom/android/server/se/AmigoSEException;->inDefinitiveError(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 129
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 130
    .local v1, "responseEntity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_2

    .line 132
    :try_start_0
    const-string v4, "AmigoSendErrorReport"

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_2
    :goto_0
    new-instance v4, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v4, v3}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v4

    .line 138
    .end local v1    # "responseEntity":Lorg/apache/http/HttpEntity;
    :cond_3
    new-instance v4, Lcom/android/server/se/AmigoSEException;

    const/4 v5, -0x1

    const-string v6, "unknow response code"

    invoke-direct {v4, v5, v6}, Lcom/android/server/se/AmigoSEException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 133
    .restart local v1    # "responseEntity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static postData(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 241
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/se/HttpClientHelper;->executeRequest(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 242
    .local v1, "resp":Lorg/apache/http/HttpResponse;
    if-eqz v1, :cond_0

    .line 243
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 245
    .local v2, "status":I
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 253
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/se/HttpClientHelper;->consume(Lorg/apache/http/HttpEntity;)V

    .line 256
    .end local v2    # "status":I
    :cond_0
    return-void

    .line 247
    .restart local v2    # "status":I
    :cond_1
    :try_start_0
    invoke-static {v2}, Lcom/android/server/se/AmigoSEException;->inDefinitiveError(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    new-instance v3, Lcom/android/server/se/AmigoSEException;

    invoke-direct {v3, v2}, Lcom/android/server/se/AmigoSEException;-><init>(I)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/se/HttpClientHelper;->consume(Lorg/apache/http/HttpEntity;)V

    throw v3

    .line 250
    :cond_2
    :try_start_1
    new-instance v3, Lcom/android/server/se/AmigoSEException;

    const/4 v4, -0x1

    const-string v5, "unknow response code"

    invoke-direct {v3, v4, v5}, Lcom/android/server/se/AmigoSEException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method private static setAuthorization(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V
    .locals 1
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    const-string v0, "Authorization"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    return-void
.end method
