.class Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;
.super Landroid/hardware/TriggerEventListener;
.source "GNUnreadLoader.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vibrator"    # Landroid/os/Vibrator;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/internal/policy/impl/unreadfeature/TriggerListener;->mVibrator:Landroid/os/Vibrator;

    .line 38
    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 40
    return-void
.end method
