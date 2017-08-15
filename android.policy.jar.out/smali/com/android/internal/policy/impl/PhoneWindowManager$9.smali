.class Lcom/android/internal/policy/impl/PhoneWindowManager$9;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->initControlCenterService()V
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
    .line 2107
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2110
    const-string v0, "WindowManager"

    const-string v1, "requestControlCenter : connect Control Center Service !! "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-static {p2}, Lcom/android/internal/statusbar/IGnStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IGnStatusBar;

    move-result-object v0

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIGnStatusBar:Lcom/android/internal/statusbar/IGnStatusBar;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3002(Lcom/android/internal/statusbar/IGnStatusBar;)Lcom/android/internal/statusbar/IGnStatusBar;

    .line 2112
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2115
    return-void
.end method
