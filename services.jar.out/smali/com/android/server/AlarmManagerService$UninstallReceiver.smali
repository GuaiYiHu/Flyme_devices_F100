.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2546
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2547
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2548
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2549
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2550
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2553
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2554
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2555
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2556
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2557
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2562
    :try_start_0
    const-string v17, "AlarmManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UninstallReceiver  action = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2564
    .local v3, "action":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2565
    .local v13, "pkgList":[Ljava/lang/String;
    const-string v17, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2566
    const-string v17, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2567
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v10, v4, v8

    .line 2568
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2570
    const-string v17, "android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2572
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 2573
    monitor-exit v18

    .line 2641
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2567
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2579
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v18

    goto :goto_1

    .line 2640
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v13    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 2580
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v13    # "pkgList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2581
    const-string v17, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2621
    :cond_3
    :goto_2
    if-eqz v13, :cond_b

    array-length v0, v13

    move/from16 v17, v0

    if-lez v17, :cond_b

    .line 2622
    move-object v4, v13

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v9, :cond_b

    aget-object v11, v4, v8

    .line 2624
    .local v11, "pkg":Ljava/lang/String;
    const-string v17, "android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2622
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2582
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_5
    const-string v17, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2583
    const-string v17, "android.intent.extra.user_handle"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2584
    .local v16, "userHandle":I
    if-ltz v16, :cond_3

    .line 2585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    goto :goto_2

    .line 2588
    .end local v16    # "userHandle":I
    :cond_6
    const-string v17, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2591
    monitor-exit v18

    goto :goto_1

    .line 2593
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2594
    .local v5, "data":Landroid/net/Uri;
    if-eqz v5, :cond_3

    .line 2595
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 2602
    .restart local v11    # "pkg":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 2605
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v19, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 2607
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_8

    .line 2608
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v11, v14, v17
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2609
    .end local v13    # "pkgList":[Ljava/lang/String;
    .local v14, "pkgList":[Ljava/lang/String;
    :try_start_3
    const-string v17, "AlarmManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "remove the alarm of :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v14

    .end local v14    # "pkgList":[Ljava/lang/String;
    .restart local v13    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_2

    .line 2611
    :cond_8
    :try_start_4
    const-string v17, "AlarmManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "do not remove the alarm :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 2613
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v6

    .line 2614
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    :try_start_5
    const-string v17, "AlarmManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Could\'nt retrieve permissions for package:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2628
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .local v7, "i":I
    :goto_5
    if-ltz v7, :cond_4

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    .line 2632
    .local v15, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 2633
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_a

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2630
    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 2640
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v15    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_b
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 2613
    .end local v13    # "pkgList":[Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v14    # "pkgList":[Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v13, v14

    .end local v14    # "pkgList":[Ljava/lang/String;
    .restart local v13    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_4
.end method
