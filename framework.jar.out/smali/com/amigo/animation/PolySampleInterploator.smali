.class public Lcom/amigo/animation/PolySampleInterploator;
.super Ljava/lang/Object;
.source "PolySampleInterploator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mListSample:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/animation/SampleTable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolynomialInterpolator:Lcom/amigo/animation/PolynomialInterpolator;


# direct methods
.method constructor <init>(Lcom/amigo/animation/PolynomialInterpolator;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "polyInt"    # Lcom/amigo/animation/PolynomialInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amigo/animation/PolynomialInterpolator;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amigo/animation/SampleTable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "listSample":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/amigo/animation/SampleTable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amigo/animation/PolySampleInterploator;->mPolynomialInterpolator:Lcom/amigo/animation/PolynomialInterpolator;

    .line 15
    iput-object p2, p0, Lcom/amigo/animation/PolySampleInterploator;->mListSample:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 20
    iget-object v1, p0, Lcom/amigo/animation/PolySampleInterploator;->mListSample:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 27
    iget-object v1, p0, Lcom/amigo/animation/PolySampleInterploator;->mPolynomialInterpolator:Lcom/amigo/animation/PolynomialInterpolator;

    if-eqz v1, :cond_1

    .line 29
    iget-object v1, p0, Lcom/amigo/animation/PolySampleInterploator;->mPolynomialInterpolator:Lcom/amigo/animation/PolynomialInterpolator;

    invoke-virtual {v1, p1}, Lcom/amigo/animation/PolynomialInterpolator;->getInterpolation(F)F

    move-result p1

    .line 32
    .end local p1    # "t":F
    :cond_1
    :goto_0
    return p1

    .line 20
    .restart local p1    # "t":F
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amigo/animation/SampleTable;

    .line 21
    .local v0, "table":Lcom/amigo/animation/SampleTable;
    invoke-virtual {v0, p1}, Lcom/amigo/animation/SampleTable;->inTable(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/amigo/animation/SampleTable;->getValue(F)F

    move-result p1

    goto :goto_0
.end method
