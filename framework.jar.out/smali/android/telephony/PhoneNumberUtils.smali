.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;,
        Landroid/telephony/PhoneNumberUtils$EccEntry;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field public static final CDMA_CFALL_DISABLE:Ljava/lang/String; = "*730"

.field public static final CDMA_CFB_DISABLE:Ljava/lang/String; = "*900"

.field public static final CDMA_CFB_ENABLE:Ljava/lang/String; = "*90"

.field public static final CDMA_CFDF_DISABLE:Ljava/lang/String; = "*680"

.field public static final CDMA_CFDF_ENABLE:Ljava/lang/String; = "*68"

.field public static final CDMA_CFNR_DISABLE:Ljava/lang/String; = "*920"

.field public static final CDMA_CFNR_ENABLE:Ljava/lang/String; = "*92"

.field public static final CDMA_CFU_DISABLE:Ljava/lang/String; = "*720"

.field public static final CDMA_CFU_ENABLE:Ljava/lang/String; = "*72"

.field public static final CDMA_CW_DISABLE:Ljava/lang/String; = "*740"

.field public static final CDMA_CW_ENABLE:Ljava/lang/String; = "*74"

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field public static final ID_INVALID:I = 0x5

.field public static final ID_VALID:I = 0x3

.field public static final ID_VALID_BUT_NEED_AREA_CODE:I = 0x2

.field public static final ID_VALID_DOMESTIC_ONLY:I = 0x4

.field public static final ID_VALID_ECC:I = 0x1

.field public static final ID_VALID_WHEN_CALL_EXIST:I = 0x6

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field static final MIN_MATCH:I

.field static final MIN_MATCH_CTA:I = 0xb

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static mCustomizedEccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/PhoneNumberUtils$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mHashMapForNetworkEccCategory:Ljava/util/HashMap;
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

.field private static sCdmaCustomizedEccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/PhoneNumberUtils$EccEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsC2kSupport:Z

.field private static sIsCtaSet:Z

.field private static sIsCtaSupport:Z

.field private static sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

.field private static sSpecificEccCat:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    .line 108
    const-string v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 202
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    .line 203
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    .line 204
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    .line 206
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    .line 208
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->sIsCtaSupport:Z

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->sIsCtaSet:Z

    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->sIsC2kSupport:Z

    .line 213
    const-string v0, "1"

    const-string/jumbo v1, "ro.mtk_cta_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->sIsCtaSupport:Z

    .line 214
    const-string v0, "1"

    const-string/jumbo v1, "ro.mtk_cta_set"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->sIsCtaSet:Z

    .line 215
    const-string v0, "1"

    const-string/jumbo v1, "ro.mtk_c2k_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/PhoneNumberUtils;->sIsC2kSupport:Z

    .line 216
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const-class v0, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IPhoneNumberExt;

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    .line 219
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    .line 221
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->parseEccList()V

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    .line 226
    const/4 v0, -0x1

    sput v0, Landroid/telephony/PhoneNumberUtils;->sSpecificEccCat:I

    .line 1251
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    .line 1725
    const-string/jumbo v0, "ro.gn.match.numberlength"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->MIN_MATCH:I

    .line 2205
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    .line 2207
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2211
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2213
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2217
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2219
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2759
    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 2771
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    return-void

    .line 2759
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2794
    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2619
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 2620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2621
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2622
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2629
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2626
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2627
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static bcdToChar(B)C
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 1095
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 1096
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 1105
    :goto_0
    return v0

    .line 1097
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1105
    const/4 v0, 0x0

    goto :goto_0

    .line 1098
    :pswitch_0
    const/16 v0, 0x2a

    goto :goto_0

    .line 1099
    :pswitch_1
    const/16 v0, 0x23

    goto :goto_0

    .line 1100
    :pswitch_2
    const/16 v0, 0x2c

    goto :goto_0

    .line 1101
    :pswitch_3
    const/16 v0, 0x4e

    goto :goto_0

    .line 1103
    :pswitch_4
    const/16 v0, 0x3b

    goto :goto_0

    .line 1097
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1087
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 1013
    const/4 v0, 0x0

    .line 1014
    .local v0, "prependPlus":Z
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1016
    .local v1, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    .line 1017
    const-string v2, ""

    .line 1037
    :goto_0
    return-object v2

    .line 1021
    :cond_0
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x90

    if-ne v2, v3, :cond_1

    .line 1022
    const/4 v0, 0x1

    .line 1025
    :cond_1
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-static {v1, p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    .line 1028
    if-eqz v0, :cond_3

    .line 1029
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1031
    const-string v2, ""

    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1037
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2268
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2270
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2271
    .local v0, "currIso":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2272
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2273
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2279
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I

    .prologue
    const/4 v6, 0x1

    .line 2332
    move-object v3, p0

    .line 2334
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_3

    if-ne p1, v6, :cond_3

    move v5, v6

    .line 2337
    .local v5, "useNanp":Z
    :goto_0
    if-eqz p0, :cond_2

    const-string v7, "+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 2341
    const/4 v2, 0x0

    .line 2342
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 2345
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2354
    :cond_0
    if-eqz v5, :cond_4

    .line 2355
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2361
    .local v1, "networkDialStr":Ljava/lang/String;
    :goto_1
    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2364
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2365
    if-nez v3, :cond_5

    .line 2366
    move-object v3, v1

    .line 2377
    :goto_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2378
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2379
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 2382
    .local v0, "dialableIndex":I
    if-lt v0, v6, :cond_7

    .line 2383
    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2386
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2398
    .end local v0    # "dialableIndex":I
    :cond_1
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_2
    move-object p0, v3

    .line 2400
    .end local p0    # "dialStr":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 2334
    .end local v5    # "useNanp":Z
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 2357
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local v5    # "useNanp":Z
    :cond_4
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "networkDialStr":Ljava/lang/String;
    goto :goto_1

    .line 2368
    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 2374
    :cond_6
    const-string v6, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2391
    .restart local v0    # "dialableIndex":I
    :cond_7
    if-gez v0, :cond_8

    .line 2392
    const-string v2, ""

    .line 2394
    :cond_8
    const-string/jumbo v7, "wrong postDialStr="

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2292
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2293
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2294
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2295
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 2296
    .local v1, "format":I
    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 2300
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 1111
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1112
    add-int/lit8 v0, p0, -0x30

    .line 1122
    :goto_0
    return v0

    .line 1113
    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    .line 1114
    const/16 v0, 0xa

    goto :goto_0

    .line 1115
    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    .line 1116
    const/16 v0, 0xb

    goto :goto_0

    .line 1117
    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 1118
    const/16 v0, 0xc

    goto :goto_0

    .line 1119
    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    .line 1120
    const/16 v0, 0xd

    goto :goto_0

    .line 1121
    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    .line 1122
    const/16 v0, 0xe

    goto :goto_0

    .line 1124
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 2922
    const/4 v0, 0x0

    .line 2923
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 2924
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 2925
    if-eqz v0, :cond_0

    .line 2940
    :goto_1
    return v1

    .line 2931
    :cond_0
    const/4 v0, 0x1

    .line 2937
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2933
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2940
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 574
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 581
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 602
    const/4 v8, 0x0

    .line 603
    .local v8, "numNonDialableCharsInA":I
    const/4 v9, 0x0

    .line 605
    .local v9, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v11, 0x1

    .line 705
    :goto_0
    return v11

    .line 605
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 608
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 611
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 612
    .local v4, "ia":I
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 613
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 615
    .local v6, "matched":I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 617
    const/4 v10, 0x0

    .line 619
    .local v10, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 621
    .local v0, "ca":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_6

    .line 622
    add-int/lit8 v4, v4, -0x1

    .line 623
    const/4 v10, 0x1

    .line 624
    add-int/lit8 v8, v8, 0x1

    .line 627
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 629
    .local v1, "cb":C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v11

    if-nez v11, :cond_7

    .line 630
    add-int/lit8 v5, v5, -0x1

    .line 631
    const/4 v10, 0x1

    .line 632
    add-int/lit8 v9, v9, 0x1

    .line 635
    :cond_7
    if-nez v10, :cond_5

    .line 636
    if-eq v1, v0, :cond_a

    const/16 v11, 0x4e

    if-eq v0, v11, :cond_a

    const/16 v11, 0x4e

    if-eq v1, v11, :cond_a

    .line 644
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v10    # "skipCmp":Z
    :cond_8
    sget v7, Landroid/telephony/PhoneNumberUtils;->MIN_MATCH:I

    .line 645
    .local v7, "minMatchLen":I
    sget-boolean v11, Landroid/telephony/PhoneNumberUtils;->sIsCtaSupport:Z

    if-eqz v11, :cond_b

    .line 646
    const/16 v7, 0xb

    .line 651
    :cond_9
    :goto_2
    sget v7, Landroid/telephony/PhoneNumberUtils;->MIN_MATCH:I

    .line 654
    const-string v11, "PhoneNumberUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[compareLoosely] a: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", b: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", minMatchLen:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    if-ge v6, v7, :cond_d

    .line 657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v2, v11, v8

    .line 658
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v3, v11, v9

    .line 663
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_c

    if-ne v2, v6, :cond_c

    .line 664
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 639
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .end local v7    # "minMatchLen":I
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v10    # "skipCmp":Z
    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 647
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v10    # "skipCmp":Z
    .restart local v7    # "minMatchLen":I
    :cond_b
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    if-eqz v11, :cond_9

    .line 648
    sget-object v11, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v11}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->getMinMatch()I

    move-result v7

    goto :goto_2

    .line 667
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    :cond_c
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[compareLoosely] return: false"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 672
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_d
    if-lt v6, v7, :cond_f

    if-ltz v4, :cond_e

    if-gez v5, :cond_f

    .line 673
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 686
    :cond_f
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 689
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 692
    :cond_10
    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_11

    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 695
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 698
    :cond_11
    add-int/lit8 v11, v5, 0x1

    invoke-static {p1, v11}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_12

    add-int/lit8 v11, v4, 0x1

    invoke-static {p0, v11}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 701
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 704
    :cond_12
    const-string v11, "PhoneNumberUtils"

    const-string v12, "[compareLoosely] return: false"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 713
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 721
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 722
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 859
    :goto_0
    return v18

    .line 722
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 723
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 724
    const/16 v18, 0x0

    goto :goto_0

    .line 727
    :cond_3
    const/4 v10, 0x0

    .line 728
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 730
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 732
    .local v6, "cccA":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 734
    .local v7, "cccB":Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 735
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 736
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 737
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 738
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 739
    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 741
    const/16 v18, 0x0

    goto :goto_0

    .line 745
    :cond_4
    const/4 v13, 0x0

    .line 746
    const/4 v5, 0x1

    .line 747
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 748
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 774
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 775
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 776
    .local v4, "backwardIndexB":I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 777
    const/4 v14, 0x0

    .line 778
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 779
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 780
    .local v9, "chB":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 781
    add-int/lit8 v3, v3, -0x1

    .line 782
    const/4 v14, 0x1

    .line 784
    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 785
    add-int/lit8 v4, v4, -0x1

    .line 786
    const/4 v14, 0x1

    .line 789
    :cond_8
    if-nez v14, :cond_6

    .line 790
    if-eq v8, v9, :cond_e

    .line 791
    const/16 v18, 0x0

    goto :goto_0

    .line 749
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 752
    const/4 v13, 0x0

    goto :goto_1

    .line 754
    :cond_a
    if-eqz v6, :cond_c

    .line 755
    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 763
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 764
    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 757
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 758
    .local v15, "tmp":I
    if-ltz v15, :cond_b

    .line 759
    move v10, v15

    .line 760
    const/16 v16, 0x1

    goto :goto_3

    .line 766
    .end local v15    # "tmp":I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 767
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_5

    .line 768
    move v11, v15

    .line 769
    const/16 v17, 0x1

    goto :goto_1

    .line 793
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 794
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 798
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_f
    if-eqz v13, :cond_17

    .line 799
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 801
    :cond_11
    if-eqz p2, :cond_12

    .line 811
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 813
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 816
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 818
    :cond_15
    if-eqz p2, :cond_16

    .line 819
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 821
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 834
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 835
    .local v12, "maybeNamp":Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 836
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 837
    .restart local v8    # "chA":C
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 838
    if-eqz v12, :cond_1a

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 839
    const/4 v12, 0x0

    .line 844
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 845
    goto :goto_4

    .line 834
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 841
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 846
    .end local v8    # "chA":C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 847
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 848
    .restart local v9    # "chB":C
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 849
    if-eqz v12, :cond_1d

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 850
    const/4 v12, 0x0

    .line 855
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 856
    goto :goto_5

    .line 852
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 859
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 2182
    if-nez p0, :cond_1

    .line 2198
    .end local p0    # "input":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 2185
    .restart local p0    # "input":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2186
    .local v2, "len":I
    if-eqz v2, :cond_0

    .line 2190
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 2192
    .local v3, "out":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2193
    aget-char v0, v3, v1

    .line 2195
    .local v0, "c":C
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 2192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2198
    .end local v0    # "c":C
    :cond_2
    new-instance p0, Ljava/lang/String;

    .end local p0    # "input":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 469
    if-nez p0, :cond_0

    .line 470
    const/4 v4, 0x0

    .line 485
    :goto_0
    return-object v4

    .line 472
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 473
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 475
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 476
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 478
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 479
    const/16 v0, 0x2c

    .line 483
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 480
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    const/16 v0, 0x3b

    goto :goto_2

    .line 485
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2b

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 3264
    if-nez p0, :cond_0

    .line 3265
    const/4 v2, 0x0

    .line 3313
    :goto_0
    return-object v2

    .line 3269
    :cond_0
    const-string v3, "^([*][#]|[*]{1,2}|[#]{1,2})([0-9]{2,3})([*])([+]?[0-9]+)(.*)(#)$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3271
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3272
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3273
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3274
    :cond_1
    const-string v3, "*31#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "#31#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3275
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Start with *31# or #31#, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3277
    :cond_3
    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    const-string v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "+"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 3280
    const-string v3, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3281
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3282
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3283
    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matcher pattern1, return empty string."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    .line 3287
    const-string v2, ""

    goto/16 :goto_0

    .line 3289
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 3290
    .local v2, "strDialNumber":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_6

    .line 3293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matcher pattern1, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3298
    .end local v2    # "strDialNumber":Ljava/lang/String;
    :cond_5
    const-string v3, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3299
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3300
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3301
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 3302
    .restart local v2    # "strDialNumber":Ljava/lang/String;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_6

    .line 3306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matcher pattern2, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "strDialNumber":Ljava/lang/String;
    :cond_6
    move-object v2, p0

    .line 3313
    goto/16 :goto_0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 352
    if-nez p0, :cond_0

    .line 353
    const/4 v6, 0x0

    .line 378
    :goto_0
    return-object v6

    .line 356
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 357
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 360
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 362
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 363
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 364
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 365
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 367
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 369
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 371
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 373
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 378
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 391
    if-nez p0, :cond_0

    .line 392
    const/4 v5, 0x0

    .line 416
    :goto_0
    return-object v5

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 396
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 397
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 399
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 400
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 401
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 402
    if-eqz v1, :cond_2

    .line 399
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 405
    :cond_2
    const/4 v1, 0x1

    .line 407
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 408
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 409
    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    .end local v0    # "c":C
    :cond_5
    const-string v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[extractNetworkPortionAlt] phoneNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 538
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 554
    :goto_0
    return-object v5

    .line 541
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 545
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 546
    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 548
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 549
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 550
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 546
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 2603
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2604
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2605
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2609
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 2603
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2609
    .end local v0    # "c":C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1501
    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 1502
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 1386
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1387
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 1395
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1398
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 1399
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1404
    new-array v1, v13, [I

    .line 1405
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 1407
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 1408
    .local v10, "state":I
    const/4 v7, 0x0

    .line 1409
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 1410
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 1411
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 1455
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1413
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 1414
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 1409
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 1427
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 1429
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 1431
    :cond_5
    if-ne v10, v13, :cond_6

    .line 1433
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 1438
    :goto_3
    const/4 v10, 0x1

    .line 1439
    add-int/lit8 v7, v7, 0x1

    .line 1440
    goto :goto_2

    .line 1434
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 1436
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_3

    .line 1443
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 1444
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1447
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_2

    .line 1449
    const/4 v10, 0x2

    move v5, v6

    .line 1450
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 1460
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 1462
    add-int/lit8 v5, v6, -0x1

    .line 1466
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 1467
    aget v8, v1, v2

    .line 1468
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1466
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1472
    .end local v8    # "pos":I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 1473
    .local v3, "len":I
    :goto_6
    if-lez v3, :cond_0

    .line 1474
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 1475
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1476
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_a
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_b
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    .line 1411
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 1289
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1290
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1291
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .prologue
    .line 1307
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1308
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 1309
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1596
    const-string v3, "#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, p0

    .line 1607
    :goto_0
    return-object v1

    .line 1600
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1601
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1603
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1604
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1605
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "phoneNumberE164"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1630
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1631
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1632
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1654
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1631
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1636
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 1638
    .local v5, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_2

    .line 1643
    :try_start_0
    const-string v6, "ZZ"

    invoke-virtual {v5, p1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1644
    .local v2, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v5, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1645
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-gtz v6, :cond_2

    .line 1648
    move-object p2, v3

    .line 1653
    .end local v2    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1654
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    .end local v4    # "result":Ljava/lang/String;
    :goto_3
    move-object p0, v4

    goto :goto_1

    .restart local v4    # "result":Ljava/lang/String;
    :cond_3
    move-object v4, p0

    goto :goto_3

    .line 1650
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1338
    move v0, p1

    .line 1340
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1341
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 1342
    const/4 v0, 0x1

    .line 1351
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1362
    :goto_1
    return-void

    .line 1343
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1345
    const/4 v0, 0x2

    goto :goto_0

    .line 1347
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1353
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1356
    :pswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 1359
    :pswitch_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 1351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1537
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 1538
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v1, 0x0

    .line 1540
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1541
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1542
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1546
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v1

    .line 1544
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1565
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 1566
    .local v3, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v2, 0x0

    .line 1568
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1569
    .local v0, "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1570
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1571
    .local v1, "postDial":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1572
    new-instance v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v4}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 1574
    :cond_0
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v3, v0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1578
    .end local v0    # "pn":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v1    # "postDial":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 1576
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .locals 3
    .param p0, "useNanp"    # Z

    .prologue
    .line 2458
    const-string v2, "gsm.operator.idpstring"

    if-eqz p0, :cond_0

    const-string v1, "011"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2460
    .local v0, "ps":Ljava/lang/String;
    return-object v0

    .line 2458
    .end local v0    # "ps":Ljava/lang/String;
    :cond_0
    const-string v1, "+"

    goto :goto_0
.end method

.method private static getDefaultVoiceSubId()I
    .locals 1

    .prologue
    .line 2947
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    return v0
.end method

.method public static getEccList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/PhoneNumberUtils$EccEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3478
    sget-object v0, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1322
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 2473
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 2474
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2475
    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 2476
    const/4 v2, 0x1

    .line 2482
    :goto_1
    return v2

    .line 2474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2479
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2480
    const/4 v2, 0x2

    goto :goto_1

    .line 2482
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getInternationalPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 3641
    if-nez p0, :cond_1

    .line 3642
    const-string v1, ""

    .line 3655
    :cond_0
    :goto_0
    return-object v1

    .line 3645
    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 3646
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    invoke-virtual {v2, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3647
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_2

    .line 3648
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 3649
    .local v1, "prefix":Ljava/lang/String;
    const-string/jumbo v3, "tw"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3650
    const-string v1, "0(?:0[25679] | 16 | 17 | 19)"

    goto :goto_0

    .line 3655
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 295
    const/4 v8, 0x0

    .line 297
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 299
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v3

    .line 303
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "tel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "sip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 309
    :cond_3
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, "type":Ljava/lang/String;
    const/4 v9, 0x0

    .line 317
    .local v9, "phoneColumn":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 319
    const-string/jumbo v9, "number"

    .line 324
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 327
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_6

    .line 329
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 333
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v3, v8

    .line 337
    goto :goto_0

    .line 320
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_7
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    const-string v9, "data1"

    goto :goto_1

    .line 333
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getServiceCategoryFromEcc(Ljava/lang/String;)I
    .locals 10
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 3488
    const/4 v6, 0x0

    .line 3490
    .local v6, "numberPlus":Ljava/lang/String;
    sget v7, Landroid/telephony/PhoneNumberUtils;->sSpecificEccCat:I

    if-ltz v7, :cond_0

    .line 3491
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get specific ECC category: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/telephony/PhoneNumberUtils;->sSpecificEccCat:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    sget v1, Landroid/telephony/PhoneNumberUtils;->sSpecificEccCat:I

    .line 3493
    .local v1, "eccCat":I
    const/4 v7, -0x1

    sput v7, Landroid/telephony/PhoneNumberUtils;->sSpecificEccCat:I

    .line 3530
    .end local v1    # "eccCat":I
    :goto_0
    return v1

    .line 3499
    :cond_0
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3500
    .local v3, "emergencyNum":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3501
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3503
    :cond_2
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3504
    .local v5, "nSC":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 3505
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getServiceCategoryFromEcc] match network ecc list, Ecc= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Category= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 3516
    .end local v3    # "emergencyNum":Ljava/lang/String;
    .end local v5    # "nSC":Ljava/lang/Integer;
    :cond_3
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 3517
    sget-object v7, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 3518
    .local v2, "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v2}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v0

    .line 3519
    .local v0, "ecc":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3520
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3522
    :cond_5
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getServiceCategoryFromEcc] match customized ecc list, Ecc= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Category= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    invoke-virtual {v2}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 3529
    .end local v0    # "ecc":Ljava/lang/String;
    .end local v2    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :cond_6
    const-string v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getServiceCategoryFromEcc] no matched for Ecc ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", return 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "np":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 938
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2557
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2558
    .local v0, "delimiterIndex":I
    if-gez v0, :cond_0

    .line 2559
    const-string v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2561
    :cond_0
    if-gez v0, :cond_1

    .line 2562
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2566
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 516
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 517
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 519
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 521
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 522
    add-int/lit8 v4, v0, -0x1

    .line 524
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1043
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 1047
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1049
    .local v1, "c":C
    if-nez v1, :cond_1

    .line 1076
    .end local v1    # "c":C
    :cond_0
    return-void

    .line 1052
    .restart local v1    # "c":C
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    .line 1063
    .local v0, "b":B
    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-eq v3, v4, :cond_0

    .line 1068
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    .line 1069
    if-eqz v1, :cond_0

    .line 1073
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1043
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "np"    # Ljava/lang/String;
    .param p1, "numDigits"    # I

    .prologue
    .line 947
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 960
    :goto_0
    return-object v5

    .line 949
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 950
    .local v3, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 952
    .local v2, "length":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    move v4, v2

    .line 953
    .local v4, "s":I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 955
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 957
    .local v0, "c":C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 953
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 960
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static final is12Key(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 237
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 2777
    if-lez p0, :cond_0

    sget v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 243
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1152
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1153
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1154
    const/4 v2, 0x0

    .line 1157
    :goto_1
    return v2

    .line 1152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1756
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1882
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1740
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1868
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumberExt(Ljava/lang/String;I)Z
    .locals 22
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 2991
    const-string v19, "PhoneNumberUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[isEmergencyNumberExt], number:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", phoneType:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    if-nez p0, :cond_0

    .line 2993
    const/16 v19, 0x0

    .line 3251
    :goto_0
    return v19

    .line 2995
    :cond_0
    const/4 v10, 0x0

    .line 2996
    .local v10, "numberPlus":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3005
    .local v3, "bSIMInserted":Z
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3006
    const/16 v19, 0x0

    goto :goto_0

    .line 3011
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3013
    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_1c

    .line 3014
    sget-boolean v19, Landroid/telephony/PhoneNumberUtils;->sIsC2kSupport:Z

    if-nez v19, :cond_2

    .line 3015
    const/16 v19, 0x0

    goto :goto_0

    .line 3020
    :cond_2
    const-string v19, "cdma.ril.ecclist"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3021
    .local v11, "numbers":Ljava/lang/String;
    const-string v19, "PhoneNumberUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[isEmergencyNumberExt] cdma.ril.ecclist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 3025
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v6, v2, v8

    .line 3026
    .local v6, "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3027
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 3028
    :cond_3
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match cdma.ril.ecclist"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3025
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3032
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    .line 3036
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_6
    const-string v19, "cdma.ril.ecclist1"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3037
    const-string v19, "PhoneNumberUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[isEmergencyNumberExt] cdma.ril.ecclist1: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 3041
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_2
    if-ge v8, v9, :cond_9

    aget-object v6, v2, v8

    .line 3042
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3043
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 3044
    :cond_7
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match cdma.ril.ecclist1"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3041
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3048
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x1

    .line 3052
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_a
    const-string v19, "cdma.ril.ecclist2"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3053
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 3056
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v9, :cond_d

    aget-object v6, v2, v8

    .line 3057
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3058
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 3059
    :cond_b
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match cdma.ril.ecclist2"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3056
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3063
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_d
    const/4 v3, 0x1

    .line 3067
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_e
    const-string v19, "cdma.ril.ecclist3"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3068
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_12

    .line 3071
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_4
    if-ge v8, v9, :cond_11

    aget-object v6, v2, v8

    .line 3072
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3073
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 3074
    :cond_f
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match cdma.ril.ecclist3"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3071
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 3078
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_11
    const/4 v3, 0x1

    .line 3081
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_12
    const/16 v17, -0x1

    .line 3082
    .local v17, "subId":I
    const/4 v13, -0x1

    .line 3083
    .local v13, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 3084
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v12

    .line 3085
    .local v12, "simCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v12, :cond_13

    .line 3086
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v17

    .line 3087
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 3091
    :cond_13
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_14

    .line 3092
    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v13

    .line 3093
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    .line 3095
    :cond_14
    const-string v19, "PhoneNumberUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CDMA subId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", slotId:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", bSIMInserted:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    if-eqz v3, :cond_18

    .line 3101
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v19, :cond_1b

    .line 3102
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 3103
    .local v5, "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 3104
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v4

    .line 3105
    .local v4, "ecc":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3106
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_16

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 3107
    :cond_16
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match customized ecc list"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3085
    .end local v4    # "ecc":Ljava/lang/String;
    .end local v5    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 3115
    :cond_18
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v19, :cond_1b

    .line 3116
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 3117
    .restart local v5    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v4

    .line 3118
    .restart local v4    # "ecc":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3119
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 3120
    :cond_1a
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match customized ecc list when no sim"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3127
    .end local v4    # "ecc":Ljava/lang/String;
    .end local v5    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1b
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] no match"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 3131
    .end local v7    # "i":I
    .end local v11    # "numbers":Ljava/lang/String;
    .end local v12    # "simCount":I
    .end local v13    # "slotId":I
    .end local v17    # "subId":I
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1c
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 3132
    const-string/jumbo v19, "ril.ecc.service.category.list"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3133
    .local v16, "strEccCategoryList":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1e

    .line 3134
    const-string v19, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_6
    if-ge v8, v9, :cond_1e

    aget-object v14, v2, v8

    .line 3135
    .local v14, "strEccCategory":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1d

    .line 3136
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 3137
    .local v15, "strEccCategoryAry":[Ljava/lang/String;
    const/16 v19, 0x2

    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    .line 3138
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    const/16 v20, 0x0

    aget-object v20, v15, v20

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    .end local v15    # "strEccCategoryAry":[Ljava/lang/String;
    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 3144
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v14    # "strEccCategory":Ljava/lang/String;
    :cond_1e
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->mHashMapForNetworkEccCategory:Ljava/util/HashMap;

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3145
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3146
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 3148
    :cond_20
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match network ecc list"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3155
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_21
    const-string/jumbo v19, "ril.ecclist"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3156
    .restart local v11    # "numbers":Ljava/lang/String;
    const-string v19, "PhoneNumberUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[isEmergencyNumberExt] ril.ecclist: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_25

    .line 3160
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_7
    if-ge v8, v9, :cond_24

    aget-object v6, v2, v8

    .line 3161
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3162
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 3164
    :cond_22
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match ril.ecclist"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3160
    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 3168
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_24
    const/4 v3, 0x1

    .line 3172
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_25
    const-string/jumbo v19, "ril.ecclist1"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3173
    const-string v19, "PhoneNumberUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[isEmergencyNumberExt] ril.ecclist1: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_29

    .line 3177
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_8
    if-ge v8, v9, :cond_28

    aget-object v6, v2, v8

    .line 3178
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3179
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_26

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 3181
    :cond_26
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match ril.ecclist1"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3177
    :cond_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 3185
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_28
    const/4 v3, 0x1

    .line 3189
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_29
    const-string/jumbo v19, "ril.ecclist2"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3190
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2d

    .line 3193
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_9
    if-ge v8, v9, :cond_2c

    aget-object v6, v2, v8

    .line 3194
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3195
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2a

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 3197
    :cond_2a
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match ril.ecclist2"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3193
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 3201
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_2c
    const/4 v3, 0x1

    .line 3205
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_2d
    const-string/jumbo v19, "ril.ecclist3"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3206
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_31

    .line 3209
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v9, v2

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_a
    if-ge v8, v9, :cond_30

    aget-object v6, v2, v8

    .line 3210
    .restart local v6    # "emergencyNum":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3211
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2e

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 3213
    :cond_2e
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match ril.ecclist3"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3209
    :cond_2f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 3217
    .end local v6    # "emergencyNum":Ljava/lang/String;
    :cond_30
    const/4 v3, 0x1

    .line 3221
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_31
    if-eqz v3, :cond_34

    .line 3222
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v19, :cond_37

    .line 3223
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_32
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_37

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 3224
    .restart local v5    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_32

    .line 3225
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v4

    .line 3226
    .restart local v4    # "ecc":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3227
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_33

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 3229
    :cond_33
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match customized ecc list"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3237
    .end local v4    # "ecc":Ljava/lang/String;
    .end local v5    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_34
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v19, :cond_37

    .line 3238
    sget-object v19, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_37

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 3239
    .restart local v5    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v5}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v4

    .line 3240
    .restart local v4    # "ecc":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3241
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_36

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 3243
    :cond_36
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] match customized ecc list when no sim"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3250
    .end local v4    # "ecc":Ljava/lang/String;
    .end local v5    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_37
    const-string v19, "PhoneNumberUtils"

    const-string v20, "[isEmergencyNumberExt] no match"

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;
    .param p3, "useExactMatch"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1980
    const-string v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isEmergencyNumber] number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1854
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1957
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "useExactMatch"    # Z

    .prologue
    .line 1829
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    const/4 v1, 0x0

    .line 1148
    :goto_0
    return v1

    .line 1147
    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1148
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 231
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2008
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1994
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "useExactMatch"    # Z

    .prologue
    .line 2114
    const-string v3, "country_detector"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 2116
    .local v1, "detector":Landroid/location/CountryDetector;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2117
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 2124
    .local v0, "countryIso":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 2119
    .end local v0    # "countryIso":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2120
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2121
    .restart local v0    # "countryIso":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 2089
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 2491
    const/4 v2, 0x0

    .line 2492
    .local v2, "retVal":Z
    if-eqz p0, :cond_2

    .line 2493
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 2494
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2496
    const/4 v2, 0x1

    .line 2497
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2498
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2499
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2500
    const/4 v2, 0x0

    .line 2509
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 2497
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2507
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 255
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v1, p0}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->isPauseOrWait(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x30

    if-lt p0, v1, :cond_2

    const/16 v1, 0x39

    if-le p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1161
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1162
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1163
    const/4 v2, 0x0

    .line 1166
    :goto_1
    return v2

    .line 1161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1166
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2516
    const/4 v1, 0x0

    .line 2517
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    .line 2518
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2519
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2520
    const/4 v1, 0x1

    .line 2525
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 2523
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 272
    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1806
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1935
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1780
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "defaultCountryIso"    # Ljava/lang/String;

    .prologue
    .line 1909
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2063
    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2036
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 249
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 283
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 6
    .param p0, "dialString"    # Ljava/lang/String;

    .prologue
    .line 2961
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 2962
    sget-object v4, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 2963
    .local v1, "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2964
    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v0

    .line 2965
    .local v0, "ecc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2966
    .local v3, "numberPlus":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2968
    :cond_1
    const-string v4, "PhoneNumberUtils"

    const-string v5, "[isSpecialEmergencyNumber] match customized ecc list"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    const/4 v4, 0x1

    .line 2976
    .end local v0    # "ecc":Ljava/lang/String;
    .end local v1    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "numberPlus":Ljava/lang/String;
    :goto_0
    return v4

    .line 2975
    :cond_2
    const-string v4, "PhoneNumberUtils"

    const-string v5, "[isSpecialEmergencyNumber] not special ecc"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 267
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 277
    const/16 v0, 0x77

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 2464
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2465
    const/4 v0, 0x1

    .line 2467
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2541
    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2157
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2164
    .local v1, "vmNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1    # "vmNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 2158
    :catch_0
    move-exception v0

    .line 2159
    .local v0, "ex":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 2138
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1134
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2650
    const/4 v2, 0x0

    .line 2651
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 2652
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2654
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 2673
    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2679
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 2656
    .restart local v0    # "c":C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 2651
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2657
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2658
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2662
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2663
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2664
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2668
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2669
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2679
    .end local v0    # "c":C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 2654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 2689
    const/4 v2, 0x0

    .line 2690
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 2691
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2693
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 2725
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2729
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 2695
    .restart local v0    # "c":C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 2690
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2696
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 2697
    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2701
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 2702
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 2703
    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2707
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 2708
    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2714
    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 2715
    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2720
    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2721
    :cond_8
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2729
    .end local v0    # "c":C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 2693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 2737
    const/4 v1, 0x0

    .line 2739
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 2740
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2742
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 2743
    const/4 v1, 0x1

    .line 2739
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2744
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2745
    const/4 v1, 0x0

    .line 2749
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 491
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 492
    if-ge p0, p1, :cond_1

    .line 498
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 492
    goto :goto_0

    .line 493
    :cond_2
    if-gez p0, :cond_0

    .line 495
    if-ltz p1, :cond_3

    move p0, p1

    .line 496
    goto :goto_0

    .line 498
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1176
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1186
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "networkPortion":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1666
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1667
    const-string v5, ""

    .line 1684
    :goto_0
    return-object v5

    .line 1670
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1671
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1672
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1673
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1675
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1676
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1677
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1672
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1678
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 1679
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1680
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    .line 1681
    :cond_5
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1684
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1199
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 15
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "includeLength"    # Z

    .prologue
    .line 1208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1209
    .local v6, "numberLenReal":I
    move v5, v6

    .line 1210
    .local v5, "numberLenEffective":I
    const/16 v12, 0x2b

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    const/4 v3, 0x1

    .line 1211
    .local v3, "hasPlus":Z
    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v5, -0x1

    .line 1213
    :cond_0
    if-nez v5, :cond_2

    const/4 v9, 0x0

    .line 1238
    :goto_1
    return-object v9

    .line 1210
    .end local v3    # "hasPlus":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1215
    .restart local v3    # "hasPlus":Z
    :cond_2
    add-int/lit8 v12, v5, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 1216
    .local v10, "resultLen":I
    const/4 v2, 0x1

    .line 1217
    .local v2, "extraBytes":I
    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1218
    :cond_3
    add-int/2addr v10, v2

    .line 1220
    new-array v9, v10, [B

    .line 1222
    .local v9, "result":[B
    const/4 v1, 0x0

    .line 1223
    .local v1, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 1224
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1225
    .local v0, "c":C
    const/16 v12, 0x2b

    if-ne v0, v12, :cond_4

    .line 1223
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1226
    :cond_4
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v11, 0x4

    .line 1227
    .local v11, "shift":I
    :goto_4
    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    shl-int/2addr v14, v11

    int-to-byte v14, v14

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1228
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1226
    .end local v11    # "shift":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1232
    .end local v0    # "c":C
    :cond_6
    and-int/lit8 v12, v1, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    shr-int/lit8 v12, v1, 0x1

    add-int/2addr v12, v2

    aget-byte v13, v9, v12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 1234
    :cond_7
    const/4 v7, 0x0

    .line 1235
    .local v7, "offset":I
    if-eqz p1, :cond_8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/lit8 v12, v10, -0x1

    int-to-byte v12, v12

    aput-byte v12, v9, v7

    move v7, v8

    .line 1236
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_8
    if-eqz v3, :cond_9

    const/16 v12, 0x91

    :goto_5
    int-to-byte v12, v12

    aput-byte v12, v9, v7

    goto :goto_1

    :cond_9
    const/16 v12, 0x81

    goto :goto_5
.end method

.method private static parseEccList()V
    .locals 28

    .prologue
    .line 3325
    sget-object v25, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 3326
    sget-object v25, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 3330
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    .line 3331
    .local v12, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .line 3332
    .local v22, "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v22, :cond_0

    .line 3333
    const-string v25, "PhoneNumberUtils"

    const-string v26, "XmlPullParserFactory.newPullParser() return null"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-void

    .line 3336
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    new-instance v13, Ljava/io/File;

    const-string v25, "/custom/etc/ecc_list.xml"

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3337
    .local v13, "fileCheck":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 3338
    const-string v25, "PhoneNumberUtils"

    const-string v26, "Read ECC list from /custom/etc/ecc_list.xml"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    new-instance v14, Ljava/io/FileReader;

    const-string v25, "/custom/etc/ecc_list.xml"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3344
    .local v14, "fileReader":Ljava/io/FileReader;
    :goto_1
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3345
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    .line 3346
    .local v11, "eventType":I
    const/16 v23, 0x0

    .line 3348
    .local v23, "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :goto_2
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_8

    .line 3349
    packed-switch v11, :pswitch_data_0

    .line 3371
    :cond_1
    :goto_3
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    goto :goto_2

    .line 3341
    .end local v11    # "eventType":I
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :cond_2
    const-string v25, "PhoneNumberUtils"

    const-string v26, "Read ECC list from /system/etc/ecc_list.xml"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    new-instance v14, Ljava/io/FileReader;

    const-string v25, "/system/etc/ecc_list.xml"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_1

    .line 3351
    .restart local v11    # "eventType":I
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :pswitch_0
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "EccEntry"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 3352
    new-instance v23, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-direct/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils$EccEntry;-><init>()V

    .line 3353
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 3354
    .local v4, "attrNum":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    if-ge v15, v4, :cond_1

    .line 3355
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 3356
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 3357
    .local v24, "value":Ljava/lang/String;
    const-string v25, "Ecc"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 3358
    invoke-virtual/range {v23 .. v24}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setEcc(Ljava/lang/String;)V

    .line 3354
    :cond_3
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 3359
    :cond_4
    const-string v25, "Category"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 3360
    invoke-virtual/range {v23 .. v24}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_5

    .line 3405
    .end local v4    # "attrNum":I
    .end local v11    # "eventType":I
    .end local v13    # "fileCheck":Ljava/io/File;
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v15    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v24    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 3406
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 3414
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_6
    sget-boolean v25, Landroid/telephony/PhoneNumberUtils;->sIsC2kSupport:Z

    if-eqz v25, :cond_6

    .line 3416
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    .line 3417
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .line 3418
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v22, :cond_d

    .line 3419
    const-string v25, "PhoneNumberUtils"

    const-string v26, "XmlPullParserFactory.newPullParser() return null"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    .line 3457
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v6

    .line 3458
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 3466
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_7
    const-string v25, "PhoneNumberUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "parseEccList, mCustomizedEccList:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    const-string v25, "PhoneNumberUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "parseEccList, sCdmaCustomizedEccList:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v27, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3361
    .restart local v4    # "attrNum":I
    .restart local v11    # "eventType":I
    .restart local v13    # "fileCheck":Ljava/io/File;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "i":I
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v25, "Condition"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 3362
    invoke-virtual/range {v23 .. v24}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setCondition(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 3407
    .end local v4    # "attrNum":I
    .end local v11    # "eventType":I
    .end local v13    # "fileCheck":Ljava/io/File;
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v15    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v24    # "value":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 3408
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 3367
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v11    # "eventType":I
    .restart local v13    # "fileCheck":Ljava/io/File;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :pswitch_1
    :try_start_3
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "EccEntry"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    if-eqz v23, :cond_1

    .line 3368
    sget-object v25, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 3409
    .end local v11    # "eventType":I
    .end local v13    # "fileCheck":Ljava/io/File;
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :catch_3
    move-exception v6

    .line 3410
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 3373
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v11    # "eventType":I
    .restart local v13    # "fileCheck":Ljava/io/File;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :cond_8
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V

    .line 3376
    const/16 v18, 0x1

    .line 3377
    .local v18, "isGnEmergencySet":Z
    sget-boolean v25, Landroid/telephony/PhoneNumberUtils;->sIsCtaSet:Z

    if-nez v25, :cond_9

    .line 3378
    :cond_9
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v9, v0, [Ljava/lang/String;

    const/16 v25, 0x0

    const-string v26, "120"

    aput-object v26, v9, v25

    const/16 v25, 0x1

    const-string v26, "122"

    aput-object v26, v9, v25

    const/16 v25, 0x2

    const-string v26, "110"

    aput-object v26, v9, v25

    const/16 v25, 0x3

    const-string v26, "119"

    aput-object v26, v9, v25

    .line 3380
    .local v9, "emergencyCTAList":[Ljava/lang/String;
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .local v17, "i$":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v10, v3, v17

    .line 3381
    .local v10, "emergencyNum":Ljava/lang/String;
    new-instance v23, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-direct/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils$EccEntry;-><init>()V

    .line 3382
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setEcc(Ljava/lang/String;)V

    .line 3383
    const-string v25, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setCategory(Ljava/lang/String;)V

    .line 3384
    const-string v25, "2"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setCondition(Ljava/lang/String;)V

    .line 3386
    const/4 v5, 0x0

    .line 3387
    .local v5, "bFound":Z
    const/16 v20, 0x0

    .line 3388
    .local v20, "nIndex":I
    sget-object v25, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 3389
    .local v8, "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-virtual {v8}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v7

    .line 3390
    .local v7, "ecc":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 3391
    const/4 v5, 0x1

    .line 3392
    const-string v25, "PhoneNumberUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[parseEccList]CTA ecc match customized ecc list, ecc="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    .end local v7    # "ecc":Ljava/lang/String;
    .end local v8    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :cond_a
    if-eqz v5, :cond_c

    .line 3400
    sget-object v25, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3380
    :goto_a
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_8

    .line 3396
    .end local v17    # "i$":I
    .restart local v7    # "ecc":Ljava/lang/String;
    .restart local v8    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .local v16, "i$":Ljava/util/Iterator;
    :cond_b
    add-int/lit8 v20, v20, 0x1

    .line 3397
    goto :goto_9

    .line 3402
    .end local v7    # "ecc":Ljava/lang/String;
    .end local v8    # "eccEntry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :cond_c
    sget-object v25, Landroid/telephony/PhoneNumberUtils;->mCustomizedEccList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    .line 3422
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "bFound":Z
    .end local v9    # "emergencyCTAList":[Ljava/lang/String;
    .end local v10    # "emergencyNum":Ljava/lang/String;
    .end local v11    # "eventType":I
    .end local v13    # "fileCheck":Ljava/io/File;
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "isGnEmergencySet":Z
    .end local v19    # "len$":I
    .end local v20    # "nIndex":I
    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :cond_d
    :try_start_5
    new-instance v14, Ljava/io/FileReader;

    const-string v25, "/system/etc/cdma_ecc_list.xml"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3423
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3424
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    .line 3425
    .restart local v11    # "eventType":I
    const/16 v23, 0x0

    .line 3426
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :goto_b
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_12

    .line 3427
    packed-switch v11, :pswitch_data_1

    .line 3454
    :cond_e
    :goto_c
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    goto :goto_b

    .line 3429
    :pswitch_2
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "EccEntry"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 3430
    new-instance v23, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-direct/range {v23 .. v23}, Landroid/telephony/PhoneNumberUtils$EccEntry;-><init>()V

    .line 3431
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 3432
    .restart local v4    # "attrNum":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_d
    if-ge v15, v4, :cond_e

    .line 3433
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v21

    .line 3434
    .restart local v21    # "name":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 3435
    .restart local v24    # "value":Ljava/lang/String;
    const-string v25, "Ecc"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3436
    invoke-virtual/range {v23 .. v24}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setEcc(Ljava/lang/String;)V

    .line 3432
    :cond_f
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 3437
    :cond_10
    const-string v25, "Category"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3438
    invoke-virtual/range {v23 .. v24}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setCategory(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_e

    .line 3459
    .end local v4    # "attrNum":I
    .end local v11    # "eventType":I
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v15    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v24    # "value":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 3460
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 3439
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "attrNum":I
    .restart local v11    # "eventType":I
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "i":I
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_11
    :try_start_6
    const-string v25, "Condition"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 3440
    invoke-virtual/range {v23 .. v24}, Landroid/telephony/PhoneNumberUtils$EccEntry;->setCondition(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    .line 3461
    .end local v4    # "attrNum":I
    .end local v11    # "eventType":I
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .end local v15    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v24    # "value":Ljava/lang/String;
    :catch_5
    move-exception v6

    .line 3462
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 3446
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v11    # "eventType":I
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "record":Landroid/telephony/PhoneNumberUtils$EccEntry;
    :pswitch_3
    :try_start_7
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "EccEntry"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    if-eqz v23, :cond_e

    .line 3448
    sget-object v25, Landroid/telephony/PhoneNumberUtils;->sCdmaCustomizedEccList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3456
    :cond_12
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_7

    .line 3349
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3427
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static prependPlusToNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3568
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3569
    .local v3, "retString":Ljava/lang/String;
    const-string v4, "^([*][#]|[*]{1,2}|[#]{1,2})([0-9]{2,3})([*])([0-9]+)(.*)(#)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3571
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3572
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3574
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3575
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3576
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3578
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3580
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3629
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3582
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    :cond_0
    const-string v4, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3583
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3584
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3585
    const-string v4, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3590
    .restart local v2    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3591
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3593
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3599
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3600
    .restart local v2    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3601
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3602
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3603
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3604
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3605
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3608
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    :cond_2
    const-string v4, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3609
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3610
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3616
    .restart local v2    # "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3617
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3618
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3620
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3623
    .end local v2    # "ret":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3624
    .restart local v2    # "ret":Ljava/lang/StringBuilder;
    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3625
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2576
    move-object v1, p0

    .line 2582
    .local v1, "retStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 2586
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2588
    .local v0, "newStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2590
    move-object v1, v0

    .line 2597
    .end local v0    # "newStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 2593
    .restart local v0    # "newStr":Ljava/lang/String;
    :cond_1
    const-string v2, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 1510
    const/4 v0, 0x0

    .line 1511
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1512
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1513
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1515
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1694
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1695
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 1696
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1697
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 1698
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1695
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1700
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1703
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static setSpecificEccCategory(I)V
    .locals 3
    .param p0, "eccCat"    # I

    .prologue
    .line 3665
    const-string v0, "PhoneNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set ECC category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    sput p0, Landroid/telephony/PhoneNumberUtils;->sSpecificEccCat:I

    .line 3667
    return-void
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 2444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2445
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2446
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2446
    :cond_0
    const-string v2, " "

    goto :goto_1

    .line 2453
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, " +"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "TOA"    # I

    .prologue
    .line 971
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 977
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 973
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 425
    if-nez p0, :cond_0

    .line 426
    const/4 v5, 0x0

    .line 445
    :goto_0
    return-object v5

    .line 428
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 429
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 431
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 432
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 434
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 436
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 437
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 438
    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 445
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 922
    .end local p0    # "phoneNumber":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 877
    .restart local p0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "np":Ljava/lang/String;
    sget v0, Landroid/telephony/PhoneNumberUtils;->MIN_MATCH:I

    .line 909
    .local v0, "minMatchLen":I
    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->sIsCtaSupport:Z

    if-eqz v3, :cond_2

    .line 910
    const/16 v0, 0xb

    .line 915
    :cond_1
    :goto_1
    sget v0, Landroid/telephony/PhoneNumberUtils;->MIN_MATCH:I

    .line 917
    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, "strStrippedReversed":Ljava/lang/String;
    const-string v3, "PhoneNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[toCallerIDMinMatch] phoneNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", minMatchLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    .line 922
    goto :goto_0

    .line 911
    .end local v2    # "strStrippedReversed":Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    if-eqz v3, :cond_1

    .line 912
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->sPhoneNumberExt:Lcom/mediatek/common/telephony/IPhoneNumberExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IPhoneNumberExt;->getMinMatch()I

    move-result v0

    goto :goto_1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 987
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 988
    const/16 v0, 0x91

    .line 991
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x81

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 2816
    const/4 v5, 0x0

    .line 2817
    .local v5, "state":I
    const/4 v0, 0x0

    .line 2818
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2819
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2820
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2821
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 2890
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    return-object v6

    .line 2823
    .restart local v1    # "ch":C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 2819
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2824
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 2825
    :cond_3
    if-ne v1, v8, :cond_4

    .line 2826
    if-eqz p1, :cond_0

    .line 2827
    const/16 v5, 0x8

    goto :goto_2

    .line 2831
    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2837
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 2838
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 2839
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2845
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 2846
    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2857
    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 2858
    .local v4, "ret":I
    if-lez v4, :cond_c

    .line 2859
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 2860
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2861
    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2863
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 2864
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 2866
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2868
    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2874
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 2875
    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2880
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 2881
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 2821
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2787
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 2788
    add-int/lit8 v0, p0, -0x30

    .line 2790
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 2903
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2904
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2905
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2906
    .local v0, "ch":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 2907
    add-int/lit8 v3, v1, 0x1

    .line 2912
    .end local v0    # "ch":C
    :cond_0
    return v3

    .line 2908
    .restart local v0    # "ch":C
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2904
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 2413
    if-nez p0, :cond_0

    .line 2414
    const/4 v0, 0x0

    .line 2418
    :goto_0
    return-object v0

    .line 2416
    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 2417
    .local v0, "spannable":Landroid/text/Spannable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .locals 2
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2432
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2439
    return-void
.end method
