.class Lcom/mediatek/internal/telephony/ImsSwitchController$3;
.super Landroid/database/ContentObserver;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;->registerForWfcSwitchChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 506
    const-string v0, "when_to_make_wifi_calls"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->onChange(ZLandroid/net/Uri;)V

    .line 508
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 513
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v1

    .line 514
    .local v1, "isVoLTEEnable":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v2

    .line 516
    .local v2, "isVoWiFiEnable":Z
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "when_to_make_wifi_calls"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 520
    .local v4, "wfcSetting":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "volte_vt_enabled"

    invoke-static {}, Lcom/android/ims/ImsConfig$FeatureValueConstants;->getVolteAvailable()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 526
    .local v0, "imsSetting":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 527
    .local v3, "phoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wfc switch change isVoWiFiEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isVoLTEEnable=  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 530
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 531
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v5, v8, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$3;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v6, 0x1

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v5, v6, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto :goto_0
.end method
