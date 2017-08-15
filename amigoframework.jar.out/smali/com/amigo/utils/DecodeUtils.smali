.class public Lcom/amigo/utils/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# static fields
.field private static final AES:Ljava/lang/String; = "AES"

.field private static final AES_CBC_PKCS5Padding:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final SEED:Ljava/lang/String; = "GIONEE2012061900"

.field private static final VIPARA:Ljava/lang/String; = "0102030405060708"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 114
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

    .line 115
    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 136
    :try_start_0
    const-string v1, "GIONEE2012061900"

    invoke-static {v1, p0}, Lcom/amigo/utils/DecodeUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string v1, ""

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/amigo/utils/DecodeUtils;->getRawKey([B)[B

    move-result-object v1

    .line 45
    .local v1, "rawKey":[B
    invoke-static {p1}, Lcom/amigo/utils/DecodeUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    .local v0, "enc":[B
    invoke-static {v1, v0}, Lcom/amigo/utils/DecodeUtils;->decrypt([B[B)[B

    move-result-object v2

    .line 47
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public static decrypt([B[B)[B
    .locals 5
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "0102030405060708"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 74
    .local v3, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 75
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 76
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 77
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 78
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "cleartext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/amigo/utils/DecodeUtils;->getRawKey([B)[B

    move-result-object v0

    .line 38
    .local v0, "rawKey":[B
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amigo/utils/DecodeUtils;->encrypt([B[B)[B

    move-result-object v1

    .line 39
    .local v1, "result":[B
    invoke-static {v1}, Lcom/amigo/utils/DecodeUtils;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static encrypt([B[B)[B
    .locals 5
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "0102030405060708"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 64
    .local v3, "zeroIv":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v2, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 65
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 67
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 68
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 69
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/amigo/utils/DecodeUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    const-string p0, ""

    .line 122
    :cond_0
    const-string v2, "GIONEE2012061900"

    .line 125
    .local v2, "masterPassword":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, p0}, Lcom/amigo/utils/DecodeUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    const-string v1, ""

    goto :goto_0
.end method

.method public static getRawKey([B)[B
    .locals 0
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    const-string v3, "123655474174521"

    invoke-static {v3}, Lcom/amigo/utils/DecodeUtils;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "encrypted":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encrypted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    invoke-static {v2}, Lcom/amigo/utils/DecodeUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "decrypt":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decrypt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "decrypt":Ljava/lang/String;
    .end local v2    # "encrypted":Ljava/lang/String;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 92
    .local v1, "len":I
    new-array v2, v1, [B

    .line 94
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 95
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

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-object v2
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amigo/utils/DecodeUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string v2, ""

    .line 110
    :goto_0
    return-object v2

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 107
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 108
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/amigo/utils/DecodeUtils;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
