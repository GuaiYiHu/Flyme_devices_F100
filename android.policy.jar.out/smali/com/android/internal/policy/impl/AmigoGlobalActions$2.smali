.class Lcom/android/internal/policy/impl/AmigoGlobalActions$2;
.super Landroid/content/BroadcastReceiver;
.source "AmigoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;
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
    .line 174
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "action":Ljava/lang/String;
    const-string v2, "AmigoGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "AmigoGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive:reason  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mViewState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->NONE:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-ne v2, v3, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 189
    const-string v2, "AmigoGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive:mViewState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->NONE:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-ne v2, v3, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOT:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-ne v2, v3, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-ne v2, v3, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 197
    :cond_4
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    const-string v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$302(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)Z

    .line 199
    const-string v2, "AmigoGlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive airplane state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
