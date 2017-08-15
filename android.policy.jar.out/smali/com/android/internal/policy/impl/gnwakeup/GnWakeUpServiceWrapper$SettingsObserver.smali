.class Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "GnWakeUpServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    .line 148
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 149
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    # getter for: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$200(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "ssg_quick_operating"

    invoke-static {v1}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    const-string v1, "ssg_switch"

    invoke-static {v1}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    # invokes: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->updateService()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$300(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)V

    .line 156
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 160
    # getter for: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;

    # invokes: Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->updateService()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;->access$300(Lcom/android/internal/policy/impl/gnwakeup/GnWakeUpServiceWrapper;)V

    .line 162
    return-void
.end method
