.class Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;
.super Ljava/lang/Object;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZipCompressor"
.end annotation


# instance fields
.field final BUFFER:I

.field final synthetic this$1:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;Ljava/lang/String;)V
    .locals 1
    .param p2, "pathName"    # Ljava/lang/String;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->this$1:Lcom/android/server/se/AmigoSendErrorReport$CommonUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->BUFFER:I

    .line 493
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->zipFile:Ljava/io/File;

    .line 494
    return-void
.end method

.method private compress(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "basedir"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->compressDirectory(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 520
    :goto_0
    return-void

    .line 517
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->compressFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private compressDirectory(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "basedir"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 530
    :cond_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 527
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 528
    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->compress(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 527
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private compressFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "basedir"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 549
    :goto_0
    return-void

    .line 537
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 538
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/util/zip/ZipEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 539
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p2, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 541
    const/16 v5, 0x2000

    new-array v2, v5, [B

    .line 542
    .local v2, "data":[B
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x2000

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 543
    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 546
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "count":I
    .end local v2    # "data":[B
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    .line 547
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 545
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "count":I
    .restart local v2    # "data":[B
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public compress(Ljava/lang/String;)V
    .locals 9
    .param p1, "srcPathName"    # Ljava/lang/String;

    .prologue
    .line 497
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 499
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 501
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->zipFile:Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 502
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/util/zip/CheckedOutputStream;

    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v1, v4, v6}, Ljava/util/zip/CheckedOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V

    .line 503
    .local v1, "cos":Ljava/util/zip/CheckedOutputStream;
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 504
    .local v5, "out":Ljava/util/zip/ZipOutputStream;
    const-string v0, ""

    .line 505
    .local v0, "basedir":Ljava/lang/String;
    invoke-direct {p0, v3, v5, v0}, Lcom/android/server/se/AmigoSendErrorReport$CommonUtil$ZipCompressor;->compress(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    return-void

    .line 507
    .end local v0    # "basedir":Ljava/lang/String;
    .end local v1    # "cos":Ljava/util/zip/CheckedOutputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v2

    .line 508
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
