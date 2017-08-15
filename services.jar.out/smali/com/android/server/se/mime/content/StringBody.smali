.class public Lcom/android/server/se/mime/content/StringBody;
.super Lcom/android/server/se/mime/content/AbstractContentBody;
.source "StringBody.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "text/plain"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/se/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p2}, Lcom/android/server/se/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    if-nez p3, :cond_1

    .line 98
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 100
    :cond_1
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/se/mime/content/StringBody;->content:[B

    .line 101
    iput-object p3, p0, Lcom/android/server/se/mime/content/StringBody;->charset:Ljava/nio/charset/Charset;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "text/plain"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/se/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 115
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/android/server/se/mime/content/StringBody;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {p0, v0, v0}, Lcom/android/server/se/mime/content/StringBody;->create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/server/se/mime/content/StringBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/server/se/mime/content/StringBody;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Lcom/android/server/se/mime/content/StringBody;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/se/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Charset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/server/se/mime/content/StringBody;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/se/mime/content/StringBody;->create(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/android/server/se/mime/content/StringBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/se/mime/content/StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/se/mime/content/StringBody;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/android/server/se/mime/content/StringBody;->content:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/android/server/se/mime/content/StringBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "8bit"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Output stream may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/android/server/se/mime/content/StringBody;->content:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    .local v0, "in":Ljava/io/InputStream;
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 143
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 144
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 147
    return-void
.end method
