.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final EXTRA_VALUE_NEW_SIM:I = 0x1

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final EXTRA_VALUE_REMOVE_SIM:I = 0x2

.field public static final EXTRA_VALUE_REPOSITION_SIM:I = 0x3

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_NEW_SIM_STATUS:Ljava/lang/String; = "newSIMStatus"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final LTE_DC_PHONE_ID:I

.field public static final LTE_DC_PHONE_ID_1:I = 0xa

.field public static final LTE_DC_PHONE_ID_2:I = 0xb

.field public static final LTE_DC_SUB_ID:I = -0x3e7

.field public static final LTE_DC_SUB_ID_1:I = -0xa

.field public static final LTE_DC_SUB_ID_2:I = -0xb

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NUMBER:Ljava/lang/String; = "number"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field private static final VDBG:Z


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Landroid/telephony/SubscriptionManager;->LTE_DC_PHONE_ID:I

    .line 137
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 384
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getDefaultDataSubId()I
    .locals 3

    .prologue
    .line 1113
    const/4 v1, -0x1

    .line 1116
    .local v1, "subId":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1117
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1118
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1125
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 1120
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultSmsSubId()I
    .locals 3

    .prologue
    .line 1068
    const/4 v1, -0x1

    .line 1071
    .local v1, "subId":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1072
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1073
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1080
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 1075
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultSubId()I
    .locals 3

    .prologue
    .line 1001
    const/4 v1, -0x1

    .line 1004
    .local v1, "subId":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1005
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1006
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1013
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 1008
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 1

    .prologue
    .line 1058
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()I
    .locals 3

    .prologue
    .line 1018
    const/4 v1, -0x1

    .line 1021
    .local v1, "subId":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1022
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1023
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1030
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 1025
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getPhoneId(I)I
    .locals 5
    .param p0, "subId"    # I

    .prologue
    .line 901
    const/4 v1, -0x1

    .line 903
    .local v1, "result":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 904
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    rsub-int/lit8 v3, v3, -0x2

    if-le p0, v3, :cond_0

    .line 905
    rsub-int/lit8 v1, p0, -0x2

    .line 910
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getPhoneId]- invalid subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    move v2, v1

    .line 924
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_1
    return v2

    .line 907
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 915
    :cond_1
    :try_start_0
    const-string v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 916
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 917
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_2
    move v2, v1

    .line 924
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1

    .line 919
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static getSimStateForSubscriber(I)I
    .locals 5
    .param p0, "subId"    # I

    .prologue
    .line 1361
    :try_start_0
    const-string v3, "isub"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1362
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1366
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .local v2, "simState":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimStateForSubscriber: simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1367
    return v2

    .line 1363
    .end local v2    # "simState":I
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .restart local v2    # "simState":I
    goto :goto_0
.end method

.method public static getSlotId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 822
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSlotId]- fail, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 826
    :cond_0
    const/4 v1, -0x1

    .line 829
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 830
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 831
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 837
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v1

    .line 833
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubId(I)[I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 843
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubIdUsingSlotId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    .line 885
    const/4 v1, -0x1

    .line 888
    .local v1, "subId":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 889
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 890
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubIdUsingPhoneId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 896
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 892
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubIdUsingSlotId(I)[I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 856
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubIdUsingSlotId]- fail, slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 858
    const/4 v1, 0x0

    .line 872
    :cond_0
    :goto_0
    return-object v1

    .line 861
    :cond_1
    const/4 v1, 0x0

    .line 864
    .local v1, "subId":[I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 865
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 866
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubIdUsingSlotId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 868
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 1248
    if-ltz p0, :cond_0

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneId(I)Z
    .locals 4
    .param p0, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1260
    const-string v2, "1"

    const-string/jumbo v3, "ro.mtk_svlte_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1261
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-lt p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xa

    if-eq p0, v2, :cond_1

    const/16 v2, 0xb

    if-ne p0, v2, :cond_2

    .line 1265
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 1261
    goto :goto_0

    .line 1265
    :cond_3
    if-ltz p0, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-lt p0, v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static isValidSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 1253
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 5
    .param p0, "subId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 1234
    const-string v2, "1"

    const-string/jumbo v3, "ro.mtk_svlte_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1235
    if-gt p0, v4, :cond_0

    const/16 v2, -0xa

    if-eq p0, v2, :cond_0

    const/16 v2, -0xb

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 1239
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-le p0, v4, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 929
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-void
.end method

.method private static printStackTrace(Ljava/lang/String;)V
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1314
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 1315
    .local v3, "re":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StackTrace - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 1317
    .local v4, "st":[Ljava/lang/StackTraceElement;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 1318
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1320
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1270
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1271
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1272
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1276
    :goto_0
    return-void

    .line 1274
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1281
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1285
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1286
    return-void
.end method

.method private setDataEnable(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataEnabled: , subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 972
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 973
    .local v0, "phoneId":I
    invoke-direct {p0, v0, p2}, Landroid/telephony/SubscriptionManager;->setDataEnabled(IZ)V

    .line 974
    return-void
.end method

.method private setDataEnabled(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataEnabled: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 979
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 980
    .local v0, "mPhoneNum":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 981
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 982
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 983
    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 985
    :cond_1
    const/4 v1, 0x0

    .line 986
    .local v1, "phoneSubId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v2, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method private setDefaultSettingChange(I)V
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 956
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 957
    .local v1, "oldSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 967
    :goto_0
    return-void

    .line 959
    :cond_0
    iget-object v4, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mobile_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 963
    .local v0, "isOldSubDataEnabled":Z
    :goto_1
    iget-object v4, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mobile_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 965
    invoke-direct {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->setDataEnable(IZ)V

    goto :goto_0

    .end local v0    # "isOldSubDataEnabled":Z
    :cond_1
    move v0, v3

    .line 959
    goto :goto_1

    .restart local v0    # "isOldSubDataEnabled":Z
    :cond_2
    move v3, v2

    .line 963
    goto :goto_2
.end method

.method public static setDefaultSubId(I)V
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 940
    if-gtz p0, :cond_0

    .line 941
    const-string/jumbo v1, "setDefaultSubId subId 0"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 945
    :cond_0
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 946
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 947
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->setDefaultFallbackSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 408
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 418
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_0

    .line 419
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 408
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v0, "<unknown>"

    goto :goto_0

    .line 421
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 664
    const-string v1, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 666
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSubscriptionInfoRecord]- invalid slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 671
    :cond_1
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 672
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 674
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 676
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public allDefaultsSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1198
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return v0

    .line 1201
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1204
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 2

    .prologue
    .line 1218
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1219
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1220
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public clearSubscriptionInfo()V
    .locals 2

    .prologue
    .line 1184
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1185
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1186
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1188
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getActiveSubscriptionIdList()[I
    .locals 3

    .prologue
    .line 1294
    const/4 v1, 0x0

    .line 1297
    .local v1, "subId":[I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1298
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1299
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1305
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1306
    const/4 v2, 0x0

    new-array v1, v2, [I

    .line 1309
    :cond_1
    return-object v1

    .line 1301
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 459
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSubscriptionInfo]- invalid subId, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x0

    .line 475
    :cond_0
    :goto_0
    return-object v1

    .line 464
    :cond_1
    const/4 v1, 0x0

    .line 467
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 468
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 471
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCount()I
    .locals 3

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 623
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 624
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 625
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 631
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 627
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 3

    .prologue
    .line 640
    const/4 v1, 0x0

    .line 643
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 644
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 645
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 651
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 647
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 487
    if-nez p1, :cond_1

    .line 488
    const-string v2, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 489
    const/4 v1, 0x0

    .line 503
    :cond_0
    :goto_0
    return-object v1

    .line 492
    :cond_1
    const/4 v1, 0x0

    .line 495
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 496
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 497
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 499
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotIdx"    # I

    .prologue
    .line 513
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIdx, slotIdx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 516
    const/4 v1, 0x0

    .line 530
    :cond_0
    :goto_0
    return-object v1

    .line 519
    :cond_1
    const/4 v1, 0x0

    .line 522
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 523
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 526
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    const/4 v1, 0x0

    .line 582
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 583
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 584
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 589
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-object v1

    .line 586
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 3

    .prologue
    .line 600
    const/4 v1, 0x0

    .line 603
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 604
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 605
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 611
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 607
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    const/4 v1, 0x0

    .line 544
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 545
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 552
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    return-object v1

    .line 548
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    .prologue
    .line 1178
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1173
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1103
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1053
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1381
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getSubscriptionInfo]- invalid subId, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1383
    const/4 v1, 0x0

    .line 1397
    :cond_0
    :goto_0
    return-object v1

    .line 1386
    :cond_1
    const/4 v1, 0x0

    .line 1389
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1390
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1391
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1393
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSubscriptionInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 1411
    if-nez p1, :cond_1

    .line 1412
    const-string v2, "[getSubscriptionInfoForIccId]- null iccid"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1413
    const/4 v1, 0x0

    .line 1427
    :cond_0
    :goto_0
    return-object v1

    .line 1416
    :cond_1
    const/4 v1, 0x0

    .line 1419
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1420
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1421
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getSubscriptionInfoForIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1423
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1332
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1333
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 1335
    const/4 v1, 0x0

    .line 1337
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    goto :goto_0
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 434
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 444
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_0

    .line 445
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 434
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v0, "<unknown>"

    goto :goto_0

    .line 447
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setDataRoaming(II)I
    .locals 4
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 796
    if-ltz p1, :cond_0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 797
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataRoaming]- fail, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 798
    const/4 v1, -0x1

    .line 812
    :cond_1
    :goto_0
    return v1

    .line 801
    :cond_2
    const/4 v1, 0x0

    .line 804
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 805
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 806
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 808
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDefaultDataSubId(I)V
    .locals 8
    .param p1, "subId"    # I

    .prologue
    .line 1132
    if-gtz p1, :cond_0

    .line 1133
    const-string/jumbo v6, "setDefaultDataSubId subId 0"

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 1137
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1138
    .local v0, "callMethodUid":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1139
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/16 v4, 0x3e8

    .line 1141
    .local v4, "settingPackageUid":I
    const/16 v5, 0x3e9

    .line 1144
    .local v5, "systemUIPackageUid":I
    :try_start_0
    const-string v6, "com.android.settings"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v4

    .line 1146
    const-string v6, "com.android.systemui"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v3, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1152
    :goto_0
    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_2

    .line 1155
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1156
    .local v2, "phoneId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1157
    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSettingChange(I)V

    .line 1162
    .end local v2    # "phoneId":I
    :cond_2
    :try_start_1
    const-string v6, "isub"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1163
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_3

    .line 1164
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1169
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_3
    :goto_1
    return-void

    .line 1166
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1148
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1438
    if-gtz p1, :cond_0

    .line 1439
    const-string/jumbo v1, "setDefaultDataSubIdWithoutCapabilitySwitch subId 0"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 1443
    :cond_0
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1444
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 1445
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return-void

    .line 1447
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDefaultSmsSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1087
    if-gtz p1, :cond_0

    .line 1088
    const-string/jumbo v1, "setDefaultSmsSubId subId 0"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 1092
    :cond_0
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1093
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 1094
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1037
    if-gtz p1, :cond_0

    .line 1038
    const-string/jumbo v1, "setDefaultVoiceSubId subId 0"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->printStackTrace(Ljava/lang/String;)V

    .line 1042
    :cond_0
    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1043
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 1044
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 722
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 739
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDisplayName]- fail, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 741
    const/4 v1, -0x1

    .line 755
    :cond_0
    :goto_0
    return v1

    .line 744
    :cond_1
    const/4 v1, 0x0

    .line 747
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 748
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 749
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 751
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 767
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 768
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDisplayNumber]- fail, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 769
    const/4 v1, -0x1

    .line 783
    :cond_1
    :goto_0
    return v1

    .line 772
    :cond_2
    const/4 v1, 0x0

    .line 775
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 776
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 777
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 779
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setIconTint(II)I
    .locals 4
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .prologue
    .line 694
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIconTint]- fail, subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 696
    const/4 v1, -0x1

    .line 710
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    const/4 v1, 0x0

    .line 702
    .local v1, "result":I
    :try_start_0
    const-string v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 703
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 704
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 706
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
