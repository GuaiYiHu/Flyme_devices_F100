.class public Landroid/util/AmigoCheckPermission;
.super Ljava/lang/Object;
.source "AmigoCheckPermission.java"


# static fields
.field public static mCheckPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mImportantPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSepcialPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mSpecialPerHs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
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
    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    .line 10
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.SEND_SMS_MMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_SMS_MMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.WRITE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.WRITE_SMS_MMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "gn.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.CHANGE_WIFI_STATE/amigo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.NFC"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/AmigoCheckPermission;->mSpecialPerHs:Ljava/util/HashSet;

    .line 40
    sget-object v0, Landroid/util/AmigoCheckPermission;->mSpecialPerHs:Ljava/util/HashSet;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Landroid/util/AmigoCheckPermission;->mSpecialPerHs:Ljava/util/HashSet;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    .line 46
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_SMS_MMS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_CONTACTS_CALLS"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/AmigoCheckPermission;->mSepcialPackage:Ljava/util/HashSet;

    .line 60
    sget-object v0, Landroid/util/AmigoCheckPermission;->mSepcialPackage:Ljava/util/HashSet;

    const-string v1, "com.gionee.gsp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Landroid/util/AmigoCheckPermission;->mSepcialPackage:Ljava/util/HashSet;

    const-string v1, "com.gionee.wallet"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGnAppPermCtrlSupport()Z
    .locals 3

    .prologue
    .line 68
    const-string v1, "persist.sys.cts.test"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    .local v0, "ctsTestRunning":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
