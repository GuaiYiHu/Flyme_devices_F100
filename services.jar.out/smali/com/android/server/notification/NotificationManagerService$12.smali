.class Lcom/android/server/notification/NotificationManagerService$12;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->amigoCancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$clone:Z

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZZ)V
    .locals 0

    .prologue
    .line 3906
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$clone:Z

    iput-boolean p13, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 3909
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_1

    const/4 v9, 0x0

    .line 3910
    .local v9, "listenerName":Ljava/lang/String;
    :goto_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$callingUid:I

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$callingPid:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$id:I

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$tag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$userId:I

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$mustHaveFlags:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$mustNotHaveFlags:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$reason:I

    invoke-static/range {v0 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 3913
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v12

    .line 3915
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$tag:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$id:I

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$userId:I

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$clone:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLockedWithClone(Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v11

    .line 3916
    .local v11, "index":I
    if-ltz v11, :cond_4

    .line 3917
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3921
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$reason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3922
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 3925
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$mustHaveFlags:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$mustHaveFlags:I

    if-eq v0, v1, :cond_2

    .line 3926
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3940
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    return-void

    .line 3909
    .end local v9    # "listenerName":Ljava/lang/String;
    .end local v11    # "index":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 3928
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v9    # "listenerName":Ljava/lang/String;
    .restart local v11    # "index":I
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$mustNotHaveFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 3929
    monitor-exit v12

    goto :goto_1

    .line 3939
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v11    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3932
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v11    # "index":I
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3934
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$sendDelete:Z

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$reason:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    invoke-static {v0, v6, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3935
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$callingUid:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$12;->val$callingPid:I

    const/16 v10, 0xc

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 3937
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3939
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
