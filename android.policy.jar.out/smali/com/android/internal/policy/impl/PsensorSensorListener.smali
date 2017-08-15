.class public Lcom/android/internal/policy/impl/PsensorSensorListener;
.super Ljava/lang/Object;
.source "PsensorSensorListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static final MAX_SLEEP_TIME:I = 0x12c

.field static final PSENSOR_FAR:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field mCount:I

.field mOnSensorChangedFlag:Z

.field mPsensor:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v1, "PsensorSensorListener"

    iput-object v1, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->TAG:Ljava/lang/String;

    .line 24
    move-object v0, p1

    .line 25
    .local v0, "mContext":Landroid/content/Context;
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 26
    iget-object v1, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mSensor:Landroid/hardware/Sensor;

    .line 27
    return-void
.end method


# virtual methods
.method public ReadPsensor()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mOnSensorChangedFlag:Z

    .line 31
    iput v1, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mPsensor:I

    .line 32
    const/16 v3, 0x12c

    iput v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mCount:I

    .line 33
    iget-object v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v3, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 35
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mOnSensorChangedFlag:Z

    if-eqz v3, :cond_1

    .line 37
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mCount:I

    .line 43
    iget v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mCount:I

    if-gez v3, :cond_0

    .line 44
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mOnSensorChangedFlag:Z

    .line 45
    const-string v3, "PsensorSensorListener"

    const-string v4, "mCount < 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 54
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return v1

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 49
    iget v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mPsensor:I

    if-ne v1, v3, :cond_2

    .line 50
    const-string v2, "PsensorSensorListener"

    const-string v3, "return true"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 53
    :cond_2
    const-string v1, "PsensorSensorListener"

    const-string v3, "return false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 54
    goto :goto_1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 59
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/16 v0, 0x8

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mPsensor:I

    .line 68
    const-string v0, "PsensorSensorListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mpsensor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mPsensor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PsensorSensorListener;->mOnSensorChangedFlag:Z

    goto :goto_0
.end method
