.class public Lcom/android/internal/policy/impl/AmigoGlobalActions;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/AmigoGlobalActions$18;,
        Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    }
.end annotation


# static fields
.field private static final AMIGO_SETTING_SILENT:Ljava/lang/String; = "amigo_silent_switch"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REBOOT:I = 0x3

.field private static final MESSAGE_SHOW:I = 0x1

.field private static final MESSAGE_SHUTDOWN:I = 0x2

.field private static final MESSAGE_UPDATE_AIRPLANE_STATE:I = 0x4

.field private static final MESSAGE_UPDATE_SILENT_CLICK:I = 0x6

.field private static final MESSAGE_UPDATE_SILENT_STATE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AmigoGlobalActions"

.field public static final TRANSIT_REBOOT_CLOSE:I = 0x4

.field public static final TRANSIT_REBOOT_OPEN:I = 0x3

.field public static final TRANSIT_SHUTDOWN_CLOSE:I = 0x2

.field public static final TRANSIT_SHUTDOWN_OPEN:I = 0x1

.field private static mDialog:Landroid/app/Dialog;


# instance fields
.field private mAirplaneImageView:Landroid/widget/ImageView;

.field private mAirplaneLayout:Landroid/widget/LinearLayout;

.field private mAirplaneState:Z

.field private mAirplaneTextView:Landroid/widget/TextView;

.field mCallback:Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;

.field private mContentLayout:Landroid/widget/RelativeLayout;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerUI:Landroid/os/Handler;

.field private mPreOrientation:I

.field private mRebootCircleImageView:Landroid/widget/ImageView;

.field private mRebootImageView:Landroid/widget/ImageView;

.field private mRebootLayout:Landroid/widget/LinearLayout;

.field private mRebootTextView:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mRunnableUI:Ljava/lang/Runnable;

.field private mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShutdownCircleImageView:Landroid/widget/ImageView;

.field private mShutdownImageView:Landroid/widget/ImageView;

.field private mShutdownLayout:Landroid/widget/LinearLayout;

.field private mShutdownTextView:Landroid/widget/TextView;

.field private mSilentChangeObserver:Landroid/database/ContentObserver;

.field mSilentClicked:Z

.field private mSilentImageView:Landroid/widget/ImageView;

.field private mSilentLayout:Landroid/widget/LinearLayout;

.field private mSilentState:Z

.field private mSilentTextView:Landroid/widget/TextView;

.field private mTopLayout:Landroid/widget/RelativeLayout;

.field mTouched:Z

.field private mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->NONE:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    iput-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    .line 114
    iput v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mScreenWidth:I

    .line 115
    iput v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mScreenHeight:I

    .line 117
    iput v6, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mPreOrientation:I

    .line 119
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mTouched:Z

    .line 120
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentClicked:Z

    .line 122
    iput-object v5, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    .line 124
    iput-object v5, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandlerUI:Landroid/os/Handler;

    .line 143
    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions$3;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentChangeObserver:Landroid/database/ContentObserver;

    .line 497
    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$10;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mCallback:Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;

    .line 512
    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$11;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRunnableUI:Ljava/lang/Runnable;

    .line 217
    iput-object p2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 218
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    .line 220
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandlerUI:Landroid/os/Handler;

    .line 222
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "amigo_silent_switch"

    invoke-static {v4}, Lamigo/provider/AmigoSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 232
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 233
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mScreenWidth:I

    .line 234
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mScreenHeight:I

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/AmigoGlobalActions;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->inTheRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->cancelAnimation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/AmigoGlobalActions;Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->setState(Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->shutDown()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->safeMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->reboot()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->updateBackground()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mTopLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lamigo/app/AmigoAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/AmigoGlobalActions;Lamigo/app/AmigoAlertDialog;)Lamigo/app/AmigoAlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # Lamigo/app/AmigoAlertDialog;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/widget/TextView;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->changeText(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->runShutMovie()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->updateAirplaneState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->updateSilentState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/AmigoGlobalActions;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelAnimation()Z
    .locals 3

    .prologue
    .line 618
    const-string v0, "AmigoGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAnimation state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    sget-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$18;->$SwitchMap$com$android$internal$policy$impl$AmigoGlobalActions$VIEW_STATE:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->dismissDialog()V

    goto :goto_0

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private changeText(Landroid/widget/TextView;IZ)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "textId"    # I
    .param p3, "appear"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 584
    if-eqz p3, :cond_0

    .line 585
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 586
    .local v0, "alp":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 592
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 594
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    new-instance v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;ILandroid/widget/TextView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 615
    return-void

    .line 588
    .end local v0    # "alp":Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 589
    .restart local v0    # "alp":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0

    .line 594
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 244
    new-instance v0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;

    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7090000

    invoke-direct {v0, p0, v4, v5}, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/content/Context;I)V

    .line 279
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->initView()Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 281
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 282
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 284
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 285
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 286
    const/16 v4, 0x7d9

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 287
    const-string v4, "AmigoGlobal"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 290
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 292
    .local v3, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v5, v5, 0x802

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 296
    :cond_0
    return-object v0
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "AmigoGlobalActions"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 380
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mDialog:Landroid/app/Dialog;

    .line 382
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "AmigoGlobalActions"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mDialog:Landroid/app/Dialog;

    .line 369
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->prepareDialog()V

    .line 371
    sget-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 372
    const-string v0, "AmigoGlobalActions"

    const-string v1, "show Dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->playInitialAnimation()V

    .line 374
    return-void
.end method

.method private inTheRange(II)Z
    .locals 25
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 300
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 301
    .local v7, "centerF":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 302
    .local v14, "shutdownF":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 303
    .local v9, "rebootF":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .local v3, "airplaneF":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 305
    .local v19, "voiceF":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContentLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 311
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v15, v23, v24

    .line 312
    .local v15, "shutdownL":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v16, v23, v24

    .line 313
    .local v16, "shutdownR":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v17, v23, v24

    .line 314
    .local v17, "shutdownT":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v13, v23, v24

    .line 316
    .local v13, "shutdownB":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v10, v23, v24

    .line 317
    .local v10, "rebootL":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v11, v23, v24

    .line 318
    .local v11, "rebootR":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v12, v23, v24

    .line 319
    .local v12, "rebootT":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v8, v23, v24

    .line 321
    .local v8, "rebootB":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v4, v23, v24

    .line 322
    .local v4, "airplaneL":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v5, v23, v24

    .line 323
    .local v5, "airplaneR":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v6, v23, v24

    .line 324
    .local v6, "airplaneT":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v2, v23, v24

    .line 326
    .local v2, "airplaneB":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int v20, v23, v24

    .line 327
    .local v20, "voiceL":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v21, v23, v24

    .line 328
    .local v21, "voiceR":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v22, v23, v24

    .line 329
    .local v22, "voiceT":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v18, v23, v24

    .line 331
    .local v18, "voiceB":I
    move/from16 v0, p1

    if-le v0, v10, :cond_0

    move/from16 v0, p1

    if-ge v0, v11, :cond_0

    move/from16 v0, p2

    if-le v0, v12, :cond_0

    move/from16 v0, p2

    if-lt v0, v8, :cond_3

    :cond_0
    move/from16 v0, p1

    if-le v0, v15, :cond_1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    move/from16 v0, p2

    if-lt v0, v13, :cond_3

    :cond_1
    move/from16 v0, p1

    if-le v0, v4, :cond_2

    move/from16 v0, p1

    if-ge v0, v5, :cond_2

    move/from16 v0, p2

    if-le v0, v6, :cond_2

    move/from16 v0, p2

    if-lt v0, v2, :cond_3

    :cond_2
    move/from16 v0, p1

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move/from16 v0, p2

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 335
    :cond_3
    const/16 v23, 0x1

    .line 338
    :goto_0
    return v23

    :cond_4
    const/16 v23, 0x0

    goto :goto_0
.end method

.method private initView()Landroid/view/View;
    .locals 4

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 386
    .local v1, "layoutFactory":Landroid/view/LayoutInflater;
    const v2, 0x7030002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x70a0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    .line 389
    const v2, 0x70a000f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootImageView:Landroid/widget/ImageView;

    .line 390
    const v2, 0x70a0015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    .line 391
    const v2, 0x70a0018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    .line 392
    const v2, 0x70a001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownCircleImageView:Landroid/widget/ImageView;

    .line 393
    const v2, 0x70a001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootCircleImageView:Landroid/widget/ImageView;

    .line 395
    const v2, 0x70a0013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownTextView:Landroid/widget/TextView;

    .line 396
    const v2, 0x70a0010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootTextView:Landroid/widget/TextView;

    .line 397
    const v2, 0x70a0016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneTextView:Landroid/widget/TextView;

    .line 398
    const v2, 0x70a0019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentTextView:Landroid/widget/TextView;

    .line 400
    const v2, 0x70a0011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownLayout:Landroid/widget/LinearLayout;

    .line 401
    const v2, 0x70a000e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootLayout:Landroid/widget/LinearLayout;

    .line 402
    const v2, 0x70a0014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    .line 403
    const v2, 0x70a0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentLayout:Landroid/widget/LinearLayout;

    .line 405
    const v2, 0x70a000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mTopLayout:Landroid/widget/RelativeLayout;

    .line 406
    const v2, 0x70a000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 427
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$9;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    return-object v0
.end method

.method private playInitialAnimation()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 554
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneState:Z

    .line 555
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "amigo_silent_switch"

    invoke-static {v4, v7, v6}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z

    .line 556
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    const v7, 0x7020052

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootImageView:Landroid/widget/ImageView;

    const v7, 0x702004b

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->changeText(Landroid/widget/TextView;IZ)V

    .line 563
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->changeText(Landroid/widget/TextView;IZ)V

    .line 564
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->changeText(Landroid/widget/TextView;IZ)V

    .line 565
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->changeText(Landroid/widget/TextView;IZ)V

    .line 567
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x7040008

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 569
    .local v2, "animInitShutdown":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x7040007

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 571
    .local v1, "animInitReboot":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x7040006

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 573
    .local v0, "animInitAirplane":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x7040009

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 576
    .local v3, "animInitVoice":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 577
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 578
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 579
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 580
    return-void

    .end local v0    # "animInitAirplane":Landroid/view/animation/Animation;
    .end local v1    # "animInitReboot":Landroid/view/animation/Animation;
    .end local v2    # "animInitShutdown":Landroid/view/animation/Animation;
    .end local v3    # "animInitVoice":Landroid/view/animation/Animation;
    :cond_0
    move v4, v6

    .line 554
    goto :goto_0

    :cond_1
    move v4, v6

    .line 555
    goto :goto_1
.end method

.method private playRebootAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x7040000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootCircleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->runShutAnim(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V

    .line 658
    return-void
.end method

.method private playShutDownAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    const v1, 0x7040001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRebootImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mShutdownCircleImageView:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->runShutAnim(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V

    .line 650
    return-void
.end method

.method private prepareDialog()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mCallback:Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;

    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->addCallbacks(Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->createBlurBg(Landroid/content/Context;)V

    .line 344
    return-void
.end method

.method private reboot()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->playRebootAnimation()V

    .line 642
    return-void
.end method

.method private runScaleAnim(Landroid/widget/ImageView;Z)V
    .locals 3
    .param p1, "scaleView"    # Landroid/widget/ImageView;
    .param p2, "isShut"    # Z

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const v2, 0x7040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 707
    .local v0, "scaleAnimation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 710
    new-instance v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/AmigoGlobalActions$17;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 732
    return-void
.end method

.method private runShutAnim(Landroid/widget/ImageView;Landroid/widget/ImageView;Z)V
    .locals 8
    .param p1, "rotateView"    # Landroid/widget/ImageView;
    .param p2, "scaleView"    # Landroid/widget/ImageView;
    .param p3, "isShut"    # Z

    .prologue
    .line 662
    const/4 v1, 0x0

    .line 663
    .local v1, "duration":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 664
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 665
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const v5, 0x7040005

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 670
    .local v3, "rotateAnimation":Landroid/view/animation/Animation;
    new-instance v4, Lcom/android/internal/policy/impl/AmigoGlobalActions$15;

    invoke-direct {v4, p0, p3}, Lcom/android/internal/policy/impl/AmigoGlobalActions$15;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 694
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 695
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 696
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;

    invoke-direct {v5, p0, v0, p1, v3}, Lcom/android/internal/policy/impl/AmigoGlobalActions$16;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/graphics/drawable/AnimationDrawable;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 702
    return-void
.end method

.method private runShutMovie()V
    .locals 2

    .prologue
    .line 735
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method private safeMode()V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v0, Lamigo/app/AmigoAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x10400fc

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog$Builder;->setTitle(I)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    const v1, 0x10400fd

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog$Builder;->setMessage(I)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/internal/policy/impl/AmigoGlobalActions$13;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$13;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    invoke-virtual {v0, v1, v2}, Lamigo/app/AmigoAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/internal/policy/impl/AmigoGlobalActions$12;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions$12;-><init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    invoke-virtual {v0, v1, v2}, Lamigo/app/AmigoAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamigo/app/AmigoAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSafeModeDialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->show()V

    goto :goto_0
.end method

.method private setState(Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    .line 634
    return-void
.end method

.method private shutDown()V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->playShutDownAnimation()V

    .line 638
    return-void
.end method

.method private updateAirplaneState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 740
    if-eqz p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    const v1, 0x7020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mAirplaneImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x7020000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    .line 505
    sget-object v1, Lcom/android/internal/policy/impl/AmigoBlurHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandlerUI:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mRunnableUI:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    :cond_0
    monitor-exit v1

    .line 510
    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSilentState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    const v1, 0x7020081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 753
    :goto_0
    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentImageView:Landroid/widget/ImageView;

    const v1, 0x7020080

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public createBlurBg(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    invoke-static {}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->getBlurHelper()Lcom/android/internal/policy/impl/AmigoBlurHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->createBlurBg(Landroid/content/Context;)V

    .line 495
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 489
    const-string v0, "AmigoGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v0, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 491
    return-void
.end method

.method public showDialog(ZZ)V
    .locals 3
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOT:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-ne v0, v1, :cond_1

    .line 348
    :cond_0
    const-string v0, "AmigoGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 352
    :cond_1
    sget-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 353
    sget-object v0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    const-string v0, "AmigoGlobalActions"

    const-string v1, "dialog is showing!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->dismissDialog()V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 361
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->handleShow()V

    goto :goto_0
.end method
