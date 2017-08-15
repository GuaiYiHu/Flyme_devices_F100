.class Lcom/android/server/display/DisplayPowerController$11;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1810
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1816
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2000(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v0

    .line 1818
    .local v0, "autoBrightness":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    if-gtz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->getBrightnessSetting()I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2200(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    :goto_0
    const/4 v3, 0x0

    # invokes: Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V
    invoke-static {v2, v1, v3}, Lcom/android/server/display/DisplayPowerController;->access$2300(Lcom/android/server/display/DisplayPowerController;II)V

    .line 1819
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LightSensor data not available, so we have to turn screen on through AutomaticScreenBrightness, autoBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getBrightnessSetting()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$11;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->getBrightnessSetting()I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$2200(Lcom/android/server/display/DisplayPowerController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    .end local v0    # "autoBrightness":I
    :cond_0
    return-void

    .restart local v0    # "autoBrightness":I
    :cond_1
    move v1, v0

    .line 1818
    goto :goto_0
.end method
