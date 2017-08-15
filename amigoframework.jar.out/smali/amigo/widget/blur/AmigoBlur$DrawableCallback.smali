.class public abstract Lamigo/widget/blur/AmigoBlur$DrawableCallback;
.super Ljava/lang/Object;
.source "AmigoBlur.java"

# interfaces
.implements Lamigo/widget/blur/AmigoBlur$BlurCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/blur/AmigoBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawableCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "completeBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 236
    return-void
.end method
