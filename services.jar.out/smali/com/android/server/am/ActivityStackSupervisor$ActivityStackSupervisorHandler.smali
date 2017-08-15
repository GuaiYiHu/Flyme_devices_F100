.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4130
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4132
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 4135
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4136
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 4137
    monitor-exit v1

    .line 4138
    return-void

    .line 4137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4142
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 4344
    :cond_0
    :goto_0
    return-void

    .line 4144
    :pswitch_0
    sget-boolean v17, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_IDLE:Z

    if-eqz v17, :cond_1

    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleMessage: IDLE_TIMEOUT_MSG: r="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4145
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x64

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 4148
    .local v10, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x2710

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4154
    .end local v10    # "nmsg":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 4157
    :pswitch_1
    sget-boolean v17, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_IDLE:Z

    if-eqz v17, :cond_3

    const-string v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "handleMessage: IDLE_NOW_MSG: r="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 4161
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4162
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4163
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 4166
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4167
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 4168
    const-string v17, "ActivityManager"

    const-string v19, "Sleep timeout!  Sleeping now."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 4172
    :cond_4
    monitor-exit v18

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v17

    .line 4175
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 4176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x68

    const-wide/16 v20, 0x2710

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4180
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4181
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 4182
    const-string v17, "ActivityManager"

    const-string v19, "Launch timeout has expired, giving up wake lock!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4189
    :cond_6
    monitor-exit v18

    goto/16 :goto_0

    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v17

    .line 4192
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAddedLocked(I)V

    goto/16 :goto_0

    .line 4195
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChangedLocked(I)V

    goto/16 :goto_0

    .line 4198
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemovedLocked(I)V

    goto/16 :goto_0

    .line 4201
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4202
    .local v5, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4203
    .local v4, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v4, :cond_0

    .line 4205
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4206
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 4205
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 4213
    .end local v4    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v17

    if-nez v17, :cond_8

    .line 4214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->access$202(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4216
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 4217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    if-nez v17, :cond_b

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Z)Z

    .line 4218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 4219
    const/high16 v8, 0x3bf0000

    .line 4221
    .local v8, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 4222
    const/high16 v17, 0x1200000

    xor-int v8, v8, v17

    .line 4225
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v8, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4228
    .end local v8    # "flags":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v18

    const-string v19, "Lock-to-App"

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 4230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4233
    :catch_1
    move-exception v7

    .line 4234
    .local v7, "ex":Landroid/os/RemoteException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 4217
    .end local v7    # "ex":Landroid/os/RemoteException;
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 4240
    :pswitch_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 4241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v17 .. v20}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4245
    :cond_c
    new-instance v9, Landroid/content/Intent;

    const-string v17, "amigo.intent.action.screenpin"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4246
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 4249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 4250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    invoke-interface/range {v17 .. v20}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 4253
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v17

    if-nez v17, :cond_e

    .line 4254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static/range {v17 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->access$202(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4256
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4258
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_to_app_exit_locked"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_f

    const/4 v13, 0x1

    .line 4261
    .local v13, "shouldLockKeyguard":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz v13, :cond_0

    .line 4262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 4263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4264
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 4267
    .end local v13    # "shouldLockKeyguard":Z
    :catch_2
    move-exception v17

    goto/16 :goto_0

    .line 4258
    :cond_f
    const/4 v13, 0x0

    goto :goto_3

    .line 4270
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v7

    .line 4271
    .restart local v7    # "ex":Landroid/os/RemoteException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 4275
    .end local v7    # "ex":Landroid/os/RemoteException;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4276
    .restart local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4277
    .restart local v4    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v4, :cond_0

    .line 4279
    :try_start_7
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 4280
    :catch_4
    move-exception v17

    goto/16 :goto_0

    .line 4285
    .end local v4    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4286
    :try_start_8
    const-string v17, "ActivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Timeout waiting for all activities in task to finish. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4289
    .restart local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 4290
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 4291
    monitor-exit v18

    goto/16 :goto_0

    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v17

    .line 4294
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4295
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/IBinder;

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 4296
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_10

    .line 4297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4299
    :cond_10
    monitor-exit v18

    goto/16 :goto_0

    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v17

    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v17

    .line 4303
    :pswitch_e
    const-string v17, "ActivityManager"

    const-string v18, "WMS runs the animation too long"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivityLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4305
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 4306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    .line 4308
    :cond_11
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 4310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4311
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 4312
    .local v11, "numDisplays":I
    const/4 v6, 0x0

    .local v6, "displayNdx":I
    :goto_4
    if-ge v6, v11, :cond_14

    .line 4313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 4314
    .local v16, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    .local v15, "stackNdx":I
    :goto_5
    if-ltz v15, :cond_13

    .line 4315
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityStack;

    .line 4316
    .local v14, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v0, v14, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 4317
    iget-object v0, v14, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4318
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/android/server/am/ActivityStack;->mDidResume:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 4314
    :cond_12
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 4308
    .end local v6    # "displayNdx":I
    .end local v11    # "numDisplays":I
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "stackNdx":I
    .end local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_5
    move-exception v17

    :try_start_c
    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v17

    .line 4312
    .restart local v6    # "displayNdx":I
    .restart local v11    # "numDisplays":I
    .restart local v15    # "stackNdx":I
    .restart local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 4322
    .end local v15    # "stackNdx":I
    .end local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_14
    :try_start_d
    monitor-exit v18

    goto/16 :goto_0

    .end local v6    # "displayNdx":I
    .end local v11    # "numDisplays":I
    :catchall_6
    move-exception v17

    monitor-exit v18
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v17

    .line 4328
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 4329
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 4330
    .restart local v11    # "numDisplays":I
    const/4 v6, 0x0

    .restart local v6    # "displayNdx":I
    :goto_6
    if-ge v6, v11, :cond_17

    .line 4331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 4332
    .restart local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    .restart local v15    # "stackNdx":I
    :goto_7
    if-ltz v15, :cond_16

    .line 4333
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityStack;

    .line 4334
    .restart local v14    # "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v0, v14, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 4335
    iget-object v0, v14, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4336
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    .line 4332
    :cond_15
    add-int/lit8 v15, v15, -0x1

    goto :goto_7

    .line 4330
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 4340
    .end local v15    # "stackNdx":I
    .end local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_17
    monitor-exit v18

    goto/16 :goto_0

    .end local v6    # "displayNdx":I
    .end local v11    # "numDisplays":I
    :catchall_7
    move-exception v17

    monitor-exit v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v17

    .line 4142
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
