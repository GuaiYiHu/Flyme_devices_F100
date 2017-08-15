.class public Landroid/appwidget/AppWidgetManager;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# static fields
.field public static final ACTION_APPWIDGET_BIND:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_BIND"

.field public static final ACTION_APPWIDGET_CONFIGURE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_CONFIGURE"

.field public static final ACTION_APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final ACTION_APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final ACTION_APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final ACTION_APPWIDGET_HOST_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_HOST_RESTORED"

.field public static final ACTION_APPWIDGET_OPTIONS_CHANGED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final ACTION_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_PICK"

.field public static final ACTION_APPWIDGET_RESTORED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_RESTORED"

.field public static final ACTION_APPWIDGET_UPDATE:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE"

.field public static final ACTION_KEYGUARD_APPWIDGET_PICK:Ljava/lang/String; = "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

.field public static final EXTRA_APPWIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final EXTRA_APPWIDGET_IDS:Ljava/lang/String; = "appWidgetIds"

.field public static final EXTRA_APPWIDGET_OLD_IDS:Ljava/lang/String; = "appWidgetOldIds"

.field public static final EXTRA_APPWIDGET_OPTIONS:Ljava/lang/String; = "appWidgetOptions"

.field public static final EXTRA_APPWIDGET_PROVIDER:Ljava/lang/String; = "appWidgetProvider"

.field public static final EXTRA_APPWIDGET_PROVIDER_PROFILE:Ljava/lang/String; = "appWidgetProviderProfile"

.field public static final EXTRA_CATEGORY_FILTER:Ljava/lang/String; = "categoryFilter"

.field public static final EXTRA_CUSTOM_EXTRAS:Ljava/lang/String; = "customExtras"

.field public static final EXTRA_CUSTOM_INFO:Ljava/lang/String; = "customInfo"

.field public static final EXTRA_CUSTOM_SORT:Ljava/lang/String; = "customSort"

.field public static final EXTRA_HOST_ID:Ljava/lang/String; = "hostId"

.field public static final INVALID_APPWIDGET_ID:I = 0x0

.field public static final META_DATA_APPWIDGET_PROVIDER:Ljava/lang/String; = "android.appwidget.provider"

.field public static final OPTION_APPWIDGET_HOST_CATEGORY:Ljava/lang/String; = "appWidgetCategory"

.field public static final OPTION_APPWIDGET_MAX_HEIGHT:Ljava/lang/String; = "appWidgetMaxHeight"

.field public static final OPTION_APPWIDGET_MAX_WIDTH:Ljava/lang/String; = "appWidgetMaxWidth"

.field public static final OPTION_APPWIDGET_MIN_HEIGHT:Ljava/lang/String; = "appWidgetMinHeight"

.field public static final OPTION_APPWIDGET_MIN_WIDTH:Ljava/lang/String; = "appWidgetMinWidth"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/internal/appwidget/IAppWidgetService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/appwidget/IAppWidgetService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/appwidget/IAppWidgetService;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    .line 457
    iput-object p2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    .line 458
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 459
    return-void
.end method

.method private bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "appWidgetId"    # I
    .param p2, "profileId"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1090
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1094
    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/appwidget/IAppWidgetService;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1097
    :catch_0
    move-exception v6

    .line 1098
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "system server dead?"

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private convertSizesToPixels(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1104
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 1106
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 1108
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 1110
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 1112
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    sput-object p0, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    .line 445
    const-string v0, "appwidget"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method


# virtual methods
.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 840
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 844
    :goto_0
    return-void

    .line 843
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 862
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 882
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 883
    const/4 v0, 0x0

    .line 885
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 906
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 907
    const/4 v0, 0x0

    .line 909
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "appWidgetId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 930
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x0

    .line 933
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "connection"    # Landroid/os/IBinder;

    .prologue
    .line 1034
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1038
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetService;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 1077
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 1078
    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 1081
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetIds(Landroid/content/ComponentName;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 4
    .param p1, "appWidgetId"    # I

    .prologue
    .line 811
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v2, :cond_1

    .line 812
    const/4 v1, 0x0

    .line 820
    :cond_0
    :goto_0
    return-object v1

    .line 815
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v3, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 816
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_0

    .line 818
    invoke-direct {p0, v1}, Landroid/appwidget/AppWidgetManager;->convertSizesToPixels(Landroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 822
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "system server dead?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAppWidgetOptions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 527
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 528
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 531
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncryptApp()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1115
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1117
    .local v4, "encryptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    sget-object v9, Landroid/appwidget/AppWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1118
    .local v1, "contentResoler":Landroid/content/ContentResolver;
    const-string v9, "app_enflag_gionee"

    invoke-static {v1, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    .local v3, "ecryptFlag":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1130
    .end local v1    # "contentResoler":Landroid/content/ContentResolver;
    .end local v3    # "ecryptFlag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 1123
    .restart local v1    # "contentResoler":Landroid/content/ContentResolver;
    .restart local v3    # "ecryptFlag":Ljava/lang/String;
    :cond_1
    const-string v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1124
    .local v8, "sa":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v7, v0, v5

    .line 1125
    .local v7, "pkName":Ljava/lang/String;
    invoke-interface {v4, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1127
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "contentResoler":Landroid/content/ContentResolver;
    .end local v3    # "ecryptFlag":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "pkName":Ljava/lang/String;
    .end local v8    # "sa":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1128
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "guofeng"

    const-string v10, "\u83b7\u53d6\u52a0\u5bc6\u4fe1\u606f\u5931\u8d25\uff01\uff01\uff01"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 713
    iget-object v6, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v6, :cond_0

    .line 714
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 736
    :goto_0
    return-object v5

    .line 717
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 720
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v1, "appWidgetProviderInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetManager;->getEncryptApp()Ljava/util/Map;

    move-result-object v3

    .line 722
    .local v3, "enMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    .line 723
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 724
    .local v0, "appWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_1

    .line 725
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 726
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 732
    .end local v0    # "appWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1    # "appWidgetProviderInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v3    # "enMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 733
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "AppWidgetManage"

    const-string v7, "getInstalledProviders err \u5904\u7406\u52a0\u5bc6\u6d88\u606f\u51fa\u9519\uff01\uff01"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "appWidgetProviderInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .restart local v3    # "enMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v5, v1

    goto :goto_0
.end method

.method public getInstalledProviders(I)Ljava/util/List;
    .locals 1
    .param p1, "categoryFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 754
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 756
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;
    .locals 6
    .param p1, "categoryFilter"    # I
    .param p2, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v4, :cond_1

    .line 780
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 797
    :cond_0
    :goto_0
    return-object v3

    .line 783
    :cond_1
    if-nez p2, :cond_2

    .line 784
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    .line 788
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v4, p1, v5}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProvidersForProfile(II)Ljava/util/List;

    move-result-object v3

    .line 790
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v3, :cond_3

    .line 791
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 793
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 795
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-direct {p0, v2}, Landroid/appwidget/AppWidgetManager;->convertSizesToPixels(Landroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 799
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "system server dead?"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "profile"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 968
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 969
    const/4 v1, 0x0

    .line 972
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 947
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 948
    const/4 v1, 0x0

    .line 951
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(II)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 682
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 685
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    goto :goto_0
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 3
    .param p1, "appWidgetIds"    # [I
    .param p2, "viewId"    # I

    .prologue
    .line 663
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 672
    :goto_0
    return-void

    .line 667
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 624
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 627
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 589
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 593
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "permission"    # Z

    .prologue
    .line 1008
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 1012
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Z

    .prologue
    .line 990
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 994
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1058
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1062
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/appwidget/IAppWidgetService;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 558
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 561
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 644
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 653
    :goto_0
    return-void

    .line 648
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidget([ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "appWidgetIds"    # [I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 481
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 485
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAppWidgetOptions(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 504
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    if-nez v1, :cond_0

    .line 513
    :goto_0
    return-void

    .line 508
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetManager;->mService:Lcom/android/internal/appwidget/IAppWidgetService;

    iget-object v2, p0, Landroid/appwidget/AppWidgetManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system server dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
