.class public Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;
.super Landroid/database/ContentObserver;
.source "GNUnreadLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartRemindObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    iget-object v5, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$400(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ssg_switch"

    invoke-static {v5, v6, v4}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_0

    move v2, v3

    .line 142
    .local v2, "masterSwitch":Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$400(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ssg_vibration_alert"

    invoke-static {v5, v6, v4}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    .line 145
    .local v1, "isSmartRemindEnable":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 146
    const-string v4, "SmartRemind-GNUnreadLoader"

    const-string v5, "enable smart remind!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    iget-object v5, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->powerManager:Landroid/os/PowerManager;
    invoke-static {v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$500(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/os/PowerManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$102(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    .line 148
    const-string v4, "SmartRemind-GNUnreadLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current Screen On2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mScreenOn:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$100(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->registerListener()V

    .line 150
    iget-object v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$700(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissCallObserver:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
    invoke-static {v6}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$600(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    iget-object v4, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$700(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://mms-sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissMmsObserver:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
    invoke-static {v6}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$800(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    :goto_2
    return-void

    .end local v1    # "isSmartRemindEnable":Z
    .end local v2    # "masterSwitch":Z
    :cond_0
    move v2, v4

    .line 139
    goto :goto_0

    .restart local v2    # "masterSwitch":Z
    :cond_1
    move v1, v4

    .line 142
    goto :goto_1

    .line 153
    .restart local v1    # "isSmartRemindEnable":Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$700(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissCallObserver:Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;
    invoke-static {v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$600(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/MissCallObserver;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->resolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$700(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # getter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mMissMmsObserver:Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;
    invoke-static {v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$800(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;)Lcom/android/internal/policy/impl/unreadfeature/MissMmsObserver;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->unregisterListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_3
    const-string v3, "SmartRemind-GNUnreadLoader"

    const-string v5, "disable smart remind!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    const-string v5, "0"

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->ProcessSmartRemindValue(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader$SmartRemindObserver;->this$0:Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;

    # setter for: Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->mNeedDelayRegisterSigmotionSensor:Z
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;->access$302(Lcom/android/internal/policy/impl/unreadfeature/GNUnreadLoader;Z)Z

    goto :goto_2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
