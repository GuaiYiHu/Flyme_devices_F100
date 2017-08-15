.class public Lcom/gionee/di/DualInsManager;
.super Ljava/lang/Object;


# static fields
.field static a:Z = false

.field static final b:Ljava/lang/String; = "DualInstance"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gionee/di/DualInsManager;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;Z)Landroid/content/pm/ActivityInfo;
    .locals 2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/gionee/di/DualInsManager;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/gionee/di/DualInsManager;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object p1, v0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ComponentInfo;)Z
    .locals 2

    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->isClone:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTargetEuid(Landroid/content/ComponentName;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;Z)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    add-int/lit16 v0, v1, 0x2710

    :goto_1
    return v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static resolveActivityInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "android.intent.category.CLONED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "android.intent.category.CLONED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v3, 0x10400

    invoke-interface {v0, p1, p2, v3, p5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "DualInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve intent= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " U="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0, v0, v2}, Lcom/gionee/di/DualInsManager;->a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;Z)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_1
.end method

.method public static skipBroadcast(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;Z)Z
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addReceiverForApp(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-boolean v1, Lcom/gionee/di/DualInsManager;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "DualInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add receiver for cloneAppInfo ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v5}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Lcom/gionee/di/DualInsManager;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iput-object v5, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-boolean v1, Lcom/gionee/di/DualInsManager;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "DualInstance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add Receiver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    return-void
.end method

.method public checkCprAppInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/gionee/di/DualInsManager;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/gionee/di/DualInsManager;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkCprComponent(Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/gionee/di/DualInsManager;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkCprName(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/gionee/di/DualInsManager;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    goto :goto_0
.end method

.method public checkProc(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/gionee/di/DualInsManager;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    goto :goto_0
.end method

.method public getEffectiveUid(Landroid/content/pm/ApplicationInfo;)I
    .locals 1

    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    add-int/lit16 v0, v0, 0x2710

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_0
.end method

.method public getProviderInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProviderInfo;)Landroid/content/pm/ProviderInfo;
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/gionee/di/DualInsManager;->a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ComponentInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, p3}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    invoke-static {p2}, Lcom/gionee/di/DualInsManager;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object p3, v0

    :cond_0
    return-object p3
.end method

.method public markIntent(Landroid/content/pm/ApplicationInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/gionee/di/DualInsManager;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "DualInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark clone intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for app ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.intent.category.CLONED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object p2
.end method
