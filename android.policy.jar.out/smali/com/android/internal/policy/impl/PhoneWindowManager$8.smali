.class Lcom/android/internal/policy/impl/PhoneWindowManager$8;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isGestureIsolated()Z
    .locals 2

    .prologue
    .line 2012
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2013
    .local v0, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    .line 2014
    const/4 v1, 0x1

    .line 2016
    :goto_1
    return v1

    .line 2012
    .end local v0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2016
    .restart local v0    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onDebug()V
    .locals 0

    .prologue
    .line 2009
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2022
    :try_start_0
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIGnStatusBar:Lcom/android/internal/statusbar/IGnStatusBar;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000()Lcom/android/internal/statusbar/IGnStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2023
    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIGnStatusBar:Lcom/android/internal/statusbar/IGnStatusBar;
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3000()Lcom/android/internal/statusbar/IGnStatusBar;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IGnStatusBar;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 2025
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSwipeFromBottom()V
    .locals 5

    .prologue
    .line 1973
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->isGestureIsolated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1997
    :goto_0
    return-void

    .line 1979
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/BarController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v2

    .line 1980
    .local v2, "sb":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v3, :cond_3

    .line 1981
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/BarController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 1982
    .local v1, "nb":Z
    const/4 v0, 0x0

    .line 1983
    .local v0, "isFullScreen":Z
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1984
    const/4 v0, 0x1

    .line 1986
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateControlCencer(Z)V
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_0

    .line 1990
    .end local v0    # "isFullScreen":Z
    .end local v1    # "nb":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 1991
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateControlCencer(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_0

    .line 1993
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateControlCencer(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    goto :goto_0
.end method

.method public onSwipeFromRight()V
    .locals 2

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2005
    :cond_0
    :goto_0
    return-void

    .line 2002
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-nez v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method

.method public onSwipeFromTop()V
    .locals 2

    .prologue
    .line 1958
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->isGestureIsolated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoMmiUtil;->isMMITestRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1962
    const-string v0, "WindowManager"

    const-string v1, "onSwipeFromTop : isMMITestRunning = true "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1967
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$8;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0
.end method
