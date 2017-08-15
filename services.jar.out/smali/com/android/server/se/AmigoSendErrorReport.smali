.class public Lcom/android/server/se/AmigoSendErrorReport;
.super Ljava/lang/Object;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;,
        Lcom/android/server/se/AmigoSendErrorReport$SystemLog;,
        Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    }
.end annotation


# static fields
.field private static final ACTION_FRAMEEORK_SEND_LOG:Ljava/lang/String; = "com.gionee.telepath.action.FRAMEWORK_SEND_LOG"

.field private static final ACTION_MTK_EXCEPTION_HAPPEND:Ljava/lang/String; = "com.mediatek.log2server.EXCEPTION_HAPPEND"

.field private static final APPID_FOR_YOUJU:Ljava/lang/String; = "A36A627762AB4605ADFFC2AD959FDD09"

.field private static final DOMAIN:Ljava/lang/String; = "http://telepath.gionee.com"

.field private static final LOG_DIR:Ljava/lang/String; = "/data/errorlog/logs"

.field private static final POST_SYSTEMLOG_PATH:Ljava/lang/String; = "/tlp-api/fb/savelog.do"

.field private static final PROPERTY_MTK_AEE_DB:Ljava/lang/String; = "debug.mtk.aee.db"

.field private static final SEND_BY_FW_WITHOUTLOG:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AmigoSendErrorReport"

.field private static final TEST_DOMAIN:Ljava/lang/String; = "http://test1.gionee.com:8180"

.field private static final TEST_FILE_NAME:Ljava/lang/String; = "/data/local/tmp/SendErrorTest"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final ZIP_DIR:Ljava/lang/String; = "/data/errorlog/zip"

.field private static final ZIP_LOG_PATH:Ljava/lang/String; = "/data/errorlog/zip/log.zip"

.field private static mInstance:Lcom/android/server/se/AmigoSendErrorReport;


# instance fields
.field private mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

.field private mContext:Landroid/content/Context;

.field private mGNRSAHelper:Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;

.field mSendLogReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/se/AmigoSendErrorReport;->mInstance:Lcom/android/server/se/AmigoSendErrorReport;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    invoke-direct {v0, p0}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;-><init>(Lcom/android/server/se/AmigoSendErrorReport;)V

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    .line 67
    new-instance v0, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;

    invoke-direct {v0, p0}, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;-><init>(Lcom/android/server/se/AmigoSendErrorReport;)V

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport;->mGNRSAHelper:Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;

    .line 89
    new-instance v0, Lcom/android/server/se/AmigoSendErrorReport$1;

    invoke-direct {v0, p0}, Lcom/android/server/se/AmigoSendErrorReport$1;-><init>(Lcom/android/server/se/AmigoSendErrorReport;)V

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport;->mSendLogReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/se/AmigoSendErrorReport;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/se/AmigoSendErrorReport;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/se/AmigoSendErrorReport;->sendErrorLog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/se/AmigoSendErrorReport;->handleExceptionHanppened(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/se/AmigoSendErrorReport;->handleRebootHanppened(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport;->mCommonUtil:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/se/AmigoSendErrorReport;)Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport;->mGNRSAHelper:Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/se/AmigoSendErrorReport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/se/AmigoSendErrorReport;->isTestEnv()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/se/AmigoSendErrorReport;ZLcom/android/server/se/AmigoSendErrorReport$SystemLog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/se/AmigoSendErrorReport;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/server/se/AmigoSendErrorReport$SystemLog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/se/AmigoSendErrorReport;->sendSystemLog(ZLcom/android/server/se/AmigoSendErrorReport$SystemLog;)V

    return-void
.end method

.method private assembleMultiBody(Ljava/io/File;Lcom/android/server/se/mime/MultipartEntity;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entity"    # Lcom/android/server/se/mime/MultipartEntity;

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    new-instance v0, Lcom/android/server/se/mime/content/FileBody;

    invoke-direct {v0, p1}, Lcom/android/server/se/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 283
    .local v0, "body":Lcom/android/server/se/mime/content/FileBody;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/android/server/se/mime/MultipartEntity;->addPart(Ljava/lang/String;Lcom/android/server/se/mime/content/ContentBody;)V

    goto :goto_0
.end method

.method private assembleMultiBody(Ljava/lang/String;ILcom/android/server/se/mime/MultipartEntity;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "entity"    # Lcom/android/server/se/mime/MultipartEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p2, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V

    goto :goto_0
.end method

.method private assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "entity"    # Lcom/android/server/se/mime/MultipartEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 266
    if-nez p2, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    new-instance v0, Lcom/android/server/se/mime/content/StringBody;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/server/se/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 269
    .local v0, "body":Lcom/android/server/se/mime/content/StringBody;
    invoke-virtual {p3, p1, v0}, Lcom/android/server/se/mime/MultipartEntity;->addPart(Ljava/lang/String;Lcom/android/server/se/mime/content/ContentBody;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/se/AmigoSendErrorReport;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/server/se/AmigoSendErrorReport;->mInstance:Lcom/android/server/se/AmigoSendErrorReport;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/server/se/AmigoSendErrorReport;->mInstance:Lcom/android/server/se/AmigoSendErrorReport;

    .line 78
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v0, Lcom/android/server/se/AmigoSendErrorReport;

    invoke-direct {v0}, Lcom/android/server/se/AmigoSendErrorReport;-><init>()V

    sput-object v0, Lcom/android/server/se/AmigoSendErrorReport;->mInstance:Lcom/android/server/se/AmigoSendErrorReport;

    .line 78
    sget-object v0, Lcom/android/server/se/AmigoSendErrorReport;->mInstance:Lcom/android/server/se/AmigoSendErrorReport;

    goto :goto_0
.end method

.method private handleExceptionHanppened(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbFileName"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Lcom/android/server/se/AmigoSendErrorReport$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/se/AmigoSendErrorReport$2;-><init>(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/String;)V

    .line 148
    .local v0, "handleExceptionThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    return-void
.end method

.method private handleRebootHanppened(Ljava/lang/String;)V
    .locals 1
    .param p1, "dbFileName"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/android/server/se/AmigoSendErrorReport$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/se/AmigoSendErrorReport$3;-><init>(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/String;)V

    .line 183
    .local v0, "handleExceptionThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method private isTestEnv()Z
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/SendErrorTest"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x1

    .line 231
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendErrorLog(Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p1, "messag"    # Ljava/lang/CharSequence;
    .param p2, "saveLog"    # Z

    .prologue
    .line 187
    move-object v0, p1

    .line 188
    .local v0, "msg":Ljava/lang/CharSequence;
    const-string v2, "AmigoSendErrorReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Lcom/android/server/se/AmigoSendErrorReport$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/se/AmigoSendErrorReport$4;-><init>(Lcom/android/server/se/AmigoSendErrorReport;Ljava/lang/CharSequence;Z)V

    .line 223
    .local v1, "sendThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 224
    return-void
.end method

.method private sendSystemLog(ZLcom/android/server/se/AmigoSendErrorReport$SystemLog;)V
    .locals 9
    .param p1, "test"    # Z
    .param p2, "systemLog"    # Lcom/android/server/se/AmigoSendErrorReport$SystemLog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/se/AmigoSEException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    new-instance v4, Lcom/android/server/se/mime/MultipartEntity;

    sget-object v5, Lcom/android/server/se/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/android/server/se/mime/HttpMultipartMode;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/se/mime/MultipartEntity;-><init>(Lcom/android/server/se/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 239
    .local v4, "me":Lcom/android/server/se/mime/MultipartEntity;
    move-object v0, v4

    .line 241
    :try_start_0
    const-string v5, "type"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getType()I

    move-result v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;ILcom/android/server/se/mime/MultipartEntity;)V

    .line 242
    const-string v5, "model"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getModel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V

    .line 243
    const-string v5, "uuid"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V

    .line 244
    const-string v5, "sign"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getSign()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V

    .line 245
    const-string v5, "imei"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getImei()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V

    .line 246
    const-string v5, "tag"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getTag()I

    move-result v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;ILcom/android/server/se/mime/MultipartEntity;)V

    .line 247
    const-string v5, "description"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V

    .line 248
    const-string v5, "version"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/se/mime/MultipartEntity;)V

    .line 250
    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getApp()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 251
    const-string v5, "app"

    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getApp()I

    move-result v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/lang/String;ILcom/android/server/se/mime/MultipartEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v5, "http://test1.gionee.com:8180"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/tlp-api/fb/savelog.do"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    const-string v8, ""

    invoke-static {v5, v0, v6, v7, v8}, Lcom/android/server/se/HttpClientHelper;->invokeByPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;ZLjava/lang/String;)I

    .line 262
    return-void

    .line 253
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->getAttachments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 254
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0, v2, v4}, Lcom/android/server/se/AmigoSendErrorReport;->assembleMultiBody(Ljava/io/File;Lcom/android/server/se/mime/MultipartEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 257
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "AmigoSendErrorReport"

    const-string v6, "sendSystemLog "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 261
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v5, "http://telepath.gionee.com"

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.gionee.telepath.action.FRAMEWORK_SEND_LOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "com.mediatek.log2server.EXCEPTION_HAPPEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/server/se/AmigoSendErrorReport;->mSendLogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method
