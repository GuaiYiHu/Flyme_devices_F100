.class public Lcom/amigo/internal/app/AmigoResolverActivity;
.super Lcom/amigo/internal/app/AmigoAlertActivity;
.source "AmigoResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;,
        Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;,
        Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoResolverActivity"


# instance fields
.field private mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Lamigo/widget/AmigoButton;

.field private mAlwaysUseOption:Z

.field private mGrid:Landroid/widget/GridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIsSupportAppSort:Z

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mOnceButton:Lamigo/widget/AmigoButton;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mShowExtended:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLastSelected:I

    .line 90
    const-string v0, "ro.gn.appsort.default"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mIsSupportAppSort:Z

    .line 94
    new-instance v0, Lcom/amigo/internal/app/AmigoResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/amigo/internal/app/AmigoResolverActivity$1;-><init>(Lcom/amigo/internal/app/AmigoResolverActivity;)V

    iput-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 768
    return-void
.end method

.method static synthetic access$000(Lcom/amigo/internal/app/AmigoResolverActivity;)Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amigo/internal/app/AmigoResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/amigo/internal/app/AmigoResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$300(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amigo/internal/app/AmigoResolverActivity;)Lamigo/widget/AmigoButton;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysButton:Lamigo/widget/AmigoButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amigo/internal/app/AmigoResolverActivity;)Lamigo/widget/AmigoButton;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mOnceButton:Lamigo/widget/AmigoButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amigo/internal/app/AmigoResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amigo/internal/app/AmigoResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mIsSupportAppSort:Z

    return v0
.end method

.method static synthetic access$800(Lcom/amigo/internal/app/AmigoResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$802(Lcom/amigo/internal/app/AmigoResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$900(Lcom/amigo/internal/app/AmigoResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoResolverActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->isLightTheme()Z

    move-result v0

    return v0
.end method

.method private isLightTheme()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x1

    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    return-object v0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 229
    :try_start_0
    iget v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 230
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 240
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/amigo/internal/app/AmigoResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 256
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 247
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 248
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/amigo/internal/app/AmigoResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 249
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 256
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AmigoResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 323
    .local v0, "id":I
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x90b005e

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->startSelected(IZ)V

    .line 324
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->dismiss()V

    .line 325
    return-void

    .line 323
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x909001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 122
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/amigo/internal/app/AmigoResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->isLightTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const v1, 0x9080004

    invoke-virtual {p0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->setTheme(I)V

    .line 137
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/amigo/internal/app/AmigoAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 145
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysUseOption:Z

    .line 146
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x9060000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mMaxColumns:I

    .line 147
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    iget-object v9, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlertParams:Lcom/amigo/internal/app/AmigoAlertController$AlertParams;

    .line 151
    .local v9, "ap":Lcom/amigo/internal/app/AmigoAlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v9, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 153
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mRegistered:Z

    .line 156
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 157
    .local v8, "am":Landroid/app/ActivityManager;
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mIconDpi:I

    .line 158
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mIconSize:I

    .line 160
    new-instance v1, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    iget v7, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLaunchedFromUid:I

    move-object v2, p0

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;-><init>(Lcom/amigo/internal/app/AmigoResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    .line 162
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->getCount()I

    move-result v12

    .line 163
    .local v12, "count":I
    iget v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLaunchedFromUid:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->finish()V

    .line 219
    :cond_1
    :goto_2
    return-void

    .line 133
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v9    # "ap":Lcom/amigo/internal/app/AmigoAlertController$AlertParams;
    .end local v12    # "count":I
    :cond_2
    const v1, 0x908001d

    invoke-virtual {p0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 141
    :catch_0
    move-exception v13

    .line 142
    .local v13, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    iput v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLaunchedFromUid:I

    goto :goto_1

    .line 167
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v8    # "am":Landroid/app/ActivityManager;
    .restart local v9    # "ap":Lcom/amigo/internal/app/AmigoAlertController$AlertParams;
    .restart local v12    # "count":I
    :cond_3
    const/4 v1, 0x1

    if-le v12, v1, :cond_5

    .line 168
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x903003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v9, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mView:Landroid/view/View;

    .line 169
    iget-object v1, v9, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x90b005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    .line 170
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v14, v1, Landroid/util/DisplayMetrics;->density:F

    .line 176
    .local v14, "scale":F
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/amigo/internal/app/AmigoResolverActivity$ItemLongClickListener;-><init>(Lcom/amigo/internal/app/AmigoResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 179
    if-eqz p6, :cond_4

    .line 180
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->resizeGrid()V

    .line 185
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 197
    .end local v14    # "scale":F
    :goto_3
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->setupAlert()V

    .line 199
    if-eqz p6, :cond_1

    .line 201
    const v1, 0x90b002c

    invoke-virtual {p0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 202
    .local v11, "buttonPanelLayout":Landroid/view/ViewGroup;
    const v1, 0x90b0024

    invoke-virtual {p0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 203
    .local v10, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v11, :cond_7

    if-eqz v10, :cond_7

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    const v1, 0x90b005e

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoButton;

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysButton:Lamigo/widget/AmigoButton;

    .line 208
    const v1, 0x90b005f

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lamigo/widget/AmigoButton;

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mOnceButton:Lamigo/widget/AmigoButton;

    .line 210
    const/4 v1, 0x1

    if-le v12, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysButton:Lamigo/widget/AmigoButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    .line 212
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mOnceButton:Lamigo/widget/AmigoButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 187
    .end local v10    # "buttonLayout":Landroid/view/ViewGroup;
    .end local v11    # "buttonPanelLayout":Landroid/view/ViewGroup;
    :cond_5
    const/4 v1, 0x1

    if-ne v12, v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 190
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mRegistered:Z

    .line 191
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->finish()V

    goto/16 :goto_2

    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x909001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Lcom/amigo/internal/app/AmigoAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 216
    .restart local v10    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v11    # "buttonPanelLayout":Landroid/view/ViewGroup;
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_2
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 25
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 355
    if-eqz p3, :cond_c

    .line 357
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v11, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 363
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_1

    .line 364
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 365
    .local v7, "cat":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v7    # "cat":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v22, "android.intent.category.DEFAULT"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v22, v0

    const/high16 v23, 0xfff0000

    and-int v7, v22, v23

    .line 371
    .local v7, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 372
    .local v9, "data":Landroid/net/Uri;
    const/high16 v22, 0x600000

    move/from16 v0, v22

    if-ne v7, v0, :cond_2

    .line 373
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 374
    .local v14, "mimeType":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 376
    :try_start_0
    invoke-virtual {v11, v14}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v14    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 387
    const/high16 v22, 0x600000

    move/from16 v0, v22

    if-ne v7, v0, :cond_3

    const-string v22, "file"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    const-string v22, "content"

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 390
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 395
    .local v5, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v5, :cond_5

    .line 396
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 397
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    .line 398
    .local v4, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v22

    if-ltz v22, :cond_4

    .line 399
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v18

    .line 400
    .local v18, "port":I
    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v23

    if-ltz v18, :cond_9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    :goto_2
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v18    # "port":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v16

    .line 407
    .local v16, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v16, :cond_7

    .line 408
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 409
    .local v17, "path":Ljava/lang/String;
    :cond_6
    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 410
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PatternMatcher;

    .line 411
    .local v15, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 412
    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v15}, Landroid/os/PatternMatcher;->getType()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 420
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v15    # "p":Landroid/os/PatternMatcher;
    .end local v16    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v17    # "path":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_b

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->access$100(Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    .line 422
    .local v3, "N":I
    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 423
    .local v20, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 424
    .local v6, "bestMatch":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_a

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->access$100(Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v0

    .line 426
    .local v19, "r":Landroid/content/pm/ResolveInfo;
    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v22, v20, v12

    .line 428
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v0, v6, :cond_8

    move-object/from16 v0, v19

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 424
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 377
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v12    # "i":I
    .end local v19    # "r":Landroid/content/pm/ResolveInfo;
    .end local v20    # "set":[Landroid/content/ComponentName;
    .restart local v14    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 378
    .local v10, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v22, "AmigoResolverActivity"

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 400
    .end local v10    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v14    # "mimeType":Ljava/lang/String;
    .restart local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v18    # "port":I
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 430
    .end local v4    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v5    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v18    # "port":I
    .restart local v3    # "N":I
    .restart local v6    # "bestMatch":I
    .restart local v12    # "i":I
    .restart local v20    # "set":[Landroid/content/ComponentName;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 434
    .end local v3    # "N":I
    .end local v6    # "bestMatch":I
    .end local v12    # "i":I
    .end local v20    # "set":[Landroid/content/ComponentName;
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_c

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "com.gionee.navil"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 436
    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.gionee.systemui.broadcast.default.launcher"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v21, "systemuiintent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "com.gionee.navil"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 438
    const-string v22, "visible"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    .end local v7    # "cat":I
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "data":Landroid/net/Uri;
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "i":I
    .end local v21    # "systemuiintent":Landroid/content/Intent;
    :cond_c
    if-eqz p2, :cond_d

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/amigo/internal/app/AmigoResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 453
    :cond_d
    return-void

    .line 440
    .restart local v7    # "cat":I
    .restart local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "data":Landroid/net/Uri;
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    .restart local v12    # "i":I
    .restart local v21    # "systemuiintent":Landroid/content/Intent;
    :cond_e
    const-string v22, "visible"

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 434
    .end local v21    # "systemuiintent":Landroid/content/Intent;
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 307
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 308
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    .line 309
    .local v1, "hasValidSelection":Z
    :goto_0
    iget-boolean v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLastSelected:I

    if-eq v3, v0, :cond_3

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysButton:Lamigo/widget/AmigoButton;

    invoke-virtual {v2, v1}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    .line 311
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mOnceButton:Lamigo/widget/AmigoButton;

    invoke-virtual {v2, v1}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    .line 312
    if-eqz v1, :cond_1

    .line 313
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 315
    :cond_1
    iput v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLastSelected:I

    .line 319
    :goto_1
    return-void

    .end local v1    # "hasValidSelection":Z
    :cond_2
    move v1, v2

    .line 308
    goto :goto_0

    .line 317
    .restart local v1    # "hasValidSelection":Z
    :cond_3
    invoke-virtual {p0, p3, v2}, Lcom/amigo/internal/app/AmigoResolverActivity;->startSelected(IZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->onRestart()V

    .line 262
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mRegistered:Z

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 267
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/amigo/internal/app/AmigoAlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 293
    iget-boolean v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 295
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 296
    .local v1, "enabled":Z
    :goto_0
    iput v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mLastSelected:I

    .line 297
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAlwaysButton:Lamigo/widget/AmigoButton;

    invoke-virtual {v2, v1}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    .line 298
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mOnceButton:Lamigo/widget/AmigoButton;

    invoke-virtual {v2, v1}, Lamigo/widget/AmigoButton;->setEnabled(Z)V

    .line 299
    if-eqz v1, :cond_0

    .line 300
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 303
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 295
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Lcom/amigo/internal/app/AmigoAlertActivity;->onStop()V

    .line 272
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mRegistered:Z

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->finish()V

    .line 288
    :cond_1
    return-void
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 223
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mGrid:Landroid/widget/GridView;

    iget v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 224
    return-void
.end method

.method sendAmigoIntent(IZ)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 341
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->access$100(Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->access$100(Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.gionee.intent.action.SET_DEFAULT_APP_FROM_FRAMEWORK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    # getter for: Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;
    invoke-static {v3}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->access$100(Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;

    .line 347
    .local v1, "dri":Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;
    iget-object v3, v1, Lcom/amigo/internal/app/AmigoResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const-string v3, "packagename"

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v3, "AmigoResolverActivity : sendAmigoIntent packagename = "

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0, v2}, Lcom/amigo/internal/app/AmigoResolverActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 456
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 459
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/amigo/internal/app/AmigoResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 460
    return-void
.end method

.method startSelected(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 328
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 329
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/amigo/internal/app/AmigoResolverActivity;->mAdapter:Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/amigo/internal/app/AmigoResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/amigo/internal/app/AmigoResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/amigo/internal/app/AmigoResolverActivity;->sendAmigoIntent(IZ)V

    .line 336
    invoke-virtual {p0}, Lcom/amigo/internal/app/AmigoResolverActivity;->finish()V

    .line 337
    return-void
.end method
