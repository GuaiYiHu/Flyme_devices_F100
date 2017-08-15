.class Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IRadioPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioPowerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyRadioPowerChange(ZI)V
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 160
    const-string v3, "ro.mtk_ims_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # getter for: Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$000(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volte_vt_enabled"

    invoke-static {}, Lcom/android/ims/ImsConfig$FeatureValueConstants;->getVolteAvailable()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, "imsSetting":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRadioPowerChange, imsSetting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 171
    .end local v0    # "imsSetting":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRadioPowerChange, power:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 175
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoLTEEnable()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$200(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v1

    .line 176
    .local v1, "isVoLTEEnable":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->isVoWiFiEnable()Z
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$300(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v2

    .line 178
    .local v2, "isVoWiFiEnable":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRadioPowerChange, isVoLTEEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVoWiFiEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$100(Ljava/lang/String;)V

    .line 181
    if-eqz p1, :cond_3

    .line 183
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v4, 0x1

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v3, v4, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    .line 196
    .end local v1    # "isVoLTEEnable":Z
    .end local v2    # "isVoWiFiEnable":Z
    :cond_2
    :goto_0
    return-void

    .line 191
    .restart local v1    # "isVoLTEEnable":Z
    .restart local v2    # "isVoWiFiEnable":Z
    :cond_3
    if-nez v2, :cond_2

    .line 192
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v4, 0x0

    # invokes: Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    invoke-static {v3, v4, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->access$400(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto :goto_0
.end method
