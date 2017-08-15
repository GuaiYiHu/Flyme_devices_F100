.class Landroid/os/GnProximitySensorCalibrate$1;
.super Landroid/telephony/PhoneStateListener;
.source "GnProximitySensorCalibrate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/GnProximitySensorCalibrate;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/GnProximitySensorCalibrate;


# direct methods
.method constructor <init>(Landroid/os/GnProximitySensorCalibrate;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 192
    iput-object p1, p0, Landroid/os/GnProximitySensorCalibrate$1;->this$0:Landroid/os/GnProximitySensorCalibrate;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 196
    const-string v0, "GnProximitySensorCalibrate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged ans state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    # setter for: Landroid/os/GnProximitySensorCalibrate;->mCallState:I
    invoke-static {p1}, Landroid/os/GnProximitySensorCalibrate;->access$202(I)I

    .line 215
    return-void

    .line 199
    :pswitch_0
    const-string v0, "GnProximitySensorCalibrate"

    const-string v1, "idle"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    # setter for: Landroid/os/GnProximitySensorCalibrate;->isDoubleCall:Z
    invoke-static {v3}, Landroid/os/GnProximitySensorCalibrate;->access$002(Z)Z

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v0, "GnProximitySensorCalibrate"

    const-string/jumbo v1, "offhook"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    # getter for: Landroid/os/GnProximitySensorCalibrate;->isListened:Z
    invoke-static {}, Landroid/os/GnProximitySensorCalibrate;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Landroid/os/GnProximitySensorCalibrate;->isDoubleCall:Z
    invoke-static {}, Landroid/os/GnProximitySensorCalibrate;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {v3, v3}, Lcom/mediatek/sensor/EmSensor;->doPsensorCalibration(II)I

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v0, "GnProximitySensorCalibrate"

    const-string v1, "Ringing: "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    # getter for: Landroid/os/GnProximitySensorCalibrate;->mCallState:I
    invoke-static {}, Landroid/os/GnProximitySensorCalibrate;->access$200()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 211
    const/4 v0, 0x1

    # setter for: Landroid/os/GnProximitySensorCalibrate;->isDoubleCall:Z
    invoke-static {v0}, Landroid/os/GnProximitySensorCalibrate;->access$002(Z)Z

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
