.class public Lcom/android/server/notification/AmigoLedController;
.super Ljava/lang/Object;
.source "AmigoLedController.java"


# static fields
.field private static final BATTERY_BLINK_MIDDLE_OFF:I = 0xbb8

.field private static final BATTERY_BLINK_MIDDLE_ON:I = 0x1f4

.field private static final BATTERY_COLOR_BLUE:I = -0xffff01

.field private static final BATTERY_COLOR_GREEN:I = -0xff0100

.field private static final BATTERY_COLOR_RED:I = -0x10000

.field public static final GN_FLASHLIGHT_SUPPORT:Z

.field public static final GN_KEYBOARD_FLASHLIGHT_SUPPORT:Z

.field private static final NOTIFICATION_BLINK_MIDDLE_OFF:I = 0xfa0

.field private static final NOTIFICATION_BLINK_MIDDLE_ON:I = 0xbb8

.field private static final NOTIFICATION_COLOR_GREEN:I = -0xff0100

.field private static SETTING_BATTERY_ENABLED:Z = false

.field private static SETTING_LOW_LEVEL_RED_ENABLED:Z = false

.field private static SETTING_NOTIFI_LED_ENABLED:Z = false

.field static final STATUS_CHARGE_BLUE:I = 0x2

.field static final STATUS_CHARGE_GREEN:I = 0x1

.field static final STATUS_CHARGE_RED:I = 0x3

.field static final STATUS_DISCHARGE_FLASH_RED:I = 0x4

.field static final STATUS_NOTIFICATION_FLASH:I = 0x5

.field static final STATUS_NOTIFICATION_MMI_FLASH:I = 0x6

.field static final STATUS_TURN_OFF:I = 0x0

.field static final TAG:Ljava/lang/String; = "AmigoLedController"

.field private static sInstance:Lcom/android/server/notification/AmigoLedController;


# instance fields
.field private FUNCTION_MMS_KEEP_FLASH:Z

.field LOW_LEVEL:I

.field mBatteryLedStatus:I

.field mBatteryLevel:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field mBatteryOnMsForced:I

.field mBatteryStatus:I

.field private mContext:Landroid/content/Context;

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMmsShouldKeepFlashing:Z

.field private mIsShutdowning:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMMIBlickOff:I

.field private mMMIBlickOn:I

.field private mMMIcolor:I

.field private mMissNum:I

.field private mMisscallObserver:Landroid/database/ContentObserver;

.field private mNeedForceForIgnore:Z

.field private final mNotificaitonLight:Lcom/android/server/lights/Light;

.field private mNotificationLedStatus:I

.field mNotificationOnMsForced:I

.field private mRespirationLampBatteryObserver:Landroid/database/ContentObserver;

.field private mRespirationLampNotifiObserver:Landroid/database/ContentObserver;

.field private mScreenOn:Z

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresent:Z

.field private mlogTurnOffStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/notification/AmigoLedController;->sInstance:Lcom/android/server/notification/AmigoLedController;

    .line 75
    const-string v0, "ro.gn.respirationlamp.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/AmigoLedController;->GN_FLASHLIGHT_SUPPORT:Z

    .line 107
    const-string v0, "ro.gn.keyboardlamp.support"

    const-string v1, "yes"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/AmigoLedController;->GN_KEYBOARD_FLASHLIGHT_SUPPORT:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v1, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLedStatus:I

    .line 57
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLevel:I

    .line 58
    iput v8, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryStatus:I

    .line 62
    iput v1, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    .line 81
    iput v1, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->mNeedForceForIgnore:Z

    .line 104
    iput v1, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationOnMsForced:I

    .line 115
    iput-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->FUNCTION_MMS_KEEP_FLASH:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->mIsMmsShouldKeepFlashing:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->mIsShutdowning:Z

    .line 182
    new-instance v0, Lcom/android/server/notification/AmigoLedController$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/AmigoLedController$1;-><init>(Lcom/android/server/notification/AmigoLedController;)V

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Lcom/android/server/notification/AmigoLedController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/AmigoLedController$2;-><init>(Lcom/android/server/notification/AmigoLedController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mRespirationLampBatteryObserver:Landroid/database/ContentObserver;

    .line 561
    new-instance v0, Lcom/android/server/notification/AmigoLedController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/AmigoLedController$3;-><init>(Lcom/android/server/notification/AmigoLedController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mRespirationLampNotifiObserver:Landroid/database/ContentObserver;

    .line 569
    new-instance v0, Lcom/android/server/notification/AmigoLedController$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/AmigoLedController$4;-><init>(Lcom/android/server/notification/AmigoLedController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mMisscallObserver:Landroid/database/ContentObserver;

    .line 125
    iput-object p1, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/AmigoLedController;->LOW_LEVEL:I

    .line 129
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/lights/LightsManager;

    .line 130
    .local v6, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 131
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificaitonLight:Lcom/android/server/lights/Light;

    .line 132
    invoke-direct {p0}, Lcom/android/server/notification/AmigoLedController;->resetAllLights()V

    .line 133
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 134
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 135
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mUserManager:Landroid/os/UserManager;

    .line 137
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 138
    .local v7, "pm":Landroid/os/PowerManager;
    if-eqz v7, :cond_0

    .line 139
    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    .line 141
    :cond_0
    const-string v0, "AmigoLedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start.........isScreenOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/AmigoLedController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/android/server/notification/AmigoLedController;->updateSettingsNotificationLedEnabled()V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/notification/AmigoLedController;->updateBatterySettings()V

    .line 157
    const-string v0, "AmigoLedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING_BATTERY_ENABLED ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/notification/AmigoLedController;->SETTING_BATTERY_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SETTING_LOW_LEVEL_RED_ENABLED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/notification/AmigoLedController;->SETTING_LOW_LEVEL_RED_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",SETTING_NOTIFI_LED_ENABLED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/notification/AmigoLedController;->SETTING_NOTIFI_LED_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gn_respirationlamp_low_power"

    invoke-static {v1}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mRespirationLampBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gn_respirationlamp_in_charge"

    invoke-static {v1}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mRespirationLampBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gn_respirationlamp_notification"

    invoke-static {v1}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mRespirationLampNotifiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mMisscallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/AmigoLedController;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/AmigoLedController;->updateBatteryLight(IIZ)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/notification/AmigoLedController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/notification/AmigoLedController;->mIsShutdowning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/notification/AmigoLedController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/notification/AmigoLedController;->resetAllLights()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/notification/AmigoLedController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/notification/AmigoLedController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/notification/AmigoLedController;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/AmigoLedController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/notification/AmigoLedController;->handleScreenOn()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/notification/AmigoLedController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/notification/AmigoLedController;->mInCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/notification/AmigoLedController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/notification/AmigoLedController;->handleUserPresent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/notification/AmigoLedController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/notification/AmigoLedController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/AmigoLedController;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/android/server/notification/AmigoLedController;->mMissNum:I

    return p1
.end method

.method public static getDefaulted(Landroid/content/Context;)Lcom/android/server/notification/AmigoLedController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    sget-object v0, Lcom/android/server/notification/AmigoLedController;->sInstance:Lcom/android/server/notification/AmigoLedController;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/android/server/notification/AmigoLedController;

    invoke-direct {v0, p0}, Lcom/android/server/notification/AmigoLedController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/notification/AmigoLedController;->sInstance:Lcom/android/server/notification/AmigoLedController;

    .line 179
    :cond_0
    sget-object v0, Lcom/android/server/notification/AmigoLedController;->sInstance:Lcom/android/server/notification/AmigoLedController;

    return-object v0
.end method

.method private getOnMsChange(I)I
    .locals 1
    .param p1, "onMsChange"    # I

    .prologue
    const/4 v0, 0x1

    .line 652
    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 653
    :goto_0
    return p1

    :cond_0
    move p1, v0

    .line 652
    goto :goto_0
.end method

.method private handleScreenOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    const-string v0, "AmigoLedController"

    const-string v1, "handleScreenOff +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v0, "AmigoLedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check mMissNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mMissNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    .line 553
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mMissNum:I

    if-lez v0, :cond_0

    .line 554
    const/4 v0, 0x5

    invoke-direct {p0, v0, v3}, Lcom/android/server/notification/AmigoLedController;->updateNotificaitonLightInternal(IZ)V

    .line 556
    :cond_0
    const-string v0, "AmigoLedController"

    const-string v1, "handleScreenOff -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    return-void
.end method

.method private handleScreenOn()V
    .locals 4

    .prologue
    .line 506
    const-string v1, "AmigoLedController"

    const-string v2, "handleScreenOn +"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/android/server/notification/AmigoLedController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_0

    .line 508
    const-string v1, "AmigoLedController"

    const-string v2, "handleScreenOn,mkeyguardManager = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v1, "AmigoLedController"

    const-string v2, "handleScreenOn -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/AmigoLedController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 514
    .local v0, "isKeyguardLock":Z
    const-string v1, "AmigoLedController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    if-nez v0, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/android/server/notification/AmigoLedController;->isLockScreenDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 519
    const-string v1, "AmigoLedController"

    const-string v2, "handleScreenOn, isKeyguardLock= false,isKeyguardDisabled = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/android/server/notification/AmigoLedController;->handleUserPresent()V

    .line 525
    :cond_1
    const-string v1, "AmigoLedController"

    const-string v2, "handleScreenOn -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUserPresent()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 529
    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 531
    :cond_0
    const-string v2, "AmigoLedController"

    const-string v3, "handleUserPresent +"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iput-boolean v0, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    .line 536
    iget-boolean v2, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    if-nez v2, :cond_1

    .line 537
    iput-boolean v0, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    .line 538
    const-string v2, "AmigoLedController"

    const-string v3, "ACTION_SCREEN_ON may lose! make sure it true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->mIsMmsShouldKeepFlashing:Z

    .line 543
    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    if-eqz v2, :cond_2

    .line 545
    .local v0, "forceBatteryLight":Z
    :goto_0
    invoke-direct {p0, v1, v1}, Lcom/android/server/notification/AmigoLedController;->updateNotificaitonLightInternal(IZ)V

    .line 546
    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryStatus:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/notification/AmigoLedController;->updateBatteryLight(IIZ)V

    .line 547
    const-string v1, "AmigoLedController"

    const-string v2, "handleUserPresent -"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .end local v0    # "forceBatteryLight":Z
    :cond_2
    move v0, v1

    .line 543
    goto :goto_0
.end method

.method public static isAmigoFlashLightSupport()Z
    .locals 1

    .prologue
    .line 581
    sget-boolean v0, Lcom/android/server/notification/AmigoLedController;->GN_FLASHLIGHT_SUPPORT:Z

    return v0
.end method

.method public static isAmigoLedSupport()Z
    .locals 1

    .prologue
    .line 584
    sget-boolean v0, Lcom/android/server/notification/AmigoLedController;->GN_FLASHLIGHT_SUPPORT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/AmigoLedController;->GN_KEYBOARD_FLASHLIGHT_SUPPORT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockScreenDisabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 488
    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_1

    .line 489
    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 490
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 491
    .local v0, "singleUser":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/AmigoLedController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 495
    .end local v0    # "singleUser":Z
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v2

    .restart local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    move v0, v3

    .line 490
    goto :goto_0

    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move v2, v3

    .line 495
    goto :goto_1
.end method

.method private resetAllLights()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 501
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryStatus:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/AmigoLedController;->updateBatteryLightInternal(IIZI)V

    .line 502
    invoke-direct {p0, v3, v3}, Lcom/android/server/notification/AmigoLedController;->updateNotificaitonLightInternal(IZ)V

    .line 503
    return-void
.end method

.method private show(I)Ljava/lang/String;
    .locals 1
    .param p1, "ledStatus"    # I

    .prologue
    .line 626
    packed-switch p1, :pswitch_data_0

    .line 646
    const-string v0, "turn_off"

    .line 648
    .local v0, "ledString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 628
    .end local v0    # "ledString":Ljava/lang/String;
    :pswitch_0
    const-string v0, "charge_blue"

    .line 629
    .restart local v0    # "ledString":Ljava/lang/String;
    goto :goto_0

    .line 631
    .end local v0    # "ledString":Ljava/lang/String;
    :pswitch_1
    const-string v0, "charge_green"

    .line 632
    .restart local v0    # "ledString":Ljava/lang/String;
    goto :goto_0

    .line 634
    .end local v0    # "ledString":Ljava/lang/String;
    :pswitch_2
    const-string v0, "charge_red"

    .line 635
    .restart local v0    # "ledString":Ljava/lang/String;
    goto :goto_0

    .line 637
    .end local v0    # "ledString":Ljava/lang/String;
    :pswitch_3
    const-string v0, "dischagre_flash_red"

    .line 638
    .restart local v0    # "ledString":Ljava/lang/String;
    goto :goto_0

    .line 640
    .end local v0    # "ledString":Ljava/lang/String;
    :pswitch_4
    const-string v0, "notificaiton_flash"

    .line 641
    .restart local v0    # "ledString":Ljava/lang/String;
    goto :goto_0

    .line 643
    .end local v0    # "ledString":Ljava/lang/String;
    :pswitch_5
    const-string v0, "mmi_notificaiton_flash"

    .line 644
    .restart local v0    # "ledString":Ljava/lang/String;
    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateBatteryLight(IIZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "batteryStatus"    # I
    .param p3, "forced"    # Z

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "ledStatus":I
    sget-boolean v1, Lcom/android/server/notification/AmigoLedController;->SETTING_BATTERY_ENABLED:Z

    if-eqz v1, :cond_0

    .line 238
    packed-switch p2, :pswitch_data_0

    .line 252
    :pswitch_0
    const/4 v0, 0x0

    .line 257
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/notification/AmigoLedController;->SETTING_LOW_LEVEL_RED_ENABLED:Z

    if-eqz v1, :cond_1

    .line 258
    packed-switch p2, :pswitch_data_1

    .line 263
    :pswitch_1
    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->LOW_LEVEL:I

    if-ge p1, v1, :cond_6

    .line 264
    const/4 v0, 0x4

    .line 271
    :cond_1
    :goto_1
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->mNeedForceForIgnore:Z

    if-eqz v1, :cond_2

    .line 272
    const/4 p3, 0x1

    .line 273
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->mNeedForceForIgnore:Z

    .line 276
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/notification/AmigoLedController;->mIsShutdowning:Z

    if-eqz v1, :cond_3

    .line 277
    const/4 v0, 0x0

    .line 278
    const-string v1, "AmigoLedController"

    const-string v2, "mIsShutdowning = true, so make batteryLight STATUS_TURE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/notification/AmigoLedController;->updateBatteryLightInternal(IIZI)V

    .line 282
    return-void

    .line 240
    :pswitch_3
    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->LOW_LEVEL:I

    if-ge p1, v1, :cond_4

    .line 241
    const/4 v0, 0x3

    goto :goto_0

    .line 242
    :cond_4
    const/16 v1, 0x64

    if-ne p1, v1, :cond_5

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :cond_5
    const/4 v0, 0x2

    .line 247
    goto :goto_0

    .line 249
    :pswitch_4
    const/4 v0, 0x1

    .line 250
    goto :goto_0

    .line 266
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateBatteryLightInternal(IIZI)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "batteryStatus"    # I
    .param p3, "forced"    # Z
    .param p4, "ledStatus"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x10000

    const/4 v3, 0x0

    .line 286
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLedStatus:I

    if-ne p4, v0, :cond_0

    if-nez p3, :cond_0

    .line 329
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/AmigoLedController;->isAmigoNotifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const-string v0, "AmigoLedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ignore]updateBatteryLight, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old ledStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLedStatus:I

    invoke-direct {p0, v2}, Lcom/android/server/notification/AmigoLedController;->show(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new ledStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/notification/AmigoLedController;->show(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iput p4, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLedStatus:I

    .line 295
    iput-boolean v5, p0, Lcom/android/server/notification/AmigoLedController;->mNeedForceForIgnore:Z

    goto :goto_0

    .line 300
    :cond_1
    const-string v0, "AmigoLedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[forced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]updateBatteryLight, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old ledStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLedStatus:I

    invoke-direct {p0, v2}, Lcom/android/server/notification/AmigoLedController;->show(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new ledStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p4}, Lcom/android/server/notification/AmigoLedController;->show(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput p4, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLedStatus:I

    .line 307
    if-eqz p3, :cond_2

    .line 308
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/AmigoLedController;->getOnMsChange(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    .line 312
    :goto_1
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLedStatus:I

    packed-switch v0, :pswitch_data_0

    .line 327
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    invoke-virtual {v0, v3, v3, v1, v3}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 310
    :cond_2
    iput v3, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    goto :goto_1

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    add-int/lit16 v1, v1, 0x1f4

    const/16 v2, 0xbb8

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    invoke-virtual {v0, v4, v3, v1, v3}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 321
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLight:Lcom/android/server/lights/Light;

    const v1, -0xffff01

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 324
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLight:Lcom/android/server/lights/Light;

    const v1, -0xff0100

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryOnMsForced:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNotificaitonLightInternal(IZ)V
    .locals 5
    .param p1, "ledStatus"    # I
    .param p2, "forced"    # Z

    .prologue
    const/4 v4, 0x1

    .line 456
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    .line 457
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    .line 485
    :goto_0
    return-void

    .line 461
    :cond_0
    const-string v0, "AmigoLedController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[forced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/notification/AmigoLedController;->SETTING_NOTIFI_LED_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] updateNotificaitonLightInternal, old status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    invoke-direct {p0, v2}, Lcom/android/server/notification/AmigoLedController;->show(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new status ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/notification/AmigoLedController;->show(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    .line 465
    iput p1, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    .line 467
    if-eqz p2, :cond_1

    .line 468
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationOnMsForced:I

    invoke-direct {p0, v0}, Lcom/android/server/notification/AmigoLedController;->getOnMsChange(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationOnMsForced:I

    .line 472
    :goto_1
    iget v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    packed-switch v0, :pswitch_data_0

    .line 482
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificaitonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationOnMsForced:I

    goto :goto_1

    .line 474
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificaitonLight:Lcom/android/server/lights/Light;

    iget v1, p0, Lcom/android/server/notification/AmigoLedController;->mMMIcolor:I

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mMMIBlickOn:I

    iget v3, p0, Lcom/android/server/notification/AmigoLedController;->mMMIBlickOff:I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 478
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/AmigoLedController;->mNotificaitonLight:Lcom/android/server/lights/Light;

    const v1, -0xff0100

    iget v2, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationOnMsForced:I

    add-int/lit16 v2, v2, 0xbb8

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isAmigoNotifiEnabled()Z
    .locals 1

    .prologue
    .line 588
    sget-boolean v0, Lcom/android/server/notification/AmigoLedController;->GN_FLASHLIGHT_SUPPORT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/notification/AmigoLedController;->GN_KEYBOARD_FLASHLIGHT_SUPPORT:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/server/notification/AmigoLedController;->SETTING_NOTIFI_LED_ENABLED:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRespirationLampInChargeOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gn_respirationlamp_in_charge"

    invoke-static {v2, v3, v1}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 352
    goto :goto_0
.end method

.method public isRespirationLampLowLevel()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gn_respirationlamp_low_power"

    invoke-static {v2, v3, v1}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 347
    goto :goto_0
.end method

.method public isRespirationLampNotificationOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/server/notification/AmigoLedController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gn_respirationlamp_notification"

    invoke-static {v2, v3, v1}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 619
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 618
    goto :goto_0
.end method

.method public updateBatterySettings()V
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/server/notification/AmigoLedController;->isRespirationLampLowLevel()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/AmigoLedController;->SETTING_LOW_LEVEL_RED_ENABLED:Z

    .line 343
    invoke-virtual {p0}, Lcom/android/server/notification/AmigoLedController;->isRespirationLampInChargeOn()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/AmigoLedController;->SETTING_BATTERY_ENABLED:Z

    .line 344
    return-void
.end method

.method public updateMissCallNum()V
    .locals 2

    .prologue
    .line 591
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/notification/AmigoLedController$5;

    invoke-direct {v1, p0}, Lcom/android/server/notification/AmigoLedController$5;-><init>(Lcom/android/server/notification/AmigoLedController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 614
    return-void
.end method

.method public updateNotificaitonLightFromNMS(Lcom/android/server/notification/NotificationRecord;ZZLcom/android/server/statusbar/StatusBarManagerInternal;Z)V
    .locals 6
    .param p1, "lednotification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "dmLock"    # Z
    .param p3, "dplLock"    # Z
    .param p4, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerInternal;
    .param p5, "notificationPulseEnabled"    # Z

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/server/notification/AmigoLedController;->isAmigoNotifiEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v3, "AmigoLedController"

    const-string v4, "updateNotificaitonLightFromNMS +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iput-object p4, p0, Lcom/android/server/notification/AmigoLedController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 364
    const-string v3, "true"

    const-string v4, "persist.radio.dispatchAllKey"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 366
    .local v2, "mmiRuning":Z
    const/4 v1, 0x0

    .line 367
    .local v1, "ledStatus":I
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mInCall:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_5

    .line 368
    :cond_1
    invoke-interface {p4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mInCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/AmigoLedController;->mInCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mPresent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Lednotificaiton ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v3, "NOT NULL"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    .line 371
    const/4 v1, 0x0

    .line 420
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->FUNCTION_MMS_KEEP_FLASH:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    const-string v3, "com.android.mms"

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mIsMmsShouldKeepFlashing:Z

    .line 424
    :cond_2
    iget v3, p0, Lcom/android/server/notification/AmigoLedController;->mMissNum:I

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mIsMmsShouldKeepFlashing:Z

    if-eqz v3, :cond_e

    :cond_3
    const/4 v0, 0x1

    .line 426
    .local v0, "isNeedIgnoreForPhoneAndMms":Z
    :goto_3
    if-nez p1, :cond_f

    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    if-nez v3, :cond_f

    iget v3, p0, Lcom/android/server/notification/AmigoLedController;->mNotificationLedStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    if-eqz v0, :cond_f

    .line 430
    const-string v3, "AmigoLedController"

    const-string v4, "case 2:ignore update NULL notification when phone or mms..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v3, "AmigoLedController"

    const-string v4, "updateNotificaitonLightFromNMS -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 369
    .end local v0    # "isNeedIgnoreForPhoneAndMms":Z
    :cond_4
    const-string v3, "NULL"

    goto :goto_1

    .line 373
    :cond_5
    if-eqz v2, :cond_6

    .line 374
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->ledARGB:I

    iput v3, p0, Lcom/android/server/notification/AmigoLedController;->mMMIcolor:I

    .line 375
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    iput v3, p0, Lcom/android/server/notification/AmigoLedController;->mMMIBlickOn:I

    .line 376
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    iput v3, p0, Lcom/android/server/notification/AmigoLedController;->mMMIBlickOff:I

    .line 378
    const/4 v1, 0x6

    .line 379
    const-string v3, "AmigoLedController"

    const-string v4, "MMI notification....."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MMI,color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/AmigoLedController;->mMMIcolor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", blinkOn ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/AmigoLedController;->mMMIBlickOn:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",blinkoff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/AmigoLedController;->mMMIBlickOff:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    goto/16 :goto_2

    .line 382
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    if-nez v3, :cond_9

    .line 383
    if-eqz p5, :cond_8

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sleep][mSCREEN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Lednotificaiton ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_7

    const-string v3, "NOT NULL"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    .line 386
    const/4 v1, 0x5

    goto/16 :goto_2

    .line 384
    :cond_7
    const-string v3, " NULL"

    goto :goto_4

    .line 389
    :cond_8
    const v3, -0xff0100

    const/16 v4, 0xbb8

    const/16 v5, 0xfa0

    invoke-interface {p4, v3, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto/16 :goto_2

    .line 392
    :cond_9
    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    if-nez v3, :cond_c

    .line 399
    if-eqz p5, :cond_b

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[on keyguard][mSCREEN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Lednotificaiton ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_a

    const-string v3, "NOT NULL"

    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    .line 402
    const/4 v1, 0x5

    goto/16 :goto_2

    .line 400
    :cond_a
    const-string v3, " NULL"

    goto :goto_5

    .line 405
    :cond_b
    const v3, -0xff0100

    const/16 v4, 0xbb8

    const/16 v5, 0xfa0

    invoke-interface {p4, v3, v4, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto/16 :goto_2

    .line 410
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mUserPresent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasLednotificaiton="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_d

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/AmigoLedController;->mlogTurnOffStr:Ljava/lang/String;

    .line 412
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 410
    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 424
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 437
    .restart local v0    # "isNeedIgnoreForPhoneAndMms":Z
    :cond_f
    if-eqz v2, :cond_11

    .line 438
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/AmigoLedController;->updateNotificaitonLightInternal(IZ)V

    .line 439
    if-nez v1, :cond_10

    .line 440
    const-string v3, "AmigoLedController"

    const-string v4, "MMI forced update battery...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget v3, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLevel:I

    iget v4, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryStatus:I

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/notification/AmigoLedController;->updateBatteryLight(IIZ)V

    .line 452
    :cond_10
    :goto_7
    const-string v3, "AmigoLedController"

    const-string v4, "updateNotificaitonLightFromNMS -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 444
    :cond_11
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/notification/AmigoLedController;->updateNotificaitonLightInternal(IZ)V

    .line 446
    if-nez v1, :cond_10

    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mUserPresent:Z

    if-eqz v3, :cond_12

    iget-boolean v3, p0, Lcom/android/server/notification/AmigoLedController;->mScreenOn:Z

    if-nez v3, :cond_10

    .line 447
    :cond_12
    const-string v3, "AmigoLedController"

    const-string v4, "forced update battery...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget v3, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryLevel:I

    iget v4, p0, Lcom/android/server/notification/AmigoLedController;->mBatteryStatus:I

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/notification/AmigoLedController;->updateBatteryLight(IIZ)V

    goto :goto_7
.end method

.method public updateSettingsNotificationLedEnabled()V
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/server/notification/AmigoLedController;->isRespirationLampNotificationOn()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/AmigoLedController;->SETTING_NOTIFI_LED_ENABLED:Z

    .line 579
    return-void
.end method
