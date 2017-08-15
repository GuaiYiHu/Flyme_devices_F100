.class Lcom/android/server/MountService$8;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1790
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEvent: VolumeDiskInserted, start to mount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :try_start_0
    const-string v3, "ro.mtk_multi_patition"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1795
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)V

    .line 1796
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$5000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .local v2, "rc":I
    if-eqz v2, :cond_0

    .line 1797
    const-string v3, "MountService"

    const-string v4, "Insertion mount failed (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1800
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1801
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 1802
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1806
    :cond_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1811
    :goto_0
    if-nez v2, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->enableDefaultPathDialog()Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$5100(Lcom/android/server/MountService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1872
    .end local v2    # "rc":I
    :cond_2
    :goto_1
    return-void

    .line 1807
    .restart local v2    # "rc":I
    :catch_0
    move-exception v0

    .line 1808
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1869
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "rc":I
    :catch_1
    move-exception v1

    .line 1870
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to mount media on insertion"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1826
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "rc":I
    :cond_3
    :try_start_3
    const-string v3, "MountService"

    const-string v4, "Insertion mount failed (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1829
    .end local v2    # "rc":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1831
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    const-string v5, "ums"

    const/4 v6, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1834
    :cond_5
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$5000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "rc":I
    if-eqz v2, :cond_6

    .line 1835
    const-string v3, "MountService"

    const-string v4, "Insertion mount failed (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_6
    iget-object v3, p0, Lcom/android/server/MountService$8;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1838
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1839
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 1840
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1844
    :cond_7
    const-wide/16 v4, 0x1f4

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1849
    :goto_2
    if-nez v2, :cond_8

    :try_start_5
    iget-object v3, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->enableDefaultPathDialog()Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$5100(Lcom/android/server/MountService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1864
    :cond_8
    const-string v3, "MountService"

    const-string v4, "Insertion mount failed (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1845
    :catch_2
    move-exception v0

    .line 1846
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2
.end method
