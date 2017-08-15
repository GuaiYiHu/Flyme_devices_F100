.class public final Landroid/app/AmigoActivityManager;
.super Ljava/lang/Object;
.source "AmigoActivityManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmigoActivtyManager"


# instance fields
.field private final mService:Landroid/app/IAmigoActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "amigoactivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAmigoActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAmigoActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AmigoActivityManager;->mService:Landroid/app/IAmigoActivityManager;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "amigoactivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAmigoActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAmigoActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AmigoActivityManager;->mService:Landroid/app/IAmigoActivityManager;

    .line 43
    return-void
.end method


# virtual methods
.method public amigoCheckPermmison(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "checkValue":I
    :try_start_0
    iget-object v1, p0, Landroid/app/AmigoActivityManager;->mService:Landroid/app/IAmigoActivityManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAmigoActivityManager;->amigoCheckPermmison(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setPackagePermEnable(Ljava/lang/String;)V
    .locals 1
    .param p1, "pk"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/app/AmigoActivityManager;->mService:Landroid/app/IAmigoActivityManager;

    invoke-interface {v0, p1}, Landroid/app/IAmigoActivityManager;->setPackagePermEnable(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method
