.class Lcom/android/server/pm/AmigoPermission$PermObserver;
.super Landroid/database/ContentObserver;
.source "AmigoPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AmigoPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AmigoPermission;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AmigoPermission;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    .line 315
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 316
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/AmigoPermission;->access$100(Lcom/android/server/pm/AmigoPermission;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    const-string v1, "perm_ctrl"

    const-string v2, "pms observe DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/pm/AmigoPermission;->access$200(Lcom/android/server/pm/AmigoPermission;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/pm/AmigoPermission;->access$200(Lcom/android/server/pm/AmigoPermission;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 328
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/pm/AmigoPermission;->access$300(Lcom/android/server/pm/AmigoPermission;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/pm/AmigoPermission;->access$300(Lcom/android/server/pm/AmigoPermission;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 332
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    # invokes: Lcom/android/server/pm/AmigoPermission;->gnInitPermissionsMap()V
    invoke-static {v0}, Lcom/android/server/pm/AmigoPermission;->access$400(Lcom/android/server/pm/AmigoPermission;)V

    .line 334
    return-void

    .line 328
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 332
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public unObserve()V
    .locals 2

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission$PermObserver;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/AmigoPermission;->access$100(Lcom/android/server/pm/AmigoPermission;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 338
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 339
    return-void
.end method
