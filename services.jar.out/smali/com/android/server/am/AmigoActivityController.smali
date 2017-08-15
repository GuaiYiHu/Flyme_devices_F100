.class public Lcom/android/server/am/AmigoActivityController;
.super Ljava/lang/Object;
.source "AmigoActivityController.java"


# static fields
.field private static final LISTEN_PROCESS_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AmigoActivityController"

.field private static sControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityController;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/AmigoActivityController;->LISTEN_PROCESS_NAMES:Ljava/util/List;

    .line 29
    sget-object v0, Lcom/android/server/am/AmigoActivityController;->LISTEN_PROCESS_NAMES:Ljava/util/List;

    const-string v1, "com.amigo.server"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/server/am/AmigoActivityController;->LISTEN_PROCESS_NAMES:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addController(Ljava/lang/String;Landroid/app/IActivityController;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 75
    sget-object v1, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 76
    .local v0, "controllerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    if-nez v0, :cond_0

    .line 77
    const-string v1, "AmigoActivityController"

    const-string v2, "addController new List"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "controllerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .restart local v0    # "controllerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    sget-object v1, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public static final callControllerActivityResuming(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 92
    sget-object v0, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-static {v0, p1}, Lcom/android/server/am/AmigoActivityController;->callControllerActivityResuming(Lcom/android/server/am/ActivityStack;Landroid/os/IBinder;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final callControllerActivityResuming(Lcom/android/server/am/ActivityStack;Landroid/os/IBinder;)Z
    .locals 12
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x0

    .line 99
    sget-object v9, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p0, :cond_3

    .line 100
    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 101
    .local v6, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_3

    .line 102
    const/4 v7, 0x1

    .line 103
    .local v7, "resumeOK":Z
    sget-object v9, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 104
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 105
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 106
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityController;

    .line 108
    .local v0, "controller":Landroid/app/IActivityController;
    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v9}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "AmigoActivityController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callControllerActivityResuming exception e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    add-int/lit8 v4, v4, -0x1

    .line 116
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 121
    .end local v0    # "controller":Landroid/app/IActivityController;
    .end local v1    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    .end local v2    # "count":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":I
    :cond_2
    if-nez v7, :cond_3

    .line 122
    const-string v9, "AmigoActivityController"

    const-string v10, "callControllerActivityResuming. Not finishing activity because controller resumed"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "resumeOK":Z
    :goto_2
    return v8

    :cond_3
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public static final callControllerActivityResuming(Ljava/lang/String;)Z
    .locals 9
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v6, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 132
    sget-object v6, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 133
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 134
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 135
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityController;

    .line 137
    .local v0, "controller":Landroid/app/IActivityController;
    if-eqz v0, :cond_1

    .line 138
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "AmigoActivityController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callControllerActivityResuming exception e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 143
    add-int/lit8 v4, v4, -0x1

    .line 144
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 149
    .end local v0    # "controller":Landroid/app/IActivityController;
    .end local v1    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    .end local v2    # "count":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method public static final callControllerActivityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v6, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 154
    sget-object v6, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 155
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 156
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 157
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityController;

    .line 159
    .local v0, "controller":Landroid/app/IActivityController;
    if-eqz v0, :cond_1

    .line 160
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "AmigoActivityController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callControllerActivityStarting exception e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    add-int/lit8 v4, v4, -0x1

    .line 166
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 171
    .end local v0    # "controller":Landroid/app/IActivityController;
    .end local v1    # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    .end local v2    # "count":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method private static final getPackageNameifValidLinstenProcesses(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;
    .locals 8
    .param p0, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 53
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 54
    .local v4, "uid":I
    const-string v5, "AmigoActivityController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageNameifValidLinstenProcesses pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v5, Lcom/android/server/am/AmigoActivityController;->LISTEN_PROCESS_NAMES:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 57
    .local v3, "processName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 58
    .local v2, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v5, v1, :cond_0

    .line 59
    const-string v5, "AmigoActivityController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageNameifValidLinstenProcesses processName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v2    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "processName":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static final isValidLinstenProcesses(Lcom/android/server/am/ActivityManagerService;)Z
    .locals 1
    .param p0, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 71
    invoke-static {p0}, Lcom/android/server/am/AmigoActivityController;->getPackageNameifValidLinstenProcesses(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isValidLinstenProcesses(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/am/AmigoActivityController;->LISTEN_PROCESS_NAMES:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static final removeController(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v1, Lcom/android/server/am/AmigoActivityController;->sControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .local v0, "controllerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityController;>;"
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    :cond_0
    return-void
.end method

.method public static final setActivityController(Lcom/android/server/am/ActivityManagerService;Landroid/app/IActivityController;)Z
    .locals 3
    .param p0, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "controller"    # Landroid/app/IActivityController;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/server/am/AmigoActivityController;->getPackageNameifValidLinstenProcesses(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "validPackageName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityController;->isValidLinstenProcesses(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v1, "AmigoActivityController"

    const-string v2, "add ActivityController"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {v0, p1}, Lcom/android/server/am/AmigoActivityController;->addController(Ljava/lang/String;Landroid/app/IActivityController;)V

    .line 46
    :goto_0
    const/4 v1, 0x1

    .line 48
    :goto_1
    return v1

    .line 43
    :cond_0
    const-string v1, "AmigoActivityController"

    const-string v2, "remove ActivityController"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v0}, Lcom/android/server/am/AmigoActivityController;->removeController(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
