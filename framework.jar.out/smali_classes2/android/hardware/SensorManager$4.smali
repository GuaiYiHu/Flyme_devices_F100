.class Landroid/hardware/SensorManager$4;
.super Ljava/lang/Object;
.source "SensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Landroid/hardware/SensorManager$4;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1162
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1154
    const-string v0, "SensorManager"

    const-string v1, "TYPE_KEYGUARD_GESTURE comming mSrcDataKeyguardGestureListener onSensorChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Landroid/hardware/SensorManager$4;->this$0:Landroid/hardware/SensorManager;

    # invokes: Landroid/hardware/SensorManager;->detect_keyguard_gesture(Landroid/hardware/SensorEvent;)V
    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->access$800(Landroid/hardware/SensorManager;Landroid/hardware/SensorEvent;)V

    .line 1156
    iget-object v0, p0, Landroid/hardware/SensorManager$4;->this$0:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/SensorManager$4;->this$0:Landroid/hardware/SensorManager;

    # getter for: Landroid/hardware/SensorManager;->mKeyguardGestureListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Landroid/hardware/SensorManager;->access$900(Landroid/hardware/SensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    # invokes: Landroid/hardware/SensorManager;->sendKeyguardGestureEvent(Landroid/hardware/SensorEventListener;)V
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->access$1000(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    .line 1157
    return-void
.end method
