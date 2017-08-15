.class public final Landroid/appwidget/AmigoAppWidgetContext;
.super Ljava/lang/Object;
.source "AmigoAppWidgetContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoAppWidgetContext"

.field private static m3DWidgetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    .line 55
    sget-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.mediatek.weather3dwidget"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.mediatek.videofavorites"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.coolwind.weather"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.gionee.fanfan"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.gionee.navil.shortcuttools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.gionee.widget.clock3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensurePackageDexOpt(Ljava/lang/String;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v2, "user"

    const-string v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 128
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->enforceDexOpt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "AmigoAppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmigoAppWidgetContext performDexOpt done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AmigoAppWidgetContext"

    const-string v3, "plugin performDexOpt exception occur"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v2, "AmigoAppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmigoAppWidgetContext performDexOpt not work, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static newWidgetContext(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "application"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "hasUsedCustomerView"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x4

    .line 83
    .local v0, "contextPermission":I
    const-string v2, "AmigoAppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v2, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "AmigoAppWidgetContext"

    const-string v3, "context permission changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x3

    .line 88
    if-eqz p2, :cond_0

    .line 89
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/appwidget/AmigoAppWidgetContext;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "theirContext":Landroid/content/Context;
    return-object v1
.end method

.method public static newWidgetContextAsUser(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hasUsedCustomerView"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x4

    .line 104
    .local v0, "contextPermission":I
    const-string v2, "AmigoAppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v2, Landroid/appwidget/AmigoAppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const-string v2, "AmigoAppWidgetContext"

    const-string v3, "context permission changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x3

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-static {p1}, Landroid/appwidget/AmigoAppWidgetContext;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 117
    .local v1, "theirContext":Landroid/content/Context;
    return-object v1

    .line 113
    .end local v1    # "theirContext":Landroid/content/Context;
    :cond_1
    const-string v2, "AmigoAppWidgetContext"

    const-string v3, "context permission not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
