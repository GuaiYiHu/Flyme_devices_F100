.class public Lcom/gionee/di/DualInsActiveServices;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "DIAS"

.field static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gionee/di/DualInsActiveServices;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ServiceInfo;Z)Landroid/content/pm/ServiceInfo;
    .locals 2

    if-eqz p3, :cond_1

    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/gionee/di/DualInsManager;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p2}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/gionee/di/DualInsManager;->b(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object p2, v0

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


# virtual methods
.method public checkServiceComp(Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/gionee/di/DualInsActiveServices;->a(Landroid/content/pm/ApplicationInfo;)Z

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

.method public checkServiceInfo(Landroid/content/pm/ServiceInfo;)Z
    .locals 1

    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->isClone:Z

    return v0
.end method

.method public cloneCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/Intent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "android.intent.category.CLONED"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    sget-boolean v2, Lcom/gionee/di/DualInsActiveServices;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "DIAS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "explict clone category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callerApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v2, p1, Landroid/content/pm/ApplicationInfo;->isClone:Z

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public resolveService(Landroid/content/pm/ApplicationInfo;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "android.intent.category.CLONED"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "android.intent.category.CLONED"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v3, 0x400

    invoke-interface {v1, p2, p3, v3, p4}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_2

    :try_start_1
    const-string v2, "DIAS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " U="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1, v2}, Lcom/gionee/di/DualInsActiveServices;->a(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ServiceInfo;Z)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
