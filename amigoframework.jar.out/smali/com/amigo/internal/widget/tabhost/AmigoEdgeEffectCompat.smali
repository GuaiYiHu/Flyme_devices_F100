.class public Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;
.super Ljava/lang/Object;
.source "AmigoEdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectIcsImpl;,
        Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$BaseEdgeEffectImpl;,
        Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;


# instance fields
.field private mEdgeEffect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectIcsImpl;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectIcsImpl;-><init>()V

    sput-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$BaseEdgeEffectImpl;

    invoke-direct {v0}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$BaseEdgeEffectImpl;-><init>()V

    sput-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    invoke-interface {v0, p1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 218
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->finish(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAbsorb(I)Z
    .locals 2
    .param p1, "velocity"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->onAbsorb(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public onPull(F)Z
    .locals 2
    .param p1, "deltaDistance"    # F

    .prologue
    .line 177
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public onRelease()Z
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->onRelease(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 143
    sget-object v0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->IMPL:Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;

    iget-object v1, p0, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/amigo/internal/widget/tabhost/AmigoEdgeEffectCompat$EdgeEffectImpl;->setSize(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method
