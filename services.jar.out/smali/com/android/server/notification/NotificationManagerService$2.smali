.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 769
    .local v12, "action":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    const/16 v25, 0x0

    .line 774
    .local v25, "queryRestart":Z
    const/16 v23, 0x0

    .line 775
    .local v23, "queryRemove":Z
    const/16 v20, 0x0

    .line 776
    .local v20, "packageChanged":Z
    const/4 v14, 0x1

    .line 778
    .local v14, "cancelNotifications":Z
    const/16 v19, 0x0

    .line 782
    .local v19, "packageAdd":Z
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    :cond_2
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 791
    .local v9, "changeUserId":I
    const/16 v21, 0x0

    .line 792
    .local v21, "pkgList":[Ljava/lang/String;
    if-eqz v23, :cond_4

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v24, 0x1

    .line 794
    .local v24, "queryReplace":Z
    :goto_1
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " queryReplace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 796
    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 838
    :goto_2
    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    array-length v2, v0

    if-lez v2, :cond_c

    .line 839
    move-object/from16 v13, v21

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    aget-object v5, v13, v17

    .line 840
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$500()I

    move-result v3

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v25, :cond_b

    const/4 v8, 0x1

    :goto_4
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 839
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 792
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    .end local v24    # "queryReplace":Z
    :cond_4
    const/16 v24, 0x0

    goto :goto_1

    .line 797
    .restart local v24    # "queryReplace":Z
    :cond_5
    if-eqz v25, :cond_6

    .line 798
    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    .line 800
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    .line 801
    .local v26, "uri":Landroid/net/Uri;
    if-eqz v26, :cond_0

    .line 804
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 805
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 808
    if-eqz v20, :cond_8

    .line 811
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 812
    .local v22, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, -0x1

    if-eq v9, v2, :cond_a

    move v2, v9

    :goto_5
    move-object/from16 v0, v22

    invoke-interface {v0, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 815
    .local v16, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_7

    if-nez v16, :cond_8

    .line 817
    :cond_7
    const/4 v14, 0x0

    .line 830
    .end local v16    # "enabled":I
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    :cond_8
    :goto_6
    if-eqz v19, :cond_9

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/notification/RankingHelper;->updatePrioritiesList(Ljava/lang/String;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 835
    :cond_9
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .end local v21    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v21, v2

    .restart local v21    # "pkgList":[Ljava/lang/String;
    goto :goto_2

    .line 812
    .restart local v22    # "pm":Landroid/content/pm/IPackageManager;
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 819
    .end local v22    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v15

    .line 823
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "NotificationService"

    const-string v3, "Exception trying to look up app enabled setting"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 841
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    .end local v26    # "uri":Landroid/net/Uri;
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v18    # "len$":I
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 846
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 825
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v26    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    goto :goto_6
.end method
