.class public Lcom/android/server/wifi/WifiConfigStore;
.super Lcom/android/server/net/IpConfigStore;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$2;,
        Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;
    }
.end annotation


# static fields
.field private static final ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED:   "

.field private static final ASSOCIATED_FULL_SCAN_BACKOFF_KEY:Ljava/lang/String; = "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD:   "

.field private static final ASSOCIATED_PARTIAL_SCAN_PERIOD_KEY:Ljava/lang/String; = "ASSOCIATED_PARTIAL_SCAN_PERIOD:   "

.field private static final AUTH_KEY:Ljava/lang/String; = "AUTH:  "

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD:   "

.field private static final A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW_KEY:Ljava/lang/String; = "A_BAND_PREFERENCE_RSSI_THRESHOLD_LOW:   "

.field private static final BLACKLIST_MILLI_KEY:Ljava/lang/String; = "BLACKLIST_MILLI:  "

.field private static final BSSID_KEY:Ljava/lang/String; = "BSSID:  "

.field private static final BSSID_KEY_END:Ljava/lang/String; = "/BSSID:  "

.field private static final BSSID_STATUS_KEY:Ljava/lang/String; = "BSSID_STATUS:  "

.field private static final CHOICE_KEY:Ljava/lang/String; = "CHOICE:  "

.field private static final CONFIG_KEY:Ljava/lang/String; = "CONFIG:  "

.field private static final CONNECT_UID_KEY:Ljava/lang/String; = "CONNECT_UID_KEY:  "

.field private static final CREATOR_UID_KEY:Ljava/lang/String; = "CREATOR_UID_KEY:  "

.field private static final DATE_KEY:Ljava/lang/String; = "DATE:  "

.field private static final DBG:Z = true

.field private static final DEFAULT_GW_KEY:Ljava/lang/String; = "DEFAULT_GW:  "

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final DELETED_CRC32_KEY:Ljava/lang/String; = "DELETED_CRC32:  "

.field private static final DELETED_EPHEMERAL_KEY:Ljava/lang/String; = "DELETED_EPHEMERAL:  "

.field private static final DID_SELF_ADD_KEY:Ljava/lang/String; = "DID_SELF_ADD:  "

.field static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field private static final ENABLE_AUTOJOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTOJOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_AUTO_JOIN_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED:   "

.field private static final ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED:   "

.field private static final ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED:   "

.field private static final ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:Ljava/lang/String; = "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:   "

.field private static final ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

.field private static final EPHEMERAL_KEY:Ljava/lang/String; = "EPHEMERAL:   "

.field private static final FAILURE_KEY:Ljava/lang/String; = "FAILURE:  "

.field private static final FQDN_KEY:Ljava/lang/String; = "FQDN:  "

.field private static final FREQ_KEY:Ljava/lang/String; = "FREQ:  "

.field private static final G_BAND_PREFERENCE_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "G_BAND_PREFERENCE_RSSI_THRESHOLD:   "

.field private static final JOIN_ATTEMPT_BOOST_KEY:Ljava/lang/String; = "JOIN_ATTEMPT_BOOST:  "

.field private static final LINK_KEY:Ljava/lang/String; = "LINK:  "

.field private static final MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

.field private static final MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

.field private static final MILLI_KEY:Ljava/lang/String; = "MILLI:  "

.field private static final NETWORK_ID_KEY:Ljava/lang/String; = "ID:  "

.field private static final NO_INTERNET_ACCESS_REPORTS_KEY:Ljava/lang/String; = "NO_INTERNET_ACCESS_REPORTS :   "

.field private static final NUM_ASSOCIATION_KEY:Ljava/lang/String; = "NUM_ASSOCIATION:  "

.field private static final NUM_AUTH_FAILURES_KEY:Ljava/lang/String; = "AUTH_FAILURES:  "

.field private static final NUM_CONNECTION_FAILURES_KEY:Ljava/lang/String; = "CONNECT_FAILURES:  "

.field private static final NUM_IP_CONFIG_FAILURES_KEY:Ljava/lang/String; = "IP_CONFIG_FAILURES:  "

.field public static final OLD_PRIVATE_KEY_NAME:Ljava/lang/String; = "private_key"

.field private static final ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS_KEY:Ljava/lang/String; = "ONLY_LINK_SAME_CREDENTIAL_CONFIGURATIONS:   "

.field private static final PEER_CONFIGURATION_KEY:Ljava/lang/String; = "PEER_CONFIGURATION:  "

.field private static final PRIORITY_KEY:Ljava/lang/String; = "PRIORITY:  "

.field private static final RSSI_KEY:Ljava/lang/String; = "RSSI:  "

.field private static final SCORER_OVERRIDE_AND_SWITCH_KEY:Ljava/lang/String; = "SCORER_OVERRIDE_AND_SWITCH:  "

.field private static final SCORER_OVERRIDE_KEY:Ljava/lang/String; = "SCORER_OVERRIDE:  "

.field private static final SELF_ADDED_KEY:Ljava/lang/String; = "SELF_ADDED:  "

.field private static final SEPARATOR_KEY:Ljava/lang/String; = "\n"

.field private static final SSID_KEY:Ljava/lang/String; = "SSID:  "

.field private static final STATUS_KEY:Ljava/lang/String; = "AUTO_JOIN_STATUS:  "

.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final SUPPLICANT_DISABLE_REASON_KEY:Ljava/lang/String; = "SUP_DIS_REASON:  "

.field private static final SUPPLICANT_STATUS_KEY:Ljava/lang/String; = "SUP_STATUS:  "

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final THRESHOLD_BAD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_24:  "

.field private static final THRESHOLD_BAD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_BAD_RSSI_5:  "

.field private static final THRESHOLD_GOOD_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_24:  "

.field private static final THRESHOLD_GOOD_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_GOOD_RSSI_5:  "

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G:  "

.field private static final THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G_KEY:Ljava/lang/String; = "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G:  "

.field private static final THRESHOLD_LOW_RSSI_24_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_24:  "

.field private static final THRESHOLD_LOW_RSSI_5_KEY:Ljava/lang/String; = "THRESHOLD_LOW_RSSI_5:  "

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS:   "

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING:   "

.field private static final THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS:   "

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS:   "

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING:   "

.field private static final THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS_KEY:Ljava/lang/String; = "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS:   "

.field private static final THRESHOLD_UNBLACKLIST_HARD_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_24G:  "

.field private static final THRESHOLD_UNBLACKLIST_HARD_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_HARD_5G:  "

.field private static final THRESHOLD_UNBLACKLIST_SOFT_24G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_24G:  "

.field private static final THRESHOLD_UNBLACKLIST_SOFT_5G_KEY:Ljava/lang/String; = "THRESHOLD_UNBLACKLIST_SOFT_5G:  "

.field private static final UPDATE_UID_KEY:Ljava/lang/String; = "UPDATE_UID:  "

.field private static final VALIDATED_INTERNET_ACCESS_KEY:Ljava/lang/String; = "VALIDATED_INTERNET_ACCESS:  "

.field private static VDBG:Z = false

.field private static VVDBG:Z = false

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS:   "

.field private static final autoJoinConfigFile:Ljava/lang/String;

.field private static final ipConfigFile:Ljava/lang/String;

.field private static mConnectChoice:Ljava/util/regex/Pattern; = null

.field private static final mMtkEapSimAka:Z

.field public static final maxNumScanCacheEntries:I = 0x80

.field private static final networkHistoryConfigFile:Ljava/lang/String;


# instance fields
.field public alwaysEnableScansWhileAssociated:I

.field public associatedFullScanBackoff:I

.field public associatedFullScanMaxIntervalMilli:I

.field public associatedHysteresisHigh:I

.field public associatedHysteresisLow:I

.field public associatedPartialScanPeriodMilli:I

.field public badLinkSpeed24:I

.field public badLinkSpeed5:I

.field public bandPreferenceBoostFactor5:I

.field public bandPreferenceBoostThreshold5:I

.field public bandPreferencePenaltyFactor5:I

.field public bandPreferencePenaltyThreshold5:I

.field public currentNetworkBoost:I

.field public enable5GHzPreference:Z

.field public enableAutoJoinScanWhenAssociated:Z

.field public enableAutoJoinWhenAssociated:Z

.field public enableChipWakeUpWhenAssociated:Z

.field public enableFullBandScanWhenAssociated:Z

.field public enableLinkDebouncing:Z

.field public enableRssiPollWhenAssociated:Z

.field public enableVerboseLogging:I

.field public enableWifiCellularHandoverUserTriggeredAdjustment:Z

.field public goodLinkSpeed24:I

.field public goodLinkSpeed5:I

.field private lastSelectedConfiguration:Ljava/lang/String;

.field public lastUnwantedNetworkDisconnectTimestamp:J

.field private mConfiguredNetworks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field public mMtkSupportAutoSaveAssocConfig:Z

.field private mNetworkIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

.field private mWifiNative:Lcom/android/server/wifi/WifiNative;

.field public maxAuthErrorsToBlacklist:I

.field public maxConnectionErrorsToBlacklist:I

.field public maxNumActiveChannelsForPartialScans:I

.field public maxNumPassiveChannelsForPartialScans:I

.field public maxRxPacketForFullScans:I

.field public maxRxPacketForNetworkSwitching:I

.field public maxRxPacketForPartialScans:I

.field public maxTxPacketForFullScans:I

.field public maxTxPacketForNetworkSwitching:I

.field public maxTxPacketForPartialScans:I

.field public networkSwitchingBlackListPeriodMilli:I

.field public onlyLinkSameCredentialConfigurations:Z

.field public roamOnAny:Z

.field public scanResultRssiLevelPatchUp:I

.field showNetworks:Z

.field public thresholdBadRssi24:I

.field public thresholdBadRssi5:I

.field public thresholdGoodRssi24:I

.field public thresholdGoodRssi5:I

.field public thresholdInitialAutoJoinAttemptMin24RSSI:I

.field public thresholdInitialAutoJoinAttemptMin5RSSI:I

.field public thresholdLowRssi24:I

.field public thresholdLowRssi5:I

.field public thresholdUnblacklistThreshold24Hard:I

.field public thresholdUnblacklistThreshold24Soft:I

.field public thresholdUnblacklistThreshold5Hard:I

.field public thresholdUnblacklistThreshold5Soft:I

.field public wifiConfigBlacklistMinTimeMilli:I

.field public wifiConfigLastSelectionHysteresis:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    sput-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 147
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/ipconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/networkHistory.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/autojoinconfig.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    .line 413
    const-string v0, "(.*)=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    .line 433
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "eap"

    aput-object v1, v0, v2

    const-string v1, "phase2"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "identity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "anonymous_identity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "client_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ca_cert"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subject_match"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "engine"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "engine_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "key_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    .line 482
    const-string v0, "ro.mtk_eap_sim_aka"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->mMtkEapSimAka:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wn"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 486
    invoke-direct {p0}, Lcom/android/server/net/IpConfigStore;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 322
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    .line 324
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Z

    .line 327
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 328
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 330
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    .line 331
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    .line 333
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    .line 334
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    .line 336
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Z

    .line 338
    sget v0, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    .line 340
    sget v0, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    .line 343
    sget v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    .line 344
    sget v0, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    .line 345
    sget v0, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    .line 346
    sget v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    .line 347
    sget v0, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    .line 348
    sget v0, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    .line 350
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    .line 351
    const v0, 0x493e0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 357
    const v0, 0xa4cb800

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 359
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 360
    iput v4, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 361
    sget v0, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    .line 362
    sget v0, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    .line 364
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 365
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 366
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 367
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 369
    iput v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    .line 370
    iput v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    .line 371
    const v0, 0x493e0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    .line 374
    const v0, 0x2bf20

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigLastSelectionHysteresis:I

    .line 377
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 378
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 380
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:I

    .line 382
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:I

    .line 384
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:I

    .line 386
    sget v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:I

    .line 388
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    .line 389
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 391
    iput v1, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    .line 393
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    .line 394
    iput v4, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    .line 396
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->roamOnAny:Z

    .line 397
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 399
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 400
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 401
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 403
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 404
    const/16 v0, -0x55

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    .line 445
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 462
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    .line 469
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mPskMap:Ljava/util/Map;

    .line 479
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 484
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mMtkSupportAutoSaveAssocConfig:Z

    .line 487
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    .line 488
    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 490
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 492
    new-instance v0, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    .line 493
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;->startWatching()V

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "associatedPartialScanPeriodMilli set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    .line 504
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    .line 506
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    .line 508
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    .line 510
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    .line 512
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    .line 515
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enable5GHzPreference:Z

    .line 518
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostFactor5:I

    .line 520
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyFactor5:I

    .line 523
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    .line 525
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    .line 528
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisHigh:I

    .line 530
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedHysteresisLow:I

    .line 533
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    .line 535
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    .line 537
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    .line 539
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    .line 541
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    .line 543
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    .line 546
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableWifiCellularHandoverUserTriggeredAdjustment:Z

    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed24:I

    .line 551
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->badLinkSpeed5:I

    .line 553
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed24:I

    .line 555
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->goodLinkSpeed5:I

    .line 557
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    .line 559
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    .line 561
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    .line 565
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    .line 568
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    .line 571
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->currentNetworkBoost:I

    .line 574
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->scanResultRssiLevelPatchUp:I

    .line 577
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    .line 581
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mMtkSupportAutoSaveAssocConfig:Z

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config_wifi_auto_save_support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mMtkSupportAutoSaveAssocConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 584
    return-void

    .line 495
    :cond_0
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    .line 496
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mFileObserver:Lcom/android/server/wifi/WifiConfigStore$WpaConfigFileObserver;

    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiConfigStore;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/BitSet;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiConfigStore;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    return-object v0
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 38
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 2746
    sget-boolean v34, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v34, :cond_0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addOrUpdateNetworkNative "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2748
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v22, v0

    .line 2749
    .local v22, "netId":I
    const/16 v23, 0x0

    .line 2751
    .local v23, "newNetwork":Z
    const/16 v34, -0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 2752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 2755
    .local v26, "savedNetId":Ljava/lang/Integer;
    if-nez v26, :cond_2

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/wifi/WifiConfiguration;

    .line 2757
    .local v27, "test":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 2758
    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 2759
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addOrUpdateNetworkNative "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " was found, but no network Id"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2765
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v27    # "test":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    if-eqz v26, :cond_5

    .line 2766
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 2779
    .end local v26    # "savedNetId":Ljava/lang/Integer;
    :cond_3
    :goto_0
    const/16 v32, 0x1

    .line 2783
    .local v32, "updateFailed":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_7

    .line 2784
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Setting BSSID for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_7

    .line 2789
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set BSSID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3110
    :goto_1
    if-eqz v32, :cond_2b

    .line 3111
    if-eqz v23, :cond_4

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    .line 3113
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Failed to set a network variable, removed network: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3115
    :cond_4
    new-instance v25, Lcom/android/server/wifi/NetworkUpdateResult;

    const/16 v34, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 3199
    .end local v32    # "updateFailed":Z
    :goto_2
    return-object v25

    .line 2768
    .restart local v26    # "savedNetId":Ljava/lang/Integer;
    :cond_5
    const/16 v23, 0x1

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/WifiNative;->addNetwork()I

    move-result v22

    .line 2770
    if-gez v22, :cond_6

    .line 2771
    const-string v34, "Failed to add a network!"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2772
    new-instance v25, Lcom/android/server/wifi/NetworkUpdateResult;

    const/16 v34, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    goto :goto_2

    .line 2774
    :cond_6
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addOrUpdateNetworkNative created netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2793
    .end local v26    # "savedNetId":Ljava/lang/Integer;
    .restart local v32    # "updateFailed":Z
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_8

    .line 2799
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set SSID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2803
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2805
    .local v7, "allowedKeyManagementString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "key_mgmt"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_9

    .line 2810
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set key_mgmt: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2815
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2817
    .local v9, "allowedProtocolsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "proto"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_a

    .line 2822
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set proto: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2827
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2829
    .local v5, "allowedAuthAlgorithmsString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "auth_alg"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 2834
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set auth_alg: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2839
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2842
    .local v8, "allowedPairwiseCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "pairwise"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_c

    .line 2847
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set pairwise: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2852
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v34 .. v35}, Lcom/android/server/wifi/WifiConfigStore;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2854
    .local v6, "allowedGroupCiphersString":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->cardinality()I

    move-result v34

    if-eqz v34, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "group"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_d

    .line 2859
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set group: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2866
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "*"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_e

    .line 2871
    const-string v34, "failed to set psk"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2875
    :cond_e
    const/16 v16, 0x0

    .line 2876
    .local v16, "hasSetKey":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_11

    .line 2877
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_11

    .line 2880
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    aget-object v34, v34, v17

    if-eqz v34, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v34, v0

    aget-object v34, v34, v17

    const-string v35, "*"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    sget-object v35, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v35, v35, v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v36, v0

    aget-object v36, v36, v17

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_f

    .line 2885
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set wep_key"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v35, v0

    aget-object v35, v35, v17

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2888
    :cond_f
    const/16 v16, 0x1

    .line 2877
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 2893
    .end local v17    # "i":I
    :cond_11
    if-eqz v16, :cond_12

    .line 2894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_12

    .line 2898
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "failed to set wep_tx_keyidx: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2903
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_13

    .line 2907
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set priority: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2912
    :cond_13
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v34, v0

    if-eqz v34, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v35, v0

    const-string v36, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v34, v0

    if-eqz v34, :cond_14

    const/16 v34, 0x1

    :goto_4
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move/from16 v1, v22

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_15

    .line 2916
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set hiddenSSID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2912
    :cond_14
    const/16 v34, 0x0

    goto :goto_4

    .line 2921
    :cond_15
    const/16 v19, 0x0

    .line 2922
    .local v19, "isWapi":Z
    const/16 v24, 0x0

    .local v24, "p":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/BitSet;->size()I

    move-result v34

    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_17

    .line 2923
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 2924
    const/16 v34, 0x2

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 2925
    const-string v34, "WifiConfigStore"

    const-string v35, "this is WAPI"

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    const/16 v19, 0x1

    .line 2922
    :cond_16
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 2931
    :cond_17
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    move/from16 v34, v0

    if-eqz v34, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "ieee80211w"

    const-string v36, "2"

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_18

    .line 2935
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set requirePMF: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2940
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "update_identifier"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_19

    .line 2944
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set updateIdentifier: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2949
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v34, v0

    if-eqz v34, :cond_23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a

    const/16 v34, 0x1

    move/from16 v0, v19

    move/from16 v1, v34

    if-ne v0, v1, :cond_23

    .line 2953
    :cond_1a
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2955
    .local v14, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-static {v14}, Lcom/android/server/wifi/WifiConfigStore;->needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v34

    sget-object v35, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_1b

    .line 2963
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": key store is locked"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2972
    :cond_1b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 2973
    .local v11, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiConfiguration;->getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v21

    .line 2975
    .local v21, "keyId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lcom/android/server/wifi/WifiConfigStore;->installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1c

    .line 2976
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to install keys"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2979
    .end local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v21    # "keyId":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2980
    .local v12, "e":Ljava/lang/IllegalStateException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " invalid config for key installation"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2985
    .end local v12    # "e":Ljava/lang/IllegalStateException;
    :cond_1c
    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v15

    .line 2987
    .local v15, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2988
    .local v10, "anonymoustValue":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2989
    .local v13, "eapValue":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_22

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 2990
    .local v20, "key":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 2991
    .local v33, "value":Ljava/lang/String;
    const-string v34, "password"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e

    if-eqz v33, :cond_1e

    const-string v34, "*"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1d

    .line 2996
    :cond_1e
    const/16 v34, 0x1

    move/from16 v0, v19

    move/from16 v1, v34

    if-ne v0, v1, :cond_1f

    const-string v34, "eap"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1d

    .line 2999
    :cond_1f
    const-string v34, "anonymous_identity"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    .line 3000
    move-object/from16 v10, v33

    .line 3001
    goto :goto_6

    .line 3002
    :cond_20
    const-string v34, "eap"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 3003
    move-object/from16 v13, v33

    .line 3004
    goto :goto_6

    .line 3006
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1d

    .line 3010
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3011
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3016
    .end local v20    # "key":Ljava/lang/String;
    .end local v33    # "value":Ljava/lang/String;
    :cond_22
    if-nez v13, :cond_25

    .line 3017
    if-nez v10, :cond_24

    .line 3061
    .end local v10    # "anonymoustValue":Ljava/lang/String;
    .end local v13    # "eapValue":Ljava/lang/String;
    .end local v14    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v15    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_23
    sget-boolean v34, Lcom/android/server/wifi/WifiConfigStore;->mMtkEapSimAka:Z

    if-eqz v34, :cond_28

    .line 3062
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "imsi"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_27

    .line 3067
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set imsi: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3020
    .restart local v10    # "anonymoustValue":Ljava/lang/String;
    .restart local v13    # "eapValue":Ljava/lang/String;
    .restart local v14    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v15    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_24
    const-string v34, "set anonymous_identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3021
    const-string v28, "anonymous_identity"

    .line 3022
    .local v28, "tmpKey":Ljava/lang/String;
    move-object/from16 v30, v10

    .line 3023
    .local v30, "tmpValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_23

    .line 3025
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3026
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3032
    .end local v28    # "tmpKey":Ljava/lang/String;
    .end local v30    # "tmpValue":Ljava/lang/String;
    :cond_25
    const-string v34, "set eap"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3033
    const-string v29, "eap"

    .line 3034
    .local v29, "tmpKeyEap":Ljava/lang/String;
    move-object/from16 v31, v13

    .line 3035
    .local v31, "tmpValueEap":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v29

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_26

    .line 3037
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3038
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3042
    :cond_26
    if-eqz v10, :cond_23

    .line 3045
    const-string v34, "set anonymous_identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3046
    const-string v28, "anonymous_identity"

    .line 3047
    .restart local v28    # "tmpKey":Ljava/lang/String;
    move-object/from16 v30, v10

    .line 3048
    .restart local v30    # "tmpValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_23

    .line 3050
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3051
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": failed to set "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3070
    .end local v10    # "anonymoustValue":Ljava/lang/String;
    .end local v13    # "eapValue":Ljava/lang/String;
    .end local v14    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v15    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v28    # "tmpKey":Ljava/lang/String;
    .end local v29    # "tmpKeyEap":Ljava/lang/String;
    .end local v30    # "tmpValue":Ljava/lang/String;
    .end local v31    # "tmpValueEap":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "sim_slot"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_28

    .line 3075
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set simSlot: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3090
    :cond_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "pac_file"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_29

    .line 3095
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set pacFile: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3098
    :cond_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v34, v0

    const-string v35, "phase1"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move/from16 v1, v22

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_2a

    .line 3103
    const-string v34, "WifiConfigStore"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "failed to set phase1: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3107
    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 3125
    .end local v5    # "allowedAuthAlgorithmsString":Ljava/lang/String;
    .end local v6    # "allowedGroupCiphersString":Ljava/lang/String;
    .end local v7    # "allowedKeyManagementString":Ljava/lang/String;
    .end local v8    # "allowedPairwiseCiphersString":Ljava/lang/String;
    .end local v9    # "allowedProtocolsString":Ljava/lang/String;
    .end local v16    # "hasSetKey":Z
    .end local v19    # "isWapi":Z
    .end local v24    # "p":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 3126
    .restart local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-nez v11, :cond_2d

    .line 3127
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    .end local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3128
    .restart local v11    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v34, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 3129
    sget-object v34, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 3130
    move/from16 v0, v22

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3131
    if-eqz p1, :cond_2c

    .line 3133
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    move/from16 v34, v0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3134
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    move/from16 v34, v0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3135
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v34, v0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3136
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 3138
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 3139
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 3140
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3141
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iput-object v0, v11, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 3144
    :cond_2c
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "created new config netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " uid="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3149
    :cond_2d
    if-ltz p2, :cond_2e

    .line 3150
    if-eqz v23, :cond_33

    .line 3151
    move/from16 v0, p2

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3157
    :cond_2e
    :goto_7
    if-eqz v23, :cond_2f

    .line 3158
    const/16 v34, 0x1

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3161
    :cond_2f
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v34, v0

    const/16 v35, 0xc8

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_30

    .line 3164
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 3165
    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3166
    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3168
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "remove deleted status netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3173
    :cond_30
    iget v0, v11, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_31

    .line 3175
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 3178
    :cond_31
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->getLastSelectedConfiguration()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_32

    iget-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v34, v0

    if-eqz v34, :cond_32

    .line 3181
    const/16 v34, 0x0

    move/from16 v0, v34

    iput-boolean v0, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3182
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "remove ephemeral status netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3186
    :cond_32
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "will read network variables netId="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3188
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 3190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static {v11}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v25

    .line 3194
    .local v25, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    .line 3195
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    .line 3197
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto/16 :goto_2

    .line 3153
    .end local v25    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_33
    move/from16 v0, p2

    iput v0, v11, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    goto/16 :goto_7
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 4084
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    .line 4085
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method private encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 2735
    invoke-static {p1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2736
    .local v0, "tmp":Ljava/lang/String;
    const-string v1, "%x"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3778
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 3783
    :pswitch_0
    return v0

    .line 3778
    :sswitch_0
    const-string v3, "eap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string v3, "engine"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d6805be -> :sswitch_1
        0x18754 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 654
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 657
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v4, :cond_0

    .line 665
    if-eqz p1, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 670
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 672
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method private getCredentialsBySsidMap()Ljava/util/Map;
    .locals 1
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
    .line 697
    const-string v0, "psk"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static hasHardwareBackedKey(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p0, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    .line 4172
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isHardwareBackedKey(Ljava/security/PrivateKey;)Z
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 4168
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 4129
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4133
    :cond_0
    return-void
.end method

.method private localLog(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .prologue
    .line 4141
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-nez v1, :cond_0

    .line 4157
    :goto_0
    return-void

    .line 4146
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v2

    .line 4147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4148
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4150
    if-eqz v0, :cond_1

    .line 4151
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4148
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4155
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private localLog(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 4136
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 4137
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4138
    :cond_0
    return-void
.end method

.method private lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strings"    # [Ljava/lang/String;

    .prologue
    .line 4029
    array-length v1, p2

    .line 4031
    .local v1, "size":I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 4033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4034
    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4042
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 4033
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4040
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to look-up a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4042
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 4009
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4010
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 4014
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 4016
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4017
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 4021
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 4022
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 4025
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private markAllNetworksDisabled()V
    .locals 1

    .prologue
    .line 1724
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 1725
    return-void
.end method

.method private markAllNetworksDisabledExcept(I)V
    .locals 4
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    .line 1713
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1714
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p1, :cond_0

    .line 1715
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v2, v3, :cond_0

    .line 1716
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1717
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 1721
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    return-void
.end method

.method static needsKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 1
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 4162
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4163
    const/4 v0, 0x0

    .line 4164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    .line 4176
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4177
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4186
    const/4 v1, 0x1

    .line 4229
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v3, 0x0

    .line 4522
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .line 4523
    .local v0, "certData":[B
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putting certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in keystore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v0, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 4529
    .end local v0    # "certData":[B
    :goto_0
    return v3

    .line 4526
    :catch_0
    move-exception v1

    .line 4527
    .local v1, "e1":Ljava/io/IOException;
    goto :goto_0

    .line 4528
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 4529
    .local v2, "e2":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private readAutoJoinConfig()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2296
    const/4 v3, 0x0

    .line 2299
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->autoJoinConfigFile:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_27
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_25

    .line 2301
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_27

    .line 2302
    if-eqz v2, :cond_0

    .line 2303
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_0
    const-string v6, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2306
    const-string v6, "ENABLE_AUTO_JOIN_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2307
    .local v5, "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v5

    .line 2309
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_20

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    .line 2310
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2316
    .end local v5    # "st":Ljava/lang/String;
    :cond_1
    :goto_2
    :try_start_3
    const-string v6, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2317
    const-string v6, "ENABLE_FULL_BAND_SCAN_WHEN_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2318
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v5

    .line 2320
    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_23

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Z

    .line 2321
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enableFullBandScanWhenAssociated = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2328
    .end local v5    # "st":Ljava/lang/String;
    :cond_2
    :goto_4
    :try_start_5
    const-string v6, "ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2329
    const-string v6, "ENABLE_AUTO_JOIN_SCAN_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2330
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v5

    .line 2332
    :try_start_6
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_24

    move v6, v7

    :goto_5
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    .line 2333
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinScanWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2340
    .end local v5    # "st":Ljava/lang/String;
    :cond_3
    :goto_6
    :try_start_7
    const-string v6, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2341
    const-string v6, "ENABLE_CHIP_WAKE_UP_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2342
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v5

    .line 2344
    :try_start_8
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_25

    move v6, v7

    :goto_7
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Z

    .line 2345
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2352
    .end local v5    # "st":Ljava/lang/String;
    :cond_4
    :goto_8
    :try_start_9
    const-string v6, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2353
    const-string v6, "ENABLE_RSSI_POLL_WHILE_ASSOCIATED_KEY:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2354
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v5

    .line 2356
    :try_start_a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_26

    move v6, v7

    :goto_9
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Z

    .line 2357
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 2364
    .end local v5    # "st":Ljava/lang/String;
    :cond_5
    :goto_a
    :try_start_b
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2365
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_5G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v5

    .line 2369
    :try_start_c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    .line 2370
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdInitialAutoJoinAttemptMin5RSSI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 2377
    .end local v5    # "st":Ljava/lang/String;
    :cond_6
    :goto_b
    :try_start_d
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2378
    const-string v6, "THRESHOLD_INITIAL_AUTO_JOIN_ATTEMPT_RSSI_MIN_24G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2380
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v5

    .line 2382
    :try_start_e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    .line 2383
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdInitialAutoJoinAttemptMin24RSSI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 2390
    .end local v5    # "st":Ljava/lang/String;
    :cond_7
    :goto_c
    :try_start_f
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_5G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2391
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_5G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2392
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    move-result-object v5

    .line 2394
    :try_start_10
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:I

    .line 2395
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold5Hard = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Hard:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    .line 2401
    .end local v5    # "st":Ljava/lang/String;
    :cond_8
    :goto_d
    :try_start_11
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_5G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2402
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_5G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2403
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    move-result-object v5

    .line 2405
    :try_start_12
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:I

    .line 2406
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold5Soft = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold5Soft:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 2412
    .end local v5    # "st":Ljava/lang/String;
    :cond_9
    :goto_e
    :try_start_13
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_24G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2413
    const-string v6, "THRESHOLD_UNBLACKLIST_HARD_24G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2414
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    move-result-object v5

    .line 2416
    :try_start_14
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:I

    .line 2417
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold24Hard = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Hard:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    .line 2423
    .end local v5    # "st":Ljava/lang/String;
    :cond_a
    :goto_f
    :try_start_15
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_24G:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2424
    const-string v6, "THRESHOLD_UNBLACKLIST_SOFT_24G:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2425
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    move-result-object v5

    .line 2427
    :try_start_16
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:I

    .line 2428
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdUnblacklistThreshold24Soft = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdUnblacklistThreshold24Soft:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/io/EOFException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5

    .line 2435
    .end local v5    # "st":Ljava/lang/String;
    :cond_b
    :goto_10
    :try_start_17
    const-string v6, "THRESHOLD_GOOD_RSSI_5:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2436
    const-string v6, "THRESHOLD_GOOD_RSSI_5:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2437
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5

    move-result-object v5

    .line 2439
    :try_start_18
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    .line 2440
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdGoodRssi5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/io/EOFException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5

    .line 2446
    .end local v5    # "st":Ljava/lang/String;
    :cond_c
    :goto_11
    :try_start_19
    const-string v6, "THRESHOLD_LOW_RSSI_5:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2447
    const-string v6, "THRESHOLD_LOW_RSSI_5:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2448
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5

    move-result-object v5

    .line 2450
    :try_start_1a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    .line 2451
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdLowRssi5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/io/EOFException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_5

    .line 2457
    .end local v5    # "st":Ljava/lang/String;
    :cond_d
    :goto_12
    :try_start_1b
    const-string v6, "THRESHOLD_BAD_RSSI_5:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2458
    const-string v6, "THRESHOLD_BAD_RSSI_5:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2459
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5

    move-result-object v5

    .line 2461
    :try_start_1c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    .line 2462
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdBadRssi5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5

    .line 2469
    .end local v5    # "st":Ljava/lang/String;
    :cond_e
    :goto_13
    :try_start_1d
    const-string v6, "THRESHOLD_GOOD_RSSI_24:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2470
    const-string v6, "THRESHOLD_GOOD_RSSI_24:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2471
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/EOFException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5

    move-result-object v5

    .line 2473
    :try_start_1e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    .line 2474
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdGoodRssi24 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdGoodRssi24:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_11
    .catch Ljava/io/EOFException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_5

    .line 2480
    .end local v5    # "st":Ljava/lang/String;
    :cond_f
    :goto_14
    :try_start_1f
    const-string v6, "THRESHOLD_LOW_RSSI_24:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2481
    const-string v6, "THRESHOLD_LOW_RSSI_24:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2482
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/EOFException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_3
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_5

    move-result-object v5

    .line 2484
    :try_start_20
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    .line 2485
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdLowRssi24 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdLowRssi24:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_12
    .catch Ljava/io/EOFException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_3
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_5

    .line 2491
    .end local v5    # "st":Ljava/lang/String;
    :cond_10
    :goto_15
    :try_start_21
    const-string v6, "THRESHOLD_BAD_RSSI_24:  "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2492
    const-string v6, "THRESHOLD_BAD_RSSI_24:  "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2493
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/EOFException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_3
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_5

    move-result-object v5

    .line 2495
    :try_start_22
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    .line 2496
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: thresholdBadRssi24 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->thresholdBadRssi24:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_13
    .catch Ljava/io/EOFException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_5

    .line 2503
    .end local v5    # "st":Ljava/lang/String;
    :cond_11
    :goto_16
    :try_start_23
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2504
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_NETWORK_SWITCHING:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2505
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/io/EOFException; {:try_start_23 .. :try_end_23} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_5

    move-result-object v5

    .line 2507
    :try_start_24
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 2508
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxTxPacketForNetworkSwitching = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_14
    .catch Ljava/io/EOFException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_3
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_5

    .line 2514
    .end local v5    # "st":Ljava/lang/String;
    :cond_12
    :goto_17
    :try_start_25
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2515
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_NETWORK_SWITCHING:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2516
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_25} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_3
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_5

    move-result-object v5

    .line 2518
    :try_start_26
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 2519
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxRxPacketForNetworkSwitching = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_15
    .catch Ljava/io/EOFException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_3
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_5

    .line 2526
    .end local v5    # "st":Ljava/lang/String;
    :cond_13
    :goto_18
    :try_start_27
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2527
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_FULL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2528
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_27} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_3
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_5

    move-result-object v5

    .line 2530
    :try_start_28
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 2531
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxTxPacketForFullScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_16
    .catch Ljava/io/EOFException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_3
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_5

    .line 2537
    .end local v5    # "st":Ljava/lang/String;
    :cond_14
    :goto_19
    :try_start_29
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2538
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_FULL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2539
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/EOFException; {:try_start_29 .. :try_end_29} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_3
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_5

    move-result-object v5

    .line 2541
    :try_start_2a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 2542
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxRxPacketForFullScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_17
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_3
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_5

    .line 2549
    .end local v5    # "st":Ljava/lang/String;
    :cond_15
    :goto_1a
    :try_start_2b
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2550
    const-string v6, "THRESHOLD_MAX_TX_PACKETS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2551
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/EOFException; {:try_start_2b .. :try_end_2b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_3
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_5

    move-result-object v5

    .line 2553
    :try_start_2c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForNetworkSwitching:I

    .line 2554
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxTxPacketForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_18
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_2c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_3
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_5

    .line 2560
    .end local v5    # "st":Ljava/lang/String;
    :cond_16
    :goto_1b
    :try_start_2d
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2561
    const-string v6, "THRESHOLD_MAX_RX_PACKETS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2562
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/EOFException; {:try_start_2d .. :try_end_2d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_3
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_5

    move-result-object v5

    .line 2564
    :try_start_2e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForNetworkSwitching:I

    .line 2565
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxRxPacketForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_19
    .catch Ljava/io/EOFException; {:try_start_2e .. :try_end_2e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_3
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_5

    .line 2572
    .end local v5    # "st":Ljava/lang/String;
    :cond_17
    :goto_1c
    :try_start_2f
    const-string v6, "WIFI_VERBOSE_LOGS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2573
    const-string v6, "WIFI_VERBOSE_LOGS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2574
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_2f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_3
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_5

    move-result-object v5

    .line 2576
    :try_start_30
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    .line 2577
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: enable verbose logs = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_1a
    .catch Ljava/io/EOFException; {:try_start_30 .. :try_end_30} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_3
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_5

    .line 2583
    .end local v5    # "st":Ljava/lang/String;
    :cond_18
    :goto_1d
    :try_start_31
    const-string v6, "A_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2584
    const-string v6, "A_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2585
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/EOFException; {:try_start_31 .. :try_end_31} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_3
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_5

    move-result-object v5

    .line 2587
    :try_start_32
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    .line 2588
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: bandPreferenceBoostThreshold5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_1b
    .catch Ljava/io/EOFException; {:try_start_32 .. :try_end_32} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_3
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_5

    .line 2594
    .end local v5    # "st":Ljava/lang/String;
    :cond_19
    :goto_1e
    :try_start_33
    const-string v6, "ASSOCIATED_PARTIAL_SCAN_PERIOD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2595
    const-string v6, "ASSOCIATED_PARTIAL_SCAN_PERIOD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2596
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_33
    .catch Ljava/io/EOFException; {:try_start_33 .. :try_end_33} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_3
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_5

    move-result-object v5

    .line 2598
    :try_start_34
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    .line 2599
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: associatedScanPeriod = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_1c
    .catch Ljava/io/EOFException; {:try_start_34 .. :try_end_34} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_3
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_5

    .line 2605
    .end local v5    # "st":Ljava/lang/String;
    :cond_1a
    :goto_1f
    :try_start_35
    const-string v6, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2606
    const-string v6, "ASSOCIATED_FULL_SCAN_BACKOFF_PERIOD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2607
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/io/EOFException; {:try_start_35 .. :try_end_35} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_3
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_5

    move-result-object v5

    .line 2609
    :try_start_36
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    .line 2610
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: associatedFullScanBackoff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_1d
    .catch Ljava/io/EOFException; {:try_start_36 .. :try_end_36} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_3
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_5

    .line 2616
    .end local v5    # "st":Ljava/lang/String;
    :cond_1b
    :goto_20
    :try_start_37
    const-string v6, "G_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2617
    const-string v6, "G_BAND_PREFERENCE_RSSI_THRESHOLD:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2618
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/io/EOFException; {:try_start_37 .. :try_end_37} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_3
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_5

    move-result-object v5

    .line 2620
    :try_start_38
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    .line 2621
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: bandPreferencePenaltyThreshold5 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferencePenaltyThreshold5:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_1e
    .catch Ljava/io/EOFException; {:try_start_38 .. :try_end_38} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_38} :catch_3
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_5

    .line 2627
    .end local v5    # "st":Ljava/lang/String;
    :cond_1c
    :goto_21
    :try_start_39
    const-string v6, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2628
    const-string v6, "ALWAYS_ENABLE_SCAN_WHILE_ASSOCIATED:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2629
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/EOFException; {:try_start_39 .. :try_end_39} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_3
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_5

    move-result-object v5

    .line 2631
    :try_start_3a
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    .line 2632
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: alwaysEnableScansWhileAssociated = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_1f
    .catch Ljava/io/EOFException; {:try_start_3a .. :try_end_3a} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_3a} :catch_3
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_5

    .line 2638
    .end local v5    # "st":Ljava/lang/String;
    :cond_1d
    :goto_22
    :try_start_3b
    const-string v6, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2639
    const-string v6, "MAX_NUM_PASSIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2640
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/io/EOFException; {:try_start_3b .. :try_end_3b} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3b} :catch_3
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_5

    move-result-object v5

    .line 2642
    :try_start_3c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    .line 2643
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxNumPassiveChannelsForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumPassiveChannelsForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_20
    .catch Ljava/io/EOFException; {:try_start_3c .. :try_end_3c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3c} :catch_3
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_5

    .line 2649
    .end local v5    # "st":Ljava/lang/String;
    :cond_1e
    :goto_23
    :try_start_3d
    const-string v6, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2650
    const-string v6, "MAX_NUM_ACTIVE_CHANNELS_FOR_PARTIAL_SCANS:   "

    const-string v9, ""

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2651
    .restart local v5    # "st":Ljava/lang/String;
    const-string v6, "\n"

    const-string v9, ""

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/io/EOFException; {:try_start_3d .. :try_end_3d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_3d} :catch_3
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_5

    move-result-object v5

    .line 2653
    :try_start_3e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    .line 2654
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: maxNumActiveChannelsForPartialScans = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_21
    .catch Ljava/io/EOFException; {:try_start_3e .. :try_end_3e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_3e} :catch_3
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_5

    .line 2301
    .end local v5    # "st":Ljava/lang/String;
    :cond_1f
    :goto_24
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .restart local v5    # "st":Ljava/lang/String;
    :cond_20
    move v6, v8

    .line 2309
    goto/16 :goto_1

    .line 2311
    :catch_0
    move-exception v0

    .line 2312
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/io/EOFException; {:try_start_3f .. :try_end_3f} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_3
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_5

    goto/16 :goto_2

    .line 2661
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "st":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 2662
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "ignore":Ljava/io/EOFException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_25
    if-eqz v3, :cond_21

    .line 2664
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_22

    .line 2665
    const/4 v3, 0x0

    .line 2683
    .end local v1    # "ignore":Ljava/io/EOFException;
    :cond_21
    :goto_26
    if-eqz v3, :cond_22

    .line 2685
    :try_start_41
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_24

    .line 2690
    :cond_22
    :goto_27
    return-void

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "st":Ljava/lang/String;
    :cond_23
    move v6, v8

    .line 2320
    goto/16 :goto_3

    .line 2323
    :catch_2
    move-exception v0

    .line 2324
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_42
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/EOFException; {:try_start_42 .. :try_end_42} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_42} :catch_3
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_5

    goto/16 :goto_4

    .line 2670
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "st":Ljava/lang/String;
    :catch_3
    move-exception v1

    move-object v3, v4

    .line 2671
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "ignore":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_28
    if-eqz v3, :cond_21

    .line 2673
    :try_start_43
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_23

    .line 2674
    const/4 v3, 0x0

    goto :goto_26

    .end local v1    # "ignore":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "st":Ljava/lang/String;
    :cond_24
    move v6, v8

    .line 2332
    goto/16 :goto_5

    .line 2335
    :catch_4
    move-exception v0

    .line 2336
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_44
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_44} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_44} :catch_3
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_5

    goto/16 :goto_6

    .line 2679
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "st":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object v3, v4

    .line 2680
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error parsing configuration"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_26

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "st":Ljava/lang/String;
    :cond_25
    move v6, v8

    .line 2344
    goto/16 :goto_7

    .line 2347
    :catch_6
    move-exception v0

    .line 2348
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_45
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_26
    move v6, v8

    .line 2356
    goto/16 :goto_9

    .line 2359
    :catch_7
    move-exception v0

    .line 2360
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2372
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v0

    .line 2373
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2385
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_9
    move-exception v0

    .line 2386
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2397
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_a
    move-exception v0

    .line 2398
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 2408
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_b
    move-exception v0

    .line 2409
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2419
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_c
    move-exception v0

    .line 2420
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 2430
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_d
    move-exception v0

    .line 2431
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2442
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_e
    move-exception v0

    .line 2443
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 2453
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_f
    move-exception v0

    .line 2454
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 2464
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_10
    move-exception v0

    .line 2465
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 2476
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_11
    move-exception v0

    .line 2477
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 2487
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_12
    move-exception v0

    .line 2488
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 2498
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_13
    move-exception v0

    .line 2499
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 2510
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_14
    move-exception v0

    .line 2511
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 2521
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_15
    move-exception v0

    .line 2522
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 2533
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_16
    move-exception v0

    .line 2534
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 2544
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_17
    move-exception v0

    .line 2545
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 2556
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_18
    move-exception v0

    .line 2557
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 2567
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_19
    move-exception v0

    .line 2568
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 2579
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1a
    move-exception v0

    .line 2580
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2590
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1b
    move-exception v0

    .line 2591
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 2601
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1c
    move-exception v0

    .line 2602
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 2612
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1d
    move-exception v0

    .line 2613
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 2623
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1e
    move-exception v0

    .line 2624
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 2634
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1f
    move-exception v0

    .line 2635
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 2645
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_20
    move-exception v0

    .line 2646
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 2656
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_21
    move-exception v0

    .line 2657
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v6, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAutoJoinConfig: incorrect format :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/io/EOFException; {:try_start_45 .. :try_end_45} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_45} :catch_3
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_5

    goto/16 :goto_24

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "st":Ljava/lang/String;
    :cond_27
    move-object v3, v4

    .line 2681
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_26

    .line 2666
    .end local v2    # "key":Ljava/lang/String;
    .local v1, "ignore":Ljava/io/EOFException;
    :catch_22
    move-exception v0

    .line 2667
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error closing file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 2675
    .end local v0    # "e":Ljava/lang/Exception;
    .local v1, "ignore":Ljava/io/FileNotFoundException;
    :catch_23
    move-exception v0

    .line 2676
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error closing file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_26

    .line 2686
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ignore":Ljava/io/FileNotFoundException;
    :catch_24
    move-exception v0

    .line 2687
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAutoJoinStatus: Error closing file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_27

    .line 2679
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_25
    move-exception v0

    goto/16 :goto_29

    .line 2670
    :catch_26
    move-exception v1

    goto/16 :goto_28

    .line 2661
    :catch_27
    move-exception v1

    goto/16 :goto_25
.end method

.method private readIpAndProxyConfigurations()V
    .locals 7

    .prologue
    .line 2705
    sget-object v4, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v4}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2707
    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2725
    :cond_0
    return-void

    .line 2712
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2713
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2714
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2717
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v4, :cond_3

    .line 2719
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configuration found for missing network, nid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignored, networks.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2712
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2722
    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_1
.end method

.method private readNetworkHistory()V
    .locals 42

    .prologue
    .line 1973
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v8, :cond_0

    .line 1974
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory() path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1976
    :cond_0
    const/16 v24, 0x0

    .line 1978
    .local v24, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v25, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v41, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1980
    .end local v24    # "in":Ljava/io/DataInputStream;
    .local v25, "in":Ljava/io/DataInputStream;
    const/4 v15, 0x0

    .line 1982
    .local v15, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    const/16 v22, -0x1

    .line 1983
    .local v22, "id":I
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    .line 1984
    .local v26, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1985
    .local v4, "bssid":Ljava/lang/String;
    const/16 v37, 0x0

    .line 1987
    .local v37, "ssid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1988
    .local v7, "freq":I
    const/16 v39, 0x0

    .line 1989
    .local v39, "status":I
    const-wide/16 v34, 0x0

    .line 1990
    .local v34, "seen":J
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 1991
    .local v6, "rssi":I
    const/4 v5, 0x0

    .line 1992
    .local v5, "caps":Ljava/lang/String;
    const-string v8, "CONFIG:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1994
    if-eqz v15, :cond_2

    .line 1995
    const/4 v15, 0x0

    .line 1997
    :cond_2
    const-string v8, "CONFIG:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1998
    .local v16, "configKey":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2000
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .line 2003
    .local v30, "n":Ljava/lang/Integer;
    if-nez v30, :cond_5

    .line 2004
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory didnt find netid for hash="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2274
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "configKey":Ljava/lang/String;
    .end local v26    # "key":Ljava/lang/String;
    .end local v30    # "n":Ljava/lang/Integer;
    .end local v34    # "seen":J
    .end local v37    # "ssid":Ljava/lang/String;
    .end local v39    # "status":I
    :catch_0
    move-exception v23

    move-object/from16 v24, v25

    .line 2275
    .end local v22    # "id":I
    .end local v25    # "in":Ljava/io/DataInputStream;
    .local v23, "ignore":Ljava/io/EOFException;
    .restart local v24    # "in":Ljava/io/DataInputStream;
    :goto_1
    if-eqz v24, :cond_3

    .line 2277
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2286
    .end local v23    # "ignore":Ljava/io/EOFException;
    :cond_3
    :goto_2
    if-eqz v24, :cond_4

    .line 2288
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2293
    :cond_4
    :goto_3
    return-void

    .line 2009
    .end local v24    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "configKey":Ljava/lang/String;
    .restart local v22    # "id":I
    .restart local v25    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v30    # "n":Ljava/lang/Integer;
    .restart local v34    # "seen":J
    .restart local v37    # "ssid":Ljava/lang/String;
    .restart local v39    # "status":I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    .line 2010
    .restart local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v15, :cond_6

    .line 2011
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory didnt find config for netid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 2015
    :cond_6
    const/16 v39, 0x0

    .line 2016
    const/16 v37, 0x0

    .line 2017
    const/4 v4, 0x0

    .line 2018
    const/4 v7, 0x0

    .line 2019
    const-wide/16 v34, 0x0

    .line 2020
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 2021
    const/4 v5, 0x0

    .line 2023
    goto/16 :goto_0

    .end local v16    # "configKey":Ljava/lang/String;
    .end local v30    # "n":Ljava/lang/Integer;
    :cond_7
    if-eqz v15, :cond_1

    .line 2024
    const-string v8, "SSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2025
    const-string v8, "SSID:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2026
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v37

    .line 2027
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_2a

    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 2028
    const-string v8, "Error parsing network history file, mismatched SSIDs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 2029
    const/4 v15, 0x0

    .line 2030
    const/16 v37, 0x0

    .line 2036
    :cond_8
    :goto_4
    const-string v8, "FQDN:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2037
    const-string v8, "FQDN:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 2038
    .local v20, "fqdn":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 2039
    move-object/from16 v0, v20

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 2042
    .end local v20    # "fqdn":Ljava/lang/String;
    :cond_9
    const-string v8, "DEFAULT_GW:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2043
    const-string v8, "DEFAULT_GW:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2044
    .local v21, "gateway":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2045
    move-object/from16 v0, v21

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 2048
    .end local v21    # "gateway":Ljava/lang/String;
    :cond_a
    const-string v8, "AUTO_JOIN_STATUS:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2049
    const-string v8, "AUTO_JOIN_STATUS:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2050
    .local v38, "st":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2051
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 2054
    .end local v38    # "st":Ljava/lang/String;
    :cond_b
    const-string v8, "SUP_DIS_REASON:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2055
    const-string v8, "SUP_DIS_REASON:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 2056
    .local v32, "reason":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    .line 2057
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2060
    .end local v32    # "reason":Ljava/lang/String;
    :cond_c
    const-string v8, "SELF_ADDED:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2061
    const-string v8, "SELF_ADDED:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2062
    .local v36, "selfAdded":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 2063
    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 2066
    .end local v36    # "selfAdded":Ljava/lang/String;
    :cond_d
    const-string v8, "DID_SELF_ADD:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2067
    const-string v8, "DID_SELF_ADD:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 2068
    .local v18, "didSelfAdd":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 2069
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 2072
    .end local v18    # "didSelfAdd":Ljava/lang/String;
    :cond_e
    const-string v8, "NO_INTERNET_ACCESS_REPORTS :   "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2073
    const-string v8, "NO_INTERNET_ACCESS_REPORTS :   "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2074
    .local v10, "access":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2075
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 2078
    .end local v10    # "access":Ljava/lang/String;
    :cond_f
    const-string v8, "VALIDATED_INTERNET_ACCESS:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2079
    const-string v8, "VALIDATED_INTERNET_ACCESS:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2080
    .restart local v10    # "access":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2081
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 2084
    .end local v10    # "access":Ljava/lang/String;
    :cond_10
    const-string v8, "EPHEMERAL:   "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2085
    const-string v8, "EPHEMERAL:   "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2086
    .restart local v10    # "access":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2087
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 2090
    .end local v10    # "access":Ljava/lang/String;
    :cond_11
    const-string v8, "CREATOR_UID_KEY:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2091
    const-string v8, "CREATOR_UID_KEY:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2092
    .local v40, "uid":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2093
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 2096
    .end local v40    # "uid":Ljava/lang/String;
    :cond_12
    const-string v8, "BLACKLIST_MILLI:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2097
    const-string v8, "BLACKLIST_MILLI:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 2098
    .local v29, "milli":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 2099
    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v15, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 2102
    .end local v29    # "milli":Ljava/lang/String;
    :cond_13
    const-string v8, "CONNECT_FAILURES:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2103
    const-string v8, "CONNECT_FAILURES:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2104
    .local v31, "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2105
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 2108
    .end local v31    # "num":Ljava/lang/String;
    :cond_14
    const-string v8, "IP_CONFIG_FAILURES:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2109
    const-string v8, "IP_CONFIG_FAILURES:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2110
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2111
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 2114
    .end local v31    # "num":Ljava/lang/String;
    :cond_15
    const-string v8, "AUTH_FAILURES:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2115
    const-string v8, "AUTH_FAILURES:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2116
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2117
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 2120
    .end local v31    # "num":Ljava/lang/String;
    :cond_16
    const-string v8, "SCORER_OVERRIDE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2121
    const-string v8, "SCORER_OVERRIDE:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2122
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2123
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 2126
    .end local v31    # "num":Ljava/lang/String;
    :cond_17
    const-string v8, "SCORER_OVERRIDE_AND_SWITCH:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 2127
    const-string v8, "SCORER_OVERRIDE_AND_SWITCH:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2128
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2129
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 2132
    .end local v31    # "num":Ljava/lang/String;
    :cond_18
    const-string v8, "NUM_ASSOCIATION:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2133
    const-string v8, "NUM_ASSOCIATION:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2134
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2135
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 2138
    .end local v31    # "num":Ljava/lang/String;
    :cond_19
    const-string v8, "JOIN_ATTEMPT_BOOST:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2139
    const-string v8, "JOIN_ATTEMPT_BOOST:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2140
    .restart local v31    # "num":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v31

    .line 2141
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 2144
    .end local v31    # "num":Ljava/lang/String;
    :cond_1a
    const-string v8, "CONNECT_UID_KEY:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 2145
    const-string v8, "CONNECT_UID_KEY:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2146
    .restart local v40    # "uid":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2147
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 2150
    .end local v40    # "uid":Ljava/lang/String;
    :cond_1b
    const-string v8, "UPDATE_UID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 2151
    const-string v8, "UPDATE_UID:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2152
    .restart local v40    # "uid":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v40

    .line 2153
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2156
    .end local v40    # "uid":Ljava/lang/String;
    :cond_1c
    const-string v8, "FAILURE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 2157
    const-string v8, "FAILURE:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    .line 2158
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    const-string v9, "\n"

    const-string v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    .line 2161
    :cond_1d
    const-string v8, "PEER_CONFIGURATION:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2162
    const-string v8, "PEER_CONFIGURATION:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 2163
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    const-string v9, "\n"

    const-string v41, ""

    move-object/from16 v0, v41

    invoke-virtual {v8, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 2167
    :cond_1e
    const-string v8, "CHOICE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 2168
    const-string v8, "CHOICE:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 2169
    .local v14, "choiceStr":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v14, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 2170
    const-string v16, ""

    .line 2171
    .restart local v16    # "configKey":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2172
    .local v13, "choice":I
    sget-object v8, Lcom/android/server/wifi/WifiConfigStore;->mConnectChoice:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 2173
    .local v28, "match":Ljava/util/regex/Matcher;
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_2b

    .line 2174
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WifiConfigStore: connectChoice:  Couldnt match pattern : "

    move-object/from16 v0, v41

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    .end local v13    # "choice":I
    .end local v14    # "choiceStr":Ljava/lang/String;
    .end local v16    # "configKey":Ljava/lang/String;
    .end local v28    # "match":Ljava/util/regex/Matcher;
    :cond_1f
    :goto_5
    const-string v8, "LINK:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 2193
    const-string v8, "LINK:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2194
    .restart local v16    # "configKey":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2195
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v8, :cond_20

    .line 2196
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 2198
    :cond_20
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v8, :cond_21

    .line 2199
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    .end local v16    # "configKey":Ljava/lang/String;
    :cond_21
    const-string v8, "BSSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2204
    const-string v8, "BSSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 2205
    const-string v8, "BSSID:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2206
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2207
    const/4 v7, 0x0

    .line 2208
    const-wide/16 v34, 0x0

    .line 2209
    sget v6, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 2210
    const-string v5, ""

    .line 2211
    const/16 v39, 0x0

    .line 2214
    :cond_22
    const-string v8, "RSSI:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 2215
    const-string v8, "RSSI:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 2216
    .local v27, "lvl":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 2217
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2220
    .end local v27    # "lvl":Ljava/lang/String;
    :cond_23
    const-string v8, "BSSID_STATUS:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 2221
    const-string v8, "BSSID_STATUS:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2222
    .restart local v38    # "st":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    .line 2223
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 2226
    .end local v38    # "st":Ljava/lang/String;
    :cond_24
    const-string v8, "FREQ:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 2227
    const-string v8, "FREQ:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2228
    .local v12, "channel":Ljava/lang/String;
    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 2229
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2232
    .end local v12    # "channel":Ljava/lang/String;
    :cond_25
    const-string v8, "DATE:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 2244
    :cond_26
    const-string v8, "/BSSID:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2245
    if-eqz v4, :cond_28

    if-eqz v37, :cond_28

    .line 2247
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v8, :cond_27

    .line 2248
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 2250
    :cond_27
    invoke-static/range {v37 .. v37}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 2251
    .local v3, "wssid":Landroid/net/wifi/WifiSsid;
    new-instance v2, Landroid/net/wifi/ScanResult;

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 2253
    .local v2, "result":Landroid/net/wifi/ScanResult;
    move-wide/from16 v0, v34

    iput-wide v0, v2, Landroid/net/wifi/ScanResult;->seen:J

    .line 2254
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    move/from16 v0, v39

    iput v0, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 2259
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "wssid":Landroid/net/wifi/WifiSsid;
    :cond_28
    const-string v8, "DELETED_CRC32:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 2260
    const-string v8, "DELETED_CRC32:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 2261
    .local v17, "crc":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2262
    .local v11, "c":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2264
    .end local v11    # "c":Ljava/lang/Long;
    .end local v17    # "crc":Ljava/lang/String;
    :cond_29
    const-string v8, "DELETED_EPHEMERAL:  "

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2265
    const-string v8, "DELETED_EPHEMERAL:  "

    const-string v9, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 2266
    .local v33, "s":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2267
    const-string v8, "\n"

    const-string v9, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    .line 2268
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2282
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v26    # "key":Ljava/lang/String;
    .end local v33    # "s":Ljava/lang/String;
    .end local v34    # "seen":J
    .end local v37    # "ssid":Ljava/lang/String;
    .end local v39    # "status":I
    :catch_1
    move-exception v19

    move-object/from16 v24, v25

    .line 2283
    .end local v22    # "id":I
    .end local v25    # "in":Ljava/io/DataInputStream;
    .local v19, "e":Ljava/io/IOException;
    .restart local v24    # "in":Ljava/io/DataInputStream;
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory: No config file, revert to default"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2032
    .end local v19    # "e":Ljava/io/IOException;
    .end local v24    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "bssid":Ljava/lang/String;
    .restart local v5    # "caps":Ljava/lang/String;
    .restart local v6    # "rssi":I
    .restart local v7    # "freq":I
    .restart local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v22    # "id":I
    .restart local v25    # "in":Ljava/io/DataInputStream;
    .restart local v26    # "key":Ljava/lang/String;
    .restart local v34    # "seen":J
    .restart local v37    # "ssid":Ljava/lang/String;
    .restart local v39    # "status":I
    :cond_2a
    :try_start_5
    move-object/from16 v0, v37

    iput-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_4

    .line 2177
    .restart local v13    # "choice":I
    .restart local v14    # "choiceStr":Ljava/lang/String;
    .restart local v16    # "configKey":Ljava/lang/String;
    .restart local v28    # "match":Ljava/util/regex/Matcher;
    :cond_2b
    const/4 v8, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v16

    .line 2179
    const/4 v8, 0x2

    :try_start_6
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v13

    .line 2183
    :goto_7
    if-lez v13, :cond_1f

    .line 2184
    :try_start_7
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-nez v8, :cond_2c

    .line 2185
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v15, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 2187
    :cond_2c
    iget-object v8, v15, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_5

    .line 2180
    :catch_2
    move-exception v19

    .line 2181
    .local v19, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    goto :goto_7

    .line 2278
    .end local v4    # "bssid":Ljava/lang/String;
    .end local v5    # "caps":Ljava/lang/String;
    .end local v6    # "rssi":I
    .end local v7    # "freq":I
    .end local v13    # "choice":I
    .end local v14    # "choiceStr":Ljava/lang/String;
    .end local v15    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "configKey":Ljava/lang/String;
    .end local v19    # "e":Ljava/lang/NumberFormatException;
    .end local v22    # "id":I
    .end local v25    # "in":Ljava/io/DataInputStream;
    .end local v26    # "key":Ljava/lang/String;
    .end local v28    # "match":Ljava/util/regex/Matcher;
    .end local v34    # "seen":J
    .end local v37    # "ssid":Ljava/lang/String;
    .end local v39    # "status":I
    .restart local v23    # "ignore":Ljava/io/EOFException;
    .restart local v24    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v19

    .line 2279
    .local v19, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory: Error reading file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2289
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v23    # "ignore":Ljava/io/EOFException;
    :catch_4
    move-exception v19

    .line 2290
    .restart local v19    # "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readNetworkHistory: Error closing file"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2282
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v19

    goto/16 :goto_6

    .line 2274
    :catch_6
    move-exception v23

    goto/16 :goto_1
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1700
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 1701
    .local v4, "start":J
    invoke-direct {p0, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1702
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 1704
    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readNetworkVariableFromSupplicantFile ssid=["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "] key="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " duration="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v6, v2, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1708
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3795
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3796
    .local v7, "netId":I
    if-gez v7, :cond_0

    .line 3997
    :goto_0
    return-void

    .line 3806
    :cond_0
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "ssid"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3807
    .local v10, "value":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 3808
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x22

    if-eq v11, v12, :cond_4

    .line 3809
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3819
    :goto_1
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "bssid"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3820
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3821
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 3826
    :goto_2
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "priority"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3827
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 3828
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3830
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3835
    :cond_1
    :goto_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "scan_ssid"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3836
    const/4 v11, 0x0

    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3837
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3839
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3844
    :cond_2
    :goto_5
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "wep_tx_keyidx"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3845
    const/4 v11, -0x1

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3846
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 3848
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3853
    :cond_3
    :goto_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/4 v11, 0x4

    if-ge v2, v11, :cond_9

    .line 3854
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    sget-object v12, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3856
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 3857
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v10, v11, v2

    .line 3853
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3813
    .end local v2    # "i":I
    :cond_4
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 3816
    :cond_5
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 3823
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_2

    .line 3839
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 3859
    .restart local v2    # "i":I
    :cond_8
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v2

    goto :goto_8

    .line 3863
    :cond_9
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "psk"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3864
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 3865
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3870
    :goto_9
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "proto"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3872
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 3873
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3874
    .local v9, "vals":[Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_a
    if-ge v3, v6, :cond_c

    aget-object v8, v0, v3

    .line 3875
    .local v8, "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3877
    .local v4, "index":I
    if-ltz v4, :cond_a

    .line 3878
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3874
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3867
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_b
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9

    .line 3883
    :cond_c
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "key_mgmt"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3885
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    .line 3886
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3887
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_b
    if-ge v3, v6, :cond_e

    aget-object v8, v0, v3

    .line 3888
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3890
    .restart local v4    # "index":I
    if-ltz v4, :cond_d

    .line 3891
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3887
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3896
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_e
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "auth_alg"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3898
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    .line 3899
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3900
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_c
    if-ge v3, v6, :cond_10

    aget-object v8, v0, v3

    .line 3901
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3903
    .restart local v4    # "index":I
    if-ltz v4, :cond_f

    .line 3904
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3900
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3909
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_10
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "pairwise"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3911
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 3912
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3913
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_d
    if-ge v3, v6, :cond_12

    aget-object v8, v0, v3

    .line 3914
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3916
    .restart local v4    # "index":I
    if-ltz v4, :cond_11

    .line 3917
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3913
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3922
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_12
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v12, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v13, "group"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3924
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    .line 3925
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 3926
    .restart local v9    # "vals":[Ljava/lang/String;
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_e
    if-ge v3, v6, :cond_14

    aget-object v8, v0, v3

    .line 3927
    .restart local v8    # "val":Ljava/lang/String;
    sget-object v11, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-direct {p0, v8, v11}, Lcom/android/server/wifi/WifiConfigStore;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3929
    .restart local v4    # "index":I
    if-ltz v4, :cond_13

    .line 3930
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 3926
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 3935
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "index":I
    .end local v6    # "len$":I
    .end local v8    # "val":Ljava/lang/String;
    .end local v9    # "vals":[Ljava/lang/String;
    :cond_14
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v11, :cond_15

    .line 3936
    new-instance v11, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v11}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3938
    :cond_15
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 3939
    .local v1, "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ENTERPRISE_CONFIG_SUPPLICANT_KEYS:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_f
    if-ge v3, v6, :cond_18

    aget-object v5, v0, v3

    .line 3940
    .local v5, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v11, v7, v5}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3941
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 3942
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->enterpriseConfigKeyShouldBeQuoted(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16

    .line 3943
    invoke-static {v10}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3945
    :cond_16
    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3947
    :cond_17
    const-string v11, "NULL"

    invoke-virtual {v1, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 3951
    .end local v5    # "key":Ljava/lang/String;
    :cond_18
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v11, v7}, Lcom/android/server/wifi/WifiConfigStore;->migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 3952
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 3955
    :cond_19
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigStore;->migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 3958
    sget-boolean v11, Lcom/android/server/wifi/WifiConfigStore;->mMtkEapSimAka:Z

    if-eqz v11, :cond_1a

    .line 3959
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "imsi"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3960
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1b

    .line 3961
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 3966
    :goto_11
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "sim_slot"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3967
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1c

    .line 3968
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 3983
    :cond_1a
    :goto_12
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "pac_file"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3984
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 3985
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    .line 3990
    :goto_13
    iget-object v11, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v12, "phase1"

    invoke-virtual {v11, v7, v12}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3991
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1e

    .line 3992
    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    goto/16 :goto_0

    .line 3963
    :cond_1b
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    goto :goto_11

    .line 3970
    :cond_1c
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    goto :goto_12

    .line 3987
    :cond_1d
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->pacFile:Ljava/lang/String;

    goto :goto_13

    .line 3994
    :cond_1e
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    goto/16 :goto_0

    .line 3849
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "enterpriseFields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v11

    goto/16 :goto_6

    .line 3840
    :catch_1
    move-exception v11

    goto/16 :goto_5

    .line 3831
    :catch_2
    move-exception v11

    goto/16 :goto_3
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1647
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1648
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1649
    .local v4, "reader":Ljava/io/BufferedReader;
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readNetworkVariablesFromSupplicantFile key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1652
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1654
    .local v1, "found":Z
    const/4 v3, 0x0

    .line 1655
    .local v3, "networkSsid":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1657
    .local v8, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_6

    .line 1659
    const-string v9, "[ \\t]*network=\\{"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1660
    const/4 v1, 0x1

    .line 1661
    const/4 v3, 0x0

    .line 1662
    const/4 v8, 0x0

    .line 1669
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 1670
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1671
    .local v7, "trimmedLine":Ljava/lang/String;
    const-string v9, "ssid="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1672
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1677
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v8, :cond_3

    .line 1678
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    .end local v7    # "trimmedLine":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1663
    :cond_4
    const-string v9, "[ \\t]*\\}"

    invoke-virtual {v2, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1664
    const/4 v1, 0x0

    .line 1665
    const/4 v3, 0x0

    .line 1666
    const/4 v8, 0x0

    goto :goto_1

    .line 1673
    .restart local v7    # "trimmedLine":Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1674
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    goto :goto_2

    .line 1688
    .end local v7    # "trimmedLine":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 1689
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    move-object v4, v5

    .line 1696
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "networkSsid":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_8
    :goto_3
    return-object v6

    .line 1691
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "found":Z
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "networkSsid":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 1694
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1682
    .end local v1    # "found":Z
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "networkSsid":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1683
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1688
    :cond_9
    if-eqz v4, :cond_8

    .line 1689
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1691
    :catch_2
    move-exception v9

    goto :goto_3

    .line 1684
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1685
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1688
    :cond_a
    if-eqz v4, :cond_8

    .line 1689
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 1691
    :catch_4
    move-exception v9

    goto :goto_3

    .line 1687
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1688
    :goto_6
    if-eqz v4, :cond_b

    .line 1689
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1693
    :cond_b
    :goto_7
    throw v9

    .line 1691
    :catch_5
    move-exception v10

    goto :goto_7

    .line 1687
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "found":Z
    .restart local v3    # "networkSsid":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 1684
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 1682
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private removeConfigAndSendBroadcastIfNeeded(I)Z
    .locals 7
    .param p1, "netId"    # I

    .prologue
    const/4 v6, 0x1

    .line 1186
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1187
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_6

    .line 1188
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_0

    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1194
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1199
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_2

    .line 1200
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V

    .line 1203
    :cond_2
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1205
    :cond_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1207
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 1208
    .local v1, "csum":Ljava/util/zip/Checksum;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1209
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-interface {v1, v2, v3, v4}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1210
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config.id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  crc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1219
    .end local v1    # "csum":Ljava/util/zip/Checksum;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 1223
    invoke-direct {p0, v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1224
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 1226
    :cond_6
    return v6
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 4000
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4001
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 4003
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4005
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    .prologue
    .line 1507
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1509
    const-string v1, "multipleChanges"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1510
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1511
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1495
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1497
    const-string v1, "multipleChanges"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1498
    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1499
    const-string v1, "changeReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1500
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1501
    return-void
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 5

    .prologue
    .line 2694
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2695
    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2696
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    .line 2697
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2701
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-super {p0, v3, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2702
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 8
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3692
    const/4 v1, 0x0

    .line 3693
    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    .line 3695
    .local v3, "proxyChanged":Z
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_0

    .line 3696
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeIpAndProxyConfigurationsOnChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3701
    :cond_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$2;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 3720
    const-string v6, "Ignore invalid ip assignment during write"

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3724
    :cond_1
    :goto_0
    :pswitch_0
    sget-object v6, Lcom/android/server/wifi/WifiConfigStore$2;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 3745
    const-string v4, "Ignore invalid proxy configuration during write"

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3749
    :cond_2
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_3

    .line 3750
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 3751
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 3752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IP config changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3753
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " static configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3759
    :cond_3
    if-eqz v3, :cond_4

    .line 3760
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 3761
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 3762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy changed SSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3763
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3764
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " proxyProperties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3768
    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    .line 3769
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeIpAndProxyConfigurations()V

    .line 3770
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 3773
    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    return-object v4

    .line 3703
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_7

    .line 3704
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3706
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    move v1, v4

    .line 3710
    :goto_2
    goto/16 :goto_0

    :cond_8
    move v1, v5

    .line 3706
    goto :goto_2

    .line 3712
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 3713
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3727
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 3728
    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 3730
    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    .line 3731
    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    :goto_3
    goto/16 :goto_1

    :cond_9
    move v3, v5

    goto :goto_3

    .line 3733
    :cond_a
    if-eqz v0, :cond_b

    move v3, v4

    .line 3735
    :goto_4
    goto/16 :goto_1

    :cond_b
    move v3, v5

    .line 3733
    goto :goto_4

    .line 3737
    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    if-eq v4, v5, :cond_2

    .line 3738
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 3701
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 3724
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addDisconnectNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 4658
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v1

    .line 4659
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4660
    monitor-exit v1

    .line 4661
    return-void

    .line 4660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    .line 1150
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "addOrUpdateNetwork id="

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1152
    :cond_0
    const-string v2, "WifiConfigStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v1

    .line 1156
    .local v1, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1157
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1158
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    .line 1159
    iget-boolean v2, v1, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1164
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v2

    return v2

    .line 1159
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public associateWithConfiguration(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 18
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 3347
    const/4 v13, 0x0

    .line 3348
    .local v13, "doNotAdd":Z
    invoke-static/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v10

    .line 3349
    .local v10, "configKey":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 3350
    const-string v2, "associateWithConfiguration(): no config key "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3351
    const/16 v16, 0x0

    .line 3469
    :cond_0
    :goto_0
    return-object v16

    .line 3355
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3357
    .local v8, "SSID":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_2

    .line 3358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): try "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3361
    :cond_2
    new-instance v11, Ljava/util/zip/CRC32;

    invoke-direct {v11}, Ljava/util/zip/CRC32;-><init>()V

    .line 3362
    .local v11, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-interface {v11, v2, v3, v4}, Ljava/util/zip/Checksum;->update([BII)V

    .line 3363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3364
    const/4 v13, 0x1

    .line 3367
    :cond_3
    const/4 v9, 0x0

    .line 3368
    .local v9, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiConfiguration;

    .line 3369
    .local v16, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v12, 0x0

    .line 3371
    .local v12, "doLink":Z
    move-object/from16 v0, v16

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5

    move-object/from16 v0, v16

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_6

    .line 3373
    :cond_5
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): skip selfadd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3378
    :cond_6
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3379
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): skip non-PSK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3384
    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3385
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration(): found it!!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3389
    :cond_8
    if-nez v13, :cond_a

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v2, :cond_a

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x6

    if-gt v2, v3, :cond_a

    .line 3390
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3391
    .local v5, "bssid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration result.BSSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result.SSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " link.BSSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " link.SSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3406
    const/4 v12, 0x1

    .line 3412
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_a
    if-eqz v12, :cond_4

    .line 3415
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_b

    .line 3416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration: try to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and associate it with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3420
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 3421
    if-eqz v9, :cond_14

    .line 3422
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 3423
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 3424
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3425
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 3426
    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3428
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_c

    if-eqz v9, :cond_c

    .line 3429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration: got a config from beacon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3433
    :cond_c
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "psk"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3434
    .local v17, "psk":Ljava/lang/String;
    if-eqz v17, :cond_12

    .line 3435
    move-object/from16 v0, v17

    iput-object v0, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 3436
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_d

    .line 3437
    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 3438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " transfer PSK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3442
    :cond_d
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_e

    .line 3443
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v16

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3445
    :cond_e
    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v2, :cond_f

    .line 3446
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3448
    :cond_f
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    iget-object v2, v9, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 3453
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 3461
    .end local v17    # "psk":Ljava/lang/String;
    :cond_10
    :goto_2
    if-eqz v9, :cond_14

    .end local v12    # "doLink":Z
    .end local v16    # "link":Landroid/net/wifi/WifiConfiguration;
    :cond_11
    move-object/from16 v16, v9

    .line 3469
    goto/16 :goto_0

    .line 3456
    .restart local v12    # "doLink":Z
    .restart local v16    # "link":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "psk":Ljava/lang/String;
    :cond_12
    const/4 v9, 0x0

    goto :goto_2

    .line 3459
    .end local v17    # "psk":Ljava/lang/String;
    :cond_13
    const/4 v9, 0x0

    goto :goto_2

    .line 3463
    :cond_14
    sget-boolean v2, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v2, :cond_4

    if-eqz v9, :cond_4

    .line 3464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "associateWithConfiguration: success, created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method disableAllNetworks()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1271
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableAllNetworks"

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1272
    :cond_0
    const/4 v2, 0x0

    .line 1273
    .local v2, "networkDisabled":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1274
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v5, :cond_1

    .line 1275
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1276
    const/4 v2, 0x1

    .line 1277
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1279
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable network failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1284
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-eqz v2, :cond_4

    .line 1285
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1287
    :cond_4
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 1094
    if-nez p1, :cond_0

    .line 1095
    const/4 v1, 0x0

    .line 1114
    :goto_0
    return-object v1

    .line 1098
    :cond_0
    const/4 v1, 0x0

    .line 1100
    .local v1, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forget ephemeral SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1103
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1104
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_1

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ephemeral config in disableEphemeralNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1106
    move-object v1, v0

    goto :goto_1

    .line 1112
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    goto :goto_0
.end method

.method disableNetwork(I)Z
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 1294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v0

    return v0
.end method

.method disableNetwork(II)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 1304
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "disableNetwork"

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1305
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiNative;->disableNetwork(I)Z

    move-result v2

    .line 1306
    .local v2, "ret":Z
    const/4 v1, 0x0

    .line 1307
    .local v1, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1309
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_1

    .line 1310
    if-eqz v0, :cond_1

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNetwork netId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SSID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " disabled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1320
    :cond_1
    if-eqz v0, :cond_3

    .line 1321
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v3, v4, :cond_2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v3, v6, :cond_2

    .line 1323
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1324
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1325
    move-object v1, v0

    .line 1329
    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 1330
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 1331
    const-string v3, "disableNetwork by DISABLED_AUTH_FAILURE set autojoin status"

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1337
    :cond_2
    if-eqz v0, :cond_3

    if-ne p2, v6, :cond_3

    .line 1341
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1342
    const/16 v3, 0xa1

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1345
    :cond_3
    if-eqz v1, :cond_4

    .line 1346
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    .line 1349
    :cond_4
    return v2

    .line 1311
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method driverRoamedFrom(Landroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1000
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->bandPreferenceBoostThreshold5:I

    add-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_0

    .line 1004
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1005
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1006
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 1007
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1008
    .local v1, "result":Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    .line 1009
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 1014
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4089
    const-string v2, "Dump of WifiConfigStore"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4091
    const-string v2, "Configured networks"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4092
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4093
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 4095
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4097
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v2, :cond_1

    .line 4098
    const-string v2, "WifiConfigStore - Log Begin ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4099
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4100
    const-string v2, "WifiConfigStore - Log End ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    :cond_1
    return-void
.end method

.method enableAllNetworks()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 802
    .local v4, "now":J
    const/4 v3, 0x0

    .line 804
    .local v3, "networkEnabledStateChanged":Z
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v6}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasCustomizedAutoConnect()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 805
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v6}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 806
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v1

    .line 807
    .local v1, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 808
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v6, v12, :cond_0

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v6, :cond_0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v7, 0x80

    if-gt v6, v7, :cond_0

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 814
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v11, :cond_1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v14, :cond_1

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v6, v13, :cond_2

    .line 817
    :cond_1
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v6, v4, v6

    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 823
    :cond_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v10}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 824
    const/4 v3, 0x1

    .line 825
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 827
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 828
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 829
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 831
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 833
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable network failed on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 839
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 840
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v6, v12, :cond_5

    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v6, :cond_5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v7, 0x80

    if-gt v6, v7, :cond_5

    .line 845
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v11, :cond_6

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v6, v14, :cond_6

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v6, v13, :cond_7

    .line 848
    :cond_6
    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_7

    iget-wide v6, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v6, v4, v6

    iget v8, p0, Lcom/android/server/wifi/WifiConfigStore;->wifiConfigBlacklistMinTimeMilli:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_5

    .line 854
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v10}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 855
    const/4 v3, 0x1

    .line 856
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 858
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 859
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 860
    iput v10, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 862
    invoke-virtual {v0, v10}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_1

    .line 864
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable network failed on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 869
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    if-eqz v3, :cond_a

    .line 870
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 871
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 874
    :cond_a
    return-void
.end method

.method enableNetwork(IZ)Z
    .locals 6
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1239
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move-result v2

    .line 1240
    .local v2, "ret":Z
    if-eqz p2, :cond_2

    .line 1241
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "enableNetwork(disableOthers=true) "

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1242
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1255
    :cond_1
    :goto_0
    return v2

    .line 1244
    :cond_2
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v3, :cond_3

    const-string v3, "enableNetwork(disableOthers=false) "

    invoke-direct {p0, v3, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1245
    :cond_3
    const/4 v1, 0x0

    .line 1246
    .local v1, "enabledNetwork":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    monitor-enter v4

    .line 1247
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    move-object v1, v0

    .line 1248
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    if-eqz v1, :cond_1

    .line 1251
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto :goto_0

    .line 1248
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method enableNetworkWithoutBroadcast(IZ)Z
    .locals 4
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1259
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    move-result v1

    .line 1261
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1262
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1264
    :cond_0
    if-eqz p2, :cond_1

    .line 1265
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabledExcept(I)V

    .line 1267
    :cond_1
    return v1
.end method

.method enableVerboseLogging(I)V
    .locals 2
    .param p1, "verbose"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 587
    iput p1, p0, Lcom/android/server/wifi/WifiConfigStore;->enableVerboseLogging:I

    .line 588
    if-lez p1, :cond_0

    .line 589
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 590
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 595
    :goto_0
    if-lez p1, :cond_1

    .line 596
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    .line 601
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    .line 602
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    .line 605
    return-void

    .line 592
    :cond_0
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    goto :goto_0

    .line 598
    :cond_1
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1124
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v2, :cond_0

    const-string v2, "forgetNetwork"

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1126
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    move-result v0

    .line 1127
    .local v0, "remove":Z
    if-nez v0, :cond_1

    .line 1136
    :goto_0
    return v1

    .line 1131
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1132
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0

    .line 1135
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1136
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4105
    sget-object v0, Lcom/android/server/wifi/WifiConfigStore;->ipConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method getDisconnectNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4671
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v4

    .line 4672
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4673
    .local v1, "netId":Ljava/lang/Integer;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4675
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netId":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4676
    return-object v2
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    return-object v0
.end method

.method getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 4286
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getCredentialsBySsidMap()Ljava/util/Map;

    move-result-object v0

    .line 689
    .local v0, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1467
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1468
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 1471
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRecentConfiguredNetworks(IZ)Ljava/util/List;
    .locals 6
    .param p1, "milli"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 715
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_0

    .line 723
    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiConfiguration;->setVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 724
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v3, :cond_0

    .line 727
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v4, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v4, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-eq v3, v4, :cond_0

    .line 731
    :cond_1
    if-eqz p2, :cond_2

    .line 732
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 734
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 737
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v2
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1433
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    .line 1436
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 775
    const/4 v0, 0x0

    .line 776
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    goto :goto_0
.end method

.method getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 784
    if-nez p1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-object v3

    .line 786
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 787
    .local v0, "hash":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 789
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 790
    .local v1, "n":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 793
    .local v2, "netId":I
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    goto :goto_0
.end method

.method getconfiguredNetworkSize()I
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 702
    const/4 v0, 0x0

    .line 703
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method handleBSSIDBlackList(ILjava/lang/String;Z)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 4260
    const/4 v1, 0x0

    .line 4261
    .local v1, "found":Z
    if-nez p2, :cond_0

    move v2, v1

    .line 4282
    .end local v1    # "found":Z
    .local v2, "found":I
    :goto_0
    return v2

    .line 4265
    .end local v2    # "found":I
    .restart local v1    # "found":Z
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4266
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v6, :cond_1

    .line 4267
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 4268
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4269
    if-eqz p3, :cond_3

    .line 4270
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    goto :goto_1

    .line 4275
    :cond_3
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4276
    const/4 v1, 0x1

    goto :goto_1

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    move v2, v1

    .line 4282
    .restart local v2    # "found":I
    goto :goto_0
.end method

.method handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 4237
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4238
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    .line 4239
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    sget v2, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4243
    :cond_1
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+4) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4256
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastUnwantedNetworkDisconnectTimestamp:J

    .line 4257
    return-void

    .line 4249
    :cond_3
    sget v1, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBadNetworkDisconnectReport (+8) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "enabled"    # Z
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "BSSID"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x80

    .line 4292
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 4293
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 4294
    if-eqz p2, :cond_1

    .line 4295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID re-enabled for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4302
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-ne v4, v8, :cond_0

    .line 4303
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4403
    :cond_0
    :goto_0
    return-void

    .line 4306
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSID temp disabled for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had autoJoinStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " self added "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemeral "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4309
    if-eqz p3, :cond_2

    .line 4310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4312
    :cond_2
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v4, :cond_3

    iget-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 4316
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    goto :goto_0

    .line 4318
    :cond_3
    if-eqz p3, :cond_0

    .line 4319
    const-string v4, "no identity"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4320
    const/16 v4, 0xa0

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no identity blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4396
    :cond_4
    :goto_1
    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4397
    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 4398
    iput-object p3, v1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    goto/16 :goto_0

    .line 4326
    :cond_5
    const-string v4, "WRONG_KEY"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "AUTH_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4332
    :cond_6
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 4333
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxAuthErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    .line 4334
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4336
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4342
    :cond_7
    const-string v4, "DHCP FAILURE"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4343
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 4344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 4345
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->getMaxDhcpRetries()I

    move-result v2

    .line 4347
    .local v2, "maxRetries":I
    if-lez v2, :cond_8

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-le v4, v2, :cond_8

    .line 4352
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4354
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DHCP failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4361
    :cond_8
    const/4 v3, 0x0

    .line 4362
    .local v3, "result":Landroid/net/wifi/ScanResult;
    const-string v0, ""

    .line 4363
    .local v0, "bssidDbg":Ljava/lang/String;
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v4, :cond_9

    if-eqz p4, :cond_9

    .line 4364
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v4, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 4366
    .restart local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_9
    if-eqz v3, :cond_a

    .line 4367
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 4368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ipfail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4369
    iget v4, v3, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-le v4, v9, :cond_a

    .line 4371
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v4, p4}, Lcom/android/server/wifi/WifiNative;->addToBlacklist(Ljava/lang/String;)Z

    .line 4372
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/net/wifi/ScanResult;->setAutoJoinStatus(I)V

    .line 4377
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blacklisted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to IP config failures, count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " disableReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4384
    .end local v0    # "bssidDbg":Ljava/lang/String;
    .end local v2    # "maxRetries":I
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_b
    const-string v4, "CONN_FAILED"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4385
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 4386
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iget v5, p0, Lcom/android/server/wifi/WifiConfigStore;->maxConnectionErrorsToBlacklist:I

    if-le v4, v5, :cond_4

    .line 4387
    invoke-virtual {v1, v8}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 4389
    const/4 v4, 0x4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connection failure, blacklist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num failures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method installKeys(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Z
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4406
    const/4 v6, 0x1

    .line 4407
    .local v6, "ret":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRPKEY_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4408
    .local v4, "privKeyName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "USRCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4409
    .local v8, "userCertName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CACERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4410
    .local v0, "caCertName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 4411
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v2

    .line 4412
    .local v2, "privKeyData":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4415
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in hardware backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-virtual {v10, v4, v2, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    .line 4427
    :goto_0
    if-nez v6, :cond_1

    move v7, v6

    .line 4517
    .end local v2    # "privKeyData":[B
    .end local v6    # "ret":Z
    .local v7, "ret":Z
    :goto_1
    return v7

    .line 4423
    .end local v7    # "ret":Z
    .restart local v2    # "privKeyData":[B
    .restart local v6    # "ret":Z
    :cond_0
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in software backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x1

    invoke-virtual {v10, v4, v2, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    goto :goto_0

    .line 4431
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v8, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4432
    if-nez v6, :cond_2

    .line 4434
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v4, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move v7, v6

    .line 4435
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto :goto_1

    .line 4439
    .end local v2    # "privKeyData":[B
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 4440
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4441
    if-nez v6, :cond_4

    .line 4442
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 4444
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v4, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4445
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v8, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_3
    move v7, v6

    .line 4447
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto :goto_1

    .line 4452
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_4
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 4453
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    .line 4457
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 4458
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 4459
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    .line 4463
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "keystore://WAPIUSERCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4464
    .local v5, "privKeyName2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAPIUSERCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4465
    .local v9, "userCertName2":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WAPISERVERCERT_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4466
    .local v1, "caCertName2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 4467
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 4468
    .local v3, "privKeyData2":[B
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/wifi/WifiConfigStore;->isHardwareBackedKey(Ljava/security/PrivateKey;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4471
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in hardware backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v3, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    .line 4483
    :goto_2
    if-nez v6, :cond_8

    move v7, v6

    .line 4484
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1

    .line 4479
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_7
    const-string v10, "WifiConfigStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "importing keys "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in software backed store"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4480
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    const/4 v12, 0x1

    invoke-virtual {v10, v4, v3, v11, v12}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v6

    goto :goto_2

    .line 4486
    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4487
    if-nez v6, :cond_9

    .line 4489
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v5, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    move v7, v6

    .line 4490
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1

    .line 4493
    .end local v3    # "privKeyData2":[B
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 4494
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/server/wifi/WifiConfigStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v6

    .line 4495
    if-nez v6, :cond_b

    .line 4496
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 4498
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v5, v11}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4499
    iget-object v10, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v11, 0x3f2

    invoke-virtual {v10, v9, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    :cond_a
    move v7, v6

    .line 4501
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1

    .line 4505
    .end local v7    # "ret":Z
    .restart local v6    # "ret":Z
    :cond_b
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 4506
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateWapiAlias(Ljava/lang/String;)V

    .line 4507
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetClientKeyEntry()V

    .line 4510
    :cond_c
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 4511
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateWapiAlias(Ljava/lang/String;)V

    .line 4512
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->resetCaCertificate()V

    :cond_d
    move v7, v6

    .line 4517
    .end local v6    # "ret":Z
    .restart local v7    # "ret":Z
    goto/16 :goto_1
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1481
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v2, :cond_0

    .line 1482
    const/4 v1, 0x1

    .line 1484
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 3209
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 3331
    :cond_0
    return-void

    .line 3213
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3217
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiConfiguration;

    .line 3218
    .local v12, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 3220
    .local v8, "doLink":Z
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3224
    iget v1, v12, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    iget-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v1, :cond_2

    .line 3230
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3234
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_2

    .line 3239
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 3241
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3242
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_4

    .line 3243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration link due to same gw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3246
    :cond_4
    const/4 v8, 0x1

    .line 3273
    :cond_5
    const/4 v1, 0x1

    if-ne v8, v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->onlyLinkSameCredentialConfigurations:Z

    if-eqz v1, :cond_7

    .line 3278
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mPskMap:Ljava/util/Map;

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3279
    .local v6, "apsk":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mPskMap:Ljava/util/Map;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3280
    .local v7, "bpsk":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temp log should deleted, apsk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bpsk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 3283
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "*"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3287
    :cond_6
    const/4 v8, 0x0

    .line 3291
    .end local v6    # "apsk":Ljava/lang/String;
    .end local v7    # "bpsk":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_10

    .line 3292
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_8

    .line 3293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: will link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3296
    :cond_8
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_9

    .line 3297
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3299
    :cond_9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v1, :cond_a

    .line 3300
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3302
    :cond_a
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3303
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3304
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3306
    :cond_b
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3307
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3308
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    goto/16 :goto_0

    .line 3253
    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    .line 3255
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3256
    .local v0, "abssid":Ljava/lang/String;
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3257
    .local v3, "bbssid":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v1, :cond_f

    .line 3258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration try to link due to DBDC BSSID match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssida "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bssidb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3263
    :cond_f
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3266
    const/4 v8, 0x1

    goto :goto_1

    .line 3311
    .end local v0    # "abssid":Ljava/lang/String;
    .end local v3    # "bbssid":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_10
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_12

    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3313
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_11

    .line 3314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3317
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v12, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3318
    iget-object v1, v12, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3320
    :cond_12
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3322
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_13

    .line 3323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkConfiguration: un-link "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3326
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3327
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method loadAndEnableAllNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 628
    const-string v2, "Loading config and enabling all networks "

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 631
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v3

    .line 632
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 633
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    invoke-interface {v2}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasCustomizedAutoConnect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 636
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 638
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 639
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    goto :goto_0

    .line 633
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 645
    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 25

    .prologue
    .line 1515
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 1520
    const/4 v13, -0x1

    .line 1521
    .local v13, "last_id":I
    const/4 v7, 0x0

    .line 1522
    .local v7, "done":Z
    :goto_0
    if-nez v7, :cond_10

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiNative;->listNetworks(I)Ljava/lang/String;

    move-result-object v17

    .line 1525
    .local v17, "listStr":Ljava/lang/String;
    if-nez v17, :cond_1

    .line 1644
    .end local v17    # "listStr":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1528
    .restart local v17    # "listStr":Ljava/lang/String;
    :cond_1
    const-string v22, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1530
    .local v16, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1531
    const-string v22, "WifiConfigStore: loadConfiguredNetworks:  "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1532
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v14, :cond_2

    aget-object v18, v4, v12

    .line 1533
    .local v18, "net":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1532
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1538
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v18    # "net":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_e

    .line 1539
    aget-object v22, v16, v11

    const-string v23, "\t"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1541
    .local v21, "result":[Ljava/lang/String;
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1543
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    const/16 v22, 0x0

    :try_start_0
    aget-object v22, v21, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1544
    iget v13, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    const/16 v22, 0x1

    aget-object v22, v21, v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1554
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SSID invalid:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v21, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1538
    :cond_3
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1545
    :catch_0
    move-exception v10

    .line 1546
    .local v10, "e":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to read network-id \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v23, v21, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 1557
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 1558
    const/16 v22, 0x3

    aget-object v22, v21, v22

    const-string v23, "[CURRENT]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 1559
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1568
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1570
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 1571
    .local v6, "csum":Ljava/util/zip/Checksum;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1572
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v6, v0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 1573
    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v8

    .line 1574
    .local v8, "d":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedSSIDs:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1575
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " got CRC for SSID "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " -> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", was deleted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1580
    .end local v8    # "d":J
    :cond_5
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 1581
    const-string v22, "Error: get a config with SSID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1560
    .end local v6    # "csum":Ljava/util/zip/Checksum;
    :cond_6
    const/16 v22, 0x3

    aget-object v22, v21, v22

    const-string v23, "[DISABLED]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 1561
    const/16 v22, 0x1

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_6

    .line 1563
    :cond_7
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_6

    .line 1565
    :cond_8
    const/16 v22, 0x2

    move/from16 v0, v22

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_6

    .line 1585
    .restart local v6    # "csum":Ljava/util/zip/Checksum;
    :cond_9
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    .line 1586
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 1589
    :cond_a
    sget-object v22, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1590
    sget-object v22, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 1595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    const-string v22, "discarded duplicate network "

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1596
    :cond_b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "discarded duplicate network orig nid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1597
    :cond_c
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static {v5}, Lcom/android/server/wifi/WifiConfigStore;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    const-string v22, "loaded configured network"

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1602
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ignoring loaded configured for network "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " because config are not valid"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1607
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "csum":Ljava/util/zip/Checksum;
    .end local v21    # "result":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/4 v7, 0x1

    .line 1608
    :goto_7
    goto/16 :goto_0

    .line 1607
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    .line 1610
    .end local v11    # "i":I
    .end local v16    # "lines":[Ljava/lang/String;
    .end local v17    # "listStr":Ljava/lang/String;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readIpAndProxyConfigurations()V

    .line 1611
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkHistory()V

    .line 1612
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->readAutoJoinConfig()V

    .line 1614
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast()V

    .line 1616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "loadConfiguredNetworks loaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " networks"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 1618
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mNetworkIds:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    if-nez v22, :cond_0

    .line 1620
    const/16 v19, 0x0

    .line 1622
    .local v19, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v20, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/FileReader;

    const-string v23, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct/range {v22 .. v23}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1624
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .local v20, "reader":Ljava/io/BufferedReader;
    :try_start_2
    const-string v22, "--- Begin wpa_supplicant.conf Contents ---"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 1625
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    :goto_8
    if-eqz v15, :cond_12

    .line 1626
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V

    .line 1625
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    .line 1628
    :cond_12
    const-string v22, "--- End wpa_supplicant.conf Contents ---"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1636
    if-eqz v20, :cond_0

    .line 1637
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 1639
    :catch_1
    move-exception v22

    goto/16 :goto_1

    .line 1630
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v10

    .line 1631
    .local v10, "e":Ljava/io/FileNotFoundException;
    :goto_9
    :try_start_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1636
    if-eqz v19, :cond_0

    .line 1637
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 1639
    :catch_3
    move-exception v22

    goto/16 :goto_1

    .line 1632
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v10

    .line 1633
    .local v10, "e":Ljava/io/IOException;
    :goto_a
    :try_start_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1636
    if-eqz v19, :cond_0

    .line 1637
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    .line 1639
    :catch_5
    move-exception v22

    goto/16 :goto_1

    .line 1635
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 1636
    :goto_b
    if-eqz v19, :cond_13

    .line 1637
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1641
    :cond_13
    :goto_c
    throw v22

    .line 1639
    :catch_6
    move-exception v23

    goto :goto_c

    .line 1635
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v22

    move-object/from16 v19, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    goto :goto_b

    .line 1632
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v10

    move-object/from16 v19, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    goto :goto_a

    .line 1630
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v10

    move-object/from16 v19, v20

    .end local v20    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    goto :goto_9
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4124
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;Z)V

    .line 4110
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    .prologue
    .line 4113
    if-eqz p2, :cond_0

    .line 4114
    const-string v0, "WifiConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    :goto_0
    return-void

    .line 4119
    :cond_0
    const-string v0, "WifiConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;IZ)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .param p3, "restrict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "IZ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3473
    if-nez p1, :cond_1

    .line 3474
    const/4 v2, 0x0

    .line 3542
    :cond_0
    :goto_0
    return-object v2

    .line 3475
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3477
    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 3480
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v13, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-nez v13, :cond_2

    .line 3481
    const/4 v2, 0x0

    goto :goto_0

    .line 3484
    :cond_2
    sget-boolean v13, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v13, :cond_5

    .line 3485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3486
    .local v3, "dbg":Ljava/lang/StringBuilder;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "makeChannelList age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " max="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v13, :cond_3

    .line 3490
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " bssids="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v13, :cond_4

    .line 3493
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " linked="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3498
    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v10, 0x0

    .line 3499
    .local v10, "numChannels":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v13, :cond_7

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 3500
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 3502
    .local v11, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    if-le v10, v13, :cond_b

    .line 3518
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v13, :cond_0

    .line 3519
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3520
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 3521
    .local v7, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_8

    .line 3523
    iget-object v13, v7, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v13, :cond_8

    .line 3526
    iget-object v13, v7, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 3527
    .restart local v11    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v13, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v13, :cond_a

    .line 3528
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has link: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3532
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiConfigStore;->maxNumActiveChannelsForPartialScans:I

    if-gt v10, v13, :cond_8

    .line 3535
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_9

    .line 3536
    iget v13, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3537
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3505
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "linked":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    sget-boolean v13, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v13, :cond_c

    .line 3506
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_d

    const/4 v12, 0x1

    .line 3507
    .local v12, "test":Z
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "has "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " freq="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ?="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3510
    .end local v12    # "test":Z
    :cond_c
    iget-wide v14, v11, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v8, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_6

    .line 3511
    iget v13, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3512
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3506
    :cond_d
    const/4 v12, 0x0

    goto :goto_3
.end method

.method migrateCerts(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x3f2

    .line 4621
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v1

    .line 4623
    .local v1, "client":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4624
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4625
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRPKEY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4627
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4632
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4634
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4635
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4636
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4, v6}, Landroid/security/KeyStore;->duplicate(Ljava/lang/String;ILjava/lang/String;I)Z

    .line 4640
    :cond_1
    return-void
.end method

.method migrateOldEapTlsNative(Landroid/net/wifi/WifiEnterpriseConfig;I)Z
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "netId"    # I

    .prologue
    const/4 v2, 0x0

    .line 4572
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v4, "private_key"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4577
    .local v1, "oldPrivateKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4616
    :cond_0
    :goto_0
    return v2

    .line 4581
    :cond_1
    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4582
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4587
    const-string v2, "engine"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4588
    const-string v2, "engine_id"

    const-string v3, "keystore"

    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4596
    const-string v2, "keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4597
    new-instance v0, Ljava/lang/String;

    const-string v2, "keystore://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4602
    .local v0, "keyName":Ljava/lang/String;
    :goto_1
    const-string v2, "key_id"

    invoke-virtual {p1, v2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4604
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine"

    const-string v4, "engine"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4607
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "engine_id"

    const-string v4, "engine_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4610
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "key_id"

    const-string v4, "key_id"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4614
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    const-string v3, "private_key"

    const-string v4, "NULL"

    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 4616
    const/4 v2, 0x1

    goto :goto_0

    .line 4600
    .end local v0    # "keyName":Ljava/lang/String;
    :cond_2
    move-object v0, v1

    .restart local v0    # "keyName":Ljava/lang/String;
    goto :goto_1
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    .prologue
    .line 1733
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1735
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1738
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigStore;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1739
    const/4 v2, 0x1

    .line 1744
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1027
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 1019
    const-wide/16 v0, 0x2

    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    mul-long/2addr v0, v2

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1021
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1023
    iget v0, p0, Lcom/android/server/wifi/WifiConfigStore;->networkSwitchingBlackListPeriodMilli:I

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1026
    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    goto :goto_0
.end method

.method removeDisconnectNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 4664
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    monitor-enter v1

    .line 4665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mDisconnectNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4666
    monitor-exit v1

    .line 4667
    return-void

    .line 4666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeKeys(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/16 v7, 0x3f2

    .line 4534
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v2

    .line 4536
    .local v2, "client":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4537
    const-string v4, "WifiConfigStore"

    const-string v5, "removing client private key and user cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4539
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4542
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 4544
    .local v0, "ca":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4545
    const-string v4, "WifiConfigStore"

    const-string v5, "removing CA cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4549
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateWapiAlias()Ljava/lang/String;

    move-result-object v3

    .line 4551
    .local v3, "client2":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4552
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIUSERCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delKey(Ljava/lang/String;I)Z

    .line 4553
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPIUSERCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4556
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateWapiAlias()Ljava/lang/String;

    move-result-object v1

    .line 4558
    .local v1, "ca2":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4559
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPISERVERCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 4562
    :cond_3
    return-void
.end method

.method removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1177
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigStore;->showNetworks:Z

    if-eqz v1, :cond_0

    const-string v1, "removeNetwork"

    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->removeNetwork(I)Z

    move-result v0

    .line 1179
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 1180
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeConfigAndSendBroadcastIfNeeded(I)Z

    .line 1182
    :cond_1
    return v0
.end method

.method saveConfig()Z
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    move-result v0

    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 931
    if-eqz p1, :cond_0

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_1

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 933
    :cond_0
    new-instance v3, Lcom/android/server/wifi/NetworkUpdateResult;

    invoke-direct {v3, v8}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    .line 986
    :goto_0
    return-object v3

    .line 935
    :cond_1
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "WifiConfigStore: saveNetwork netId"

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 936
    :cond_2
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_3

    .line 937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore saveNetwork, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 943
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 944
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_4

    .line 945
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: removed from ephemeral blacklist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 951
    :cond_4
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, v8, :cond_b

    const/4 v2, 0x1

    .line 952
    .local v2, "newNetwork":Z
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v3

    .line 953
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v1

    .line 955
    .local v1, "netId":I
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiConfigStore: saveNetwork got it back netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 958
    :cond_5
    if-eqz v2, :cond_7

    if-eq v1, v8, :cond_7

    .line 959
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_6

    const-string v6, "WifiConfigStore: will enable netId="

    invoke-direct {p0, v6, v1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 961
    :cond_6
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6, v1, v4}, Lcom/android/server/wifi/WifiNative;->enableNetwork(IZ)Z

    .line 962
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 963
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_7

    .line 964
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 967
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 968
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_a

    .line 969
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eqz v6, :cond_9

    .line 970
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: re-enabling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;)V

    .line 973
    :cond_8
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    .line 974
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 976
    :cond_9
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v6, :cond_a

    .line 977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiConfigStore: saveNetwork got config back netId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 983
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 984
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_2
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigStore;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    goto/16 :goto_0

    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "netId":I
    .end local v2    # "newNetwork":Z
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_b
    move v2, v4

    .line 951
    goto/16 :goto_1

    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "netId":I
    .restart local v2    # "newNetwork":Z
    .restart local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_c
    move v4, v5

    .line 984
    goto :goto_2
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1031
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    const-string v1, "any"

    if-ne v0, v1, :cond_0

    .line 1042
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveWifiConfigBSSID Setting BSSID for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v2, "bssid"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to set BSSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    goto :goto_0
.end method

.method selectNetwork(I)Z
    .locals 8
    .param p1, "netId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, -0x1

    .line 890
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "selectNetwork"

    invoke-direct {p0, v4, p1}, Lcom/android/server/wifi/WifiConfigStore;->localLog(Ljava/lang/String;I)V

    .line 891
    :cond_0
    if-ne p1, v7, :cond_1

    .line 918
    :goto_0
    return v2

    .line 894
    :cond_1
    iget v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    const v5, 0xf4240

    if-le v4, v5, :cond_5

    .line 895
    :cond_2
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to reset the priority, mLastPriority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 897
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v7, :cond_3

    .line 898
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 899
    invoke-direct {p0, v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    goto :goto_1

    .line 902
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iput v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    .line 906
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 907
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 908
    iget v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mLastPriority:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 910
    invoke-direct {p0, v0, v7}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    .line 911
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->saveConfig()Z

    .line 914
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    move v2, v3

    .line 918
    goto :goto_0
.end method

.method setAuthFailureType(II)V
    .locals 4
    .param p1, "netID"    # I
    .param p2, "type"    # I

    .prologue
    .line 1354
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start setAuthFailureType netID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1356
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1357
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->authFailureType:I

    .line 1361
    :goto_0
    return-void

    .line 1359
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "setAuthFailureType config is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1454
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1456
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1458
    :cond_0
    return-void
.end method

.method setIpConfiguration(ILandroid/net/LinkProperties;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 4647
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 4648
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 4650
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4654
    :goto_0
    return-void

    .line 4652
    :cond_0
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No configuration for netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLastSelectedConfiguration(I)V
    .locals 5
    .param p1, "netId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1940
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1943
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 1944
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1960
    :cond_1
    :goto_0
    return-void

    .line 1946
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1947
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 1948
    iput-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    goto :goto_0

    .line 1950
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    .line 1951
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 1952
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 1953
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 1954
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1955
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_1

    .line 1956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSelectedConfiguration now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->lastSelectedConfiguration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1443
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1444
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1447
    :cond_0
    return-void
.end method

.method setWifiFwkExt(Lcom/mediatek/common/wifi/IWifiFwkExt;)V
    .locals 0
    .param p1, "wifiExt"    # Lcom/mediatek/common/wifi/IWifiFwkExt;

    .prologue
    .line 4680
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    .line 4681
    return-void
.end method

.method startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 4747
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4748
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->startWpsErPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4750
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4751
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4756
    :goto_0
    return-object v0

    .line 4753
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pbc!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsErPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;

    .prologue
    .line 4711
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4712
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wifi/WifiNative;->startWpsErPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4714
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4715
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4720
    :goto_0
    return-object v0

    .line 4717
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pin!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsErPinAny(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4729
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4730
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->startWpsErPinAny(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4732
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4733
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4738
    :goto_0
    return-object v0

    .line 4735
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS Er with pin any!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsNfc()Landroid/net/wifi/WpsResult;
    .locals 3

    .prologue
    .line 4764
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4765
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->wpsNfc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4767
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4768
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4773
    :goto_0
    return-object v0

    .line 4770
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS NFC!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsNfcTagRead(Ljava/lang/String;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 4782
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4783
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNative;->wpsNfcTagRead(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4785
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4786
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4791
    :goto_0
    return-object v0

    .line 4788
    :cond_0
    const-string v1, "WifiConfigStore"

    const-string v2, "Failed to start WPS NFC tag read!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1416
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1417
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPbc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1419
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1420
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1425
    :goto_0
    return-object v0

    .line 1422
    :cond_0
    const-string v1, "Failed to start WPS push button configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1423
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsReg(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 4690
    new-instance v7, Landroid/net/wifi/WpsResult;

    invoke-direct {v7}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 4691
    .local v7, "result":Landroid/net/wifi/WpsResult;
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v1, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WpsInfo;->authentication:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WpsInfo;->encryption:Ljava/lang/String;

    iget-object v6, p1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi/WifiNative;->startWpsRegModify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4694
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 4695
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, v7, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 4700
    :goto_0
    return-object v7

    .line 4697
    :cond_0
    const-string v0, "WifiConfigStore"

    const-string v1, "Failed to start WPS Reg with modifying AP\'s info!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4698
    sget-object v0, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v0, v7, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1379
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1380
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wifi/WifiNative;->startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1382
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1383
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1388
    :goto_0
    return-object v0

    .line 1385
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1386
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    .prologue
    .line 1397
    new-instance v0, Landroid/net/wifi/WpsResult;

    invoke-direct {v0}, Landroid/net/wifi/WpsResult;-><init>()V

    .line 1398
    .local v0, "result":Landroid/net/wifi/WpsResult;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    .line 1400
    iget-object v1, v0, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1401
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->markAllNetworksDisabled()V

    .line 1402
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    .line 1407
    :goto_0
    return-object v0

    .line 1404
    :cond_0
    const-string v1, "Failed to start WPS pin method configuration"

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1405
    sget-object v1, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    iput-object v1, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    goto :goto_0
.end method

.method public storePskMap()V
    .locals 1

    .prologue
    .line 4798
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->getCredentialsBySsidMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mPskMap:Ljava/util/Map;

    .line 4799
    return-void
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 744
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 745
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 746
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 747
    .local v4, "result":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_0

    .line 748
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 749
    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 752
    .local v1, "previousRssi":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/net/wifi/ScanResult;->seen:J

    .line 753
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 756
    sget v5, Lcom/android/server/wifi/WifiAutoJoinController;->mScanResultMaximumAge:I

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    .line 758
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v5, :cond_0

    .line 759
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConfiguration freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RSSI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 766
    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    return-void
.end method

.method public updateSavedNetworkHistory(Landroid/net/wifi/ScanResult;)Z
    .locals 20
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 3548
    const/4 v11, 0x0

    .line 3549
    .local v11, "numConfigFound":I
    if-nez p1, :cond_0

    .line 3550
    const/16 v17, 0x0

    .line 3685
    :goto_0
    return v17

    .line 3552
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3554
    .local v4, "SSID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3555
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v8, 0x0

    .line 3557
    .local v8, "found":Z
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3559
    :cond_2
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_1

    .line 3560
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSavedNetworkHistory(): SSID mismatch "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " SSID="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3565
    :cond_3
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v17, :cond_4

    .line 3566
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSavedNetworkHistory(): try "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " SSID="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ajst="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3571
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3573
    const/4 v8, 0x1

    .line 3600
    :cond_5
    :goto_2
    if-eqz v8, :cond_12

    .line 3602
    add-int/lit8 v11, v11, 0x1

    .line 3604
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 3605
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_1

    .line 3606
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "updateSavedNetworkHistory(): found a deleted, skip it...  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3574
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3576
    const/4 v8, 0x1

    goto :goto_2

    .line 3577
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3579
    const/4 v8, 0x1

    goto :goto_2

    .line 3580
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "WEP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "PSK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "EAP"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 3586
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 3591
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lcom/mediatek/common/wifi/IWifiFwkExt;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/mediatek/common/wifi/IWifiFwkExt;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 3594
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v17, :cond_a

    .line 3595
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "security method:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->mWifiFwkExt:Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/mediatek/common/wifi/IWifiFwkExt;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3597
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 3616
    :cond_b
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 3617
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 3621
    :cond_c
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    .line 3622
    .local v15, "result":Landroid/net/wifi/ScanResult;
    if-nez v15, :cond_e

    .line 3623
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 3633
    :goto_3
    iget-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 3636
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 3639
    :cond_d
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    const/16 v18, 0xc0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    .line 3640
    const-wide/16 v12, 0x0

    .line 3641
    .local v12, "now_dbg":J
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_10

    .line 3642
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Will trim config "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " size "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3645
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 3646
    .local v14, "r":Landroid/net/wifi/ScanResult;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "     "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v15, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_4

    .line 3626
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "now_dbg":J
    .end local v14    # "r":Landroid/net/wifi/ScanResult;
    :cond_e
    iget v0, v15, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 3627
    iget-wide v0, v15, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    .line 3628
    iget v0, v15, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 3629
    iget v0, v15, Landroid/net/wifi/ScanResult;->numConnection:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 3630
    iget v0, v15, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    goto/16 :goto_3

    .line 3648
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "now_dbg":J
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    .line 3653
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_10
    const/16 v17, 0x80

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiConfiguration;->trimScanResultsCache(I)V

    .line 3654
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VVDBG:Z

    if-eqz v17, :cond_11

    .line 3655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v18

    sub-long v6, v18, v12

    .line 3656
    .local v6, "diff":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Finished trimming config, time(ns) "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 3657
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 3658
    .restart local v14    # "r":Landroid/net/wifi/ScanResult;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "     "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v14, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-wide v0, v14, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 3666
    .end local v6    # "diff":J
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "now_dbg":J
    .end local v14    # "r":Landroid/net/wifi/ScanResult;
    :cond_11
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3668
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigStore;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 3671
    .end local v15    # "result":Landroid/net/wifi/ScanResult;
    :cond_12
    sget-boolean v17, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v17, :cond_1

    if-eqz v8, :cond_1

    .line 3672
    const-string v16, ""

    .line 3673
    .local v16, "status":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v17, v0

    if-lez v17, :cond_13

    .line 3674
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " status="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3676
    :cond_13
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "        got known scan result "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " key : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " num: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " freq="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3685
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "found":Z
    .end local v16    # "status":Ljava/lang/String;
    :cond_14
    if-eqz v11, :cond_15

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v3, 0x0

    .line 1059
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1061
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 1079
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-void

    .line 1062
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-object v1, Lcom/android/server/wifi/WifiConfigStore$2;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1064
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1066
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_0

    .line 1070
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    .line 1071
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 1062
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4048
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 4050
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4052
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v1, :cond_0

    .line 4053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiConfiguration from scan results "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 4056
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4057
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 4058
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 4059
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 4062
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4063
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 4066
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4068
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 4069
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 4072
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 4073
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 4074
    const/4 v0, 0x0

    .line 4078
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    .line 4076
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeKnownNetworkHistory(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    .line 1748
    move v2, p1

    .line 1751
    .local v2, "needUpdate":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1752
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1753
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1754
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " rewrite network history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1756
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1757
    const/4 v2, 0x1

    goto :goto_0

    .line 1760
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigStore;->VDBG:Z

    if-eqz v4, :cond_2

    .line 1761
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " writeKnownNetworkHistory() num networks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mConfiguredNetworks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needWrite="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    .line 1764
    :cond_2
    if-nez v2, :cond_3

    .line 1937
    :goto_1
    return-void

    .line 1767
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    sget-object v5, Lcom/android/server/wifi/WifiConfigStore;->networkHistoryConfigFile:Ljava/lang/String;

    new-instance v6, Lcom/android/server/wifi/WifiConfigStore$1;

    invoke-direct {v6, p0, v3}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>(Lcom/android/server/wifi/WifiConfigStore;Ljava/util/List;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    goto :goto_1
.end method
