.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public age:I

.field public flawlessLevel:I

.field public gender:I

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2346
    iput v1, p0, Landroid/hardware/Camera$Face;->id:I

    .line 2355
    iput-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 2364
    iput-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 2373
    iput-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 2380
    iput v2, p0, Landroid/hardware/Camera$Face;->age:I

    .line 2384
    iput v1, p0, Landroid/hardware/Camera$Face;->gender:I

    .line 2388
    iput v2, p0, Landroid/hardware/Camera$Face;->flawlessLevel:I

    .line 2287
    return-void
.end method
