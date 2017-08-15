.class public Lcom/amigo/animation/SampleTable;
.super Ljava/lang/Object;
.source "SampleTable.java"


# instance fields
.field private final mEnd:F

.field private final mNum:I

.field private final mStart:F

.field private final mTable:[F


# direct methods
.method public constructor <init>(FFI[F)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "num"    # I
    .param p4, "table"    # [F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/amigo/animation/SampleTable;->mStart:F

    .line 13
    iput p2, p0, Lcom/amigo/animation/SampleTable;->mEnd:F

    .line 14
    iput p3, p0, Lcom/amigo/animation/SampleTable;->mNum:I

    .line 15
    iput-object p4, p0, Lcom/amigo/animation/SampleTable;->mTable:[F

    .line 16
    return-void
.end method


# virtual methods
.method public getValue(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 23
    iget v1, p0, Lcom/amigo/animation/SampleTable;->mStart:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/amigo/animation/SampleTable;->mEnd:F

    iget v3, p0, Lcom/amigo/animation/SampleTable;->mStart:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/amigo/animation/SampleTable;->mNum:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 24
    .local v0, "index":I
    iget-object v1, p0, Lcom/amigo/animation/SampleTable;->mTable:[F

    aget v1, v1, v0

    return v1
.end method

.method public inTable(F)Z
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 19
    iget v0, p0, Lcom/amigo/animation/SampleTable;->mStart:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/amigo/animation/SampleTable;->mEnd:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
