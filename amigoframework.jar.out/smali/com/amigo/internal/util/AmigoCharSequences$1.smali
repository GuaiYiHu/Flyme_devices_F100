.class final Lcom/amigo/internal/util/AmigoCharSequences$1;
.super Ljava/lang/Object;
.source "AmigoCharSequences.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amigo/internal/util/AmigoCharSequences;->forAsciiBytes([B)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/amigo/internal/util/AmigoCharSequences$1;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amigo/internal/util/AmigoCharSequences$1;->val$bytes:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/amigo/internal/util/AmigoCharSequences$1;->val$bytes:[B

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amigo/internal/util/AmigoCharSequences$1;->val$bytes:[B

    invoke-static {v0, p1, p2}, Lcom/amigo/internal/util/AmigoCharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amigo/internal/util/AmigoCharSequences$1;->val$bytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
