.class Lcom/android/server/AlarmManagerService$3;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->cancelPoweroffAlarmImpl(Ljava/lang/String;)V

    .line 1165
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1189
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    :goto_0
    return-void

    .line 1197
    :cond_0
    const/4 v2, 0x0

    .line 1198
    .local v2, "opti":I
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 1199
    aget-object v1, p3, v2

    .line 1200
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .line 1216
    .end local v1    # "opt":Ljava/lang/String;
    :cond_1
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 1217
    aget-object v0, p3, v2

    .line 1218
    .local v0, "cmd":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1219
    const-string v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1220
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, p2, p3, v2}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    goto :goto_0

    .line 1203
    .end local v0    # "cmd":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1204
    const-string v3, "-h"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1205
    const-string v3, "alarm manager dump options:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    const-string v3, "  log  [on/off]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    const-string v3, "  Example:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    const-string v3, "  $adb shell dumpsys alarm log on"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    const-string v3, "  $adb shell dumpsys alarm log off"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1212
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1225
    .end local v1    # "opt":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, p2, p3}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1184
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public lookForPackageFromAms(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageFromAmsImpl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1156
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manual remove option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 1159
    return-void
.end method

.method public removeFromAms(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeFromAmsImpl(Ljava/lang/String;)V

    .line 1170
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;
    .param p10, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 1107
    if-eqz p9, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "AlarmManager.set"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-nez v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1115
    return-void

    .line 1113
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public setTime(J)Z
    .locals 11
    .param p1, "millis"    # J

    .prologue
    const/4 v5, 0x0

    .line 1119
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.SET_TIME"

    const-string v8, "setTime"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1124
    :cond_0
    const-string v6, "AlarmManager"

    const-string v7, "Not setting time since no alarm driver is available."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :goto_0
    return v5

    .line 1128
    :cond_1
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 1129
    .local v4, "stack":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1131
    .local v1, "element":Ljava/lang/StackTraceElement;
    const-string v6, "AlarmManagerTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \t|----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1134
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_2
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1135
    :try_start_0
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setKernelTime  setTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v8, v8, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I
    invoke-static {v7, v8, v9, p1, p2}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;JJ)I

    move-result v7

    if-nez v7, :cond_3

    const/4 v5, 0x1

    :cond_3
    monitor-exit v6

    goto :goto_0

    .line 1137
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 1142
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.SET_TIME_ZONE"

    const-string v4, "setTimeZone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1148
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1152
    return-void

    .line 1150
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
