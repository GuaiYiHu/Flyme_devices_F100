.class Landroid/hardware/SensorManager$3;
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
    .line 1065
    iput-object p1, p0, Landroid/hardware/SensorManager$3;->this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1073
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1067
    const-string v0, "SensorManager"

    const-string v1, "TYPE_INCALL_GESTURE comming mSrcDataIncallGestureListener onSensorChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v0, p0, Landroid/hardware/SensorManager$3;->this$0:Landroid/hardware/SensorManager;

    # invokes: Landroid/hardware/SensorManager;->detect_incall_gesture(Landroid/hardware/SensorEvent;)V
    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->access$500(Landroid/hardware/SensorManager;Landroid/hardware/SensorEvent;)V

    .line 1069
    iget-object v0, p0, Landroid/hardware/SensorManager$3;->this$0:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/SensorManager$3;->this$0:Landroid/hardware/SensorManager;

    # getter for: Landroid/hardware/SensorManager;->mIncallGestureListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Landroid/hardware/SensorManager;->access$600(Landroid/hardware/SensorManager;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    # invokes: Landroid/hardware/SensorManager;->sendIncallGestureEvent(Landroid/hardware/SensorEventListener;)V
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->access$700(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V

    .line 1070
    return-void
.end method
