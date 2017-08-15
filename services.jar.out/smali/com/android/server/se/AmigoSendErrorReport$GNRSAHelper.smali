.class Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;
.super Ljava/lang/Object;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/se/AmigoSendErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GNRSAHelper"
.end annotation


# instance fields
.field private mGNBase64:Lcom/android/server/se/GNBase64;

.field private privateKeyString:Ljava/lang/String;

.field public publicKeyString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/se/AmigoSendErrorReport;


# direct methods
.method constructor <init>(Lcom/android/server/se/AmigoSendErrorReport;)V
    .locals 1

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCFaJQPY45uR5+3+v0i0Nr2mb4HvjTI3ccTJPzKgKVIH5CrdmnFdymWP3AOQ4vOYrvAYQA2l6gs8w5dAfPtSUJIx10LW0NfPD1mqwYwnOze7MwK4QsVqb0bwDoBgQk8/OZxwPP0CJpnuqW2G4G99hwFwKRNcFzftvF38w5CWoLvRwIDAQAB"

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->publicKeyString:Ljava/lang/String;

    .line 654
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->privateKeyString:Ljava/lang/String;

    .line 655
    new-instance v0, Lcom/android/server/se/GNBase64;

    invoke-direct {v0}, Lcom/android/server/se/GNBase64;-><init>()V

    iput-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->mGNBase64:Lcom/android/server/se/GNBase64;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "plainText"    # Ljava/lang/String;
    .param p2, "publicKeyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 658
    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 659
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 660
    .local v0, "bPlainText":[B
    const/4 v3, 0x1

    invoke-virtual {p0, p2}, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 661
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 662
    .local v2, "enBytes":[B
    iget-object v3, p0, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->mGNBase64:Lcom/android/server/se/GNBase64;

    invoke-virtual {v3, v2}, Lcom/android/server/se/GNBase64;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 667
    iget-object v4, p0, Lcom/android/server/se/AmigoSendErrorReport$GNRSAHelper;->mGNBase64:Lcom/android/server/se/GNBase64;

    invoke-virtual {v4, p1}, Lcom/android/server/se/GNBase64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 668
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 669
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 670
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 671
    .local v3, "publicKey":Ljava/security/PublicKey;
    return-object v3
.end method

.method public getPublicKey(Ljava/security/KeyPair;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 676
    .local v0, "publicKey":Ljava/security/PublicKey;
    return-object v0
.end method
