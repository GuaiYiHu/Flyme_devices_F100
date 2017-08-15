.class public Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrushEventListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrushEventListener"


# instance fields
.field private mBrush:Landroid/hardware/Sensor;

.field private mIsReg:Z

.field private mPM:Landroid/os/PowerManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private success:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    const-string v0, "BrushEventListener"

    const-string v1, " KeyguardServiceDelegate : BrushEventListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mBrush:Landroid/hardware/Sensor;

    .line 435
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mPM:Landroid/os/PowerManager;

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mBrush:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 437
    const-string v0, "BrushEventListener"

    const-string v1, " cannot get brush sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mIsReg:Z

    .line 440
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 473
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 461
    const-string v1, "BrushEventListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardServiceDelegate : coming BrushEventListener onSensorChanged()  value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v0, v1

    .line 463
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->mHallOpen:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->unregisterListener()V

    .line 469
    :cond_0
    return-void
.end method

.method protected registerListener()V
    .locals 3

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mIsReg:Z

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mBrush:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->success:Z

    .line 454
    const-string v0, "BrushEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardServiceDelegate : success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->success:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mIsReg:Z

    .line 457
    :cond_0
    return-void
.end method

.method protected unregisterListener()V
    .locals 3

    .prologue
    .line 443
    const-string v0, "BrushEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardServiceDelegate : coming BrushEventListener unregisterListener()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mIsReg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mIsReg:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$BrushEventListener;->mIsReg:Z

    .line 448
    :cond_0
    return-void
.end method
