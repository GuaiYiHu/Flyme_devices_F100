.class Lcom/android/server/display/DisplayPowerController$HallPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HallPhoneStateListener"
.end annotation


# instance fields
.field private mCallState:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1736
    invoke-direct {p0, p1}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    .line 1733
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$HallPhoneStateListener;->mCallState:I

    .line 1737
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/display/DisplayPowerController$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/display/DisplayPowerController$1;

    .prologue
    .line 1732
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$HallPhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isInUse()Z
    .locals 1

    .prologue
    .line 1746
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$HallPhoneStateListener;->mCallState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1741
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$HallPhoneStateListener;->mCallState:I

    .line 1743
    return-void
.end method
