.class Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$2;
.super Ljava/lang/Object;
.source "GnWakeUpServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$2;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$2;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    invoke-static {p2}, Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    move-result-object v1

    # setter for: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mWakeUpService:Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$002(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;)Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    .line 89
    # getter for: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onService Connected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 94
    # getter for: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onService Disconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$2;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mWakeUpService:Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$002(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;)Lcom/android/internal/policy/impl/gnwakeup/IGnWakeUpService;

    .line 96
    return-void
.end method
