.class public Lcom/android/server/am/DualInsUtil;
.super Ljava/lang/Object;
.source "DualInsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcAppInfo(Lcom/android/server/am/ProcessRecord;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "callerApp"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sameRace(Lcom/android/server/am/ActivityRecord;Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p0, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "ati"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->isClone:Z

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sameRace(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p0, "a"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "b"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/server/am/ActivityRecord;->isClone:Z

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->isClone:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sameRace(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 2
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isClone:Z

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isClone:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sameRace(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p0, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isClone:Z

    iget-boolean v1, p1, Lcom/android/server/am/TaskRecord;->isClone:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sameRace(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 2
    .param p0, "src"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "dst"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isClone:Z

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isClone:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sameRace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isClone:Z

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->isClone:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sameRace(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)Z
    .locals 2
    .param p0, "src"    # Lcom/android/server/am/TaskRecord;
    .param p1, "dst"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 38
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isClone:Z

    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isClone:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
