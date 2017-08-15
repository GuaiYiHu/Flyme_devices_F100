.class Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;
.super Ljava/lang/Object;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HangupAfterHold"
.end annotation


# instance fields
.field private mCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mWaitingToHangup:Z

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 1

    .prologue
    .line 1937
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mWaitingToHangup:Z

    .line 1936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1938
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->resetToHangup()V

    .line 1939
    return-void
.end method

.method private resumeHangupAfterHold()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1964
    const-string v2, "GsmCallTracker"

    const-string v3, "resumeHangupAfterHold begin"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mWaitingToHangup:Z

    if-eqz v2, :cond_0

    .line 1966
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v2, :cond_0

    .line 1967
    const-string v2, "GsmCallTracker"

    const-string v3, "resumeHangupAfterHold to hangup call"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mWaitingToHangup:Z

    .line 1970
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1974
    :goto_0
    const-string v1, "GsmCallTracker"

    const-string v2, "resumeHangupAfterHold end"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1976
    const/4 v1, 0x1

    .line 1980
    :goto_1
    return v1

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCallTracker"

    const-string v2, "unexpected error on hangup"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1979
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->resetToHangup()V

    goto :goto_1
.end method


# virtual methods
.method isWaitingToHangup()Z
    .locals 1

    .prologue
    .line 1941
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mWaitingToHangup:Z

    return v0
.end method

.method public resetToHangup()V
    .locals 2

    .prologue
    .line 1951
    const-string v0, "GsmCallTracker"

    const-string v1, "Reset mHangupAfterHoldRequest variables"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mWaitingToHangup:Z

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1954
    return-void
.end method

.method setToHangup()V
    .locals 1

    .prologue
    .line 1944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mWaitingToHangup:Z

    .line 1945
    return-void
.end method

.method public setToHangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 1947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mWaitingToHangup:Z

    .line 1948
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$HangupAfterHold;->mCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1949
    return-void
.end method
