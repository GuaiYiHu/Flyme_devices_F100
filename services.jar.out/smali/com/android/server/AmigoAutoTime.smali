.class public Lcom/android/server/AmigoAutoTime;
.super Ljava/lang/Object;
.source "AmigoAutoTime.java"


# static fields
.field private static AMIGO_CHECK_AUTO_TIME:Z = false

.field public static final AMIGO_FAIL_UPDATE:I = 0x3

.field public static final AMIGO_LOCAL_UPDATE:I = 0x2

.field public static final AMIGO_SUCCESS_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AmigoAutoTime"

.field private static sNotifycationMgr:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/AmigoAutoTime;->AMIGO_CHECK_AUTO_TIME:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AmigoAutoTime;->sNotifycationMgr:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyStatus(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 47
    sget-boolean v3, Lcom/android/server/AmigoAutoTime;->AMIGO_CHECK_AUTO_TIME:Z

    if-nez v3, :cond_0

    .line 74
    :goto_0
    return-void

    .line 51
    :cond_0
    const/high16 v2, 0x7070000

    .line 52
    .local v2, "titleId":I
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v3, 0x1080651

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 68
    .local v1, "notification":Landroid/app/Notification;
    sget-object v3, Lcom/android/server/AmigoAutoTime;->sNotifycationMgr:Landroid/app/NotificationManager;

    if-nez v3, :cond_1

    .line 69
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/android/server/AmigoAutoTime;->sNotifycationMgr:Landroid/app/NotificationManager;

    .line 71
    :cond_1
    sget-object v3, Lcom/android/server/AmigoAutoTime;->sNotifycationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v3, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 72
    sget-object v3, Lcom/android/server/AmigoAutoTime;->sNotifycationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v3, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 54
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "notification":Landroid/app/Notification;
    :pswitch_0
    const/high16 v2, 0x7070000

    .line 55
    goto :goto_1

    .line 57
    :pswitch_1
    const v2, 0x7070001

    .line 58
    goto :goto_1

    .line 60
    :pswitch_2
    const v2, 0x7070002

    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static onNetworkConnected(Landroid/net/NetworkInfo;ILandroid/os/Handler;)V
    .locals 2
    .param p0, "netInfo"    # Landroid/net/NetworkInfo;
    .param p1, "eventNetworkConnected"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "AmigoAutoTime"

    const-string v1, "Ntp over mobile data connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    :cond_0
    return-void
.end method
