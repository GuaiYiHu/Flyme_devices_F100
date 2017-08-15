.class public Lcom/android/server/am/AmigoActivityManagerService;
.super Landroid/app/IAmigoActivityManager$Stub;
.source "AmigoActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;,
        Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    }
.end annotation


# static fields
.field private static final DEBUG_PERM:Z = true

.field private static final GN_MAX_WAIT_TIME:I = 0xa

.field private static final GN_PERM_COUNT_DOWN:I = 0xc9

.field public static final GN_PERM_TAG:Ljava/lang/String; = "perm_ctrl"

.field private static final GN_PERM_UPDATEDB:I = 0xca

.field private static final GN_PERM_URI:Landroid/net/Uri;

.field private static final GN_SHOW_PERM_ERROR:I = 0xc8

.field private static final LOCAL_DEBUG:Z

.field static final PEMISSION_CONTROL_ASK:I = 0x0

.field static final PEMISSION_CONTROL_DENIDE:I = -0x1

.field static final PEMISSION_CONTROL_GRANTED:I = 0x1

.field static final PEMISSION_CONTROL_SLEEP_COUNTS:I = 0x29

.field static final PEMISSION_CONTROL_SLEEP_TIME:I = 0xfa

.field private static final WATCHDOG_TIMEOUT:J = 0xafc80L


# instance fields
.field private mContext:Landroid/content/Context;

.field final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIsPermDialogShowing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLock:Ljava/lang/Object;

.field private mPackageSetting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermCtrlHandler:Landroid/os/Handler;

.field private mPermCtrlResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

.field private mPermMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsStatus:I

.field private mRememberMe:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartSetting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/am/AmigoActivityManagerService;->LOCAL_DEBUG:Z

    .line 73
    const-string v0, "content://com.amigo.settings.PermissionProvider/permissions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AmigoActivityManagerService;->GN_PERM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Landroid/app/IAmigoActivityManager$Stub;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    .line 81
    iput-boolean v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    .line 94
    iput-boolean v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    .line 95
    iput v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    .line 96
    iput-boolean v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPackageSetting:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mLock:Ljava/lang/Object;

    .line 108
    const-string v0, "perm_ctrl"

    const-string v1, "New AmigoActivityManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "perm_ctrl"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 111
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 112
    new-instance v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;-><init>(Lcom/android/server/am/AmigoActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 116
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/AmigoPermission;->initPermissionProp()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AmigoActivityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoCleanAllPermMessages()V

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/am/AmigoActivityManagerService;->GN_PERM_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/AmigoActivityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/AmigoActivityManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/AmigoActivityManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoClearPermMessages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/AmigoActivityManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoPopPermMessage()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/AmigoActivityManagerService;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/AmigoActivityManagerService;Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/AmigoActivityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoIsScreenLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermDB(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AmigoActivityManagerService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetAppNameLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPkgPermLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AmigoActivityManagerService;->amigoBuildPermissionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AmigoActivityManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/am/AmigoActivityManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/am/AmigoActivityManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/am/AmigoActivityManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/am/AmigoActivityManagerService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AmigoActivityManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoStartSettingActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private amigoBuildPermissionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 14
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "messageMore"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 912
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 913
    .local v5, "layout":Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 916
    new-instance v9, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 917
    .local v9, "textView":Landroid/widget/TextView;
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    const/high16 v11, -0x34000000    # -3.3554432E7f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 920
    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-direct {p0, v11, v12}, Lcom/android/server/am/AmigoActivityManagerService;->amigoDip2px(Landroid/content/Context;F)I

    move-result v8

    .line 921
    .local v8, "margin":I
    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x41800000    # 16.0f

    invoke-direct {p0, v11, v12}, Lcom/android/server/am/AmigoActivityManagerService;->amigoDip2px(Landroid/content/Context;F)I

    move-result v2

    .line 922
    .local v2, "dividerMargin":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 924
    .local v6, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 925
    invoke-virtual {v5, v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 926
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 927
    .local v10, "textViewMore":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    if-eqz p2, :cond_0

    .line 928
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 930
    const/high16 v11, -0x34000000    # -3.3554432E7f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 931
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 933
    .local v7, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v11, v8, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 934
    invoke-virtual {v5, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    .end local v7    # "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v1, Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v11}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 938
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 939
    sget-object v11, Landroid/util/AmigoCheckPermission;->mSpecialPerHs:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "-1"

    const-string v12, "persist.sys.permission.level"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 941
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    .line 942
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 947
    :goto_0
    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x707000f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 948
    const/high16 v11, 0x66000000

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 949
    new-instance v11, Lcom/android/server/am/AmigoActivityManagerService$3;

    invoke-direct {v11, p0, v1}, Lcom/android/server/am/AmigoActivityManagerService$3;-><init>(Lcom/android/server/am/AmigoActivityManagerService;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    new-instance v4, Landroid/view/View;

    iget-object v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 962
    .local v4, "dividerView":Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 964
    .local v3, "dividerParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 965
    const v11, -0x444445

    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 967
    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    return-object v5

    .line 944
    .end local v3    # "dividerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "dividerView":Landroid/view/View;
    :cond_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    .line 945
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private amigoCleanAllPermMessages()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 619
    const-string v0, "perm_ctrl"

    const-string v1, "Clean all permission messages!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->perm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 627
    iget-boolean v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    if-nez v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v2, v2, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->perm:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 634
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->key:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v0}, Lamigo/app/AmigoAlertDialog;->dismiss()V

    .line 638
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    .line 641
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    monitor-enter v1

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 643
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 644
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPackageSetting:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 650
    return-void

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v1, v1, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v2, v2, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->perm:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 644
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private amigoClearPermMessages(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 588
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 590
    .local v4, "trashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 592
    .local v3, "mTempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 594
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 595
    const-string v5, "perm_ctrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Find trash "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 600
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    monitor-enter v6

    .line 601
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 602
    iget-object v5, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    iget-object v5, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v2, v5, v7

    .line 603
    .restart local v2    # "key":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 604
    const-string v5, "perm_ctrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove trash "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from mPermMsgList!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v5, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 601
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 609
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 610
    .restart local v2    # "key":Ljava/lang/String;
    const-string v5, "perm_ctrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove trash "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from maps!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v5, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 613
    .end local v0    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "i":I
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 616
    return-void
.end method

.method private amigoDip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 972
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 973
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private amigoGetAppNameLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 493
    const-string v2, ""

    .line 494
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 496
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 497
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 498
    .local v4, "temp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "temp":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "temp":Ljava/lang/String;
    :cond_0
    move-object v2, v4

    .line 498
    goto :goto_0

    .line 499
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "perm_ctrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid group name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private amigoGetPermStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 827
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/AmigoPermission;->amigoGetPermStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private amigoGetPkgPermLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 840
    move-object v3, p1

    .line 841
    .local v3, "tempGrpName":Ljava/lang/String;
    const-string v4, "WRITE_SMS_MMS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x707000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 867
    :goto_0
    return-object v4

    .line 844
    :cond_0
    const-string v4, "READ_SMS_MMS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x707000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 847
    :cond_1
    const-string v4, "SEND_SMS_MMS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 848
    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x707000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 850
    :cond_2
    const/4 v2, 0x0

    .line 851
    .local v2, "pgi":Landroid/content/pm/PermissionInfo;
    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 852
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 854
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 862
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 863
    invoke-virtual {v2, v1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 866
    :cond_4
    const-string v4, "perm_ctrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPkgPermGrupLabel return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 867
    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "perm_ctrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid group name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const-string v4, "DefaultGrp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 858
    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private amigoIsPermMsgExisted(Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "existed":Z
    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v3, v3, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    const-string v3, "perm_ctrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The permission dialog of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already showing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v0, 0x1

    .line 549
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    monitor-enter v4

    .line 550
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 551
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    const-string v3, "perm_ctrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The permission message of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 556
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    monitor-exit v4

    .line 558
    return v0

    .line 556
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private amigoIsScreenLocked()Z
    .locals 3

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 538
    .local v0, "isScreenLocked":Z
    :goto_0
    return v0

    .line 537
    .end local v0    # "isScreenLocked":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private amigoPermCtrlDenied(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 425
    const/16 v2, 0x3e8

    if-le p2, v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    :cond_0
    const/4 v0, 0x0

    .line 435
    :cond_1
    :goto_0
    return v0

    .line 428
    :cond_2
    const/4 v0, 0x0

    .line 429
    .local v0, "isDenied":Z
    const/16 v2, 0x2710

    if-le p2, v2, :cond_1

    .line 430
    invoke-virtual {p0, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/server/pm/AmigoPermission;->CheckPermDenied(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 432
    const-string v2, "perm_ctrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isDenied = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private amigoPopPermMessage()V
    .locals 6

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    monitor-enter v2

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 566
    const-string v1, "perm_ctrl"

    const-string v3, "Permission messages array is empty!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    .line 568
    monitor-exit v2

    .line 585
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 571
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    const-string v3, "perm_ctrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'s permission message is already overdue!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    .line 574
    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoPopPermMessage()V

    .line 575
    monitor-exit v2

    goto :goto_0

    .line 583
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 577
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    .line 579
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    .line 581
    const-string v3, "perm_ctrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pop message "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 583
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private amigoRealPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 901
    if-nez p1, :cond_1

    .line 902
    const/4 v0, 0x0

    .line 908
    :cond_0
    :goto_0
    return-object v0

    .line 904
    :cond_1
    move-object v0, p1

    .line 905
    .local v0, "result":Ljava/lang/String;
    const-string v1, "_SMS_MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    const-string v1, "_SMS_MMS"

    const-string v2, "_SMS"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private amigoResetNoRememberPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 871
    packed-switch p3, :pswitch_data_0

    .line 887
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 873
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    if-nez v0, :cond_0

    .line 874
    iput-boolean v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    .line 875
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 879
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    if-nez v0, :cond_0

    .line 880
    iput-boolean v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z

    .line 881
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private amigoSendNotificationBroacast(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "important"    # Z

    .prologue
    .line 831
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 832
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Permissio.Action.Denied"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string v1, "permission"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v1, "important"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 836
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 837
    return-void
.end method

.method private amigoStartSettingActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v4, "perm_ctrl"

    const-string v5, "start Setting Activity!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.gionee.permission"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v4, "com.gionee.permission.category"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 480
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "appName":Ljava/lang/String;
    const-string v4, "packagename"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v4, "title"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 485
    iget-object v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPackageSetting:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "appName":Ljava/lang/String;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "perm_ctrl"

    const-string v5, "getPackageInfo Error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private amigoTransPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 890
    if-nez p1, :cond_1

    .line 891
    const/4 v0, 0x0

    .line 897
    :cond_0
    :goto_0
    return-object v0

    .line 893
    :cond_1
    move-object v0, p1

    .line 894
    .local v0, "result":Ljava/lang/String;
    const-string v1, "CONTACTS_CALLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    const-string v1, "_CONTACTS_CALLS"

    const-string v2, "_CALL_LOG"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private amigoUpdatePermDB(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 448
    const-string v0, "perm_ctrl"

    const-string v1, "update and start Activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/pm/AmigoPermission;->amigoUpdatePermStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 451
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/AmigoActivityManagerService$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService$2;-><init>(Lcom/android/server/am/AmigoActivityManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method

.method private amigoUpdatePermStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 440
    .local v1, "updateDb":Landroid/os/Message;
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 441
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    aput-object p3, v0, v2

    .line 442
    .local v0, "arg":[Ljava/lang/String;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    return-void
.end method

.method private bPackagePermDisableInSetting(I)Z
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 1005
    invoke-virtual {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1006
    .local v2, "pk":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1007
    .local v0, "bFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPackageSetting:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPackageSetting:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1009
    const/4 v0, 0x1

    .line 1013
    :cond_0
    const-string v3, "perm_ctrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bPackagePermEnable pk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bFound "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v0

    .line 1007
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPermissionGrantResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 316
    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 318
    :try_start_0
    const-string v2, "perm_ctrl"

    const-string v4, "mLock.wait(15*1000)"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, "foundFlag":Z
    const-string v2, "perm_ctrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStartSetting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPermissionsStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-boolean v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z

    if-eqz v2, :cond_0

    .line 329
    iput-boolean v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mStartSetting:Z

    .line 331
    const-string v2, "perm_ctrl"

    const-string v3, "mStartSetting true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    if-ne v2, v7, :cond_1

    .line 335
    iput v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    .line 337
    const-string v2, "perm_ctrl"

    const-string v3, "PEMISSION_CONTROL_DENIDE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    iget v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 341
    const-string v2, "perm_ctrl"

    const-string v3, "PEMISSION_CONTROL_GRANTED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    .line 343
    const/4 v1, 0x1

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoIsScreenLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    const-string v2, "perm_ctrl"

    const-string v3, "ScreenLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPermStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 351
    iput v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    .line 353
    const-string v2, "perm_ctrl"

    const-string v3, "amigoGetPermStatus denied"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_4
    return v1

    .line 320
    .end local v1    # "foundFlag":Z
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "perm_ctrl"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private handleDialogTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 363
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    :cond_0
    const-string v2, "perm_ctrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDialogTimeout key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-lez v0, :cond_1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v2, v2, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v2, v2, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v2}, Lamigo/app/AmigoAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    invoke-direct {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoClearPermMessages(Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    const/16 v3, 0xc9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 371
    iget-object v2, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    iget-object v2, v2, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v2}, Lamigo/app/AmigoAlertDialog;->dismiss()V

    .line 372
    iput-boolean v5, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    .line 376
    :cond_1
    iput v5, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermissionsStatus:I

    .line 377
    return-void
.end method


# virtual methods
.method amigoCheckComponentPermission(Ljava/lang/String;IIZZ)I
    .locals 12
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "owningUid"    # I
    .param p4, "exported"    # Z
    .param p5, "booted"    # Z

    .prologue
    .line 144
    sget-boolean v9, Lcom/android/server/am/AmigoActivityManagerService;->LOCAL_DEBUG:Z

    if-eqz v9, :cond_0

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "tmpPkg":Ljava/lang/String;
    const-string v9, "perm_ctrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". ONLY FOR DEBBBBBBUG!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v8    # "tmpPkg":Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    const/16 v9, 0x3e8

    if-ne p2, v9, :cond_3

    .line 152
    :cond_1
    const/4 v1, 0x0

    .line 302
    :cond_2
    :goto_0
    return v1

    .line 155
    :cond_3
    invoke-static {p2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 156
    const/4 v1, -0x1

    goto :goto_0

    .line 160
    :cond_4
    if-ltz p3, :cond_5

    invoke-static {p2, p3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 161
    const/4 v1, 0x0

    goto :goto_0

    .line 164
    :cond_5
    if-nez p4, :cond_6

    .line 165
    const-string v9, "perm_ctrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission denied: checkComponentPermission() owningUid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, -0x1

    goto :goto_0

    .line 168
    :cond_6
    if-nez p1, :cond_7

    .line 169
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoTransPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    sget-object v9, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    invoke-virtual {v9, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Landroid/util/AmigoCheckPermission;->mSepcialPackage:Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 183
    :cond_8
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoRealPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Landroid/os/RemoteException;
    const-string v9, "perm_ctrl"

    const-string v10, "PackageManager is dead?!?"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_9
    const-string v9, "/amigo"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 194
    const-string v9, "/amigo"

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    :cond_a
    :goto_1
    const/4 v1, -0x1

    .line 206
    .local v1, "checkPermission":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoRealPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 213
    const/16 v9, 0x2710

    if-le p2, v9, :cond_b

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/pm/AmigoPermission;->isSystemApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 220
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_b
    const/4 v9, -0x1

    if-eq v9, v1, :cond_2

    .line 225
    invoke-direct {p0, p2}, Lcom/android/server/am/AmigoActivityManagerService;->bPackagePermDisableInSetting(I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoPermCtrlDenied(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 226
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 197
    .end local v1    # "checkPermission":I
    :cond_c
    const-string v9, "gn.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 198
    const-string p1, "android.permission.BLUETOOTH_ADMIN"

    .line 199
    const-string v9, "perm_ctrl"

    const-string v10, "replace gn bluetooth permission to releal bluetooth permission"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    .restart local v1    # "checkPermission":I
    :catch_1
    move-exception v3

    .line 209
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v9, "perm_ctrl"

    const-string v10, "PackageManager is dead?!?"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 231
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_d
    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoIsScreenLocked()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoPermCtrlDenied(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 232
    const-string v9, "perm_ctrl"

    const-string v10, "Screen lock, denied!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 239
    :cond_e
    const/4 v9, 0x0

    move/from16 v0, p5

    invoke-virtual {p0, p1, p2, v9, v0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoInterceptPermission(Ljava/lang/String;IIZ)I

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz p5, :cond_11

    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoIsScreenLocked()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoPermCtrlDenied(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 263
    const-string v9, "perm_ctrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPermStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_f

    .line 265
    const/4 v2, 0x0

    .line 268
    .local v2, "checkResult":I
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/AmigoActivityManagerService;->getPermissionGrantResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 271
    .local v4, "foundFlag":Z
    const-string v9, "perm_ctrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "---->checkResult "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", foundFlag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-nez v4, :cond_11

    .line 275
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/AmigoActivityManagerService;->handleDialogTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 279
    .end local v2    # "checkResult":I
    .end local v4    # "foundFlag":Z
    :cond_f
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPermStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_11

    .line 280
    const-string v9, "perm_ctrl"

    const-string v10, "---->getPermStatus(pkgName, permission) == PEMISSION_CONTROL_DENIDE "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v9

    invoke-virtual {v9, p1, v6}, Lcom/android/server/pm/AmigoPermission;->amigoGetPermDeniedTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 283
    .local v7, "times":I
    const/4 v9, 0x1

    if-ge v7, v9, :cond_10

    .line 284
    const/4 v9, 0x0

    invoke-direct {p0, v6, p1, v9}, Lcom/android/server/am/AmigoActivityManagerService;->amigoSendNotificationBroacast(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    :cond_10
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, p1, v6, v10}, Lcom/android/server/pm/AmigoPermission;->amigoSetPermDeniedTime(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 292
    .end local v7    # "times":I
    :goto_2
    invoke-direct {p0, v6, p1}, Lcom/android/server/am/AmigoActivityManagerService;->handleDialogTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 288
    :catch_2
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "perm_ctrl"

    const-string v10, "exception:"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 298
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_11
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v9

    invoke-virtual {v9, p1, v6}, Lcom/android/server/pm/AmigoPermission;->amigoIsContainPermDenied(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 299
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v6, v10}, Lcom/android/server/pm/AmigoPermission;->amigoSetPermDeniedTime(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    :cond_12
    const-string v9, "perm_ctrl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Crant pkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", permission:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public amigoCheckPermmison(Ljava/lang/String;I)I
    .locals 6
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    .line 138
    const/4 v3, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AmigoActivityManagerService;->amigoCheckComponentPermission(Ljava/lang/String;IIZZ)I

    move-result v0

    return v0
.end method

.method amigoCheckReadPermission(Landroid/content/pm/ProviderInfo;)Z
    .locals 2
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 984
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "READ_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method amigoCheckWritePermission(Landroid/content/pm/ProviderInfo;)Z
    .locals 2
    .param p1, "cpi"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 977
    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    const-string v1, "WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    const-string v1, "WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    const-string v1, "WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public amigoGetNameForUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, "pkgList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 993
    :cond_0
    const/4 v1, 0x0

    .line 995
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public amigoGetPermKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPkgPermGrp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "permGrp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public amigoGetPkgPermGrp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/AmigoPermission;->amigoGetPkgPermGrp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method amigoInterceptPermission(Ljava/lang/String;IIZ)I
    .locals 10
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "returnValueWhenDenied"    # I
    .param p4, "booted"    # Z

    .prologue
    const/4 v6, 0x0

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoPermCtrlDenied(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 384
    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoIsScreenLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 421
    .end local p3    # "returnValueWhenDenied":I
    :cond_0
    :goto_0
    return p3

    .line 386
    .restart local p3    # "returnValueWhenDenied":I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v5, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPkgPermGrp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, "permGrp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v5, p1}, Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPermStatus(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 394
    iget-object v7, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    monitor-enter v7

    .line 395
    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/am/AmigoActivityManagerService;->amigoIsPermMsgExisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 398
    const-string v6, "perm_ctrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waiting new control result of permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;

    const/16 v8, 0xc8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 402
    .local v3, "msg":Landroid/os/Message;
    iput p2, v3, Landroid/os/Message;->arg1:I

    .line 403
    const/4 v6, 0x4

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const/4 v6, 0x2

    aput-object v4, v0, v6

    const/4 v6, 0x3

    aput-object p1, v0, v6

    .line 404
    .local v0, "arg":[Ljava/lang/String;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    iget-object v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPermMsgList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-boolean v6, p0, Lcom/android/server/am/AmigoActivityManagerService;->mIsPermDialogShowing:Z

    if-nez v6, :cond_2

    .line 408
    const-string v6, "perm_ctrl"

    const-string v8, "No permission dialog is showing!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/AmigoActivityManagerService;->amigoPopPermMessage()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v0    # "arg":[Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 411
    .restart local v0    # "arg":[Ljava/lang/String;
    .restart local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v6, "perm_ctrl"

    const-string v8, "amigoPopPermMessage error "

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "arg":[Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "permGrp":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_3
    move p3, v6

    .line 421
    goto/16 :goto_0
.end method

.method amigoReadSystemAppInfo()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getInstance()Lcom/android/server/pm/AmigoPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/AmigoPermission;->readSystemAppInfo()V

    .line 123
    return-void
.end method

.method amigoRegistCloseSysDlg()V
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "closeSysDlg":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AmigoActivityManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AmigoActivityManagerService$1;-><init>(Lcom/android/server/am/AmigoActivityManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method public setPackagePermEnable(Ljava/lang/String;)V
    .locals 3
    .param p1, "pk"    # Ljava/lang/String;

    .prologue
    .line 1000
    const-string v0, "perm_ctrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackagePermEnable pk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService;->mPackageSetting:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1002
    return-void
.end method
