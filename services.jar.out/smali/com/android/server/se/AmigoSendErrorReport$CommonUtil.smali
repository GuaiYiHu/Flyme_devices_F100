.class Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
.super Ljava/lang/Object;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/se/AmigoSendErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommonUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;
    }
.end annotation


# instance fields
.field public final MAX_WATI_TIME:I

.field public mAppToken:Ljava/lang/String;

.field public mImei:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/se/AmigoSendErrorReport;


# direct methods
.method constructor <init>(Lcom/android/server/se/AmigoSendErrorReport;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->mAppToken:Ljava/lang/String;

    .line 288
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->mImei:Ljava/lang/String;

    .line 289
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->MAX_WATI_TIME:I

    .line 488
    return-void
.end method


# virtual methods
.method public delAllFile(Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "bea":Z
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v0

    .line 402
    .end local v0    # "bea":Z
    .local v1, "bea":I
    :goto_0
    return v1

    .line 382
    .end local v1    # "bea":I
    .restart local v0    # "bea":Z
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    move v1, v0

    .line 383
    .restart local v1    # "bea":I
    goto :goto_0

    .line 385
    .end local v1    # "bea":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, "tempList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 387
    .local v4, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 388
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 389
    new-instance v4, Ljava/io/File;

    .end local v4    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .restart local v4    # "temp":Ljava/io/File;
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 394
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 396
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->delAllFile(Ljava/lang/String;)Z

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->delFolder(Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x1

    .line 387
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 391
    :cond_4
    new-instance v4, Ljava/io/File;

    .end local v4    # "temp":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "temp":Ljava/io/File;
    goto :goto_2

    :cond_5
    move v1, v0

    .line 402
    .restart local v1    # "bea":I
    goto/16 :goto_0
.end method

.method public delFolder(Ljava/lang/String;)V
    .locals 3
    .param p1, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 367
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->delAllFile(Ljava/lang/String;)Z

    .line 368
    move-object v0, p1

    .line 369
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "myFilePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "myFilePath":Ljava/io/File;
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public do_exec([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 321
    const-string v8, ""

    .line 322
    .local v8, "result":Ljava/lang/String;
    new-instance v6, Ljava/lang/ProcessBuilder;

    invoke-direct {v6, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 323
    .local v6, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v5, 0x0

    .line 324
    .local v5, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 325
    .local v3, "errIs":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 327
    .local v4, "inIs":Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 328
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, -0x1

    .line 329
    .local v7, "read":I
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 330
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 331
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v11, :cond_3

    .line 332
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 341
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "read":I
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    if-eqz v3, :cond_0

    .line 348
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 350
    :cond_0
    if-eqz v4, :cond_1

    .line 351
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 357
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 358
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 361
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v8

    .line 334
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "read":I
    :cond_3
    const/16 v10, 0xa

    :try_start_3
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 336
    :goto_3
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v11, :cond_6

    .line 337
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 343
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "read":I
    :catch_1
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 347
    if-eqz v3, :cond_4

    .line 348
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 350
    :cond_4
    if-eqz v4, :cond_5

    .line 351
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 357
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v5, :cond_2

    .line 358
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 339
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "read":I
    :cond_6
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 340
    .local v1, "data":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 347
    .end local v8    # "result":Ljava/lang/String;
    .local v9, "result":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 348
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 350
    :cond_7
    if-eqz v4, :cond_8

    .line 351
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 357
    :cond_8
    :goto_5
    if-eqz v5, :cond_c

    .line 358
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    move-object v8, v9

    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_2

    .line 353
    .end local v8    # "result":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 354
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 353
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v7    # "read":I
    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 354
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 354
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 346
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 347
    if-eqz v3, :cond_9

    .line 348
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 350
    :cond_9
    if-eqz v4, :cond_a

    .line 351
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 357
    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    .line 358
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw v10

    .line 353
    :catch_5
    move-exception v2

    .line 354
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":[B
    .restart local v7    # "read":I
    .restart local v9    # "result":Ljava/lang/String;
    :cond_c
    move-object v8, v9

    .end local v9    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_2
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    # getter for: Lcom/android/server/se/AmigoSendErrorReport;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/se/AmigoSendErrorReport;->access$000(Lcom/android/server/se/AmigoSendErrorReport;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 415
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->mImei:Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->mImei:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 417
    const-string v1, "01234567890"

    iput-object v1, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->mImei:Ljava/lang/String;

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->mImei:Ljava/lang/String;

    return-object v1
.end method

.method public getModel()Ljava/lang/String;
    .locals 9

    .prologue
    .line 423
    const-string v4, "phone"

    .line 425
    .local v4, "model":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 426
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 427
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.product.model"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Phone"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRomVersion()Ljava/lang/String;
    .locals 10

    .prologue
    .line 435
    const-string v5, ""

    .line 437
    .local v5, "version":Ljava/lang/String;
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 438
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 439
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.gn.gnznvernumber"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 440
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ro.build.type"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 441
    .local v4, "type":Ljava/lang/String;
    const-string v6, "eng"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 442
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 447
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 444
    :catch_0
    move-exception v2

    .line 445
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 9

    .prologue
    .line 452
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/misc/gionee/check_root_status"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v2, "f":Ljava/io/File;
    const-string v5, ""

    .line 456
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 460
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 461
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 462
    .local v4, "hasRead":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 463
    const-string v6, "AmigoSendErrorReport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasRead = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v0    # "buffer":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "hasRead":I
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Unkown"

    .line 479
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 485
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 466
    .restart local v0    # "buffer":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "hasRead":I
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 467
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    if-nez v6, :cond_1

    .line 468
    const-string v5, "Normal"

    .line 469
    const-string v6, "AmigoSendErrorReport"

    const-string v7, "Normal!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 470
    :cond_1
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 471
    :cond_2
    const-string v5, "Root"

    .line 472
    const-string v6, "AmigoSendErrorReport"

    const-string v7, "Root!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 474
    :cond_3
    const-string v5, "Unkown"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 482
    .end local v0    # "buffer":[B
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "hasRead":I
    :cond_4
    const-string v5, "Normal"

    goto :goto_1
.end method

.method public getSystemLogAndCompressor()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/errorlog/logs"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "/data/errorlog/logs"

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->delFolder(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 297
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 298
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "chmod"

    aput-object v3, v2, v4

    const-string v3, "777"

    aput-object v3, v2, v5

    const-string v3, "/data/errorlog/logs"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v2, "/data/errorlog/zip"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const-string v2, "/data/errorlog/zip"

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->delFolder(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 305
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 306
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "chmod"

    aput-object v3, v2, v4

    const-string v3, "777"

    aput-object v3, v2, v5

    const-string v3, "/data/errorlog/zip"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 307
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "dumpsys dropbox system_app_crash >> /data/errorlog/logs/crash.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 308
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "top -t -d 2 -n 2 >> /data/errorlog/logs/top.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 309
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "service list >> /data/errorlog/logs/service.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 310
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "ps >> /data/errorlog/logs/ps.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 311
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "logcat -v time -d -s AndroidRuntime:E -s ActivityManager:E >> /data/errorlog/logs/error.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 312
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "logcat -v time -d >> /data/errorlog/logs/main.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 313
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "dmesg >> /data/errorlog/logs/kernel.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 314
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "logcat -d -b radio -v time >> /data/errorlog/logs/radio.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 315
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "sh"

    aput-object v3, v2, v4

    const-string v3, "-c"

    aput-object v3, v2, v5

    const-string v3, "logcat -d -b events -v time >> /data/errorlog/logs/events.log"

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;->do_exec([Ljava/lang/String;)Ljava/lang/String;

    .line 316
    new-instance v1, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;

    const-string v2, "/data/errorlog/zip/log.zip"

    invoke-direct {v1, p0, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;-><init>(Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;Ljava/lang/String;)V

    .line 317
    .local v1, "zipCompressor":Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;
    const-string v2, "/data/errorlog/logs"

    invoke-virtual {v1, v2}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->compress(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public getUUID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 406
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 407
    .local v1, "uuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "uniqueId":Ljava/lang/String;
    const-string v2, "AmigoSendErrorReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-object v0
.end method
