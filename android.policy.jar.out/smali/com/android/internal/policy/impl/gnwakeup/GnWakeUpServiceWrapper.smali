.class public Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;
.super Ljava/lang/Object;
.source "GnWakeUpServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BIND_WAKE_SERVICE:Ljava/lang/String; = "com.gionee.gnwakeup.GnWakeUpService"

.field private static final BIND_WAKEUP_SERVICE:I = 0x1

.field public static final GNWAKEUP_CLASS:Ljava/lang/String; = "com.gionee.gnwakeup.GnWakeUpService"

.field public static final GNWAKEUP_PACKAGE:Ljava/lang/String; = "com.gionee.gnwakeup"

.field private static final MSG_SHOW_ANIM:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasBinded:Z

.field private mServciceConn:Landroid/content/ServiceConnection;

.field private mWakeUpService:Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "GnWakeUpServiceWrapper"

    sput-object v0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mWakeUpService:Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    .line 34
    new-instance v0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$1;-><init>(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$2;-><init>(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mServciceConn:Landroid/content/ServiceConnection;

    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;)Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mWakeUpService:Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->updateService()V

    return-void
.end method

.method private updateService()V
    .locals 6

    .prologue
    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ssg_switch"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "mSsgKeyState":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ssg_quick_operating"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, "mSsgState":I
    sget-object v3, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateService()  start mSsgKeyState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSsgState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 130
    sget-object v3, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    const-string v4, "updateService() start bindWakeUpService()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->bindWakeUpService(Z)V

    .line 143
    .end local v1    # "mSsgKeyState":I
    .end local v2    # "mSsgState":I
    :goto_0
    return-void

    .line 136
    .restart local v1    # "mSsgKeyState":I
    .restart local v2    # "mSsgState":I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->bindWakeUpService(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v1    # "mSsgKeyState":I
    .end local v2    # "mSsgState":I
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    const-string v4, "updateService()  exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public bindWakeUpService(Z)V
    .locals 7
    .param p1, "isBind"    # Z

    .prologue
    const/4 v6, 0x1

    .line 61
    sget-object v4, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    const-string v5, "bindWakeUpService() start "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.gionee.gnwakeup"

    const-string v5, "com.gionee.gnwakeup.GnWakeUpService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    if-eqz p1, :cond_1

    .line 65
    iget-object v4, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mServciceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 66
    .local v2, "flag":Z
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mHasBinded:Z

    .line 67
    sget-object v4, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindWakeUpService() end  flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v2    # "flag":Z
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mHasBinded:Z

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mServciceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 72
    iget-object v4, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 73
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const-string v4, "com.gionee.gnwakeup"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 74
    sget-object v4, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    const-string v5, "bindWakeUpService() unbindService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mHasBinded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindWakeUpService unbind Exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dissWakeUpAnim()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public showWakeUpAnim(ILcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback;Z)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "cb"    # Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback;
    .param p3, "isKeyguardSecure"    # Z

    .prologue
    .line 103
    sget-object v1, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "showWakeUpAnim start()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mWakeUpService:Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    if-nez v1, :cond_0

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->bindWakeUpService(Z)V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mWakeUpService:Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;->showWakeUpAnim(ILcom/android/internal/policy/impl/gnwakeup/IGnWakeUpCallback;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Fail to showWakeUpAnim"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startObserve()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;->observe()V

    .line 122
    return-void
.end method
