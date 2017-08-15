.class Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$1;
.super Landroid/os/Handler;
.source "GnWakeUpServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$1;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$1;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->bindWakeUpService(Z)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
