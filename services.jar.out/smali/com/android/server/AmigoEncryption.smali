.class public Lcom/android/server/AmigoEncryption;
.super Ljava/lang/Object;
.source "AmigoEncryption.java"


# static fields
.field private static final FIXED_NUMBER:Ljava/lang/String; = "20140101"

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final JELLY_BEAN_4_2:I = 0x11

.field private static final KEY_WORD:Ljava/lang/String; = "ptkf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 89
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/AmigoEncryption;->getRawKey([B)[B

    move-result-object v1

    .line 30
    .local v1, "rawKey":[B
    invoke-static {p1}, Lcom/android/server/AmigoEncryption;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    .local v0, "enc":[B
    invoke-static {v1, v0}, Lcom/android/server/AmigoEncryption;->decrypt([B[B)[B

    move-result-object v2

    .line 32
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method private static decrypt([B[B)[B
    .locals 4
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 61
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 64
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "20140101"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "clearText":Ljava/lang/String;
    const-string v3, "ptkf"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/AmigoEncryption;->getRawKey([B)[B

    move-result-object v1

    .line 23
    .local v1, "rawKey":[B
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/AmigoEncryption;->encrypt([B[B)[B

    move-result-object v2

    .line 24
    .local v2, "result":[B
    invoke-static {v2}, Lcom/android/server/AmigoEncryption;->toHex([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static encrypt([B[B)[B
    .locals 4
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 53
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 54
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 55
    .local v1, "encrypted":[B
    return-object v1
.end method

.method private static getRawKey([B)[B
    .locals 6
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 37
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    const/4 v3, 0x0

    .line 38
    .local v3, "sr":Ljava/security/SecureRandom;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 39
    const-string v4, "SHA1PRNG"

    const-string v5, "Crypto"

    invoke-static {v4, v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 43
    :goto_0
    invoke-virtual {v3, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 44
    const/16 v4, 0x80

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 45
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 46
    .local v2, "skey":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 47
    .local v1, "raw":[B
    return-object v1

    .line 41
    .end local v1    # "raw":[B
    .end local v2    # "skey":Ljavax/crypto/SecretKey;
    :cond_0
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    goto :goto_0
.end method

.method private static toByte(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 69
    .local v1, "len":I
    new-array v2, v1, [B

    .line 70
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 71
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-object v2
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const-string v2, ""

    .line 83
    :goto_0
    return-object v2

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 80
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 81
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/android/server/AmigoEncryption;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
