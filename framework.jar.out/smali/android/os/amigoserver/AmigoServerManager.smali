.class public final Landroid/os/amigoserver/AmigoServerManager;
.super Ljava/lang/Object;
.source "AmigoServerManager.java"


# static fields
.field public static final NODE_TYPE_ACCDET_HEADSET_MODE:I = 0x22

.field public static final NODE_TYPE_ALSPS_HIGH_THRESHOLD:I = 0xe

.field public static final NODE_TYPE_ALSPS_INCALL_CALI:I = 0x11

.field public static final NODE_TYPE_ALSPS_LOW_THRESHOLD:I = 0xf

.field public static final NODE_TYPE_ALSPS_PDATA:I = 0x10

.field public static final NODE_TYPE_BATTERY_AVERAGE_CURRENT:I = 0x16

.field public static final NODE_TYPE_BATTERY_BATT_TEMP:I = 0x18

.field public static final NODE_TYPE_BATTERY_BATT_VOL:I = 0x19

.field public static final NODE_TYPE_BATTERY_CAPACITY:I = 0x1a

.field public static final NODE_TYPE_BATTERY_CHARGE_VOLTAGE:I = 0x17

.field public static final NODE_TYPE_BATTERY_HEALTH:I = 0x1b

.field public static final NODE_TYPE_BATTERY_NOTIFY:I = 0x1d

.field public static final NODE_TYPE_BATTERY_TECHNOLOGY:I = 0x1c

.field public static final NODE_TYPE_CALL_CHARGING_SWITCH_ON:I = 0x2a

.field public static final NODE_TYPE_FINGERPRINT_INPUTMODE_SWITCH:I = 0x2b

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_FINGERID_HWID:I = 0x36

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_PM_HW_RESET:I = 0x2f

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_PM_NOTIFY_ACK:I = 0x30

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_PM_NOTIFY_ENABLED:I = 0x31

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_PM_STATE:I = 0x32

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_PM_SUPPLY_ON:I = 0x33

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_PM_WAKEUP_REQ:I = 0x34

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_SETUP_DST_PID:I = 0x2c

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_SETUP_DST_SIGNO:I = 0x2d

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_SETUP_ENABLED:I = 0x2e

.field public static final NODE_TYPE_FINGERPRINT_INTERRUPT_SPICLK_ENABLE:I = 0x35

.field public static final NODE_TYPE_FLASHLIGHT_CAMERA_TORCH:I = 0x7

.field public static final NODE_TYPE_FLASHLIGHT_CAMERA_TORCH_0:I = 0x27

.field public static final NODE_TYPE_FLASHLIGHT_CAMERA_TORCH_1:I = 0x28

.field public static final NODE_TYPE_GN_DEVICE_CHECK:I = 0x23

.field public static final NODE_TYPE_GN_DEVICE_GET:I = 0x25

.field public static final NODE_TYPE_GSENSRO_CALI:I = 0xd

.field public static final NODE_TYPE_HALL_SWITCH_ON:I = 0x29

.field public static final NODE_TYPE_HALL_SWITCH_STATE:I = 0x21

.field public static final NODE_TYPE_INPUTX_BATCH:I = 0x12

.field public static final NODE_TYPE_INPUTX_DELAYMS:I = 0x13

.field public static final NODE_TYPE_INPUTX_ENABLE:I = 0x14

.field public static final NODE_TYPE_INPUTX_FLUSH:I = 0x15

.field public static final NODE_TYPE_LCM_ACL_BRIGHTNESS:I = 0x0

.field public static final NODE_TYPE_LCM_HBM_BRIGHTNESS:I = 0x2

.field public static final NODE_TYPE_LCM_PARTICAL_BRIGHTNESS:I = 0x1

.field public static final NODE_TYPE_LED_BLUE_BRIGHTNESS:I = 0x4

.field public static final NODE_TYPE_LED_BUTTONBACKLIGHT_BRIGHTNESS:I = 0x6

.field public static final NODE_TYPE_LED_GREEN_BRIGHTNESS:I = 0x5

.field public static final NODE_TYPE_LED_RED_BRIGHTNESS:I = 0x3

.field public static final NODE_TYPE_MISC_STATUS_GET:I = 0x26

.field public static final NODE_TYPE_OTG_CHARGE_SWITCH:I = 0x37

.field public static final NODE_TYPE_TPWAKESWITCH_DOUBLE_WAKE:I = 0x8

.field public static final NODE_TYPE_TPWAKESWITCH_FACTORY_CHECK:I = 0xc

.field public static final NODE_TYPE_TPWAKESWITCH_GESTURE_CONFIG:I = 0xb

.field public static final NODE_TYPE_TPWAKESWITCH_GESTURE_CONTENT:I = 0x24

.field public static final NODE_TYPE_TPWAKESWITCH_GESTURE_WAKE:I = 0xa

.field public static final NODE_TYPE_TPWAKESWITCH_GLOVE_ENABLE:I = 0x9

.field public static final NODE_TYPE_VIBRATOR_ENABLE:I = 0x1e

.field public static final NODE_TYPE_VIBRATOR_PATTERN:I = 0x20

.field public static final NODE_TYPE_VIBRATOR_VIBR_ON:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "AmigoServerManager"


# instance fields
.field private final mService:Landroid/os/amigoserver/IAmigoServerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-string v0, "amigoserver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/amigoserver/IAmigoServerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/amigoserver/IAmigoServerManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/amigoserver/AmigoServerManager;->mService:Landroid/os/amigoserver/IAmigoServerManager;

    .line 117
    return-void
.end method


# virtual methods
.method public GetNodeState(I)I
    .locals 2
    .param p1, "NodeType"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/os/amigoserver/AmigoServerManager;->mService:Landroid/os/amigoserver/IAmigoServerManager;

    invoke-interface {v1, p1}, Landroid/os/amigoserver/IAmigoServerManager;->getNodeState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public SetNodeState(II)V
    .locals 1
    .param p1, "NodeType"    # I
    .param p2, "mValue"    # I

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Landroid/os/amigoserver/AmigoServerManager;->mService:Landroid/os/amigoserver/IAmigoServerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/amigoserver/IAmigoServerManager;->setNodeState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getNodeContent(I)Ljava/lang/String;
    .locals 2
    .param p1, "NodeType"    # I

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/os/amigoserver/AmigoServerManager;->mService:Landroid/os/amigoserver/IAmigoServerManager;

    invoke-interface {v1, p1}, Landroid/os/amigoserver/IAmigoServerManager;->getNodeContent(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
