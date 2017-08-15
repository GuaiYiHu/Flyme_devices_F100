.class Lcom/android/internal/policy/impl/PhoneWindowManager$DGSwitchObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DGSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DGSwitchObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 1050
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1051
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DGSwitchObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1055
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "dg_switch"

    invoke-static {v1}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1058
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DGSwitchObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateDGSwitch()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 1062
    return-void
.end method
