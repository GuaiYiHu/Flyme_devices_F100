.class public Lcom/android/server/pm/AmigoPermission;
.super Ljava/lang/Object;
.source "AmigoPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AmigoPermission$PermObserver;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_PERM_MAP:Ljava/lang/String; = "com.gionee.action.UPDATE_PERM_DB"

.field public static final ALL_TRUST:Ljava/lang/String; = "1"

.field private static final DATA_APP_PATH:Ljava/lang/String; = "data/app"

.field public static final DEFULT_LEVEL:Ljava/lang/String; = "-1"

.field static final DELETE_GNPERMISSIN_DB:I = 0x15

.field static final GN_PERM_URI:Landroid/net/Uri;

.field static final GN_TRUST_URI:Landroid/net/Uri;

.field private static IS_SYSTEMAPP:I = 0x0

.field public static final NONE_TRUST:Ljava/lang/String; = "-1"

.field private static final OPERATOR_APP_PATH:Ljava/lang/String; = "system/vendor/operator/app"

.field public static final PARTIAL_TRUST:Ljava/lang/String; = "0"

.field private static PKG_TAG:Ljava/lang/String; = null

.field static final POST_INSTALL:I = 0x9

.field private static final PRIV_APP_PATH:Ljava/lang/String; = "system/priv-app"

.field private static final SYSTEM_APP_PATH:Ljava/lang/String; = "system/app"

.field static final TAG:Ljava/lang/String; = "AmigoPermission"

.field static final UPDATE_GNPERMISSIN_DB:I = 0x14

.field static final UPDATE_PERM_MAP_AFTER_PKG_ADDED:I = 0x11

.field private static VERSION_TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/pm/AmigoPermission;

.field public static mTrustPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPakageNameFile:Landroid/util/AtomicFile;

.field private mPakagenameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermObserver:Lcom/android/server/pm/AmigoPermission$PermObserver;

.field private mPermsDeniedTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPermsGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgNmaeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRomVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "content://com.amigo.settings.PermissionProvider/whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/AmigoPermission;->GN_TRUST_URI:Landroid/net/Uri;

    .line 69
    const-string v0, "pkg"

    sput-object v0, Lcom/android/server/pm/AmigoPermission;->PKG_TAG:Ljava/lang/String;

    .line 70
    const-string v0, "version"

    sput-object v0, Lcom/android/server/pm/AmigoPermission;->VERSION_TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/android/server/pm/AmigoPermission;->IS_SYSTEMAPP:I

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    .line 80
    const-string v0, "content://com.amigo.settings.PermissionProvider/permissions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    .line 680
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/AmigoPermission;->mTrustPackage:Ljava/util/HashSet;

    .line 682
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mTrustPackage:Ljava/util/HashSet;

    const-string v1, "com.cttl.testService"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mTrustPackage:Ljava/util/HashSet;

    const-string v1, "com.cttl.usbtest"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 684
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPkgNmaeMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPakagenameList:Ljava/util/List;

    .line 260
    return-void
.end method

.method private Amigo_readSystemAppInfoPkgname()Z
    .locals 9

    .prologue
    .line 711
    const/4 v4, 0x0

    .line 712
    .local v4, "state":Z
    iget-object v7, p0, Lcom/android/server/pm/AmigoPermission;->mPkgNmaeMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 713
    const/4 v1, 0x0

    .line 715
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/AmigoPermission;->mPakageNameFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 716
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 717
    .local v2, "in":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 719
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 720
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 721
    .local v5, "tag":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 722
    sget-object v7, Lcom/android/server/pm/AmigoPermission;->PKG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 723
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/AmigoPermission;->mPkgNmaeMap:Ljava/util/HashMap;

    sget v8, Lcom/android/server/pm/AmigoPermission;->IS_SYSTEMAPP:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/android/server/pm/AmigoPermission;->VERSION_TAG:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 727
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/AmigoPermission;->mRomVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 734
    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v4, 0x0

    .line 736
    :try_start_1
    const-string v7, "AmigoPermission"

    const-string v8, "Amigo_readSystemAppInfoPkgname"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 746
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return v4

    .line 731
    .restart local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/pm/AmigoPermission;->mPkgNmaeMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-lez v7, :cond_3

    .line 732
    const/4 v4, 0x1

    .line 744
    :cond_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 737
    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_1
    move-exception v0

    .line 738
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 739
    :try_start_3
    const-string v7, "AmigoPermission"

    const-string v8, "Amigo_readSystemAppInfoPkgname"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 744
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 740
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 741
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v4, 0x0

    .line 742
    :try_start_4
    const-string v7, "AmigoPermission"

    const-string v8, "Amigo_readSystemAppInfoPkgname"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 744
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v7

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
.end method

.method private Amigo_writeSystemAppInfoPkgname(Ljava/util/List;)V
    .locals 6
    .param p1, "pkgNameList"    # Ljava/util/List;

    .prologue
    .line 760
    const/4 v1, 0x0

    .line 762
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPakageNameFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 763
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 764
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 765
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 766
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 767
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/pm/AmigoPermission;->PKG_TAG:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 769
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/pm/AmigoPermission;->PKG_TAG:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_0
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/pm/AmigoPermission;->VERSION_TAG:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getRomVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 773
    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/pm/AmigoPermission;->VERSION_TAG:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 775
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPakageNameFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .end local v2    # "i":I
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 778
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPakageNameFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 780
    :cond_1
    const-string v4, "AmigoPermission"

    const-string v5, "Amigo_writeSystemAppInfoPkgname"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/pm/AmigoPermission;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/AmigoPermission;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/AmigoPermission;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/pm/AmigoPermission;->Amigo_writeSystemAppInfoPkgname(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/AmigoPermission;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/AmigoPermission;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/AmigoPermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->gnInitPermissionsMap()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/AmigoPermission;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->Amigo_readSystemAppInfoPkgname()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/AmigoPermission;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mRomVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/AmigoPermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->rmSipperDatabase()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/AmigoPermission;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->getPreInstallAppInfo()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/AmigoPermission;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/AmigoPermission;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPakagenameList:Ljava/util/List;

    return-object v0
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 7
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 571
    const-string v4, "AmigoPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not exists "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 585
    :goto_0
    return v2

    .line 574
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 577
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/pm/AmigoPermission;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 578
    .local v2, "success":Z
    if-nez v2, :cond_1

    move v2, v3

    .line 579
    goto :goto_0

    .line 576
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 583
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 584
    .restart local v2    # "success":Z
    const-string v3, "AmigoPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteTrustByPkgName(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/AmigoPermission;->GN_TRUST_URI:Landroid/net/Uri;

    const-string v2, " packagename = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    return-void
.end method

.method public static destory()V
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    iget-object v0, v0, Lcom/android/server/pm/AmigoPermission;->mPermObserver:Lcom/android/server/pm/AmigoPermission$PermObserver;

    invoke-virtual {v0}, Lcom/android/server/pm/AmigoPermission$PermObserver;->unObserve()V

    .line 125
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    iget-object v0, v0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 126
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    iget-object v0, v0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 127
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    iget-object v0, v0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    iget-object v1, v1, Lcom/android/server/pm/AmigoPermission;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method private extractPerms([Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .param p1, "strList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 540
    :cond_0
    return-void

    .line 531
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 533
    .local v3, "permName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 534
    .local v4, "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_2

    .line 535
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v4    # "tmpPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private fillPkgNmaeMapAndList(Ljava/io/File;)V
    .locals 5
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 688
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 689
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 691
    .local v0, "appinfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/AmigoPermission;->mTrustPackage:Ljava/util/HashSet;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mPkgNmaeMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mPakagenameList:Ljava/util/List;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_0
    return-void
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 6
    .param p1, "sharedUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    iget-object v5, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "sharedPkgList":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 511
    :cond_0
    return-void

    .line 508
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 509
    .local v3, "sharedPkg":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/AmigoPermission;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getInstalledAppTrustCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 456
    const/4 v6, 0x0

    .line 457
    .local v6, "count":I
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/AmigoPermission;->GN_TRUST_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "status"

    aput-object v3, v2, v5

    const-string v3, " packagename = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 459
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 461
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_0
    return v6
.end method

.method public static getInstance()Lcom/android/server/pm/AmigoPermission;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    .line 115
    :goto_0
    return-object v0

    .line 113
    :cond_0
    new-instance v0, Lcom/android/server/pm/AmigoPermission;

    invoke-direct {v0}, Lcom/android/server/pm/AmigoPermission;-><init>()V

    sput-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    .line 115
    sget-object v0, Lcom/android/server/pm/AmigoPermission;->mInstance:Lcom/android/server/pm/AmigoPermission;

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p2, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 522
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/AmigoPermission;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    .line 525
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AmigoPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'nt retrieve permissions for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPkgNameOfPreInstallApp(Ljava/io/File;Z)V
    .locals 7
    .param p1, "f"    # Ljava/io/File;
    .param p2, "isSystemApp"    # Z

    .prologue
    const/4 v6, 0x2

    .line 648
    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "filename":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 653
    const-string v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/pm/AmigoPermission;->fillPkgNmaeMapAndList(Ljava/io/File;)V

    goto :goto_0

    .line 658
    :cond_2
    const-string v4, "base.apk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-le v4, v6, :cond_3

    .line 660
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 661
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 662
    .local v0, "appinfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 663
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/pm/AmigoPermission;->updateGnPermissinDB(Ljava/lang/String;)V

    .line 664
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/pm/AmigoPermission;->insertTrustDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    .end local v0    # "appinfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AmigoPermission"

    const-string v5, "InertDB Failed!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, ".apk"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v6, :cond_0

    .line 674
    invoke-direct {p0, p1}, Lcom/android/server/pm/AmigoPermission;->fillPkgNmaeMapAndList(Ljava/io/File;)V

    goto :goto_0
.end method

.method private getPreInstallAppInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 611
    new-instance v2, Ljava/io/File;

    const-string v3, "system/app"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v2, "systemAppDir":Ljava/io/File;
    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/AmigoPermission;->listPreInstallAppFile(Ljava/io/File;Z)V

    .line 618
    new-instance v1, Ljava/io/File;

    const-string v3, "system/priv-app"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .local v1, "privAppDir":Ljava/io/File;
    invoke-direct {p0, v1, v4}, Lcom/android/server/pm/AmigoPermission;->listPreInstallAppFile(Ljava/io/File;Z)V

    .line 621
    new-instance v0, Ljava/io/File;

    const-string v3, "system/vendor/operator/app"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    .local v0, "operatorAppDir":Ljava/io/File;
    invoke-direct {p0, v0, v4}, Lcom/android/server/pm/AmigoPermission;->listPreInstallAppFile(Ljava/io/File;Z)V

    .line 624
    return-void
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 749
    const-string v4, ""

    .line 751
    .local v4, "version":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 752
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 753
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.gn.gnznvernumber"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 754
    :catch_0
    move-exception v2

    .line 755
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private gnInitPermissionsMap()V
    .locals 10

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 288
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "permission"

    aput-object v0, v2, v1

    const-string v0, "packagename"

    aput-object v0, v2, v3

    const-string v0, "status"

    aput-object v0, v2, v4

    const-string v0, "permissiongroup"

    aput-object v0, v2, v5

    .line 290
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 291
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "perm_ctrl"

    const-string v1, "pms gnInitPermissionsMap!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-eqz v6, :cond_0

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 294
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "keys":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 297
    .local v9, "value":I
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "permGrup":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 302
    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 308
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "keys":Ljava/lang/String;
    .end local v8    # "permGrup":Ljava/lang/String;
    .end local v9    # "value":I
    :catch_0
    move-exception v0

    .line 310
    :cond_0
    :goto_1
    return-void

    .line 300
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "keys":Ljava/lang/String;
    .restart local v8    # "permGrup":Ljava/lang/String;
    .restart local v9    # "value":I
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 303
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 306
    .end local v7    # "keys":Ljava/lang/String;
    .end local v8    # "permGrup":Ljava/lang/String;
    .end local v9    # "value":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method

.method private initInteral()V
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 264
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 265
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.gionee.action.UPDATE_PERM_DB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    new-instance v1, Lcom/android/server/pm/AmigoPermission$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AmigoPermission$1;-><init>(Lcom/android/server/pm/AmigoPermission;)V

    iput-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    new-instance v1, Lcom/android/server/pm/AmigoPermission$PermObserver;

    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/AmigoPermission$PermObserver;-><init>(Lcom/android/server/pm/AmigoPermission;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermObserver:Lcom/android/server/pm/AmigoPermission$PermObserver;

    .line 281
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermObserver:Lcom/android/server/pm/AmigoPermission$PermObserver;

    invoke-virtual {v1}, Lcom/android/server/pm/AmigoPermission$PermObserver;->observe()V

    .line 283
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->gnInitPermissionsMap()V

    .line 285
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private insertMmsPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grpName"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v5, "SEND_SMS"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "INTERNET"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    :cond_0
    const-string v5, "android.permission.SEND_SMS_MMS"

    invoke-direct {p0, p1, v5}, Lcom/android/server/pm/AmigoPermission;->isInsertedPermStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 501
    :goto_0
    return-void

    .line 476
    :cond_1
    move-object v2, p2

    .line 477
    .local v2, "mmsPermission":Ljava/lang/String;
    const-string v5, "_SMS"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_MMS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    :cond_2
    const-string v5, "INTERNET"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 481
    const-string v2, "android.permission.SEND_SMS_MMS"

    .line 484
    :cond_3
    const-string v5, "1"

    const-string v6, "persist.sys.permission.level"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    .line 485
    .local v3, "status":I
    :goto_1
    move v1, v3

    .line 486
    .local v1, "level":I
    const-string v5, "0"

    const-string v6, "persist.sys.permission.level"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    invoke-virtual {v5, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 488
    const/4 v1, 0x1

    .line 492
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "packagename"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v5, "permission"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v5, "permissiongroup"

    invoke-virtual {v0, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v5, "status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    iget-object v5, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v4

    .line 499
    .local v4, "unused":Landroid/database/SQLException;
    const-string v5, "AmigoPermission"

    const-string v6, "Insert PermDb failed "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    .end local v1    # "level":I
    .end local v3    # "status":I
    .end local v4    # "unused":Landroid/database/SQLException;
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private insertTrustDB(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/android/server/pm/AmigoPermission;->getInstalledAppTrustCount(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 454
    :goto_0
    return-void

    .line 440
    :cond_0
    :try_start_0
    const-string v4, "1"

    const-string v5, "persist.sys.permission.level"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 441
    .local v3, "status":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 443
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "packagename"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    sget-object v4, Lcom/android/server/pm/AmigoPermission;->GN_TRUST_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 446
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "status":I
    :catch_0
    move-exception v2

    .line 447
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 448
    :catch_1
    move-exception v2

    .line 449
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private isInsertedPermStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 543
    const/4 v7, 0x0

    .line 544
    .local v7, "status":Z
    const/4 v6, 0x0

    .line 546
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const-string v3, "  packagename = ? and permission =? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 548
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 549
    const/4 v7, 0x1

    .line 552
    :cond_0
    if-eqz v6, :cond_1

    .line 553
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    const/4 v6, 0x0

    .line 557
    :cond_1
    return v7

    .line 552
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 553
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 554
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private listPreInstallAppFile(Ljava/io/File;Z)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .param p2, "isSystemApp"    # Z

    .prologue
    .line 627
    if-nez p1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 632
    .local v0, "fileArray":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 634
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/AmigoPermission;->listPreInstallAppFile(Ljava/io/File;Z)V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    .end local v0    # "fileArray":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AmigoPermission;->getPkgNameOfPreInstallApp(Ljava/io/File;Z)V

    goto :goto_0
.end method

.method private rmSipperDatabase()V
    .locals 3

    .prologue
    .line 563
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.appsipper.demo/databases"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/pm/AmigoPermission;->deleteDir(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateGnPermissinDB(Ljava/lang/String;)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 345
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x1000

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 352
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 353
    .local v14, "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 355
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/android/server/pm/AmigoPermission;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 358
    :cond_0
    const-string v17, "1"

    const-string v18, "persist.sys.permission.level"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v16, 0x1

    .line 359
    .local v16, "status":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 369
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v12, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PermissionInfo;

    .line 371
    .local v13, "pInfo":Landroid/content/pm/PermissionInfo;
    sget-object v17, Landroid/util/AmigoCheckPermission;->mCheckPermissions:Ljava/util/HashSet;

    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 375
    move/from16 v9, v16

    .line 376
    .local v9, "level":I
    const-string v17, "0"

    const-string v18, "persist.sys.permission.level"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    sget-object v17, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 378
    const/4 v9, 0x1

    .line 381
    :cond_2
    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    const-string v6, "default"

    .line 382
    .local v6, "grpName":Ljava/lang/String;
    :goto_2
    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/AmigoPermission;->isInsertedPermStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 383
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 384
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v17, "packagename"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v17, "permission"

    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v17, "permissiongroup"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v17, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    sget-object v17, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v17, "AmigoPermission"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "---->add permission "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to GnPermissinDB for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "_SMS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    iget-object v0, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "INTERNET"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 392
    :cond_3
    iget-object v11, v13, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 393
    .local v11, "mmsPermission":Ljava/lang/String;
    const-string v17, "_SMS"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 394
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_MMS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 396
    :cond_4
    const-string v17, "INTERNET"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 397
    const-string v11, "android.permission.SEND_SMS_MMS"

    .line 400
    :cond_5
    const-string v17, "0"

    const-string v18, "persist.sys.permission.level"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    sget-object v17, Landroid/util/AmigoCheckPermission;->mImportantPermissions:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 402
    const/4 v9, 0x1

    .line 405
    :cond_6
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v10, "mmsCv":Landroid/content/ContentValues;
    const-string v17, "packagename"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v17, "permission"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v17, "permissiongroup"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v17, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    sget-object v17, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 347
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v6    # "grpName":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "level":I
    .end local v10    # "mmsCv":Landroid/content/ContentValues;
    .end local v11    # "mmsPermission":Ljava/lang/String;
    .end local v12    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13    # "pInfo":Landroid/content/pm/PermissionInfo;
    .end local v14    # "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "status":I
    :catch_0
    move-exception v5

    .line 431
    :goto_3
    return-void

    .line 358
    .restart local v14    # "permSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/pm/PermissionInfo;>;"
    .restart local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 381
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "level":I
    .restart local v12    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13    # "pInfo":Landroid/content/pm/PermissionInfo;
    .restart local v16    # "status":I
    :cond_8
    iget-object v6, v13, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    goto/16 :goto_2

    .line 417
    .end local v9    # "level":I
    .end local v13    # "pInfo":Landroid/content/pm/PermissionInfo;
    :cond_9
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_a

    .line 418
    const-string v17, "com.amigo.settings.PermissionProvider"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 419
    const-string v17, "AmigoPermission"

    const-string v18, "write PermissionProvider finished!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :cond_a
    :goto_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 429
    .local v8, "intent":Landroid/content/Intent;
    const-string v17, "com.gionee.action.UPDATE_PERM_DB"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 421
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v5

    .line 422
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "AmigoPermission"

    const-string v18, "Insert PermDb failed "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public CheckPermDenied(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "denied":Z
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->initInteral()V

    .line 133
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 142
    .end local v0    # "denied":Z
    .local v1, "denied":I
    :goto_0
    return v1

    .line 136
    .end local v1    # "denied":I
    .restart local v0    # "denied":Z
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "temp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 138
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_2

    move v0, v4

    .line 141
    :cond_1
    :goto_1
    monitor-exit v5

    move v1, v0

    .line 142
    .restart local v1    # "denied":I
    goto :goto_0

    .line 139
    .end local v1    # "denied":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 141
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public amigoGetPermDeniedTime(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "times":I
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v1

    .line 184
    .end local v1    # "times":I
    .local v2, "times":I
    :goto_0
    return v2

    .line 178
    .end local v2    # "times":I
    .restart local v1    # "times":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "temp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 183
    :cond_2
    monitor-exit v4

    move v2, v1

    .line 184
    .end local v1    # "times":I
    .restart local v2    # "times":I
    goto :goto_0

    .line 183
    .end local v2    # "times":I
    .restart local v1    # "times":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public amigoGetPermStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, -0x1

    .line 147
    .local v0, "status":I
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->initInteral()V

    .line 148
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 157
    .end local v0    # "status":I
    .local v1, "status":I
    :goto_0
    return v1

    .line 151
    .end local v1    # "status":I
    .restart local v0    # "status":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "temp":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    :cond_1
    monitor-exit v4

    move v1, v0

    .line 157
    .end local v0    # "status":I
    .restart local v1    # "status":I
    goto :goto_0

    .line 156
    .end local v1    # "status":I
    .restart local v0    # "status":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public amigoGetPkgPermGrp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permName"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "permGrup":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->initInteral()V

    .line 208
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 217
    .end local v1    # "permGrup":Ljava/lang/String;
    .local v2, "permGrup":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 211
    .end local v2    # "permGrup":Ljava/lang/String;
    .restart local v1    # "permGrup":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "temp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 213
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    iget-object v4, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 216
    :cond_1
    monitor-exit v5

    move-object v2, v1

    .line 217
    .end local v1    # "permGrup":Ljava/lang/String;
    .restart local v2    # "permGrup":Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v2    # "permGrup":Ljava/lang/String;
    .restart local v1    # "permGrup":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public amigoIsContainPermDenied(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 199
    :cond_0
    const/4 v1, 0x0

    .line 202
    :goto_0
    return v1

    .line 201
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "temp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public amigoSetPermDeniedTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "times"    # I

    .prologue
    .line 188
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "temp":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermsDeniedTimeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public amigoUpdatePermStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "temp":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doHandleMessageCheckPermission(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 256
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mPermsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 224
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mPermsGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 225
    invoke-direct {p0}, Lcom/android/server/pm/AmigoPermission;->gnInitPermissionsMap()V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/pm/AmigoPermission;->mPkgNmaeMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/server/pm/AmigoPermission;->initPermissionProp()V

    .line 235
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/AmigoPermission;->updateGnPermissinDB(Ljava/lang/String;)V

    .line 236
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/AmigoPermission;->insertTrustDB(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_3
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "packageName":Ljava/lang/String;
    const-string v2, "AmigoPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove PermDb for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/pm/AmigoPermission;->GN_PERM_URI:Landroid/net/Uri;

    const-string v4, " packagename = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/pm/AmigoPermission;->GN_TRUST_URI:Landroid/net/Uri;

    const-string v4, " packagename = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v0    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 249
    .local v1, "unused":Ljava/lang/Exception;
    const-string v2, "AmigoPermission"

    const-string v3, "remove PermDb failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/pm/AmigoPermission;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/server/pm/AmigoPermission;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method public initPermissionProp()V
    .locals 3

    .prologue
    .line 785
    const-string v0, ""

    const-string v1, "persist.sys.permission.level"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, "persist.sys.permission.level"

    const-string v1, "ro.gn.permission.trust.level"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :cond_0
    return-void
.end method

.method public isSystemApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 702
    if-eqz p1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/server/pm/AmigoPermission;->mPkgNmaeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readSystemAppInfo()V
    .locals 5

    .prologue
    .line 589
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/"

    const-string v4, "pakagename.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/pm/AmigoPermission;->mPakageNameFile:Landroid/util/AtomicFile;

    .line 590
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 591
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/pm/AmigoPermission$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AmigoPermission$2;-><init>(Lcom/android/server/pm/AmigoPermission;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method
