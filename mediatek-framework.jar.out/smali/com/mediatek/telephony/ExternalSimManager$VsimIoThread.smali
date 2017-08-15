.class Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
.super Ljava/lang/Thread;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VsimIoThread"
.end annotation


# static fields
.field private static final MAX_DATA_LENGTH:I = 0x5000


# instance fields
.field private mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

.field private mInput:Ljava/io/DataInputStream;

.field private mName:Ljava/lang/String;

.field private mOutput:Ljava/io/DataOutputStream;

.field private mServerName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private readBuffer:[B

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    const/4 v1, 0x0

    .line 646
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 634
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 635
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 636
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 637
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 638
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    .line 640
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 647
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 648
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 649
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 650
    iput-object p5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 651
    const-string v0, "VsimIoThread constructor is called."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "serverName"    # Ljava/lang/String;
    .param p4, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    const/4 v1, 0x0

    .line 654
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 634
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 635
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 636
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 637
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 638
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    .line 640
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 655
    iput-object p3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    .line 656
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->createClientSocket(Ljava/lang/String;)V

    .line 657
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 658
    iput-object p4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 659
    const-string v0, "VsimIoThread constructor with creating socket is called."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method private createClientSocket(Ljava/lang/String;)V
    .locals 8
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 663
    const/4 v4, 0x0

    .line 664
    .local v4, "retryCount":I
    const-string v5, "createClientSocket() - start"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 665
    :cond_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    .line 667
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createClientSocket() - before, serverName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 669
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 670
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 673
    .local v0, "addr":Landroid/net/LocalSocketAddress;
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 675
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 676
    new-instance v5, Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createClientSocket() - after, mSocket:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v0    # "addr":Landroid/net/LocalSocketAddress;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    const-string v5, "createClientSocket connected!"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 703
    :cond_2
    const-string v5, "createClientSocket() - end"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 704
    return-void

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "createClientSocket catch IOException"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 683
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 684
    add-int/lit8 v4, v4, 0x1

    .line 686
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V

    .line 687
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 688
    const-wide/16 v6, 0xfa0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 694
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createClientSocket retry later, retry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :catch_1
    move-exception v2

    .line 690
    .local v2, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 691
    .end local v2    # "e1":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v3

    .line 692
    .local v3, "e2":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private dumpEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpEvent: transaction_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slot_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data_len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 868
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method private readEvent()Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    const-string v8, "readEvent Enter"

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 828
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v7

    .line 829
    .local v7, "transaction_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v3

    .line 830
    .local v3, "msg_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v6

    .line 831
    .local v6, "slot_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v1

    .line 832
    .local v1, "data_len":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readEvent transaction_id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msgId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", slot_id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", len: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 835
    new-array v8, v1, [B

    iput-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 837
    const/4 v4, 0x0

    .line 838
    .local v4, "offset":I
    move v5, v1

    .line 841
    .local v5, "remaining":I
    :cond_0
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    invoke-virtual {v8, v9, v4, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 843
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 844
    const-string v8, "readEvent(), fail to read and throw exception"

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 845
    new-instance v8, Ljava/io/IOException;

    const-string v9, "fail to read"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 848
    :cond_1
    add-int/2addr v4, v0

    .line 849
    sub-int/2addr v5, v0

    .line 850
    if-gtz v5, :cond_0

    .line 852
    new-instance v2, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-direct {v2, v7, v3, v1, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 853
    .local v2, "event":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    invoke-virtual {v2, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 855
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->dumpEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 856
    return-object v2
.end method

.method private readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 812
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 813
    .local v1, "tempBuf":[B
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 814
    .local v0, "readCount":I
    if-gez v0, :cond_0

    .line 815
    const-string v2, "readInt(), fail to read and throw exception"

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 816
    new-instance v2, Ljava/io/IOException;

    const-string v3, "fail to read"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 819
    :cond_0
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2
.end method

.method private writeBytes([BI)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 767
    return-void
.end method

.method private writeInt(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_0
    return-void
.end method


# virtual methods
.method public closeSocket()V
    .locals 2

    .prologue
    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 711
    const-string v1, "closeSocket."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "closeSocket IOException."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 720
    const-string v4, "VsimIoThread running."

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 724
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readEvent()Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    move-result-object v2

    .line 726
    .local v2, "event":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    if-eqz v2, :cond_0

    .line 727
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 728
    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 729
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v4, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 734
    .end local v2    # "event":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "VsimIoThread IOException."

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 741
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_1

    .line 742
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    .line 743
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 746
    :cond_1
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 747
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->createClientSocket(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 754
    :catch_1
    move-exception v1

    .line 755
    .local v1, "e2":Ljava/io/IOException;
    const-string v4, "VsimIoThread IOException 2."

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 751
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_2
    :try_start_2
    const-string v4, "Ingore exception"

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 752
    return-void

    .line 758
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "VsimIoThread Exception."

    invoke-direct {p0, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I
    .locals 1
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;Z)I

    move-result v0

    return v0
.end method

.method public writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;Z)I
    .locals 4
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .param p2, "isBigEndian"    # Z

    .prologue
    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeEvent Enter, isBigEndian:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 781
    const/4 v1, -0x1

    .line 783
    .local v1, "ret":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    .line 785
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->dumpEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 787
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 788
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 790
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 791
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 792
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeBytes([BI)V

    .line 793
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 794
    const/4 v1, 0x0

    .line 798
    :goto_0
    monitor-exit p0

    move v2, v1

    .line 805
    :goto_1
    return v2

    .line 796
    :cond_0
    const-string v2, "mOut is null, socket is not setup"

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "writeEvent Exception"

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 802
    const/4 v2, -0x1

    goto :goto_1
.end method
