.class public Lcom/amigo/animation/PolynomialInterpolator;
.super Ljava/lang/Object;
.source "PolynomialInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final coef:[D


# direct methods
.method public constructor <init>([D)V
    .locals 0
    .param p1, "c"    # [D

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amigo/animation/PolynomialInterpolator;->coef:[D

    .line 12
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 10
    .param p1, "x"    # F

    .prologue
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .local v6, "y":D
    iget-object v3, p0, Lcom/amigo/animation/PolynomialInterpolator;->coef:[D

    array-length v0, v3

    .line 26
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 37
    double-to-float v3, v6

    return v3

    .line 27
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 28
    .local v4, "p":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 31
    iget-object v3, p0, Lcom/amigo/animation/PolynomialInterpolator;->coef:[D

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v1

    aget-wide v8, v3, v8

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    float-to-double v8, p1

    mul-double/2addr v4, v8

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
