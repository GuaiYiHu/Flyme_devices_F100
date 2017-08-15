.class Landroid/media/MediaScanner$Rational;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rational"
.end annotation


# instance fields
.field private final mDenominator:J

.field private final mNumerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "nominator"    # J
    .param p3, "denominator"    # J

    .prologue
    .line 4668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4669
    iput-wide p1, p0, Landroid/media/MediaScanner$Rational;->mNumerator:J

    .line 4670
    iput-wide p3, p0, Landroid/media/MediaScanner$Rational;->mDenominator:J

    .line 4671
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaScanner$Rational;)V
    .locals 2
    .param p1, "r"    # Landroid/media/MediaScanner$Rational;

    .prologue
    .line 4673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4674
    iget-wide v0, p1, Landroid/media/MediaScanner$Rational;->mNumerator:J

    iput-wide v0, p0, Landroid/media/MediaScanner$Rational;->mNumerator:J

    .line 4675
    iget-wide v0, p1, Landroid/media/MediaScanner$Rational;->mDenominator:J

    iput-wide v0, p0, Landroid/media/MediaScanner$Rational;->mDenominator:J

    .line 4676
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4692
    if-nez p1, :cond_1

    .line 4702
    :cond_0
    :goto_0
    return v2

    .line 4695
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 4696
    goto :goto_0

    .line 4698
    :cond_2
    instance-of v3, p1, Landroid/media/MediaScanner$Rational;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 4699
    check-cast v0, Landroid/media/MediaScanner$Rational;

    .line 4700
    .local v0, "data":Landroid/media/MediaScanner$Rational;
    iget-wide v4, p0, Landroid/media/MediaScanner$Rational;->mNumerator:J

    iget-wide v6, v0, Landroid/media/MediaScanner$Rational;->mNumerator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Landroid/media/MediaScanner$Rational;->mDenominator:J

    iget-wide v6, v0, Landroid/media/MediaScanner$Rational;->mDenominator:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getDenominator()J
    .locals 2

    .prologue
    .line 4683
    iget-wide v0, p0, Landroid/media/MediaScanner$Rational;->mDenominator:J

    return-wide v0
.end method

.method public getNumerator()J
    .locals 2

    .prologue
    .line 4679
    iget-wide v0, p0, Landroid/media/MediaScanner$Rational;->mNumerator:J

    return-wide v0
.end method

.method public toDouble()D
    .locals 4

    .prologue
    .line 4687
    iget-wide v0, p0, Landroid/media/MediaScanner$Rational;->mNumerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Landroid/media/MediaScanner$Rational;->mDenominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/media/MediaScanner$Rational;->mNumerator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/media/MediaScanner$Rational;->mDenominator:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
