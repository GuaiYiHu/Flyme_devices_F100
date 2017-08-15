.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# static fields
.field public static final AXIS_MINUS_X:I = 0x81

.field public static final AXIS_MINUS_Y:I = 0x82

.field public static final AXIS_MINUS_Z:I = 0x83

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x2

.field public static final AXIS_Z:I = 0x3

.field public static final BRUSH_STATE0:I = 0x0

.field public static final BRUSH_STATE1:I = 0x1

.field public static final DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIR_BACKWARD:I = 0x6

.field public static final DIR_DOWN:I = 0x4

.field public static final DIR_FORWARD:I = 0x5

.field public static final DIR_LEFT:I = 0x1

.field public static final DIR_RIGHT:I = 0x2

.field public static final DIR_UP:I = 0x3

.field public static final DIR_ZOOM_1:I = 0x7

.field public static final DIR_ZOOM_2:I = 0x8

.field public static final DIR_ZOOM_3:I = 0x9

.field public static final DIR_ZOOM_4:I = 0xa

.field public static final DIR_ZOOM_5:I = 0xb

.field public static final DIR_ZOOM_6:I = 0xc

.field public static final GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final GRAVITY_JUPITER:F = 23.12f

.field public static final GRAVITY_MARS:F = 3.71f

.field public static final GRAVITY_MERCURY:F = 3.7f

.field public static final GRAVITY_MOON:F = 1.6f

.field public static final GRAVITY_NEPTUNE:F = 11.0f

.field public static final GRAVITY_PLUTO:F = 0.6f

.field public static final GRAVITY_SATURN:F = 8.96f

.field public static final GRAVITY_SUN:F = 275.0f

.field public static final GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final GRAVITY_URANUS:F = 8.69f

.field public static final GRAVITY_VENUS:F = 8.87f

.field public static final HANDANSWER_AX_TH:F = 9.8f

.field public static final HANDANSWER_AY_TH:F = 4.0f

.field public static final HANDANSWER_AZ_TH:F = 9.8f

.field public static final HANDANSWER_NOMOTION_THREDHOLD:F = 2.0f

.field public static final HANDANSWER_NOMOTION_THREDHOLD2:F = 1.2f

.field public static final HANDANSWER_NOMOTION_TIME:J = 0x5f5e100L

.field public static final HANDANSWER_SENSOR_TYPE:I = 0xe

.field public static final HANDANSWER_START_THREDHOLD:F = 2.0f

.field public static final HANDANSWER_STATE0:I = 0x0

.field public static final HANDANSWER_STATE1:I = 0x1

.field public static final HANDANSWER_STATE2:I = 0x2

.field public static final HANDANSWER_STATE3:I = 0x3

.field public static final HANDANSWER_TIME_LIMIT:J = 0x1dcd6500L

.field public static final LIGHT_CLOUDY:F = 100.0f

.field public static final LIGHT_FULLMOON:F = 0.25f

.field public static final LIGHT_NO_MOON:F = 0.001f

.field public static final LIGHT_OVERCAST:F = 10000.0f

.field public static final LIGHT_SHADE:F = 20000.0f

.field public static final LIGHT_SUNLIGHT:F = 110000.0f

.field public static final LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final LIGHT_SUNRISE:F = 400.0f

.field public static final MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_GAME:I = 0x1

.field public static final SENSOR_DELAY_NORMAL:I = 0x3

.field public static final SENSOR_DELAY_UI:I = 0x2

.field public static final SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHAKE_SENSOR_TYPE:I = 0xf

.field public static final SHAKE_STATE0:I = 0x0

.field public static final SHAKE_STATE1:I = 0x1

.field public static final SHAKE_STATE2:I = 0x2

.field public static final SHAKE_STATE3:I = 0x3

.field public static final SHAKE_THREDHOLD:F = 1.0f

.field public static final SHAKE_TIME_LIMIT:I = 0x3b9aca00

.field public static final STANDARD_GRAVITY:F = 9.80665f

.field protected static final TAG:Ljava/lang/String; = "SensorManager"

.field public static final TAPE_SENSOR_TYPE:I = 0x10

.field private static mBrushState:I = 0x0

.field public static final mIsGnDistanceWakeupSupport:Z

.field public static final mIsGnGestureSupport:Z

.field private static final mTempMatrix:[F

.field public static final maxTime:J = 0x1dcd6500L

.field public static final minTime:J = 0x1c9c380L


# instance fields
.field private handanswer_t1:J

.field private handanswer_t2:J

.field private handanswer_t3:J

.field private mAcceSensor:Landroid/hardware/Sensor;

.field private mBrushEvent:I

.field private mBrushListener:Landroid/hardware/SensorEventListener;

.field private mBrushTime:J

.field private mCurrProx:I

.field private mFirstTimeStamp:J

.field private mGestureSensor:Landroid/hardware/Sensor;

.field private mGnProximitySensorCalibrate:Landroid/os/GnProximitySensorCalibrate;

.field private mGyroSensor:Landroid/hardware/Sensor;

.field private mHandAnswerEvent:I

.field private mHandAnswerListener:Landroid/hardware/SensorEventListener;

.field private mHandAnswerState:I

.field private mIncallGestureEvent:I

.field private mIncallGestureFirstTimeStamp:J

.field private mIncallGestureListener:Landroid/hardware/SensorEventListener;

.field private mIncallGestureStayTimeStamp:J

.field private mIncallRawGestureEvent:I

.field private mKeyguardGestureEvent:I

.field private mKeyguardGestureFirstTimeStamp:J

.field private mKeyguardGestureListener:Landroid/hardware/SensorEventListener;

.field private mKeyguardGestureStayTimeStamp:J

.field private mKeyguardRawGestureEvent:I

.field private mLastProx:I

.field private mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private mOldKeyguardGestureEvent:I

.field private mPosOK:Z

.field private mProxSensor:Landroid/hardware/Sensor;

.field private final mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShakeEvent:I

.field private mShakeListener:Landroid/hardware/SensorEventListener;

.field private mShakeState:I

.field mSrcDataBrushListener:Landroid/hardware/SensorEventListener;

.field mSrcDataHandAnswerListener:Landroid/hardware/SensorEventListener;

.field mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

.field mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

.field private mStatus:Z

.field private mStayTimeStamp:J

.field private shake_t1:J

.field private shake_t2:J

.field private shake_t3:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 374
    const-string v0, "ro.gn.gesture.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SensorManager;->mIsGnGestureSupport:Z

    .line 379
    const-string v0, "ro.gn.distance.wakeup"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/SensorManager;->mIsGnDistanceWakeupSupport:Z

    .line 446
    const/4 v0, 0x0

    sput v0, Landroid/hardware/SensorManager;->mBrushState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    .line 375
    iput-object v4, p0, Landroid/hardware/SensorManager;->mHandAnswerListener:Landroid/hardware/SensorEventListener;

    .line 376
    iput-object v4, p0, Landroid/hardware/SensorManager;->mShakeListener:Landroid/hardware/SensorEventListener;

    .line 380
    iput-object v4, p0, Landroid/hardware/SensorManager;->mBrushListener:Landroid/hardware/SensorEventListener;

    .line 381
    iput-object v4, p0, Landroid/hardware/SensorManager;->mIncallGestureListener:Landroid/hardware/SensorEventListener;

    .line 382
    iput-object v4, p0, Landroid/hardware/SensorManager;->mKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    .line 386
    iput-object v4, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    .line 387
    iput-object v4, p0, Landroid/hardware/SensorManager;->mGyroSensor:Landroid/hardware/Sensor;

    .line 388
    iput-object v4, p0, Landroid/hardware/SensorManager;->mProxSensor:Landroid/hardware/Sensor;

    .line 391
    iput-object v4, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    .line 404
    iput v1, p0, Landroid/hardware/SensorManager;->mShakeState:I

    .line 405
    iput v1, p0, Landroid/hardware/SensorManager;->mShakeEvent:I

    .line 407
    iput-wide v2, p0, Landroid/hardware/SensorManager;->shake_t1:J

    .line 408
    iput-wide v2, p0, Landroid/hardware/SensorManager;->shake_t2:J

    .line 409
    iput-wide v2, p0, Landroid/hardware/SensorManager;->shake_t3:J

    .line 431
    iput v1, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    .line 432
    iput v1, p0, Landroid/hardware/SensorManager;->mHandAnswerEvent:I

    .line 433
    iput v5, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    .line 435
    iput-wide v2, p0, Landroid/hardware/SensorManager;->handanswer_t1:J

    .line 436
    iput-wide v2, p0, Landroid/hardware/SensorManager;->handanswer_t2:J

    .line 437
    iput-wide v2, p0, Landroid/hardware/SensorManager;->handanswer_t3:J

    .line 447
    iput v1, p0, Landroid/hardware/SensorManager;->mBrushEvent:I

    .line 448
    iput-wide v2, p0, Landroid/hardware/SensorManager;->mBrushTime:J

    .line 449
    iput-wide v2, p0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    .line 450
    iput-wide v2, p0, Landroid/hardware/SensorManager;->mFirstTimeStamp:J

    .line 451
    iput-boolean v1, p0, Landroid/hardware/SensorManager;->mPosOK:Z

    .line 457
    iput v1, p0, Landroid/hardware/SensorManager;->mIncallGestureEvent:I

    .line 458
    iput v1, p0, Landroid/hardware/SensorManager;->mIncallRawGestureEvent:I

    .line 471
    iput-wide v2, p0, Landroid/hardware/SensorManager;->mIncallGestureStayTimeStamp:J

    .line 472
    iput-wide v2, p0, Landroid/hardware/SensorManager;->mIncallGestureFirstTimeStamp:J

    .line 474
    iput-wide v2, p0, Landroid/hardware/SensorManager;->mKeyguardGestureStayTimeStamp:J

    .line 475
    iput-wide v2, p0, Landroid/hardware/SensorManager;->mKeyguardGestureFirstTimeStamp:J

    .line 476
    iput v1, p0, Landroid/hardware/SensorManager;->mKeyguardGestureEvent:I

    .line 477
    iput v1, p0, Landroid/hardware/SensorManager;->mOldKeyguardGestureEvent:I

    .line 478
    iput v1, p0, Landroid/hardware/SensorManager;->mKeyguardRawGestureEvent:I

    .line 491
    iput v1, p0, Landroid/hardware/SensorManager;->mLastProx:I

    .line 492
    iput-boolean v5, p0, Landroid/hardware/SensorManager;->mStatus:Z

    .line 845
    new-instance v0, Landroid/hardware/SensorManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$1;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataHandAnswerListener:Landroid/hardware/SensorEventListener;

    .line 968
    new-instance v0, Landroid/hardware/SensorManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$2;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataBrushListener:Landroid/hardware/SensorEventListener;

    .line 1065
    new-instance v0, Landroid/hardware/SensorManager$3;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$3;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    .line 1152
    new-instance v0, Landroid/hardware/SensorManager$4;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$4;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    .line 1171
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/SensorManager;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->detect_hand_answer(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/SensorManager;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SensorManager;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/SensorManager;->mHandAnswerListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->sendKeyguardGestureEvent(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->sendGestureEvent(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/SensorManager;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->detect_brush(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/SensorManager;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SensorManager;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/SensorManager;->mBrushListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/SensorManager;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->detect_incall_gesture(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/SensorManager;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SensorManager;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/SensorManager;->mIncallGestureListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->sendIncallGestureEvent(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method static synthetic access$800(Landroid/hardware/SensorManager;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/SensorManager;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/hardware/SensorManager;->detect_keyguard_gesture(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/SensorManager;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/SensorManager;

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/SensorManager;->mKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private detect_brush(Landroid/hardware/SensorEvent;)V
    .locals 26
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 882
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_BRUSH comming   detect_brush(), timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_BRUSH comming detect_brush(), value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    .line 892
    .local v9, "sensorType":I
    sparse-switch v9, :sswitch_data_0

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 895
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 896
    .local v12, "values":[F
    const/4 v2, 0x0

    aget v2, v12, v2

    float-to-double v14, v2

    .line 897
    .local v14, "x":D
    const/4 v2, 0x1

    aget v2, v12, v2

    float-to-double v0, v2

    move-wide/from16 v18, v0

    .line 898
    .local v18, "y":D
    const/4 v2, 0x2

    aget v2, v12, v2

    float-to-double v0, v2

    move-wide/from16 v22, v0

    .line 900
    .local v22, "z":D
    const/4 v2, 0x0

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 901
    .local v16, "x2":D
    const/4 v2, 0x1

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    .line 902
    .local v20, "y2":D
    const/4 v2, 0x2

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    .line 903
    .local v24, "z2":D
    add-double v2, v16, v20

    add-double v2, v2, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 904
    .local v10, "data":D
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_BRUSH data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-wide v2, 0x402599999999999aL    # 10.8

    cmpg-double v2, v10, v2

    if-gez v2, :cond_3

    const-wide v2, 0x402199999999999aL    # 8.8

    cmpl-double v2, v10, v2

    if-lez v2, :cond_3

    .line 907
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 908
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    .line 909
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_BRUSH mStayTimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    :cond_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x77359400

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 913
    const-string v2, "SensorManager"

    const-string v3, "exit brush event 111"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/SensorManager;->mSrcDataBrushListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 915
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mFirstTimeStamp:J

    .line 916
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    .line 919
    :cond_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x77359400

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v22, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v22, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v2, v18, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v2, v18, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    cmpl-double v2, v14, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v2, v14, v2

    if-gez v2, :cond_0

    .line 924
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/hardware/SensorManager;->mPosOK:Z

    .line 925
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/SensorManager;->mBrushEvent:I

    .line 926
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    .line 927
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mFirstTimeStamp:J

    goto/16 :goto_0

    .line 933
    :cond_3
    const-string v2, "SensorManager"

    const-string v3, "TYPE_BRUSH reset  mStayTimeStamp "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    .line 935
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mFirstTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1e8480

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 936
    const-string v2, "SensorManager"

    const-string v3, "TYPE_BRUSH exit brush event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/SensorManager;->mSrcDataBrushListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 938
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mFirstTimeStamp:J

    goto/16 :goto_0

    .line 944
    .end local v10    # "data":D
    .end local v12    # "values":[F
    .end local v14    # "x":D
    .end local v16    # "x2":D
    .end local v18    # "y":D
    .end local v20    # "y2":D
    .end local v22    # "z":D
    .end local v24    # "z2":D
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 946
    const/4 v2, 0x1

    sput v2, Landroid/hardware/SensorManager;->mBrushState:I

    .line 947
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mBrushTime:J

    goto/16 :goto_0

    .line 951
    :cond_4
    sget v2, Landroid/hardware/SensorManager;->mBrushState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 953
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mBrushTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1dcd6500

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mBrushTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1c9c380

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 956
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mFirstTimeStamp:J

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mSrcDataBrushListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    const v5, 0x1046b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    .line 958
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mStayTimeStamp:J

    .line 960
    :cond_5
    const/4 v2, 0x0

    sput v2, Landroid/hardware/SensorManager;->mBrushState:I

    .line 961
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mBrushTime:J

    goto/16 :goto_0

    .line 892
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private detect_hand_answer(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v12, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3f99999a    # 1.2f

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 591
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v6, v11

    .line 592
    .local v1, "x":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v6, v10

    .line 593
    .local v4, "y":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v6, v12

    .line 594
    .local v5, "z":F
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 595
    .local v2, "timestamp":J
    const-string v6, "wangyaohui"

    const-string v7, "detect_hand_answer"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 598
    iget v6, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    packed-switch v6, :pswitch_data_0

    .line 623
    const-string v6, "SensorManager"

    const-string v7, "accl change but handanswer state not(0~3),so set step0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iput v11, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    .line 754
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 606
    :pswitch_1
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handanswer acc data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/high16 v6, 0x40800000    # 4.0f

    cmpg-float v6, v4, v6

    if-gez v6, :cond_0

    .line 609
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handanswer acc data out range deamon step3->step0 time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iput v11, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    goto :goto_0

    .line 627
    :cond_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    .line 630
    mul-float v6, v1, v1

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 631
    .local v0, "gyro_vector":F
    iget v6, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    packed-switch v6, :pswitch_data_1

    .line 692
    const-string v6, "SensorManager"

    const-string v7, "gyro change but handanswer state not(0~3),so set step0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iput v11, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    goto :goto_0

    .line 634
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_0

    .line 636
    const-string v6, "SensorManager"

    const-string v7, "handanswer deamon enter step1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput v10, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    .line 638
    iput-wide v2, p0, Landroid/hardware/SensorManager;->handanswer_t1:J

    goto :goto_0

    .line 643
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    .line 645
    const-string v6, "SensorManager"

    const-string v7, "handanswer deamon enter step2"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iput v12, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    .line 647
    iput-wide v2, p0, Landroid/hardware/SensorManager;->handanswer_t2:J

    goto/16 :goto_0

    .line 651
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_0

    .line 653
    const-string v6, "SensorManager"

    const-string v7, "handanswer deamon enter step3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v6, 0x3

    iput v6, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    .line 655
    iput-wide v2, p0, Landroid/hardware/SensorManager;->handanswer_t3:J

    goto/16 :goto_0

    .line 659
    :pswitch_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 661
    const-string v6, "SensorManager"

    const-string v7, "handanswer deamon step3->step0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iput v11, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    goto/16 :goto_0

    .line 664
    :cond_2
    iget-wide v6, p0, Landroid/hardware/SensorManager;->handanswer_t3:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x5f5e100

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 667
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrProx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/SensorManager;->mStatus:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget v6, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    if-nez v6, :cond_5

    iget-boolean v6, p0, Landroid/hardware/SensorManager;->mStatus:Z

    if-nez v6, :cond_5

    .line 672
    const-string v6, "SensorManager"

    const-string v7, "handanswer event ok"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iput v10, p0, Landroid/hardware/SensorManager;->mHandAnswerEvent:I

    .line 674
    iput v10, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    .line 676
    invoke-static {}, Landroid/os/GnProximitySensorCalibrate;->isSupportPsCalibrationOffhook()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 677
    iget-object v6, p0, Landroid/hardware/SensorManager;->mGnProximitySensorCalibrate:Landroid/os/GnProximitySensorCalibrate;

    if-nez v6, :cond_3

    .line 678
    new-instance v6, Landroid/os/GnProximitySensorCalibrate;

    invoke-direct {v6}, Landroid/os/GnProximitySensorCalibrate;-><init>()V

    iput-object v6, p0, Landroid/hardware/SensorManager;->mGnProximitySensorCalibrate:Landroid/os/GnProximitySensorCalibrate;

    .line 680
    :cond_3
    iget-object v6, p0, Landroid/hardware/SensorManager;->mGnProximitySensorCalibrate:Landroid/os/GnProximitySensorCalibrate;

    invoke-virtual {v6, v10}, Landroid/os/GnProximitySensorCalibrate;->setHandAnswer(Z)Z

    .line 686
    :cond_4
    :goto_1
    iput v11, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    goto/16 :goto_0

    .line 685
    :cond_5
    const-string v6, "SensorManager"

    const-string v7, "handanswer enter postion,but p-sensor not ok"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 696
    .end local v0    # "gyro_vector":F
    :cond_6
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 699
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "begin: mLastProx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/SensorManager;->mLastProx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/SensorManager;->mStatus:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    float-to-int v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget v6, p0, Landroid/hardware/SensorManager;->mLastProx:I

    if-ne v6, v10, :cond_7

    float-to-int v6, v1

    if-nez v6, :cond_7

    .line 701
    iput-boolean v11, p0, Landroid/hardware/SensorManager;->mStatus:Z

    .line 705
    :goto_2
    float-to-int v6, v1

    iput v6, p0, Landroid/hardware/SensorManager;->mLastProx:I

    .line 707
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end: mLastProx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/SensorManager;->mLastProx:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/SensorManager;->mStatus:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    float-to-int v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget v6, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    packed-switch v6, :pswitch_data_2

    .line 750
    const-string v6, "SensorManager"

    const-string v7, "prox change but handanswer state not(0~3),so set step0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iput v11, p0, Landroid/hardware/SensorManager;->mHandAnswerState:I

    goto/16 :goto_0

    .line 703
    :cond_7
    iput-boolean v10, p0, Landroid/hardware/SensorManager;->mStatus:Z

    goto :goto_2

    .line 716
    :pswitch_6
    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_9

    .line 718
    iget v6, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    if-ne v6, v10, :cond_8

    .line 719
    const-string v6, "SensorManager"

    const-string v7, "handanswer p-sensor 1 --> 0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_8
    iput v11, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    goto/16 :goto_0

    .line 724
    :cond_9
    iget v6, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    if-ne v6, v10, :cond_a

    .line 725
    const-string v6, "SensorManager"

    const-string v7, "handanswer p-sensor 0 --> 1"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_a
    iput v10, p0, Landroid/hardware/SensorManager;->mCurrProx:I

    goto/16 :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 631
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 710
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private detect_incall_gesture(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 984
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_INCALL_GESTURE comming detect_incall_gesture(), timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_INCALL_GESTURE comming detect_incall_gesture(), value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    .line 993
    .local v9, "sensorType":I
    sparse-switch v9, :sswitch_data_0

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 996
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 997
    .local v12, "values":[F
    const/4 v2, 0x0

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 998
    .local v14, "x2":D
    const/4 v2, 0x1

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 999
    .local v16, "y2":D
    const/4 v2, 0x2

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    .line 1000
    .local v18, "z2":D
    add-double v2, v14, v16

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 1001
    .local v10, "data":D
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_INCALL_GESTURE data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-wide v2, 0x402599999999999aL    # 10.8

    cmpg-double v2, v10, v2

    if-gez v2, :cond_2

    const-wide v2, 0x402199999999999aL    # 8.8

    cmpl-double v2, v10, v2

    if-lez v2, :cond_2

    .line 1004
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureStayTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1005
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureStayTimeStamp:J

    .line 1006
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_INCALL_GESTURE mIncallGestureStayTimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mIncallGestureStayTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1009
    :cond_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mIncallGestureStayTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    aget v2, v12, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x2

    aget v2, v12, v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget v2, v12, v2

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x0

    aget v2, v12, v2

    const/high16 v3, -0x3fc00000    # -3.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1010
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_INCALL_GESTURE send incall gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/SensorManager;->mIncallRawGestureEvent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/SensorManager;->mIncallRawGestureEvent:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/SensorManager;->mIncallGestureEvent:I

    .line 1012
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureStayTimeStamp:J

    .line 1013
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureFirstTimeStamp:J

    goto/16 :goto_0

    .line 1019
    :cond_2
    const-string v2, "SensorManager"

    const-string v3, "TYPE_INCALL_GESTURE reset  mIncallGestureStayTimeStamp "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureStayTimeStamp:J

    .line 1021
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mIncallGestureFirstTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1e8480

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1022
    const-string v2, "SensorManager"

    const-string v3, "TYPE_INCALL_GESTURE exit incall gesture event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1024
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureFirstTimeStamp:J

    goto/16 :goto_0

    .line 1030
    .end local v10    # "data":D
    .end local v12    # "values":[F
    .end local v14    # "x2":D
    .end local v16    # "y2":D
    .end local v18    # "z2":D
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 1032
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/SensorManager;->mIncallRawGestureEvent:I

    .line 1033
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureFirstTimeStamp:J

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    const v5, 0x1046b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1036
    const-string v2, "SensorManager"

    const-string v3, "TYPE_INCALL_GESTURE detect up gesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 1040
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/SensorManager;->mIncallRawGestureEvent:I

    .line 1041
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mIncallGestureFirstTimeStamp:J

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    const v5, 0x1046b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1044
    const-string v2, "SensorManager"

    const-string v3, "detect down gesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 993
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2e -> :sswitch_1
    .end sparse-switch
.end method

.method private detect_keyguard_gesture(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1078
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_KEYGUARD_GESTURE comming detect_keyguard_gesture(), timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_KEYGUARD_GESTURE comming detect_keyguard_gesture(), value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    .line 1084
    .local v9, "sensorType":I
    sparse-switch v9, :sswitch_data_0

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1087
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 1088
    .local v12, "values":[F
    const/4 v2, 0x0

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 1089
    .local v14, "x2":D
    const/4 v2, 0x1

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 1090
    .local v16, "y2":D
    const/4 v2, 0x2

    aget v2, v12, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    .line 1091
    .local v18, "z2":D
    add-double v2, v14, v16

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 1092
    .local v10, "data":D
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detect_keyguard_gesture TYPE_KEYGUARD_GESTURE data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-wide v2, 0x402599999999999aL    # 10.8

    cmpg-double v2, v10, v2

    if-gez v2, :cond_2

    const-wide v2, 0x402199999999999aL    # 8.8

    cmpl-double v2, v10, v2

    if-lez v2, :cond_2

    .line 1094
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureStayTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1095
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureStayTimeStamp:J

    .line 1096
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_KEYGUARD_GESTURE mKeyguardGestureStayTimeStamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mKeyguardGestureStayTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1099
    :cond_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mKeyguardGestureStayTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1100
    const-string v2, "SensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TYPE_KEYGUARD_GESTURE send keyguard gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/SensorManager;->mKeyguardRawGestureEvent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/SensorManager;->mKeyguardRawGestureEvent:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureEvent:I

    .line 1102
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureStayTimeStamp:J

    .line 1103
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureFirstTimeStamp:J

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/SensorManager;->mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto/16 :goto_0

    .line 1109
    :cond_2
    const-string v2, "SensorManager"

    const-string v3, "TYPE_KEYGUARD_GESTURE reset  mKeyguardGestureStayTimeStamp "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureStayTimeStamp:J

    .line 1111
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/SensorManager;->mKeyguardGestureFirstTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1e8480

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1112
    const-string v2, "SensorManager"

    const-string v3, "TYPE_KEYGUARD_GESTURE exit keyguard gesture event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/SensorManager;->mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1114
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureFirstTimeStamp:J

    goto/16 :goto_0

    .line 1119
    .end local v10    # "data":D
    .end local v12    # "values":[F
    .end local v14    # "x2":D
    .end local v16    # "y2":D
    .end local v18    # "z2":D
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 1121
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/SensorManager;->mKeyguardRawGestureEvent:I

    .line 1122
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureFirstTimeStamp:J

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    const v5, 0x1046b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    .line 1124
    const-string v2, "SensorManager"

    const-string v3, "TYPE_KEYGUARD_GESTURE detect up gesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 1128
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/SensorManager;->mKeyguardRawGestureEvent:I

    .line 1129
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/hardware/SensorManager;->mKeyguardGestureFirstTimeStamp:J

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/SensorManager;->mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    const v5, 0x1046b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    .line 1131
    const-string v2, "SensorManager"

    const-string v3, " TYPE_KEYGUARD_GESTURE detect down gesture"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1084
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2e -> :sswitch_1
    .end sparse-switch
.end method

.method public static getAltitude(FF)F
    .locals 8
    .param p0, "p0"    # F
    .param p1, "p"    # F

    .prologue
    .line 2347
    const v0, 0x3e42dcae

    .line 2348
    .local v0, "coef":F
    const v1, 0x472d2a00    # 44330.0f

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, p1, p0

    float-to-double v4, v3

    const-wide v6, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method public static getAngleChange([F[F[F)V
    .locals 30
    .param p0, "angleChange"    # [F
    .param p1, "R"    # [F
    .param p2, "prevR"    # [F

    .prologue
    .line 2378
    const/4 v11, 0x0

    .local v11, "rd1":F
    const/4 v12, 0x0

    .local v12, "rd4":F
    const/4 v13, 0x0

    .local v13, "rd6":F
    const/4 v14, 0x0

    .local v14, "rd7":F
    const/4 v15, 0x0

    .line 2379
    .local v15, "rd8":F
    const/16 v16, 0x0

    .local v16, "ri0":F
    const/16 v17, 0x0

    .local v17, "ri1":F
    const/16 v18, 0x0

    .local v18, "ri2":F
    const/16 v19, 0x0

    .local v19, "ri3":F
    const/16 v20, 0x0

    .local v20, "ri4":F
    const/16 v21, 0x0

    .local v21, "ri5":F
    const/16 v22, 0x0

    .local v22, "ri6":F
    const/16 v23, 0x0

    .local v23, "ri7":F
    const/16 v24, 0x0

    .line 2380
    .local v24, "ri8":F
    const/4 v2, 0x0

    .local v2, "pri0":F
    const/4 v3, 0x0

    .local v3, "pri1":F
    const/4 v4, 0x0

    .local v4, "pri2":F
    const/4 v5, 0x0

    .local v5, "pri3":F
    const/4 v6, 0x0

    .local v6, "pri4":F
    const/4 v7, 0x0

    .local v7, "pri5":F
    const/4 v8, 0x0

    .local v8, "pri6":F
    const/4 v9, 0x0

    .local v9, "pri7":F
    const/4 v10, 0x0

    .line 2382
    .local v10, "pri8":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 2383
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 2384
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 2385
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 2386
    const/16 v25, 0x3

    aget v19, p1, v25

    .line 2387
    const/16 v25, 0x4

    aget v20, p1, v25

    .line 2388
    const/16 v25, 0x5

    aget v21, p1, v25

    .line 2389
    const/16 v25, 0x6

    aget v22, p1, v25

    .line 2390
    const/16 v25, 0x7

    aget v23, p1, v25

    .line 2391
    const/16 v25, 0x8

    aget v24, p1, v25

    .line 2404
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 2405
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 2406
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 2407
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 2408
    const/16 v25, 0x3

    aget v5, p2, v25

    .line 2409
    const/16 v25, 0x4

    aget v6, p2, v25

    .line 2410
    const/16 v25, 0x5

    aget v7, p2, v25

    .line 2411
    const/16 v25, 0x6

    aget v8, p2, v25

    .line 2412
    const/16 v25, 0x7

    aget v9, p2, v25

    .line 2413
    const/16 v25, 0x8

    aget v10, p2, v25

    .line 2429
    :cond_1
    :goto_1
    mul-float v25, v2, v17

    mul-float v26, v5, v20

    add-float v25, v25, v26

    mul-float v26, v8, v23

    add-float v11, v25, v26

    .line 2430
    mul-float v25, v3, v17

    mul-float v26, v6, v20

    add-float v25, v25, v26

    mul-float v26, v9, v23

    add-float v12, v25, v26

    .line 2431
    mul-float v25, v4, v16

    mul-float v26, v7, v19

    add-float v25, v25, v26

    mul-float v26, v10, v22

    add-float v13, v25, v26

    .line 2432
    mul-float v25, v4, v17

    mul-float v26, v7, v20

    add-float v25, v25, v26

    mul-float v26, v10, v23

    add-float v14, v25, v26

    .line 2433
    mul-float v25, v4, v18

    mul-float v26, v7, v21

    add-float v25, v25, v26

    mul-float v26, v10, v24

    add-float v15, v25, v26

    .line 2435
    const/16 v25, 0x0

    float-to-double v0, v11

    move-wide/from16 v26, v0

    float-to-double v0, v12

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2436
    const/16 v25, 0x1

    neg-float v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->asin(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2437
    const/16 v25, 0x2

    neg-float v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    float-to-double v0, v15

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, p0, v25

    .line 2439
    return-void

    .line 2392
    :cond_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 2393
    const/16 v25, 0x0

    aget v16, p1, v25

    .line 2394
    const/16 v25, 0x1

    aget v17, p1, v25

    .line 2395
    const/16 v25, 0x2

    aget v18, p1, v25

    .line 2396
    const/16 v25, 0x4

    aget v19, p1, v25

    .line 2397
    const/16 v25, 0x5

    aget v20, p1, v25

    .line 2398
    const/16 v25, 0x6

    aget v21, p1, v25

    .line 2399
    const/16 v25, 0x8

    aget v22, p1, v25

    .line 2400
    const/16 v25, 0x9

    aget v23, p1, v25

    .line 2401
    const/16 v25, 0xa

    aget v24, p1, v25

    goto/16 :goto_0

    .line 2414
    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 2415
    const/16 v25, 0x0

    aget v2, p2, v25

    .line 2416
    const/16 v25, 0x1

    aget v3, p2, v25

    .line 2417
    const/16 v25, 0x2

    aget v4, p2, v25

    .line 2418
    const/16 v25, 0x4

    aget v5, p2, v25

    .line 2419
    const/16 v25, 0x5

    aget v6, p2, v25

    .line 2420
    const/16 v25, 0x6

    aget v7, p2, v25

    .line 2421
    const/16 v25, 0x8

    aget v8, p2, v25

    .line 2422
    const/16 v25, 0x9

    aget v9, p2, v25

    .line 2423
    const/16 v25, 0xa

    aget v10, p2, v25

    goto/16 :goto_1
.end method

.method private static getDelay(I)I
    .locals 1
    .param p0, "rate"    # I

    .prologue
    .line 2609
    const/4 v0, -0x1

    .line 2610
    .local v0, "delay":I
    packed-switch p0, :pswitch_data_0

    .line 2624
    move v0, p0

    .line 2627
    :goto_0
    return v0

    .line 2612
    :pswitch_0
    const/4 v0, 0x0

    .line 2613
    goto :goto_0

    .line 2615
    :pswitch_1
    const/16 v0, 0x4e20

    .line 2616
    goto :goto_0

    .line 2618
    :pswitch_2
    const v0, 0x1046b

    .line 2619
    goto :goto_0

    .line 2621
    :pswitch_3
    const v0, 0x30d40

    .line 2622
    goto :goto_0

    .line 2610
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInclination([F)F
    .locals 4
    .param p0, "I"    # [F

    .prologue
    const/4 v2, 0x5

    .line 2092
    array-length v0, p0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2093
    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    .prologue
    .line 2598
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2599
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v0, :cond_0

    .line 2600
    const-string v0, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    new-instance v0, Landroid/hardware/LegacySensorManager;

    invoke-direct {v0, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    .line 2604
    :cond_0
    iget-object v0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v1

    return-object v0

    .line 2605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocalSensorList(I)Landroid/hardware/Sensor;
    .locals 10
    .param p1, "type"    # I

    .prologue
    .line 514
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_0

    .line 516
    new-instance v0, Landroid/hardware/Sensor;

    const-string v1, "GIONEE Incall Gesture"

    const-string v2, "Gionee"

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e051eb8    # 0.13f

    const/4 v9, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v9}, Landroid/hardware/Sensor;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFFI)V

    .line 585
    :goto_0
    return-object v0

    .line 527
    :cond_0
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_1

    .line 529
    new-instance v0, Landroid/hardware/Sensor;

    const-string v1, "GIONEE Keyguard Gesture"

    const-string v2, "Gionee"

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e051eb8    # 0.13f

    const/4 v9, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v9}, Landroid/hardware/Sensor;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFFI)V

    .line 538
    .local v0, "gesture":Landroid/hardware/Sensor;
    goto :goto_0

    .line 542
    .end local v0    # "gesture":Landroid/hardware/Sensor;
    :cond_1
    const/16 v1, 0x29

    if-ne p1, v1, :cond_2

    .line 544
    new-instance v0, Landroid/hardware/Sensor;

    const-string v1, "GIONEE Gesture handanswer"

    const-string v2, "Gionee"

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/high16 v6, 0x44800000    # 1024.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v9}, Landroid/hardware/Sensor;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFFI)V

    .line 553
    .restart local v0    # "gesture":Landroid/hardware/Sensor;
    goto :goto_0

    .line 570
    .end local v0    # "gesture":Landroid/hardware/Sensor;
    :cond_2
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_3

    .line 572
    new-instance v0, Landroid/hardware/Sensor;

    const-string v1, "GIONEE Gesture tap"

    const-string v2, "Gionee"

    const/4 v3, 0x1

    const/16 v4, 0xff

    const/high16 v6, 0x44800000    # 1024.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    move v5, p1

    invoke-direct/range {v0 .. v9}, Landroid/hardware/Sensor;-><init>(Ljava/lang/String;Ljava/lang/String;IIIFFFI)V

    .line 581
    .restart local v0    # "gesture":Landroid/hardware/Sensor;
    goto :goto_0

    .line 585
    .end local v0    # "gesture":Landroid/hardware/Sensor;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOrientation([F[F)[F
    .locals 9
    .param p0, "R"    # [F
    .param p1, "values"    # [F

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2305
    array-length v0, p0

    if-ne v0, v8, :cond_0

    .line 2306
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 2307
    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 2308
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 2314
    :goto_0
    return-object p1

    .line 2310
    :cond_0
    aget v0, p0, v4

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 2311
    aget v0, p0, v8

    neg-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 2312
    aget v0, p0, v7

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0xa

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    goto :goto_0
.end method

.method public static getQuaternionFromVector([F[F)V
    .locals 8
    .param p0, "Q"    # [F
    .param p1, "rv"    # [F

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2524
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 2525
    aget v0, p1, v7

    aput v0, p0, v4

    .line 2530
    :goto_0
    aget v0, p1, v4

    aput v0, p0, v5

    .line 2531
    aget v0, p1, v5

    aput v0, p0, v6

    .line 2532
    aget v0, p1, v6

    aput v0, p0, v7

    .line 2533
    return-void

    .line 2527
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, p1, v4

    aget v3, p1, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p1, v5

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p1, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v4

    .line 2528
    aget v1, p0, v4

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    aget v0, p0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_1
    aput v0, p0, v4

    goto :goto_0
.end method

.method public static getRotationMatrix([F[F[F[F)Z
    .locals 27
    .param p0, "R"    # [F
    .param p1, "I"    # [F
    .param p2, "gravity"    # [F
    .param p3, "geomagnetic"    # [F

    .prologue
    .line 2017
    const/16 v20, 0x0

    aget v2, p2, v20

    .line 2018
    .local v2, "Ax":F
    const/16 v20, 0x1

    aget v3, p2, v20

    .line 2019
    .local v3, "Ay":F
    const/16 v20, 0x2

    aget v4, p2, v20

    .line 2020
    .local v4, "Az":F
    const/16 v20, 0x0

    aget v5, p3, v20

    .line 2021
    .local v5, "Ex":F
    const/16 v20, 0x1

    aget v6, p3, v20

    .line 2022
    .local v6, "Ey":F
    const/16 v20, 0x2

    aget v7, p3, v20

    .line 2023
    .local v7, "Ez":F
    mul-float v20, v6, v4

    mul-float v21, v7, v3

    sub-float v8, v20, v21

    .line 2024
    .local v8, "Hx":F
    mul-float v20, v7, v2

    mul-float v21, v5, v4

    sub-float v9, v20, v21

    .line 2025
    .local v9, "Hy":F
    mul-float v20, v5, v3

    mul-float v21, v6, v2

    sub-float v10, v20, v21

    .line 2026
    .local v10, "Hz":F
    mul-float v20, v8, v8

    mul-float v21, v9, v9

    add-float v20, v20, v21

    mul-float v21, v10, v10

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v18, v0

    .line 2027
    .local v18, "normH":F
    const v20, 0x3dcccccd    # 0.1f

    cmpg-float v20, v18, v20

    if-gez v20, :cond_0

    .line 2030
    const/16 v20, 0x0

    .line 2074
    :goto_0
    return v20

    .line 2032
    :cond_0
    const/high16 v20, 0x3f800000    # 1.0f

    div-float v17, v20, v18

    .line 2033
    .local v17, "invH":F
    mul-float v8, v8, v17

    .line 2034
    mul-float v9, v9, v17

    .line 2035
    mul-float v10, v10, v17

    .line 2036
    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v21, v2, v2

    mul-float v22, v3, v3

    add-float v21, v21, v22

    mul-float v22, v4, v4

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 2037
    .local v15, "invA":F
    mul-float/2addr v2, v15

    .line 2038
    mul-float/2addr v3, v15

    .line 2039
    mul-float/2addr v4, v15

    .line 2040
    mul-float v20, v3, v10

    mul-float v21, v4, v9

    sub-float v11, v20, v21

    .line 2041
    .local v11, "Mx":F
    mul-float v20, v4, v8

    mul-float v21, v2, v10

    sub-float v12, v20, v21

    .line 2042
    .local v12, "My":F
    mul-float v20, v2, v9

    mul-float v21, v3, v8

    sub-float v13, v20, v21

    .line 2043
    .local v13, "Mz":F
    if-eqz p0, :cond_1

    .line 2044
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2045
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    .line 2046
    const/16 v20, 0x3

    aput v11, p0, v20

    const/16 v20, 0x4

    aput v12, p0, v20

    const/16 v20, 0x5

    aput v13, p0, v20

    .line 2047
    const/16 v20, 0x6

    aput v2, p0, v20

    const/16 v20, 0x7

    aput v3, p0, v20

    const/16 v20, 0x8

    aput v4, p0, v20

    .line 2055
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 2059
    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v21, v5, v5

    mul-float v22, v6, v6

    add-float v21, v21, v22

    mul-float v22, v7, v7

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    div-float v16, v20, v21

    .line 2060
    .local v16, "invE":F
    mul-float v20, v5, v11

    mul-float v21, v6, v12

    add-float v20, v20, v21

    mul-float v21, v7, v13

    add-float v20, v20, v21

    mul-float v14, v20, v16

    .line 2061
    .local v14, "c":F
    mul-float v20, v5, v2

    mul-float v21, v6, v3

    add-float v20, v20, v21

    mul-float v21, v7, v4

    add-float v20, v20, v21

    mul-float v19, v20, v16

    .line 2062
    .local v19, "s":F
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2063
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 2064
    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x4

    aput v14, p1, v20

    const/16 v20, 0x5

    aput v19, p1, v20

    .line 2065
    const/16 v20, 0x6

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x7

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0x8

    aput v14, p1, v20

    .line 2074
    .end local v14    # "c":F
    .end local v16    # "invE":F
    .end local v19    # "s":F
    :cond_2
    :goto_2
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 2048
    :cond_3
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 2049
    const/16 v20, 0x0

    aput v8, p0, v20

    const/16 v20, 0x1

    aput v9, p0, v20

    const/16 v20, 0x2

    aput v10, p0, v20

    const/16 v20, 0x3

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 2050
    const/16 v20, 0x4

    aput v11, p0, v20

    const/16 v20, 0x5

    aput v12, p0, v20

    const/16 v20, 0x6

    aput v13, p0, v20

    const/16 v20, 0x7

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 2051
    const/16 v20, 0x8

    aput v2, p0, v20

    const/16 v20, 0x9

    aput v3, p0, v20

    const/16 v20, 0xa

    aput v4, p0, v20

    const/16 v20, 0xb

    const/16 v21, 0x0

    aput v21, p0, v20

    .line 2052
    const/16 v20, 0xc

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xd

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p0, v20

    const/16 v20, 0xf

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p0, v20

    goto/16 :goto_1

    .line 2066
    .restart local v14    # "c":F
    .restart local v16    # "invE":F
    .restart local v19    # "s":F
    :cond_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 2067
    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x2

    const/16 v21, 0x0

    aput v21, p1, v20

    .line 2068
    const/16 v20, 0x4

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x5

    aput v14, p1, v20

    const/16 v20, 0x6

    aput v19, p1, v20

    .line 2069
    const/16 v20, 0x8

    const/16 v21, 0x0

    aput v21, p1, v20

    const/16 v20, 0x9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v21, v0

    aput v21, p1, v20

    const/16 v20, 0xa

    aput v14, p1, v20

    .line 2070
    const/16 v20, 0x3

    const/16 v21, 0x7

    const/16 v22, 0xb

    const/16 v23, 0xc

    const/16 v24, 0xd

    const/16 v25, 0xe

    const/16 v26, 0x0

    aput v26, p1, v25

    aput v26, p1, v24

    aput v26, p1, v23

    aput v26, p1, v22

    aput v26, p1, v21

    aput v26, p1, v20

    .line 2071
    const/16 v20, 0xf

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, p1, v20

    goto/16 :goto_2
.end method

.method public static getRotationMatrixFromVector([F[F)V
    .locals 19
    .param p0, "R"    # [F
    .param p1, "rotationVector"    # [F

    .prologue
    .line 2463
    const/4 v15, 0x0

    aget v3, p1, v15

    .line 2464
    .local v3, "q1":F
    const/4 v15, 0x1

    aget v7, p1, v15

    .line 2465
    .local v7, "q2":F
    const/4 v15, 0x2

    aget v10, p1, v15

    .line 2467
    .local v10, "q3":F
    move-object/from16 v0, p1

    array-length v15, v0

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    .line 2468
    const/4 v15, 0x3

    aget v2, p1, v15

    .line 2474
    .local v2, "q0":F
    :goto_0
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v12, v15, v3

    .line 2475
    .local v12, "sq_q1":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v13, v15, v7

    .line 2476
    .local v13, "sq_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v14, v15, v10

    .line 2477
    .local v14, "sq_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v5, v15, v7

    .line 2478
    .local v5, "q1_q2":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v10

    mul-float v11, v15, v2

    .line 2479
    .local v11, "q3_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v6, v15, v10

    .line 2480
    .local v6, "q1_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v8, v15, v2

    .line 2481
    .local v8, "q2_q0":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v7

    mul-float v9, v15, v10

    .line 2482
    .local v9, "q2_q3":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v3

    mul-float v4, v15, v2

    .line 2484
    .local v4, "q1_q0":F
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 2485
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 2486
    const/4 v15, 0x1

    sub-float v16, v5, v11

    aput v16, p0, v15

    .line 2487
    const/4 v15, 0x2

    add-float v16, v6, v8

    aput v16, p0, v15

    .line 2489
    const/4 v15, 0x3

    add-float v16, v5, v11

    aput v16, p0, v15

    .line 2490
    const/4 v15, 0x4

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 2491
    const/4 v15, 0x5

    sub-float v16, v9, v4

    aput v16, p0, v15

    .line 2493
    const/4 v15, 0x6

    sub-float v16, v6, v8

    aput v16, p0, v15

    .line 2494
    const/4 v15, 0x7

    add-float v16, v9, v4

    aput v16, p0, v15

    .line 2495
    const/16 v15, 0x8

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v13

    aput v16, p0, v15

    .line 2515
    :cond_0
    :goto_1
    return-void

    .line 2470
    .end local v2    # "q0":F
    .end local v4    # "q1_q0":F
    .end local v5    # "q1_q2":F
    .end local v6    # "q1_q3":F
    .end local v8    # "q2_q0":F
    .end local v9    # "q2_q3":F
    .end local v11    # "q3_q0":F
    .end local v12    # "sq_q1":F
    .end local v13    # "sq_q2":F
    .end local v14    # "sq_q3":F
    :cond_1
    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v16, v3, v3

    sub-float v15, v15, v16

    mul-float v16, v7, v7

    sub-float v15, v15, v16

    mul-float v16, v10, v10

    sub-float v2, v15, v16

    .line 2471
    .restart local v2    # "q0":F
    const/4 v15, 0x0

    cmpl-float v15, v2, v15

    if-lez v15, :cond_2

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v2, v0

    :goto_2
    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 2496
    .restart local v4    # "q1_q0":F
    .restart local v5    # "q1_q2":F
    .restart local v6    # "q1_q3":F
    .restart local v8    # "q2_q0":F
    .restart local v9    # "q2_q3":F
    .restart local v11    # "q3_q0":F
    .restart local v12    # "sq_q1":F
    .restart local v13    # "sq_q2":F
    .restart local v14    # "sq_q3":F
    :cond_3
    move-object/from16 v0, p0

    array-length v15, v0

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 2497
    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v13

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 2498
    const/4 v15, 0x1

    sub-float v16, v5, v11

    aput v16, p0, v15

    .line 2499
    const/4 v15, 0x2

    add-float v16, v6, v8

    aput v16, p0, v15

    .line 2500
    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 2502
    const/4 v15, 0x4

    add-float v16, v5, v11

    aput v16, p0, v15

    .line 2503
    const/4 v15, 0x5

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v14

    aput v16, p0, v15

    .line 2504
    const/4 v15, 0x6

    sub-float v16, v9, v4

    aput v16, p0, v15

    .line 2505
    const/4 v15, 0x7

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 2507
    const/16 v15, 0x8

    sub-float v16, v6, v8

    aput v16, p0, v15

    .line 2508
    const/16 v15, 0x9

    add-float v16, v9, v4

    aput v16, p0, v15

    .line 2509
    const/16 v15, 0xa

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v12

    sub-float v16, v16, v13

    aput v16, p0, v15

    .line 2510
    const/16 v15, 0xb

    const/16 v16, 0x0

    aput v16, p0, v15

    .line 2512
    const/16 v15, 0xc

    const/16 v16, 0xd

    const/16 v17, 0xe

    const/16 v18, 0x0

    aput v18, p0, v17

    aput v18, p0, v16

    aput v18, p0, v15

    .line 2513
    const/16 v15, 0xf

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, p0, v15

    goto/16 :goto_1
.end method

.method public static remapCoordinateSystem([FII[F)Z
    .locals 4
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 2177
    if-ne p0, p3, :cond_2

    .line 2178
    sget-object v2, Landroid/hardware/SensorManager;->mTempMatrix:[F

    .line 2179
    .local v2, "temp":[F
    monitor-enter v2

    .line 2181
    :try_start_0
    invoke-static {p0, p1, p2, v2}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2182
    array-length v1, p3

    .line 2183
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2184
    aget v3, v2, v0

    aput v3, p3, v0

    .line 2183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2185
    :cond_0
    const/4 v3, 0x1

    monitor-exit v2

    .line 2189
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "temp":[F
    :goto_1
    return v3

    .line 2187
    .restart local v2    # "temp":[F
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    .end local v2    # "temp":[F
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v3

    goto :goto_1

    .line 2187
    .restart local v2    # "temp":[F
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static remapCoordinateSystemImpl([FII[F)Z
    .locals 22
    .param p0, "inR"    # [F
    .param p1, "X"    # I
    .param p2, "Y"    # I
    .param p3, "outR"    # [F

    .prologue
    .line 2206
    move-object/from16 v0, p3

    array-length v6, v0

    .line 2207
    .local v6, "length":I
    move-object/from16 v0, p0

    array-length v15, v0

    if-eq v15, v6, :cond_0

    .line 2208
    const/4 v15, 0x0

    .line 2250
    :goto_0
    return v15

    .line 2209
    :cond_0
    and-int/lit8 v15, p1, 0x7c

    if-nez v15, :cond_1

    and-int/lit8 v15, p2, 0x7c

    if-eqz v15, :cond_2

    .line 2210
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 2211
    :cond_2
    and-int/lit8 v15, p1, 0x3

    if-eqz v15, :cond_3

    and-int/lit8 v15, p2, 0x3

    if-nez v15, :cond_4

    .line 2212
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 2213
    :cond_4
    and-int/lit8 v15, p1, 0x3

    and-int/lit8 v16, p2, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 2214
    const/4 v15, 0x0

    goto :goto_0

    .line 2219
    :cond_5
    xor-int v1, p1, p2

    .line 2222
    .local v1, "Z":I
    and-int/lit8 v15, p1, 0x3

    add-int/lit8 v12, v15, -0x1

    .line 2223
    .local v12, "x":I
    and-int/lit8 v15, p2, 0x3

    add-int/lit8 v13, v15, -0x1

    .line 2224
    .local v13, "y":I
    and-int/lit8 v15, v1, 0x3

    add-int/lit8 v14, v15, -0x1

    .line 2227
    .local v14, "z":I
    add-int/lit8 v15, v14, 0x1

    rem-int/lit8 v2, v15, 0x3

    .line 2228
    .local v2, "axis_y":I
    add-int/lit8 v15, v14, 0x2

    rem-int/lit8 v3, v15, 0x3

    .line 2229
    .local v3, "axis_z":I
    xor-int v15, v12, v2

    xor-int v16, v13, v3

    or-int v15, v15, v16

    if-eqz v15, :cond_6

    .line 2230
    xor-int/lit16 v1, v1, 0x80

    .line 2232
    :cond_6
    const/16 v15, 0x80

    move/from16 v0, p1

    if-lt v0, v15, :cond_a

    const/4 v9, 0x1

    .line 2233
    .local v9, "sx":Z
    :goto_1
    const/16 v15, 0x80

    move/from16 v0, p2

    if-lt v0, v15, :cond_b

    const/4 v10, 0x1

    .line 2234
    .local v10, "sy":Z
    :goto_2
    const/16 v15, 0x80

    if-lt v1, v15, :cond_c

    const/4 v11, 0x1

    .line 2237
    .local v11, "sz":Z
    :goto_3
    const/16 v15, 0x10

    if-ne v6, v15, :cond_d

    const/4 v8, 0x4

    .line 2238
    .local v8, "rowLength":I
    :goto_4
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5
    const/4 v15, 0x3

    if-ge v5, v15, :cond_12

    .line 2239
    mul-int v7, v5, v8

    .line 2240
    .local v7, "offset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    const/4 v15, 0x3

    if-ge v4, v15, :cond_11

    .line 2241
    if-ne v12, v4, :cond_7

    add-int v16, v7, v4

    if-eqz v9, :cond_e

    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    neg-float v15, v15

    :goto_7
    aput v15, p3, v16

    .line 2242
    :cond_7
    if-ne v13, v4, :cond_8

    add-int v16, v7, v4

    if-eqz v10, :cond_f

    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    neg-float v15, v15

    :goto_8
    aput v15, p3, v16

    .line 2243
    :cond_8
    if-ne v14, v4, :cond_9

    add-int v16, v7, v4

    if-eqz v11, :cond_10

    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    neg-float v15, v15

    :goto_9
    aput v15, p3, v16

    .line 2240
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2232
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "offset":I
    .end local v8    # "rowLength":I
    .end local v9    # "sx":Z
    .end local v10    # "sy":Z
    .end local v11    # "sz":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_1

    .line 2233
    .restart local v9    # "sx":Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    .line 2234
    .restart local v10    # "sy":Z
    :cond_c
    const/4 v11, 0x0

    goto :goto_3

    .line 2237
    .restart local v11    # "sz":Z
    :cond_d
    const/4 v8, 0x3

    goto :goto_4

    .line 2241
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "offset":I
    .restart local v8    # "rowLength":I
    :cond_e
    add-int/lit8 v15, v7, 0x0

    aget v15, p0, v15

    goto :goto_7

    .line 2242
    :cond_f
    add-int/lit8 v15, v7, 0x1

    aget v15, p0, v15

    goto :goto_8

    .line 2243
    :cond_10
    add-int/lit8 v15, v7, 0x2

    aget v15, p0, v15

    goto :goto_9

    .line 2238
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2246
    .end local v4    # "i":I
    .end local v7    # "offset":I
    :cond_12
    const/16 v15, 0x10

    if-ne v6, v15, :cond_13

    .line 2247
    const/4 v15, 0x3

    const/16 v16, 0x7

    const/16 v17, 0xb

    const/16 v18, 0xc

    const/16 v19, 0xd

    const/16 v20, 0xe

    const/16 v21, 0x0

    aput v21, p3, v20

    aput v21, p3, v19

    aput v21, p3, v18

    aput v21, p3, v17

    aput v21, p3, v16

    aput v21, p3, v15

    .line 2248
    const/16 v15, 0xf

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, p3, v15

    .line 2250
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method private sendGestureEvent(Landroid/hardware/SensorEventListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 812
    if-nez p1, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget v1, p0, Landroid/hardware/SensorManager;->mHandAnswerEvent:I

    if-ne v1, v4, :cond_2

    .line 827
    new-instance v0, Landroid/hardware/SensorEvent;

    invoke-direct {v0, v5}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 828
    .local v0, "event":Landroid/hardware/SensorEvent;
    iput v2, p0, Landroid/hardware/SensorManager;->mHandAnswerEvent:I

    .line 829
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    aput v3, v1, v2

    .line 830
    invoke-interface {p1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 834
    .end local v0    # "event":Landroid/hardware/SensorEvent;
    :cond_2
    iget v1, p0, Landroid/hardware/SensorManager;->mBrushEvent:I

    if-ne v1, v4, :cond_0

    .line 836
    new-instance v0, Landroid/hardware/SensorEvent;

    invoke-direct {v0, v5}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 837
    .restart local v0    # "event":Landroid/hardware/SensorEvent;
    iput v2, p0, Landroid/hardware/SensorManager;->mBrushEvent:I

    .line 838
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    aput v3, v1, v2

    .line 839
    invoke-interface {p1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method

.method private sendIncallGestureEvent(Landroid/hardware/SensorEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v3, 0x0

    .line 1052
    if-nez p1, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget v1, p0, Landroid/hardware/SensorManager;->mIncallGestureEvent:I

    if-eqz v1, :cond_0

    .line 1058
    new-instance v0, Landroid/hardware/SensorEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 1059
    .local v0, "event":Landroid/hardware/SensorEvent;
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    iget v2, p0, Landroid/hardware/SensorManager;->mIncallGestureEvent:I

    int-to-float v2, v2

    aput v2, v1, v3

    .line 1060
    iput v3, p0, Landroid/hardware/SensorManager;->mIncallGestureEvent:I

    .line 1061
    invoke-interface {p1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method

.method private sendKeyguardGestureEvent(Landroid/hardware/SensorEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v3, 0x0

    .line 1138
    if-nez p1, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget v1, p0, Landroid/hardware/SensorManager;->mKeyguardGestureEvent:I

    iget v2, p0, Landroid/hardware/SensorManager;->mOldKeyguardGestureEvent:I

    if-eq v1, v2, :cond_0

    .line 1145
    new-instance v0, Landroid/hardware/SensorEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/SensorEvent;-><init>(I)V

    .line 1146
    .local v0, "event":Landroid/hardware/SensorEvent;
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    iget v2, p0, Landroid/hardware/SensorManager;->mKeyguardGestureEvent:I

    int-to-float v2, v2

    aput v2, v1, v3

    .line 1147
    iput v3, p0, Landroid/hardware/SensorManager;->mKeyguardGestureEvent:I

    .line 1148
    invoke-interface {p1, v0}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 1149
    iget v1, p0, Landroid/hardware/SensorManager;->mKeyguardGestureEvent:I

    iput v1, p0, Landroid/hardware/SensorManager;->mOldKeyguardGestureEvent:I

    goto :goto_0
.end method


# virtual methods
.method public cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 2587
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result v0

    return v0
.end method

.method protected abstract cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method public flush(Landroid/hardware/SensorEventListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 1875
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 10
    .param p1, "type"    # I

    .prologue
    .line 1250
    sget-boolean v7, Landroid/hardware/SensorManager;->mIsGnGestureSupport:Z

    if-eqz v7, :cond_7

    .line 1252
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app getDefaultSensor SENSOR TYPE ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/16 v7, 0x29

    if-ne p1, v7, :cond_7

    .line 1255
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 1256
    .local v2, "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 1257
    .local v3, "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v4

    .line 1259
    .local v4, "lp":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string v7, "SensorManager"

    const-string v8, "app getDefaultSensor TYPE_HAND_ANSWER"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_0

    .line 1263
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    :goto_0
    iput-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    .line 1264
    const-string v7, "wangyaohui"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAcceSensor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_0
    iget-object v7, p0, Landroid/hardware/SensorManager;->mGyroSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_1

    .line 1269
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    iput-object v7, p0, Landroid/hardware/SensorManager;->mGyroSensor:Landroid/hardware/Sensor;

    .line 1270
    const-string v7, "wangyaohui"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGyroSensor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/SensorManager;->mGyroSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_1
    iget-object v7, p0, Landroid/hardware/SensorManager;->mProxSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_2

    .line 1275
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    iput-object v7, p0, Landroid/hardware/SensorManager;->mProxSensor:Landroid/hardware/Sensor;

    .line 1276
    const-string v7, "wangyaohui"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mProxSensor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/SensorManager;->mProxSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_2
    iget-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/hardware/SensorManager;->mProxSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/hardware/SensorManager;->mGyroSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_6

    .line 1280
    const/16 v7, 0x29

    invoke-direct {p0, v7}, Landroid/hardware/SensorManager;->getLocalSensorList(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 1370
    .end local v2    # "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "lp":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :goto_3
    return-object v5

    .line 1263
    .restart local v2    # "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v3    # "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v4    # "lp":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_3
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    goto/16 :goto_0

    .line 1269
    :cond_4
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    goto :goto_1

    .line 1275
    :cond_5
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    goto :goto_2

    .line 1282
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 1302
    .end local v2    # "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "lp":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_7
    sget-boolean v7, Landroid/hardware/SensorManager;->mIsGnDistanceWakeupSupport:Z

    if-eqz v7, :cond_13

    .line 1303
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDefaultSensor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/16 v7, 0x2c

    if-ne p1, v7, :cond_d

    .line 1307
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 1308
    .restart local v2    # "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 1310
    .restart local v3    # "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string v7, "SensorManager"

    const-string v8, "getDefaultSensor TYPE_INCALL_GESTURE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v7, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_8

    .line 1313
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    :goto_4
    iput-object v7, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    .line 1314
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGestureSensor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_8
    iget-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_9

    .line 1319
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    :goto_5
    iput-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    .line 1320
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAcceSensor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_9
    iget-object v7, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_c

    iget-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_c

    .line 1324
    const/16 v7, 0x2c

    invoke-direct {p0, v7}, Landroid/hardware/SensorManager;->getLocalSensorList(I)Landroid/hardware/Sensor;

    move-result-object v5

    goto/16 :goto_3

    .line 1313
    :cond_a
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    goto :goto_4

    .line 1319
    :cond_b
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    goto :goto_5

    .line 1326
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1330
    .end local v2    # "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_d
    const/16 v7, 0x2d

    if-ne p1, v7, :cond_13

    .line 1332
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 1333
    .restart local v2    # "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 1335
    .restart local v3    # "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const-string v7, "SensorManager"

    const-string v8, "getDefaultSensor TYPE_KEYGUARD_GESTURE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v7, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_e

    .line 1338
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    :goto_6
    iput-object v7, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    .line 1339
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mGestureSensor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_e
    iget-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    if-nez v7, :cond_f

    .line 1344
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x0

    :goto_7
    iput-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    .line 1345
    const-string v7, "SensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAcceSensor = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_f
    iget-object v7, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    if-eqz v7, :cond_12

    .line 1349
    const/16 v7, 0x2d

    invoke-direct {p0, v7}, Landroid/hardware/SensorManager;->getLocalSensorList(I)Landroid/hardware/Sensor;

    move-result-object v5

    goto/16 :goto_3

    .line 1338
    :cond_10
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    goto :goto_6

    .line 1344
    :cond_11
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    goto :goto_7

    .line 1351
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1356
    .end local v2    # "la":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3    # "lg":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_13
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 1357
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v6, 0x0

    .line 1361
    .local v6, "wakeUpSensor":Z
    const/16 v7, 0x8

    if-eq p1, v7, :cond_14

    const/16 v7, 0x11

    if-eq p1, v7, :cond_14

    const/16 v7, 0x16

    if-eq p1, v7, :cond_14

    const/16 v7, 0x17

    if-eq p1, v7, :cond_14

    const/16 v7, 0x18

    if-eq p1, v7, :cond_14

    const/16 v7, 0x19

    if-ne p1, v7, :cond_15

    .line 1364
    :cond_14
    const/4 v6, 0x1

    .line 1367
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 1368
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v7

    if-ne v7, v6, :cond_16

    goto/16 :goto_3

    .line 1370
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method public getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 4
    .param p1, "type"    # I
    .param p2, "wakeUp"    # Z

    .prologue
    .line 1400
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 1401
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 1402
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1405
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected abstract getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public getSensorList(I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    .line 1213
    .local v0, "fullList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    iget-object v5, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1214
    :try_start_0
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1215
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v3, :cond_1

    .line 1216
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 1217
    move-object v3, v0

    .line 1225
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1226
    iget-object v4, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1228
    :cond_1
    monitor-exit v5

    .line 1229
    return-object v3

    .line 1219
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 1221
    .local v1, "i":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 1222
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1228
    .end local v1    # "i":Landroid/hardware/Sensor;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSensors()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1186
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I

    .prologue
    .line 1662
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I

    .prologue
    .line 1719
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 1720
    .local v3, "delay":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1845
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    .line 1846
    .local v3, "delayUs":I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 9
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "samplingPeriodUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const v3, 0x1046b

    const/4 v5, 0x0

    .line 1756
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return v5

    .line 1760
    :cond_1
    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v7

    .line 1762
    .local v7, "delay":I
    sget-boolean v0, Landroid/hardware/SensorManager;->mIsGnGestureSupport:Z

    if-eqz v0, :cond_2

    .line 1764
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_2

    .line 1766
    const-string v0, "SensorManager"

    const-string v1, "app registerListener TYPE_HAND_ANSWER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iput-object p1, p0, Landroid/hardware/SensorManager;->mHandAnswerListener:Landroid/hardware/SensorEventListener;

    .line 1768
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSrcDataHandAnswerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/SensorManager;->mAcceSensor:Landroid/hardware/Sensor;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    .line 1769
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSrcDataHandAnswerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/SensorManager;->mGyroSensor:Landroid/hardware/Sensor;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    .line 1770
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSrcDataHandAnswerListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/SensorManager;->mProxSensor:Landroid/hardware/Sensor;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move v5, v8

    .line 1771
    goto :goto_0

    .line 1787
    :cond_2
    sget-boolean v0, Landroid/hardware/SensorManager;->mIsGnDistanceWakeupSupport:Z

    if-eqz v0, :cond_4

    .line 1798
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 1799
    const-string v0, "SensorManager"

    const-string v1, "TYPE_INCALL_GESTURE app registerListener TYPE_INCALL_GESTURE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iput-object p1, p0, Landroid/hardware/SensorManager;->mIncallGestureListener:Landroid/hardware/SensorEventListener;

    .line 1802
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move v5, v8

    .line 1803
    goto :goto_0

    .line 1805
    :cond_3
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4

    .line 1806
    const-string v0, "SensorManager"

    const-string v1, "TYPE_KEYGUARD_GESTURE app registerListener TYPE_KEYGUARD_GESTURE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    iput-object p1, p0, Landroid/hardware/SensorManager;->mKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    .line 1808
    iget-object v1, p0, Landroid/hardware/SensorManager;->mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/SensorManager;->mGestureSensor:Landroid/hardware/Sensor;

    move-object v0, p0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move v5, v8

    .line 1809
    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move-object v4, p4

    move v6, v5

    .line 1815
    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result v5

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1426
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .param p3, "rate"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1454
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result v0

    return v0
.end method

.method protected abstract registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 2555
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    return v0
.end method

.method protected abstract requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    const/4 v2, 0x0

    .line 1527
    if-nez p1, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1532
    :cond_0
    sget-boolean v0, Landroid/hardware/SensorManager;->mIsGnGestureSupport:Z

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Landroid/hardware/SensorManager;->mHandAnswerListener:Landroid/hardware/SensorEventListener;

    if-ne v0, p1, :cond_1

    .line 1537
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataHandAnswerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, v0, v2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1539
    iput-object v2, p0, Landroid/hardware/SensorManager;->mHandAnswerListener:Landroid/hardware/SensorEventListener;

    .line 1541
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/SensorManager;->mLastProx:I

    .line 1542
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SensorManager;->mStatus:Z

    goto :goto_0

    .line 1561
    :cond_1
    sget-boolean v0, Landroid/hardware/SensorManager;->mIsGnDistanceWakeupSupport:Z

    if-eqz v0, :cond_4

    .line 1562
    iget-object v0, p0, Landroid/hardware/SensorManager;->mBrushListener:Landroid/hardware/SensorEventListener;

    if-ne v0, p1, :cond_2

    .line 1564
    const-string v0, "SensorManager"

    const-string v1, "brush unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataBrushListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, v0, v2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1567
    iput-object v2, p0, Landroid/hardware/SensorManager;->mBrushListener:Landroid/hardware/SensorEventListener;

    goto :goto_0

    .line 1574
    :cond_2
    iget-object v0, p0, Landroid/hardware/SensorManager;->mIncallGestureListener:Landroid/hardware/SensorEventListener;

    if-ne v0, p1, :cond_3

    .line 1576
    const-string v0, "SensorManager"

    const-string v1, "incall gesture unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataIncallGestureListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, v0, v2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1579
    iput-object v2, p0, Landroid/hardware/SensorManager;->mIncallGestureListener:Landroid/hardware/SensorEventListener;

    goto :goto_0

    .line 1586
    :cond_3
    iget-object v0, p0, Landroid/hardware/SensorManager;->mKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    if-ne v0, p1, :cond_4

    .line 1588
    const-string v0, "SensorManager"

    const-string v1, "keyguard gesture unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Landroid/hardware/SensorManager;->mSrcDataKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p0, v0, v2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 1591
    iput-object v2, p0, Landroid/hardware/SensorManager;->mKeyguardGestureListener:Landroid/hardware/SensorEventListener;

    goto :goto_0

    .line 1602
    :cond_4
    invoke-virtual {p0, p1, v2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 1509
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1513
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1469
    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 1470
    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorListener;
    .param p2, "sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1487
    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    .line 1488
    return-void
.end method

.method protected abstract unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
