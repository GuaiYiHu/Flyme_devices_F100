.class Landroid/hardware/SmartStayMonitor$MainHandler;
.super Landroid/os/Handler;
.source "SmartStayMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SmartStayMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SmartStayMonitor;


# direct methods
.method private constructor <init>(Landroid/hardware/SmartStayMonitor;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Landroid/hardware/SmartStayMonitor$MainHandler;->this$0:Landroid/hardware/SmartStayMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/SmartStayMonitor;Landroid/hardware/SmartStayMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/SmartStayMonitor;
    .param p2, "x1"    # Landroid/hardware/SmartStayMonitor$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/hardware/SmartStayMonitor$MainHandler;-><init>(Landroid/hardware/SmartStayMonitor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor$MainHandler;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/hardware/SmartStayMonitor;->access$800(Landroid/hardware/SmartStayMonitor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 151
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/SmartStayMonitor$MainHandler;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;
    invoke-static {v0}, Landroid/hardware/SmartStayMonitor;->access$900(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$SmartStayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor$MainHandler;->this$0:Landroid/hardware/SmartStayMonitor;

    invoke-virtual {v0}, Landroid/hardware/SmartStayMonitor;->stop()V

    .line 154
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor$MainHandler;->this$0:Landroid/hardware/SmartStayMonitor;

    const/4 v2, 0x1

    # setter for: Landroid/hardware/SmartStayMonitor;->mTimeout:Z
    invoke-static {v0, v2}, Landroid/hardware/SmartStayMonitor;->access$1002(Landroid/hardware/SmartStayMonitor;Z)Z

    .line 155
    iget-object v0, p0, Landroid/hardware/SmartStayMonitor$MainHandler;->this$0:Landroid/hardware/SmartStayMonitor;

    # getter for: Landroid/hardware/SmartStayMonitor;->mSmartStayListener:Landroid/hardware/SmartStayMonitor$SmartStayListener;
    invoke-static {v0}, Landroid/hardware/SmartStayMonitor;->access$900(Landroid/hardware/SmartStayMonitor;)Landroid/hardware/SmartStayMonitor$SmartStayListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/hardware/SmartStayMonitor$SmartStayListener;->onSmartStayEvent(I)V

    .line 157
    :cond_0
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
