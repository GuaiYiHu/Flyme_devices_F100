.class public Lcom/android/server/se/mime/MultipartEntity;
.super Ljava/lang/Object;
.source "MultipartEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private final contentType:Lorg/apache/http/Header;

.field private volatile dirty:Z

.field private length:J

.field private final multipart:Lcom/android/server/se/mime/HttpMultipart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/se/mime/MultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    sget-object v0, Lcom/android/server/se/mime/HttpMultipartMode;->STRICT:Lcom/android/server/se/mime/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/se/mime/MultipartEntity;-><init>(Lcom/android/server/se/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/android/server/se/mime/HttpMultipartMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/server/se/mime/HttpMultipartMode;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/se/mime/MultipartEntity;-><init>(Lcom/android/server/se/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/android/server/se/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p1, "mode"    # Lcom/android/server/se/mime/HttpMultipartMode;
    .param p2, "boundary"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p2, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/server/se/mime/MultipartEntity;->generateBoundary()Ljava/lang/String;

    move-result-object p2

    .line 78
    :cond_0
    if-nez p1, :cond_1

    .line 79
    sget-object p1, Lcom/android/server/se/mime/HttpMultipartMode;->STRICT:Lcom/android/server/se/mime/HttpMultipartMode;

    .line 81
    :cond_1
    new-instance v0, Lcom/android/server/se/mime/HttpMultipart;

    const-string v1, "form-data"

    invoke-direct {v0, v1, p3, p2, p1}, Lcom/android/server/se/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/android/server/se/mime/HttpMultipartMode;)V

    iput-object v0, p0, Lcom/android/server/se/mime/MultipartEntity;->multipart:Lcom/android/server/se/mime/HttpMultipart;

    .line 82
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-virtual {p0, p2, p3}, Lcom/android/server/se/mime/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/se/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/se/mime/MultipartEntity;->dirty:Z

    .line 86
    return-void
.end method


# virtual methods
.method public addPart(Lcom/android/server/se/mime/FormBodyPart;)V
    .locals 1
    .param p1, "bodyPart"    # Lcom/android/server/se/mime/FormBodyPart;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/se/mime/MultipartEntity;->multipart:Lcom/android/server/se/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/android/server/se/mime/HttpMultipart;->addBodyPart(Lcom/android/server/se/mime/FormBodyPart;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/se/mime/MultipartEntity;->dirty:Z

    .line 130
    return-void
.end method

.method public addPart(Ljava/lang/String;Lcom/android/server/se/mime/content/ContentBody;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentBody"    # Lcom/android/server/se/mime/content/ContentBody;

    .prologue
    .line 133
    new-instance v0, Lcom/android/server/se/mime/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lcom/android/server/se/mime/FormBodyPart;-><init>(Ljava/lang/String;Lcom/android/server/se/mime/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lcom/android/server/se/mime/MultipartEntity;->addPart(Lcom/android/server/se/mime/FormBodyPart;)V

    .line 134
    return-void
.end method

.method public consumeContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/server/se/mime/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method protected generateBoundary()Ljava/lang/String;
    .locals 6

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "buffer":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 120
    .local v3, "rand":Ljava/util/Random;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1e

    .line 121
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 122
    sget-object v4, Lcom/android/server/se/mime/MultipartEntity;->MULTIPART_CHARS:[C

    sget-object v5, Lcom/android/server/se/mime/MultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    if-eqz p2, :cond_0

    .line 111
    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/se/mime/MultipartEntity;->dirty:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/server/se/mime/MultipartEntity;->multipart:Lcom/android/server/se/mime/HttpMultipart;

    invoke-virtual {v0}, Lcom/android/server/se/mime/HttpMultipart;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/se/mime/MultipartEntity;->length:J

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/se/mime/MultipartEntity;->dirty:Z

    .line 159
    :cond_0
    iget-wide v0, p0, Lcom/android/server/se/mime/MultipartEntity;->length:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/se/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/server/se/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 8

    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/server/se/mime/MultipartEntity;->multipart:Lcom/android/server/se/mime/HttpMultipart;

    invoke-virtual {v3}, Lcom/android/server/se/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/se/mime/FormBodyPart;

    .line 138
    .local v2, "part":Lcom/android/server/se/mime/FormBodyPart;
    invoke-virtual {v2}, Lcom/android/server/se/mime/FormBodyPart;->getBody()Lcom/android/server/se/mime/content/ContentBody;

    move-result-object v0

    .line 139
    .local v0, "body":Lcom/android/server/se/mime/content/ContentBody;
    invoke-interface {v0}, Lcom/android/server/se/mime/content/ContentBody;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 140
    const/4 v3, 0x0

    .line 143
    .end local v0    # "body":Lcom/android/server/se/mime/content/ContentBody;
    .end local v2    # "part":Lcom/android/server/se/mime/FormBodyPart;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/server/se/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/se/mime/MultipartEntity;->multipart:Lcom/android/server/se/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/android/server/se/mime/HttpMultipart;->writeTo(Ljava/io/OutputStream;)V

    .line 185
    return-void
.end method
