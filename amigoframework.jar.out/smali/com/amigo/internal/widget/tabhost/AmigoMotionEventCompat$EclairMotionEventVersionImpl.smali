.class Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat$EclairMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "AmigoMotionEventCompat.java"

# interfaces
.implements Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompatEclair;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    invoke-static {p1}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompatEclair;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 87
    invoke-static {p1, p2}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompatEclair;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompatEclair;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/amigo/internal/widget/tabhost/AmigoMotionEventCompatEclair;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
