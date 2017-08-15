.class Lcom/android/internal/policy/impl/AmigoGlobalActions$9;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 454
    const-string v2, "AmigoGlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSilentImageView click  mSilentClicked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-boolean v6, v6, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentClicked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentClicked:Z

    if-eqz v2, :cond_0

    .line 481
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iput-boolean v4, v2, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentClicked:Z

    .line 460
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$900(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "amigo_silent_switch"

    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Lamigo/provider/AmigoSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-object v5, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    # setter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$502(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)Z

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "volumeMusic":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$900(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 465
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 467
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$900(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "volume_music"

    invoke-static {v2, v4, v1}, Lamigo/provider/AmigoSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 469
    invoke-virtual {v0, v7, v3, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 478
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 480
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->dismissDialog()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$000(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    goto :goto_0

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "volumeMusic":I
    :cond_1
    move v2, v4

    .line 460
    goto :goto_1

    :cond_2
    move v4, v3

    .line 462
    goto :goto_2

    .line 472
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "volumeMusic":I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$900(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volume_music"

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 474
    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_3
.end method
