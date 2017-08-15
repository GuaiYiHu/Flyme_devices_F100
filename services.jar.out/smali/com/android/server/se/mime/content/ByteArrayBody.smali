.class public Lcom/android/server/se/mime/content/ByteArrayBody;
.super Lcom/android/server/se/mime/content/AbstractContentBody;
.source "ByteArrayBody.java"


# instance fields
.field private final data:[B

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/se/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/android/server/se/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte[] may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/android/server/se/mime/content/ByteArrayBody;->data:[B

    .line 66
    iput-object p3, p0, Lcom/android/server/se/mime/content/ByteArrayBody;->filename:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/se/mime/content/ByteArrayBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/se/mime/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/se/mime/content/ByteArrayBody;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 85
    return-void
.end method
