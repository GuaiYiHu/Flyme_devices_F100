.class public Landroid/hardware/Camera$GestureEvent;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GestureEvent"
.end annotation


# static fields
.field private static final ACTION_BASE:I = 0x0

.field public static final ACTION_END:I = 0x3

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_START:I = 0x1

.field public static final ACTION_UNKNOWN:I = -0x1

.field private static final GESTURE_EVENT_TYPE_BASE:I = 0x0

.field public static final GESTURE_EVENT_TYPE_FACE_PRESENCE:I = 0x3

.field public static final GESTURE_EVENT_TYPE_FIST_PRESENCE:I = 0x2

.field public static final GESTURE_EVENT_TYPE_OPEN_HAND_PRESENCE:I = 0x1

.field public static final GESTURE_EVENT_TYPE_THUMBS_UP_PRESENCE:I = 0x4

.field public static final GESTURE_EVENT_TYPE_UNKNOWN:I = -0x1

.field public static final GESTURE_EVENT_TYPE_VSIGN_PRESENCE:I = 0x5


# instance fields
.field private mAction:I

.field private mObjectId:I

.field private mType:I

.field private mX:I

.field private mY:I

.field private mZ:I

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 3326
    iput-object p1, p0, Landroid/hardware/Camera$GestureEvent;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3327
    iput v1, p0, Landroid/hardware/Camera$GestureEvent;->mType:I

    .line 3328
    iput v1, p0, Landroid/hardware/Camera$GestureEvent;->mAction:I

    .line 3329
    iput v0, p0, Landroid/hardware/Camera$GestureEvent;->mObjectId:I

    .line 3330
    iput v0, p0, Landroid/hardware/Camera$GestureEvent;->mX:I

    .line 3331
    iput v0, p0, Landroid/hardware/Camera$GestureEvent;->mY:I

    .line 3332
    iput v0, p0, Landroid/hardware/Camera$GestureEvent;->mZ:I

    .line 3333
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 3348
    iget v0, p0, Landroid/hardware/Camera$GestureEvent;->mAction:I

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .prologue
    .line 3356
    iget v0, p0, Landroid/hardware/Camera$GestureEvent;->mObjectId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3340
    iget v0, p0, Landroid/hardware/Camera$GestureEvent;->mType:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 3365
    iget v0, p0, Landroid/hardware/Camera$GestureEvent;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 3373
    iget v0, p0, Landroid/hardware/Camera$GestureEvent;->mY:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 3381
    iget v0, p0, Landroid/hardware/Camera$GestureEvent;->mZ:I

    return v0
.end method

.method public setGestureValue(IIIIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "action"    # I
    .param p3, "objectId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "z"    # I

    .prologue
    .line 3389
    iput p1, p0, Landroid/hardware/Camera$GestureEvent;->mType:I

    .line 3390
    iput p2, p0, Landroid/hardware/Camera$GestureEvent;->mAction:I

    .line 3391
    iput p3, p0, Landroid/hardware/Camera$GestureEvent;->mObjectId:I

    .line 3392
    iput p4, p0, Landroid/hardware/Camera$GestureEvent;->mX:I

    .line 3393
    iput p5, p0, Landroid/hardware/Camera$GestureEvent;->mY:I

    .line 3394
    iput p6, p0, Landroid/hardware/Camera$GestureEvent;->mZ:I

    .line 3395
    return-void
.end method
