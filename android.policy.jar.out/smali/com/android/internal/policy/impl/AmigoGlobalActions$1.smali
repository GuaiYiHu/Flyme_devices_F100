.class Lcom/android/internal/policy/impl/AmigoGlobalActions$1;
.super Landroid/os/Handler;
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
    .line 143
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->dismissDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$000(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$100(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$200(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    .line 156
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$200(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot()V

    goto :goto_0

    .line 159
    :pswitch_4
    const-string v0, "AmigoGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAirplaneImageView handleMessage  mAirplaneState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->updateAirplaneState(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$400(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)V

    goto :goto_0

    .line 163
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->updateSilentState(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$600(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)V

    goto :goto_0

    .line 166
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentClicked:Z

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
