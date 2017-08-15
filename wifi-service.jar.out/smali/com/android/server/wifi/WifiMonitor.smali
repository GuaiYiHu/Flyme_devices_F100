.class public Lcom/android/server/wifi/WifiMonitor;
.super Ljava/lang/Object;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiMonitor$MonitorThread;,
        Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    }
.end annotation


# static fields
.field public static final AP_STA_CONNECTED_EVENT:I = 0x2402a

.field private static final AP_STA_CONNECTED_STR:Ljava/lang/String; = "AP-STA-CONNECTED"

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x24029

.field private static final AP_STA_DISCONNECTED_STR:Ljava/lang/String; = "AP-STA-DISCONNECTED"

.field private static final ASSOCIATED_WITH_STR:Ljava/lang/String; = "Associated with "

.field public static final ASSOCIATION_REJECTION_EVENT:I = 0x2402b

.field private static final ASSOC_REJECT:I = 0x9

.field private static final ASSOC_REJECT_STR:Ljava/lang/String; = "ASSOC-REJECT"

.field public static final AUTHENTICATION_FAILURE_EVENT:I = 0x24007

.field private static final AUTHENTICATION_TIMEOUT_PREFIX_STR:Ljava/lang/String; = "Authentication with"

.field private static final AUTHENTICATION_TIMEOUT_STR:Ljava/lang/String; = "timed out"

.field private static final BASE:I = 0x24000

.field private static final BSS_ADDED:I = 0xc

.field private static final BSS_ADDED_STR:Ljava/lang/String; = "BSS-ADDED"

.field private static final BSS_REMOVED:I = 0xd

.field private static final BSS_REMOVED_STR:Ljava/lang/String; = "BSS-REMOVED"

.field private static final CONFIG_AUTH_FAILURE:I = 0x12

.field private static final CONFIG_MULTIPLE_PBC_DETECTED:I = 0xc

.field private static final CONNECTED:I = 0x1

.field private static final CONNECTED_STR:Ljava/lang/String; = "CONNECTED"

.field private static DBG:Z = false

.field private static final DISCONNECTED:I = 0x2

.field private static final DISCONNECTED_STR:Ljava/lang/String; = "DISCONNECTED"

.field public static final DRIVER_HUNG_EVENT:I = 0x2400c

.field private static final DRIVER_STATE:I = 0x7

.field private static final DRIVER_STATE_STR:Ljava/lang/String; = "DRIVER-STATE"

.field private static final EAP_AUTH_FAILURE_STR:Ljava/lang/String; = "EAP authentication failed"

.field private static final EAP_FAILURE:I = 0x8

.field private static final EAP_FAILURE_STR:Ljava/lang/String; = "EAP-FAILURE"

.field private static final EAP_FAST_NEW_PAC_UPDATED:Ljava/lang/String; = "EAP-FAST-NEW-PAC-UPDATED"

.field private static final EVENT_PREFIX_LEN_STR:I

.field private static final EVENT_PREFIX_STR:Ljava/lang/String; = "CTRL-EVENT-"

.field public static final GAS_QUERY_DONE_EVENT:I = 0x24034

.field private static final GAS_QUERY_DONE_STR:Ljava/lang/String; = "GAS-QUERY-DONE"

.field private static final GAS_QUERY_PREFIX_STR:Ljava/lang/String; = "GAS-QUERY-"

.field public static final GAS_QUERY_START_EVENT:I = 0x24033

.field private static final GAS_QUERY_START_STR:Ljava/lang/String; = "GAS-QUERY-START"

.field private static final HOST_AP_EVENT_PREFIX_STR:Ljava/lang/String; = "AP"

.field public static final HS20_DEAUTH_EVENT:I = 0x2403e

.field private static final HS20_DEAUTH_STR:Ljava/lang/String; = "HS20-DEAUTH-IMMINENT-NOTICE"

.field private static final HS20_PREFIX_STR:Ljava/lang/String; = "HS20-"

.field public static final HS20_REMEDIATION_EVENT:I = 0x2403d

.field private static final HS20_SUB_REM_STR:Ljava/lang/String; = "HS20-SUBSCRIPTION-REMEDIATION"

.field public static final HS_R1_CONNECTED_EVENT:I = 0x24059

.field private static final IDENTITY_STR:Ljava/lang/String; = "IDENTITY"

.field private static final LINK_SPEED:I = 0x5

.field private static final LINK_SPEED_STR:Ljava/lang/String; = "LINK-SPEED"

.field private static final MAX_RECV_ERRORS:I = 0xa

.field public static final NETWORK_CONNECTION_EVENT:I = 0x24003

.field public static final NETWORK_DISCONNECTION_EVENT:I = 0x24004

.field public static final NEW_PAC_UPDATED_EVENT:I = 0x24051

.field private static final NO_CERTIFICATION:I = 0xe

.field public static final P2P_DEVICE_FOUND_EVENT:I = 0x24015

.field private static final P2P_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-DEVICE-FOUND"

.field public static final P2P_DEVICE_LOST_EVENT:I = 0x24016

.field private static final P2P_DEVICE_LOST_STR:Ljava/lang/String; = "P2P-DEVICE-LOST"

.field private static final P2P_EVENT_PREFIX_STR:Ljava/lang/String; = "P2P"

.field public static final P2P_FIND_STOPPED_EVENT:I = 0x24025

.field private static final P2P_FIND_STOPPED_STR:Ljava/lang/String; = "P2P-FIND-STOPPED"

.field public static final P2P_GC_IP_GET_EVENT:I = 0x24057

.field private static final P2P_GC_IP_GET_STR:Ljava/lang/String; = "P2P-GC-IP-GET"

.field public static final P2P_GO_IP_ALLOCATE_EVENT:I = 0x24056

.field private static final P2P_GO_IP_ALLOCATE_STR:Ljava/lang/String; = "P2P-GO-IP-ALLOCATE"

.field public static final P2P_GO_NEGOTIATION_FAILURE_EVENT:I = 0x2401a

.field public static final P2P_GO_NEGOTIATION_REQUEST_EVENT:I = 0x24017

.field public static final P2P_GO_NEGOTIATION_SUCCESS_EVENT:I = 0x24019

.field private static final P2P_GO_NEG_FAILURE_STR:Ljava/lang/String; = "P2P-GO-NEG-FAILURE"

.field private static final P2P_GO_NEG_REQUEST_STR:Ljava/lang/String; = "P2P-GO-NEG-REQUEST"

.field private static final P2P_GO_NEG_SUCCESS_STR:Ljava/lang/String; = "P2P-GO-NEG-SUCCESS"

.field public static final P2P_GROUP_FORMATION_FAILURE_EVENT:I = 0x2401c

.field private static final P2P_GROUP_FORMATION_FAILURE_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-FAILURE"

.field public static final P2P_GROUP_FORMATION_SUCCESS_EVENT:I = 0x2401b

.field private static final P2P_GROUP_FORMATION_SUCCESS_STR:Ljava/lang/String; = "P2P-GROUP-FORMATION-SUCCESS"

.field public static final P2P_GROUP_REMOVED_EVENT:I = 0x2401e

.field private static final P2P_GROUP_REMOVED_STR:Ljava/lang/String; = "P2P-GROUP-REMOVED"

.field public static final P2P_GROUP_STARTED_EVENT:I = 0x2401d

.field private static final P2P_GROUP_STARTED_STR:Ljava/lang/String; = "P2P-GROUP-STARTED"

.field public static final P2P_INVITATION_RECEIVED_EVENT:I = 0x2401f

.field private static final P2P_INVITATION_RECEIVED_STR:Ljava/lang/String; = "P2P-INVITATION-RECEIVED"

.field public static final P2P_INVITATION_RESULT_EVENT:I = 0x24020

.field private static final P2P_INVITATION_RESULT_STR:Ljava/lang/String; = "P2P-INVITATION-RESULT"

.field private static final P2P_NFC_DEVICE_FOUND_STR:Ljava/lang/String; = "P2P-NFC-DEVICE-FOUND"

.field public static final P2P_NFC_GO_INVITED_EVENT:I = 0x24058

.field private static final P2P_NFC_GO_INVITED_STR:Ljava/lang/String; = "P2P-NFC-GO-INVITED"

.field public static final P2P_PEER_DISCONNECT_EVENT:I = 0x24028

.field public static final P2P_PROV_DISC_ENTER_PIN_EVENT:I = 0x24023

.field private static final P2P_PROV_DISC_ENTER_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-ENTER-PIN"

.field public static final P2P_PROV_DISC_FAILURE_EVENT:I = 0x24027

.field private static final P2P_PROV_DISC_FAILURE_STR:Ljava/lang/String; = "P2P-PROV-DISC-FAILURE"

.field public static final P2P_PROV_DISC_PBC_REQ_EVENT:I = 0x24021

.field private static final P2P_PROV_DISC_PBC_REQ_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-REQ"

.field public static final P2P_PROV_DISC_PBC_RSP_EVENT:I = 0x24022

.field private static final P2P_PROV_DISC_PBC_RSP_STR:Ljava/lang/String; = "P2P-PROV-DISC-PBC-RESP"

.field public static final P2P_PROV_DISC_SHOW_PIN_EVENT:I = 0x24024

.field private static final P2P_PROV_DISC_SHOW_PIN_STR:Ljava/lang/String; = "P2P-PROV-DISC-SHOW-PIN"

.field public static final P2P_SERV_DISC_RESP_EVENT:I = 0x24026

.field private static final P2P_SERV_DISC_RESP_STR:Ljava/lang/String; = "P2P-SERV-DISC-RESP"

.field private static final PASSPOINT_CONNECTED_STRING:Ljava/lang/String; = "HS20R1-CONNECTED"

.field private static final PASSPOINT_CONNECTED_STRING_LEN:I

.field private static final PASSWORD_MAY_BE_INCORRECT_STR:Ljava/lang/String; = "pre-shared key may be incorrect"

.field private static final REASON_TKIP_ONLY_PROHIBITED:I = 0x1

.field private static final REASON_WEP_PROHIBITED:I = 0x2

.field private static final REENABLED_STR:Ljava/lang/String; = "SSID-REENABLED"

.field private static final REQUEST_PREFIX_LEN_STR:I

.field private static final REQUEST_PREFIX_STR:Ljava/lang/String; = "CTRL-REQ-"

.field public static final RX_HS20_ANQP_ICON_EVENT:I = 0x24035

.field private static final RX_HS20_ANQP_ICON_STR:Ljava/lang/String; = "RX-HS20-ANQP-ICON"

.field private static final RX_HS20_ANQP_ICON_STR_LEN:I

.field private static final SCAN_RESULTS:I = 0x4

.field public static final SCAN_RESULTS_EVENT:I = 0x24005

.field private static final SCAN_RESULTS_STR:Ljava/lang/String; = "SCAN-RESULTS"

.field private static final SIM_STR:Ljava/lang/String; = "SIM"

.field private static final SSID_REENABLE:I = 0xb

.field public static final SSID_REENABLED:I = 0x2400e

.field private static final SSID_TEMP_DISABLE:I = 0xa

.field public static final SSID_TEMP_DISABLED:I = 0x2400d

.field private static final STATE_CHANGE:I = 0x3

.field private static final STATE_CHANGE_STR:Ljava/lang/String; = "STATE-CHANGE"

.field public static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x24006

.field public static final SUP_CONNECTION_EVENT:I = 0x24001

.field public static final SUP_DISCONNECTION_EVENT:I = 0x24002

.field public static final SUP_REQUEST_IDENTITY:I = 0x2400f

.field public static final SUP_REQUEST_SIM_AUTH:I = 0x24010

.field private static final TAG:Ljava/lang/String; = "WifiMonitor"

.field private static final TARGET_BSSID_STR:Ljava/lang/String; = "Trying to associate with "

.field private static final TEMP_DISABLED_STR:Ljava/lang/String; = "SSID-TEMP-DISABLED"

.field private static final TERMINATING:I = 0x6

.field private static final TERMINATING_STR:Ljava/lang/String; = "TERMINATING"

.field private static final UNKNOWN:I = 0xf

.field private static VDBG:Z = false

.field public static final WAPI_NO_CERTIFICATION_EVENT:I = 0x24050

.field private static final WAPI_NO_CERTIFICATION_STRING:Ljava/lang/String; = "EAP-NO-CERTIFICATION"

.field public static final WHOLE_CHIP_RESET_FAIL_EVENT:I = 0x24052

.field private static final WHOLE_CHIP_RESET_FAIL_STRING:Ljava/lang/String; = "WHOLE-CHIP-RESET-FAIL"

.field private static final WPA_EVENT_PREFIX_STR:Ljava/lang/String; = "WPA:"

.field private static final WPA_RECV_ERROR_STR:Ljava/lang/String; = "recv error"

.field public static final WPS_ER_AP_ADD_EVENT:I = 0x24054

.field private static final WPS_ER_AP_ADD_STR:Ljava/lang/String; = "WPS-ER-AP-ADD"

.field public static final WPS_ER_ENROLLEE_ADD_EVENT:I = 0x24053

.field private static final WPS_ER_ENROLLEE_ADD_STR:Ljava/lang/String; = "WPS-ER-ENROLLEE-ADD-PBC"

.field public static final WPS_FAIL_EVENT:I = 0x24009

.field private static final WPS_FAIL_PATTERN:Ljava/lang/String; = "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

.field private static final WPS_FAIL_STR:Ljava/lang/String; = "WPS-FAIL"

.field public static final WPS_OVERLAP_EVENT:I = 0x2400a

.field private static final WPS_OVERLAP_STR:Ljava/lang/String; = "WPS-OVERLAP-DETECTED"

.field public static final WPS_SUCCESS_EVENT:I = 0x24008

.field private static final WPS_SUCCESS_STR:Ljava/lang/String; = "WPS-SUCCESS"

.field public static final WPS_TIMEOUT_EVENT:I = 0x2400b

.field private static final WPS_TIMEOUT_STR:Ljava/lang/String; = "WPS-TIMEOUT"

.field private static eventLogCounter:I

.field private static mAssocRejectEventPattern:Ljava/util/regex/Pattern;

.field private static mAssociatedPattern:Ljava/util/regex/Pattern;

.field private static mConnectedEventPattern:Ljava/util/regex/Pattern;

.field private static mDisconnectedEventPattern:Ljava/util/regex/Pattern;

.field private static final mIsWlanShowDialog:Z

.field private static final mMtkPasspointR1Support:Z

.field private static mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

.field private static mRequestIdentityPattern:Ljava/util/regex/Pattern;

.field private static mTargetBSSIDPattern:Ljava/util/regex/Pattern;

.field private static final p2pErrorExPattern1:Ljava/util/regex/Pattern;

.field private static final p2pErrorExPattern2:Ljava/util/regex/Pattern;

.field private static final p2pErrorExPattern3:Ljava/util/regex/Pattern;

.field private static sP2pOperFreq:I

.field private static sRecvErrors:I


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mMonitoring:Z

.field private final mStateMachine:Lcom/android/internal/util/StateMachine;

.field private mStateMachine2:Lcom/android/internal/util/StateMachine;

.field private final mWifiNative:Lcom/android/server/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    .line 63
    sput-boolean v1, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    .line 93
    const-string v0, "CTRL-EVENT-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    .line 97
    const-string v0, "CTRL-REQ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    .line 129
    const-string v0, "RX-HS20-ANQP-ICON"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    .line 142
    sput v1, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 242
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) .* \\[id=([0-9]+) "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    .line 250
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +reason=([0-9]+) +locally_generated=([0-1])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    .line 259
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) +status_code=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    .line 270
    const-string v0, "Trying to associate with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    .line 280
    const-string v0, "Associated with ((?:[0-9a-f]{2}:){5}[0-9a-f]{2}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    .line 294
    const-string v0, "SIM-([0-9]*):GSM-AUTH((:[0-9a-f]+)+) needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    .line 302
    const-string v0, "IDENTITY-([0-9]+):Identity needed for SSID (.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    .line 311
    const-string v0, "status=([0-9]{1,2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern1:Ljava/util/regex/Pattern;

    .line 319
    const-string v0, "status=([0-9]{1,2}) peer_oper_freq=(-?[0-9]{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern2:Ljava/util/regex/Pattern;

    .line 327
    const-string v0, "reason=FREQ_CONFLICT peer_oper_freq=(-?[0-9]{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern3:Ljava/util/regex/Pattern;

    .line 576
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 589
    const-string v0, "HS20R1-CONNECTED"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiMonitor;->PASSPOINT_CONNECTED_STRING_LEN:I

    .line 590
    const-string v0, "ro.mtk_passpoint_r1_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->mMtkPasspointR1Support:Z

    .line 594
    const-string v0, "yes"

    const-string v1, "ro.gn.wlanshowdialog.support"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->mIsWlanShowDialog:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/StateMachine;Lcom/android/server/wifi/WifiNative;)V
    .locals 2
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiMonitor"

    const-string v1, "Creating WifiMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    iput-object p2, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    .line 600
    iget-object v0, p2, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    .line 601
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    .line 605
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->registerInterfaceMonitor(Ljava/lang/String;Lcom/android/server/wifi/WifiMonitor;)V

    .line 606
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/WifiMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiMonitor;->mMonitoring:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiMonitor;)Lcom/android/server/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiMonitor;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiMonitor;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private dispatchEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26
    .param p1, "eventStr"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 925
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v22, :cond_0

    .line 927
    if-eqz p1, :cond_0

    const-string v22, "CTRL-EVENT-BSS-ADDED"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 928
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WifiMonitor:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " cnt="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dispatchEvent: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 933
    :cond_0
    const-string v22, "CTRL-EVENT-"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_18

    .line 935
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->mIsWlanShowDialog:Z

    if-nez v22, :cond_1

    const-string v22, "WPA:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v22, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-gtz v22, :cond_2

    :cond_1
    const-string v22, "Authentication with"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v22, "timed out"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-lez v22, :cond_4

    .line 941
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24007

    sget v24, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 1002
    :cond_3
    :goto_0
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1003
    const/16 v22, 0x0

    .line 1155
    :goto_1
    return v22

    .line 942
    :cond_4
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->mIsWlanShowDialog:Z

    if-eqz v22, :cond_5

    const-string v22, "WPA:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string v22, "pre-shared key may be incorrect"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-lez v22, :cond_5

    .line 944
    const-string v22, "WifiMonitor"

    const-string v23, " AUTHENTICATION_FAILURE_EVENT type=1"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24007

    sget v24, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/16 v25, 0x1

    invoke-virtual/range {v22 .. v25}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    goto :goto_0

    .line 946
    :cond_5
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->mIsWlanShowDialog:Z

    if-eqz v22, :cond_6

    const-string v22, "Authentication with"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    const-string v22, "timed out"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-lez v22, :cond_6

    .line 948
    const-string v22, "WifiMonitor"

    const-string v23, " AUTHENTICATION_FAILURE_EVENT type=2"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24007

    sget v24, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/16 v25, 0x2

    invoke-virtual/range {v22 .. v25}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    goto :goto_0

    .line 951
    :cond_6
    const-string v22, "WPS-SUCCESS"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24008

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 953
    :cond_7
    const-string v22, "WPS-FAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 954
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleWpsFailEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 955
    :cond_8
    const-string v22, "WPS-OVERLAP-DETECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x2400a

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 957
    :cond_9
    const-string v22, "WPS-TIMEOUT"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x2400b

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 959
    :cond_a
    const-string v22, "P2P"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 960
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 961
    :cond_b
    const-string v22, "AP"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 962
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wifi/WifiMonitor;->handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :cond_c
    const-string v22, "GAS-QUERY-"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 964
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleGasQueryEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 965
    :cond_d
    const-string v22, "RX-HS20-ANQP-ICON"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24035

    sget v24, Lcom/android/server/wifi/WifiMonitor;->RX_HS20_ANQP_ICON_STR_LEN:I

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 969
    :cond_e
    const-string v22, "HS20-"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 970
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleHs20Events(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 971
    :cond_f
    const-string v22, "CTRL-REQ-"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 972
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleRequests(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :cond_10
    const-string v22, "Trying to associate with "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 974
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleTargetBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 975
    :cond_11
    const-string v22, "Associated with "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 976
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleAssociatedBSSIDEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :cond_12
    const-string v22, "EAP-FAST-NEW-PAC-UPDATED"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24051

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 981
    :cond_13
    const-string v22, "WHOLE-CHIP-RESET-FAIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24052

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 984
    :cond_14
    const-string v22, "WPS-ER-ENROLLEE-ADD-PBC"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24053

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 986
    :cond_15
    const-string v22, "WPS-ER-AP-ADD"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24054

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 990
    :cond_16
    const-string v22, "HS20R1-CONNECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 991
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->mMtkPasspointR1Support:Z

    if-eqz v22, :cond_3

    .line 992
    const-string v22, "WifiMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PASSPOINT_CONNECTED_STRING sub="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/wifi/WifiMonitor;->PASSPOINT_CONNECTED_STRING_LEN:I

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24059

    sget v24, Lcom/android/server/wifi/WifiMonitor;->PASSPOINT_CONNECTED_STRING_LEN:I

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1000
    :cond_17
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v22, :cond_3

    const-string v22, "WifiMonitor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "couldn\'t identify event type - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1006
    :cond_18
    sget v22, Lcom/android/server/wifi/WifiMonitor;->EVENT_PREFIX_LEN_STR:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1007
    .local v11, "eventName":Ljava/lang/String;
    const/16 v22, 0x20

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 1008
    .local v18, "nameEnd":I
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_19

    .line 1009
    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1010
    :cond_19
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_1b

    .line 1011
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v22, :cond_1a

    const-string v22, "WifiMonitor"

    const-string v23, "Received wpa_supplicant event with empty event name"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_1a
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1013
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1019
    :cond_1b
    const-string v22, "CONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 1020
    const/4 v9, 0x1

    .line 1056
    .local v9, "event":I
    :goto_2
    move-object/from16 v10, p1

    .line 1057
    .local v10, "eventData":Ljava/lang/String;
    const/16 v22, 0x7

    move/from16 v0, v22

    if-eq v9, v0, :cond_1c

    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v9, v0, :cond_2e

    .line 1058
    :cond_1c
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v10, v22, v23

    .line 1071
    :cond_1d
    :goto_3
    const/16 v22, 0xa

    move/from16 v0, v22

    if-eq v9, v0, :cond_1e

    const/16 v22, 0xb

    move/from16 v0, v22

    if-ne v9, v0, :cond_35

    .line 1072
    :cond_1e
    const/16 v21, 0x0

    .line 1073
    .local v21, "substr":Ljava/lang/String;
    const/16 v19, -0x1

    .line 1074
    .local v19, "netId":I
    const-string v22, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 1075
    .local v14, "ind":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_1f

    .line 1076
    add-int/lit8 v22, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 1078
    :cond_1f
    if-eqz v21, :cond_32

    .line 1079
    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1080
    .local v20, "status":[Ljava/lang/String;
    move-object/from16 v6, v20

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_32

    aget-object v15, v6, v12

    .line 1081
    .local v15, "key":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "id="

    const/16 v24, 0x0

    const/16 v25, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v22

    if-eqz v22, :cond_31

    .line 1082
    const/4 v13, 0x3

    .line 1083
    .local v13, "idx":I
    const/16 v19, 0x0

    .line 1084
    :goto_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_31

    .line 1085
    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1086
    .local v7, "c":C
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_31

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_31

    .line 1087
    mul-int/lit8 v19, v19, 0xa

    .line 1088
    add-int/lit8 v22, v7, -0x30

    add-int v19, v19, v22

    .line 1089
    add-int/lit8 v13, v13, 0x1

    .line 1093
    goto :goto_5

    .line 1021
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "c":C
    .end local v9    # "event":I
    .end local v10    # "eventData":Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "idx":I
    .end local v14    # "ind":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "len$":I
    .end local v19    # "netId":I
    .end local v20    # "status":[Ljava/lang/String;
    .end local v21    # "substr":Ljava/lang/String;
    :cond_20
    const-string v22, "DISCONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 1022
    const/4 v9, 0x2

    .line 1024
    .restart local v9    # "event":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiMonitor;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1025
    .end local v9    # "event":I
    :cond_21
    const-string v22, "STATE-CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 1026
    const/4 v9, 0x3

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1027
    .end local v9    # "event":I
    :cond_22
    const-string v22, "SCAN-RESULTS"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 1028
    const/4 v9, 0x4

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1029
    .end local v9    # "event":I
    :cond_23
    const-string v22, "LINK-SPEED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    .line 1030
    const/4 v9, 0x5

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1031
    .end local v9    # "event":I
    :cond_24
    const-string v22, "TERMINATING"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    .line 1032
    const/4 v9, 0x6

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1033
    .end local v9    # "event":I
    :cond_25
    const-string v22, "DRIVER-STATE"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    .line 1034
    const/4 v9, 0x7

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1035
    .end local v9    # "event":I
    :cond_26
    const-string v22, "EAP-FAILURE"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 1036
    const/16 v9, 0x8

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1037
    .end local v9    # "event":I
    :cond_27
    const-string v22, "ASSOC-REJECT"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 1038
    const/16 v9, 0x9

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1039
    .end local v9    # "event":I
    :cond_28
    const-string v22, "SSID-TEMP-DISABLED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 1040
    const/16 v9, 0xa

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1041
    .end local v9    # "event":I
    :cond_29
    const-string v22, "SSID-REENABLED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 1042
    const/16 v9, 0xb

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1043
    .end local v9    # "event":I
    :cond_2a
    const-string v22, "BSS-ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 1044
    const/16 v9, 0xc

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1045
    .end local v9    # "event":I
    :cond_2b
    const-string v22, "BSS-REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 1046
    const/16 v9, 0xd

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1049
    .end local v9    # "event":I
    :cond_2c
    const-string v22, "EAP-NO-CERTIFICATION"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 1050
    const/16 v9, 0xe

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1054
    .end local v9    # "event":I
    :cond_2d
    const/16 v9, 0xf

    .restart local v9    # "event":I
    goto/16 :goto_2

    .line 1059
    .restart local v10    # "eventData":Ljava/lang/String;
    :cond_2e
    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v9, v0, :cond_2f

    const/16 v22, 0x8

    move/from16 v0, v22

    if-ne v9, v0, :cond_30

    .line 1060
    :cond_2f
    const-string v22, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 1061
    .restart local v14    # "ind":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_1d

    .line 1062
    add-int/lit8 v22, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 1065
    .end local v14    # "ind":I
    :cond_30
    const-string v22, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 1066
    .restart local v14    # "ind":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_1d

    .line 1067
    add-int/lit8 v22, v14, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 1080
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "len$":I
    .restart local v19    # "netId":I
    .restart local v20    # "status":[Ljava/lang/String;
    .restart local v21    # "substr":Ljava/lang/String;
    :cond_31
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 1097
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "len$":I
    .end local v20    # "status":[Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v23, v0

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v9, v0, :cond_34

    const v22, 0x2400d

    :goto_6
    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v24

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1153
    .end local v14    # "ind":I
    .end local v19    # "netId":I
    .end local v21    # "substr":Ljava/lang/String;
    :cond_33
    :goto_7
    const/16 v22, 0x0

    sput v22, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    .line 1154
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1155
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1097
    .restart local v14    # "ind":I
    .restart local v19    # "netId":I
    .restart local v21    # "substr":Ljava/lang/String;
    :cond_34
    const v22, 0x2400e

    goto :goto_6

    .line 1099
    .end local v14    # "ind":I
    .end local v19    # "netId":I
    .end local v21    # "substr":Ljava/lang/String;
    :cond_35
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v9, v0, :cond_36

    .line 1100
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wifi/WifiMonitor;->handleSupplicantStateChange(Ljava/lang/String;)V

    goto :goto_7

    .line 1101
    :cond_36
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v9, v0, :cond_37

    .line 1102
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wifi/WifiMonitor;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_7

    .line 1103
    :cond_37
    const/16 v22, 0x6

    move/from16 v0, v22

    if-ne v9, v0, :cond_3b

    .line 1104
    const-string v22, "WifiMonitor"

    const-string v23, "event == TERMINATING "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v22, "recv error"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_38

    .line 1110
    sget v22, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/android/server/wifi/WifiMonitor;->sRecvErrors:I

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3a

    .line 1111
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v22, :cond_38

    .line 1112
    const-string v22, "WifiMonitor"

    const-string v23, "too many recv errors, closing connection"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_38
    if-eqz p2, :cond_39

    const-string v22, "ap0"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_39

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24002

    sget v24, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 1124
    :cond_39
    const-string v22, "WifiMonitor"

    const-string v23, "Exit because of receiving terminating for "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 1115
    :cond_3a
    sget v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    .line 1116
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 1126
    :cond_3b
    const/16 v22, 0x8

    move/from16 v0, v22

    if-ne v9, v0, :cond_3c

    .line 1127
    const-string v22, "EAP authentication failed"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_33

    .line 1128
    const-string v22, "WifiMonitor send auth failure (EAP_AUTH_FAILURE) "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x24007

    sget v24, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    goto/16 :goto_7

    .line 1131
    :cond_3c
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ne v9, v0, :cond_3f

    .line 1132
    sget-object v22, Lcom/android/server/wifi/WifiMonitor;->mAssocRejectEventPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 1133
    .local v17, "match":Ljava/util/regex/Matcher;
    const-string v5, ""

    .line 1134
    .local v5, "BSSID":Ljava/lang/String;
    const/16 v20, -0x1

    .line 1135
    .local v20, "status":I
    invoke-virtual/range {v17 .. v17}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-nez v22, :cond_3e

    .line 1136
    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v22, :cond_3d

    const-string v22, "WifiMonitor"

    const-string v23, "Assoc Reject: Could not parse assoc reject string"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_3d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    move-object/from16 v22, v0

    const v23, 0x2402b

    sget v24, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_7

    .line 1138
    :cond_3e
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1140
    const/16 v22, 0x2

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    goto :goto_8

    .line 1141
    :catch_0
    move-exception v8

    .line 1142
    .local v8, "e":Ljava/lang/NumberFormatException;
    const/16 v20, -0x1

    goto :goto_8

    .line 1146
    .end local v5    # "BSSID":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v17    # "match":Ljava/util/regex/Matcher;
    .end local v20    # "status":I
    :cond_3f
    const/16 v22, 0xc

    move/from16 v0, v22

    if-ne v9, v0, :cond_40

    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v22, :cond_33

    .line 1148
    :cond_40
    const/16 v22, 0xd

    move/from16 v0, v22

    if-ne v9, v0, :cond_41

    sget-boolean v22, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v22, :cond_33

    .line 1151
    :cond_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/android/server/wifi/WifiMonitor;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_7
.end method

.method private handleAssociatedBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 1214
    const/4 v0, 0x0

    .line 1215
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mAssociatedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1216
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1219
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x20093

    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1220
    return-void
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1159
    if-nez p1, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleGasQueryEvents(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1511
    iget-object v10, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v10, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    const-string v10, "GAS-QUERY-START"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1513
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v9, 0x24033

    invoke-virtual {v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1514
    :cond_2
    const-string v10, "GAS-QUERY-DONE"

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1515
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1516
    .local v2, "dataTokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1517
    .local v1, "bssid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1518
    .local v6, "success":I
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v7, v0, v3

    .line 1519
    .local v7, "token":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1520
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v10, v5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    .line 1518
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1523
    :cond_4
    aget-object v10, v5, v9

    const-string v11, "addr"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1524
    aget-object v1, v5, v8

    .line 1525
    goto :goto_2

    .line 1527
    :cond_5
    aget-object v10, v5, v9

    const-string v11, "result"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1528
    aget-object v10, v5, v8

    const-string v11, "SUCCESS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v6, v8

    .line 1529
    :goto_3
    goto :goto_2

    :cond_6
    move v6, v9

    .line 1528
    goto :goto_3

    .line 1532
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v10, 0x24034

    invoke-virtual {v8, v10, v6, v9, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1534
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "success":I
    :cond_8
    sget-boolean v8, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "WifiMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown GAS query event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataString"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const v7, 0x2402a

    const v6, 0x24029

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1480
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1482
    .local v0, "tokens":[Ljava/lang/String;
    const-string v1, "WifiMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleHostApEvents mWifiNative.mInterfaceName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiMonitor;->mWifiNative:Lcom/android/server/wifi/WifiNative;

    iget-object v3, v3, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minitor.iface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    aget-object v1, v0, v4

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1486
    if-nez p2, :cond_0

    const-string p2, "whatever"

    .line 1487
    :cond_0
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1488
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1504
    :cond_1
    :goto_0
    return-void

    .line 1490
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1494
    :cond_3
    aget-object v1, v0, v4

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1496
    if-nez p2, :cond_4

    const-string p2, "whatever"

    .line 1497
    :cond_4
    const-string v1, "ap0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1498
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    aget-object v2, v0, v5

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1500
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleHs20Events(Ljava/lang/String;)V
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1542
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    if-nez v5, :cond_1

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    const-string v5, "HS20-SUBSCRIPTION-REMEDIATION"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1545
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1546
    .local v1, "dataTokens":[Ljava/lang/String;
    const/4 v3, -0x1

    .line 1547
    .local v3, "method":I
    const/4 v4, 0x0

    .line 1548
    .local v4, "url":Ljava/lang/String;
    array-length v5, v1

    if-lt v5, v9, :cond_2

    .line 1549
    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1550
    aget-object v4, v1, v8

    .line 1552
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1553
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v3    # "method":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    const-string v5, "HS20-DEAUTH-IMMINENT-NOTICE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1555
    const/4 v0, -0x1

    .line 1556
    .local v0, "code":I
    const/4 v2, -0x1

    .line 1557
    .local v2, "delay":I
    const/4 v4, 0x0

    .line 1558
    .restart local v4    # "url":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1559
    .restart local v1    # "dataTokens":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    .line 1560
    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1561
    aget-object v5, v1, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1562
    aget-object v4, v1, v9

    .line 1564
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    const v6, 0x2403e

    invoke-virtual {v5, v6, v0, v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1566
    .end local v0    # "code":I
    .end local v1    # "dataTokens":[Ljava/lang/String;
    .end local v2    # "delay":I
    .end local v4    # "url":Ljava/lang/String;
    :cond_5
    sget-boolean v5, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown HS20 event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 9
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1670
    const/4 v0, 0x0

    .line 1671
    .local v0, "BSSID":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1672
    .local v5, "networkId":I
    const/4 v6, 0x0

    .line 1673
    .local v6, "reason":I
    const/4 v2, -0x1

    .line 1674
    .local v2, "ind":I
    const/4 v3, 0x0

    .line 1676
    .local v3, "local":I
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_3

    .line 1677
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mConnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1678
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1679
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "WifiMonitor"

    const-string v8, "handleNetworkStateChange: Couldnt find BSSID in event string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    .line 1708
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_1
    return-void

    .line 1681
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1683
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1684
    :catch_0
    move-exception v1

    .line 1685
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v5, -0x1

    goto :goto_0

    .line 1689
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_3
    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v7, :cond_1

    .line 1690
    sget-object v7, Lcom/android/server/wifi/WifiMonitor;->mDisconnectedEventPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1691
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1692
    sget-boolean v7, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v7, :cond_4

    const-string v7, "WifiMonitor"

    const-string v8, "handleNetworkStateChange: Could not parse disconnect string"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0, v3, v6}, Lcom/android/server/wifi/WifiMonitor;->notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V

    goto :goto_1

    .line 1694
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1696
    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1701
    :goto_3
    const/4 v7, 0x3

    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_2

    .line 1697
    :catch_1
    move-exception v1

    .line 1698
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_3

    .line 1702
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 1703
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_2
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 14
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v13, 0x3

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 1360
    const-string v7, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1361
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1362
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24015

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1474
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    const-string v7, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1364
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 1365
    .restart local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24016

    invoke-virtual {v7, v8, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1366
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    const-string v7, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1367
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24025

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1368
    :cond_3
    const-string v7, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1369
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24017

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v9, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1371
    :cond_4
    const-string v7, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1372
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24019

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1373
    :cond_5
    const-string v7, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1376
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1377
    .local v5, "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401a

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v7, v8, v9, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1378
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto :goto_0

    .line 1380
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_6
    const-string v7, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1381
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401b

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1382
    :cond_7
    const-string v7, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1385
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1386
    .restart local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401c

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v7, v8, v9, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1387
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1389
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_8
    const-string v7, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1390
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v2

    .line 1391
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401d

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1392
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_9
    const-string v7, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pError_GroupRemove(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1397
    .restart local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401e

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v7, v8, v9, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1398
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1400
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_a
    const-string v7, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1401
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x2401f

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1403
    :cond_b
    const-string v7, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1406
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiMonitor;->p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v5

    .line 1407
    .restart local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24020

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v7, v8, v9, v12, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1408
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1410
    .end local v5    # "p2pStatus":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_c
    const-string v7, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1411
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24021

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v9, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1413
    :cond_d
    const-string v7, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1414
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24022

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v9, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1416
    :cond_e
    const-string v7, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1417
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24023

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v9, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1419
    :cond_f
    const-string v7, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1420
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24024

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v9, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1422
    :cond_10
    const-string v7, "P2P-PROV-DISC-FAILURE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1423
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24027

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1424
    :cond_11
    const-string v7, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1425
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1426
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v3, :cond_12

    .line 1427
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24026

    invoke-virtual {v7, v8, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1429
    :cond_12
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Null service resp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1432
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_13
    const-string v7, "CTRL-EVENT-DISCONNECTED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1436
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1437
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    if-lt v7, v13, :cond_0

    .line 1438
    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1439
    .local v4, "nameValue":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 1443
    array-length v7, v6

    if-le v7, v9, :cond_14

    aget-object v7, v6, v9

    const-string v8, "peer_oper_freq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1444
    aget-object v7, v6, v9

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1445
    .local v1, "freqNameValue":[Ljava/lang/String;
    aget-object v7, v1, v10

    if-eqz v7, :cond_14

    .line 1446
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1447
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sP2pOperFreq@CTRL-EVENT-DISCONNECTED-1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .end local v1    # "freqNameValue":[Ljava/lang/String;
    :cond_14
    array-length v7, v6

    if-le v7, v13, :cond_15

    aget-object v7, v6, v13

    const-string v8, "peer_oper_freq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1452
    aget-object v7, v6, v13

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1453
    .restart local v1    # "freqNameValue":[Ljava/lang/String;
    aget-object v7, v1, v10

    if-eqz v7, :cond_15

    .line 1454
    aget-object v7, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sput v7, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1455
    const-string v7, "WifiMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sP2pOperFreq@CTRL-EVENT-DISCONNECTED-2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    .end local v1    # "freqNameValue":[Ljava/lang/String;
    :cond_15
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24028

    sget v9, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    aget-object v10, v4, v10

    invoke-virtual {v7, v8, v9, v12, v10}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1460
    sput v11, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto/16 :goto_0

    .line 1463
    .end local v4    # "nameValue":[Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_16
    const-string v7, "P2P-GO-IP-ALLOCATE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1464
    const-string v7, "WifiMonitor"

    const-string v8, "handleP2pEvents, send P2P_GO_IP_ALLOCATE_EVENT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24056

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 1466
    :cond_17
    const-string v7, "P2P-GC-IP-GET"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1467
    const-string v7, "WifiMonitor"

    const-string v8, "handleP2pEvents, send P2P_GC_IP_GET_EVENT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24057

    invoke-virtual {v7, v8, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1469
    :cond_18
    const-string v7, "P2P-NFC-GO-INVITED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1470
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v8, 0x24058

    invoke-virtual {v7, v8, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleRequests(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1574
    const/4 v0, 0x0

    .line 1575
    .local v0, "SSID":Ljava/lang/String;
    const/4 v4, -0x2

    .line 1576
    .local v4, "reason":I
    sget v6, Lcom/android/server/wifi/WifiMonitor;->REQUEST_PREFIX_LEN_STR:I

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1577
    .local v5, "requestName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    const-string v6, "IDENTITY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1581
    sget-object v6, Lcom/android/server/wifi/WifiMonitor;->mRequestIdentityPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1582
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1583
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1585
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1592
    :goto_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x2400f

    sget v8, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    invoke-virtual {v6, v7, v8, v4, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1593
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_2
    const-string v6, "SIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1594
    sget-object v6, Lcom/android/server/wifi/WifiMonitor;->mRequestGsmAuthPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1595
    .restart local v3    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1596
    new-instance v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    invoke-direct {v1}, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;-><init>()V

    .line 1598
    .local v1, "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->networkId:I

    .line 1599
    iput v11, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    .line 1600
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->ssid:Ljava/lang/String;

    .line 1601
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->challenges:[Ljava/lang/String;

    .line 1602
    iget-object v6, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v7, 0x24010

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1586
    .end local v1    # "data":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :catch_0
    move-exception v2

    .line 1587
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v4, -0x1

    .line 1588
    goto :goto_1

    .line 1590
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "didn\'t find SSID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1604
    :cond_4
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t parse SIM auth request - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1608
    .end local v3    # "match":Ljava/util/regex/Matcher;
    :cond_5
    sget-boolean v6, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t identify request type - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1618
    const/16 v16, 0x0

    .line 1619
    .local v16, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 1620
    .local v7, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 1621
    add-int/lit8 v17, v7, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v16

    .line 1624
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1626
    .local v4, "dataTokens":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1627
    .local v2, "BSSID":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1628
    .local v10, "networkId":I
    const/4 v11, -0x1

    .line 1629
    .local v11, "newState":I
    move-object v3, v4

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_5

    aget-object v14, v3, v6

    .line 1630
    .local v14, "token":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1631
    .local v9, "nameValue":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1629
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1635
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1636
    const/16 v17, 0x1

    aget-object v2, v9, v17

    .line 1637
    goto :goto_1

    .line 1642
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 1647
    .local v15, "value":I
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1648
    move v10, v15

    goto :goto_1

    .line 1643
    .end local v15    # "value":I
    :catch_0
    move-exception v5

    .line 1644
    .local v5, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1649
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "value":I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v9, v17

    const-string v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1650
    move v11, v15

    goto :goto_1

    .line 1654
    .end local v9    # "nameValue":[Ljava/lang/String;
    .end local v14    # "token":Ljava/lang/String;
    .end local v15    # "value":I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_6

    .line 1667
    .end local v3    # "arr$":[Ljava/lang/String;
    :goto_2
    return-void

    .line 1656
    .restart local v3    # "arr$":[Ljava/lang/String;
    :cond_6
    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 1657
    .local v12, "newSupplicantState":Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v3

    .local v3, "arr$":[Landroid/net/wifi/SupplicantState;
    array-length v8, v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v13, v3, v6

    .line 1658
    .local v13, "state":Landroid/net/wifi/SupplicantState;
    invoke-virtual {v13}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 1659
    move-object v12, v13

    .line 1663
    .end local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v12, v0, :cond_8

    .line 1664
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1, v2, v12}, Lcom/android/server/wifi/WifiMonitor;->notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 1657
    .restart local v13    # "state":Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private handleTargetBSSIDEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "eventStr"    # Ljava/lang/String;

    .prologue
    .line 1205
    const/4 v0, 0x0

    .line 1206
    .local v0, "BSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->mTargetBSSIDPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1207
    .local v1, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1208
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 1210
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v3, 0x2008d

    sget v4, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1211
    return-void
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const v11, 0x24009

    const/4 v10, 0x0

    .line 1224
    const-string v7, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1225
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1226
    .local v2, "match":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 1227
    .local v4, "reason":I
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1228
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1229
    .local v1, "cfgErrStr":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 1231
    .local v6, "reasonStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1232
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1233
    .local v5, "reasonInt":I
    packed-switch v5, :pswitch_data_0

    .line 1243
    move v4, v5

    .line 1247
    .end local v5    # "reasonInt":I
    :cond_0
    if-eqz v1, :cond_1

    .line 1248
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1249
    .local v0, "cfgErrInt":I
    sparse-switch v0, :sswitch_data_0

    .line 1259
    if-nez v4, :cond_1

    move v4, v0

    .line 1265
    .end local v0    # "cfgErrInt":I
    .end local v1    # "cfgErrStr":Ljava/lang/String;
    .end local v6    # "reasonStr":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8, v11, v10, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1267
    :goto_0
    return-void

    .line 1235
    .restart local v1    # "cfgErrStr":Ljava/lang/String;
    .restart local v5    # "reasonInt":I
    .restart local v6    # "reasonStr":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x5

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1239
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x4

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1251
    .end local v5    # "reasonInt":I
    .restart local v0    # "cfgErrInt":I
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x6

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1255
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v8, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const/4 v9, 0x3

    invoke-virtual {v8, v11, v9, v10}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1249
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 1
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 916
    const-string v0, "WifiMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void
.end method

.method private p2pErrorEx(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 5
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1313
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1316
    .local v1, "status":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1317
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1318
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v1

    .line 1319
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1327
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern3:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1328
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1329
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1330
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    .line 1332
    :cond_1
    const-string v2, "WifiMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p2pErrorEx status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", peer_oper_freq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-object v1

    .line 1321
    :cond_2
    sget-object v2, Lcom/android/server/wifi/WifiMonitor;->p2pErrorExPattern1:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1323
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    move-result-object v1

    .line 1324
    const/4 v2, -0x1

    sput v2, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto :goto_0
.end method

.method private p2pError_GroupRemove(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 10
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x4

    .line 1273
    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    .line 1274
    .local v1, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1276
    .local v5, "tokens":[Ljava/lang/String;
    array-length v6, v5

    if-ge v6, v7, :cond_0

    move-object v2, v1

    .line 1304
    .end local v1    # "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .local v2, "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :goto_0
    return-object v2

    .line 1277
    .end local v2    # "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .restart local v1    # "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :cond_0
    aget-object v6, v5, v7

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1279
    .local v4, "nameValue":[Ljava/lang/String;
    aget-object v6, v4, v8

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1281
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1287
    :cond_1
    :goto_1
    sget-object v6, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    if-ne v1, v6, :cond_2

    .line 1289
    array-length v6, v5

    if-le v6, v9, :cond_2

    .line 1290
    aget-object v6, v5, v9

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1291
    .local v3, "freqNameValue":[Ljava/lang/String;
    aget-object v6, v5, v9

    const-string v7, "peer_oper_freq"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1292
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect peer_oper_freq format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :goto_2
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sP2pOperFreq@p2pError_GroupRemove() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "freqNameValue":[Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 1304
    .end local v1    # "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .restart local v2    # "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    goto :goto_0

    .line 1282
    .end local v2    # "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .restart local v1    # "err":Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 1293
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "freqNameValue":[Ljava/lang/String;
    :cond_3
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 1294
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect peer_oper_freq format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1296
    :cond_4
    aget-object v6, v3, v8

    if-nez v6, :cond_5

    .line 1297
    const-string v6, "WifiMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect peer_oper_freq format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1299
    :cond_5
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/android/server/wifi/WifiMonitor;->sP2pOperFreq:I

    goto :goto_2
.end method


# virtual methods
.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    .line 610
    if-lez p1, :cond_0

    .line 611
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    goto :goto_0
.end method

.method getWifiP2pDevice(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1340
    :try_start_0
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :goto_0
    return-object v0

    .line 1342
    :catch_0
    move-exception v1

    .line 1343
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getWifiP2pGroup(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 2
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1349
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    :goto_0
    return-object v1

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "remainder"    # Ljava/lang/String;

    .prologue
    .line 1174
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1177
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1202
    :cond_1
    :goto_0
    return-void

    .line 1179
    :sswitch_0
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1183
    :sswitch_1
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1191
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v1, 0x24050

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1195
    :sswitch_4
    sget-boolean v0, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v0, :cond_1

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method public isMonitoring()Z
    .locals 2

    .prologue
    .line 632
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->isMonitoring(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public killSupplicant(Z)V
    .locals 1
    .param p1, "p2pSupported"    # Z

    .prologue
    .line 641
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->killSupplicant(Z)V

    .line 642
    return-void
.end method

.method notifyNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;II)V
    .locals 3
    .param p1, "newState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "netId"    # I
    .param p4, "reason"    # I

    .prologue
    .line 1721
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 1722
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24003

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1724
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1734
    :goto_0
    return-void

    .line 1727
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24004

    invoke-virtual {v1, v2, p3, p4, p2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1729
    .restart local v0    # "m":Landroid/os/Message;
    sget-boolean v1, Lcom/android/server/wifi/WifiMonitor;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiMonitor notify network disconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiMonitor;->logDbg(Ljava/lang/String;)V

    .line 1732
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method notifySupplicantStateChange(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 6
    .param p1, "networkId"    # I
    .param p2, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "newState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;

    const v2, 0x24006

    sget v3, Lcom/android/server/wifi/WifiMonitor;->eventLogCounter:I

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/wifi/StateChangeResult;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/android/server/wifi/StateChangeResult;-><init>(ILandroid/net/wifi/WifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1749
    return-void
.end method

.method public quitMonitoring()V
    .locals 1

    .prologue
    .line 645
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->quitMonitoring()V

    .line 647
    return-void
.end method

.method public setStateMachine2(Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/server/wifi/WifiMonitor;->mStateMachine2:Lcom/android/internal/util/StateMachine;

    .line 620
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 623
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->startMonitoring(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    .prologue
    .line 627
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopMonitoring(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public stopSupplicant()V
    .locals 1

    .prologue
    .line 637
    # getter for: Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->sInstance:Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;
    invoke-static {}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->access$000()Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiMonitor$WifiMonitorSingleton;->stopSupplicant()V

    .line 638
    return-void
.end method
