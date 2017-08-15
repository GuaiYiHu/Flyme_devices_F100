.class public abstract Landroid/telecom/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Landroid/telecom/IConferenceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$Listener;
    }
.end annotation


# static fields
.field public static final CAPABILITY_ADD_CALL:I = 0x20000

.field public static final CAPABILITY_ANSWER:I = 0x8000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_ECT:I = 0x80000

.field public static final CAPABILITY_GENERIC_CONFERENCE:I = 0x4000

.field public static final CAPABILITY_HIGH_DEF_AUDIO:I = 0x400

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_INVITE_PARTICIPANTS:I = 0x200000

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE:I = 0x200

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNHOLD:I = 0x10000

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_VOICE_RECORD:I = 0x40000

.field public static final CAPABILITY_VOLTE:I = 0x100000

.field public static final CAPABILITY_VoWIFI:I = 0x800

.field private static final PII_DEBUG:Z

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x6

.field public static final STATE_HOLDING:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x0

.field public static final STATE_NEW:I = 0x1

.field public static final STATE_RINGING:I = 0x2


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private mAudioModeIsVoip:Z

.field private mAudioState:Landroid/telecom/AudioState;

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/Conference;

.field private final mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionService:Landroid/telecom/ConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 971
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 980
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 994
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 997
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 1000
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 1019
    return-void
.end method

.method static synthetic access$400(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Connection;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telecom/Connection;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/Connection;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 233
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const-string v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 281
    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_3
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    const-string v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 290
    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_6
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 293
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_7
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_8
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 299
    const-string v1, " CAPABILITY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_9
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 302
    const-string v1, " CAPABILITY_VoWIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_a
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Landroid/telecom/Connection;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 305
    const-string v1, " CAPABILITY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_b
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_c

    .line 309
    const-string v1, " CAPABILITY_ANSWER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_c
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_d

    .line 312
    const-string v1, " CAPABILITY_UNHOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_d
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_e

    .line 315
    const-string v1, " CAPABILITY_ADD_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_e
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    .line 318
    const-string v1, " CAPABILITY_VOICE_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_f
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    .line 321
    const-string v1, " CAPABILITY_ECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_10
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    .line 326
    const-string v1, " CAPABILITY_VOLTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_11
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_12

    .line 330
    const-string v1, " CAPABILITY_INVITE_PARTICIPANTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_12
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_13

    .line 334
    const-string v1, " CAPABILITY_SEPARATE_FROM_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_13
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_14

    .line 338
    const-string v1, " CAPABILITY_DISCONNECT_FROM_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_14
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final clearConferenceableList()V
    .locals 5

    .prologue
    .line 1916
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/IConferenceable;

    .line 1917
    .local v0, "c":Landroid/telecom/IConferenceable;
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 1918
    check-cast v2, Landroid/telecom/Connection;

    .line 1919
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    .line 1920
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 1921
    check-cast v1, Landroid/telecom/Conference;

    .line 1922
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v4}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_0

    .line 1925
    .end local v0    # "c":Landroid/telecom/IConferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_2
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1926
    return-void
.end method

.method public static createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    .prologue
    .line 1900
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1876
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final fireConferenceChanged()V
    .locals 3

    .prologue
    .line 1910
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1911
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    goto :goto_0

    .line 1913
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    .prologue
    .line 1904
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1905
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 1907
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    .line 1814
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1815
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_1

    .line 1816
    const-string v2, "Connection already DISCONNECTED; cannot transition out of this state."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1827
    :cond_0
    return-void

    .line 1819
    :cond_1
    iget v2, p0, Landroid/telecom/Connection;->mState:I

    if-eq v2, p1, :cond_0

    .line 1820
    const-string v2, "setState: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1821
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 1822
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 1823
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1824
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    .prologue
    .line 1182
    packed-switch p0, :pswitch_data_0

    .line 1198
    const-class v0, Landroid/telecom/Connection;

    const-string v1, "Unknown state %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1184
    :pswitch_0
    const-string v0, "STATE_INITIALIZING"

    goto :goto_0

    .line 1186
    :pswitch_1
    const-string v0, "STATE_NEW"

    goto :goto_0

    .line 1188
    :pswitch_2
    const-string v0, "STATE_RINGING"

    goto :goto_0

    .line 1190
    :pswitch_3
    const-string v0, "STATE_DIALING"

    goto :goto_0

    .line 1192
    :pswitch_4
    const-string v0, "STATE_ACTIVE"

    goto :goto_0

    .line 1194
    :pswitch_5
    const-string v0, "STATE_HOLDING"

    goto :goto_0

    .line 1196
    :pswitch_6
    const-string v0, "DISCONNECTED"

    goto :goto_0

    .line 1182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1790
    if-nez p0, :cond_1

    .line 1791
    const-string p0, ""

    .line 1810
    .end local p0    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1794
    .restart local p0    # "number":Ljava/lang/String;
    :cond_1
    sget-boolean v3, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-nez v3, :cond_0

    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1802
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1803
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1804
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_2

    const/16 v3, 0x40

    if-eq v1, v3, :cond_2

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_3

    .line 1805
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1802
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1807
    :cond_3
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1810
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 264
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 265
    return-void
.end method

.method public final addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1139
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 244
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Connection;->can(II)Z

    move-result v0

    return v0
.end method

.method public checkImmutable()V
    .locals 0

    .prologue
    .line 1886
    return-void
.end method

.method public final destroy()V
    .locals 3

    .prologue
    .line 1426
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1427
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1429
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected fireOnCallState()V
    .locals 0

    .prologue
    .line 1837
    return-void
.end method

.method protected fireOnCdmaCallAccepted()V
    .locals 6

    .prologue
    .line 1843
    const-string v2, "fireOnCdmaCallAccepted: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/telecom/Connection;->mState:I

    invoke-static {v5}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1844
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1845
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onCdmaCallAccepted(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1847
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Landroid/telecom/Connection;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final getAddressPresentation()I
    .locals 1

    .prologue
    .line 1051
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final getAudioModeIsVoip()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/telecom/Connection;->mAudioState:Landroid/telecom/AudioState;

    return-object v0
.end method

.method public final getCallCapabilities()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1212
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v0

    return v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 1066
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConference()Landroid/telecom/Conference;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 1207
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionService()Landroid/telecom/ConnectionService;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method public final isRingbackRequested()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method public final notifyActionFailed(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 1588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyActionFailed action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1589
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1591
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onActionFailed(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1593
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected notifyConferenceStarted()V
    .locals 3

    .prologue
    .line 1945
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1946
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1}, Landroid/telecom/Connection$Listener;->onConferenceStarted()V

    goto :goto_0

    .line 1948
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final notifyConnectionLost()V
    .locals 3

    .prologue
    .line 1579
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1580
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConnectionLost(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1582
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifyIncomingInfoUpdate(ILjava/lang/String;I)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "alphaid"    # Ljava/lang/String;
    .param p3, "cli_validity"    # I

    .prologue
    .line 1617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyIncomingInfoUpdate type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alphaid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cli_validity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1619
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1620
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/telecom/Connection$Listener;->onIncomingInfoUpdate(Landroid/telecom/Connection;ILjava/lang/String;I)V

    goto :goto_0

    .line 1622
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifyNumberUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyNumberUpdate number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1608
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1609
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1610
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onNumberUpdate(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1613
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifySSNotificationToast(IIILjava/lang/String;I)V
    .locals 8
    .param p1, "notiType"    # I
    .param p2, "type"    # I
    .param p3, "code"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "index"    # I

    .prologue
    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySSNotificationToast notiType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    iget-object v1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .local v0, "l":Landroid/telecom/Connection$Listener;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 1601
    invoke-virtual/range {v0 .. v6}, Landroid/telecom/Connection$Listener;->onSSNotificationToast(Landroid/telecom/Connection;IIILjava/lang/String;I)V

    goto :goto_0

    .line 1603
    .end local v0    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final notifyVtStatusInfo(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 1631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyVtStatusInfo %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1632
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1633
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVtStatusInfo(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1635
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 0

    .prologue
    .line 1705
    return-void
.end method

.method public onAnswer()V
    .locals 1

    .prologue
    .line 1731
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 1732
    return-void
.end method

.method public onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 1724
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 1661
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 1686
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 1695
    return-void
.end method

.method public onExplicitCallTransfer()V
    .locals 0

    .prologue
    .line 1777
    return-void
.end method

.method public onHangupAll()V
    .locals 0

    .prologue
    .line 1785
    return-void
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 1710
    return-void
.end method

.method public onHold(Ljava/lang/String;)V
    .locals 0
    .param p1, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    .line 1759
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 1676
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .prologue
    .line 1743
    return-void
.end method

.method public onReject()V
    .locals 0

    .prologue
    .line 1738
    return-void
.end method

.method public onReject(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 1769
    return-void
.end method

.method public onSeparate()V
    .locals 0

    .prologue
    .line 1700
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1669
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    .prologue
    .line 1681
    return-void
.end method

.method public onSwapWithBackgroundCall()V
    .locals 0

    .prologue
    .line 1750
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 1715
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 254
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 255
    return-void
.end method

.method public final removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .prologue
    .line 1151
    if-eqz p1, :cond_0

    .line 1152
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1154
    :cond_0
    return-object p0
.end method

.method public final resetConference()V
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    .line 1567
    const-string v0, "Conference reset"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1568
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 1569
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 1571
    :cond_0
    return-void
.end method

.method public setAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1032
    iput-object p1, p0, Landroid/telecom/Connection;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1033
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1034
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 1036
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setActive()V
    .locals 1

    .prologue
    .line 1273
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 1275
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1276
    return-void
.end method

.method public final setAddress(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1223
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1224
    const-string v2, "setAddress %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1225
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 1226
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 1227
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1228
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    goto :goto_0

    .line 1230
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setAudioModeIsVoip(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    .prologue
    .line 1437
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1438
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 1439
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1440
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 1442
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method final setAudioState(Landroid/telecom/AudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 1171
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1172
    const-string v0, "setAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    iput-object p1, p0, Landroid/telecom/Connection;->mAudioState:Landroid/telecom/AudioState;

    .line 1174
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 1175
    return-void
.end method

.method public final setCallCapabilities(I)V
    .locals 0
    .param p1, "connectionCapabilities"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1404
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->setConnectionCapabilities(I)V

    .line 1405
    return-void
.end method

.method public setCallInfo(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1649
    const-string v2, "setCallInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1650
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1651
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onCallInfoChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1653
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1240
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1241
    const-string v2, "setCallerDisplayName %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1242
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 1243
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 1244
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1245
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    goto :goto_0

    .line 1247
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1549
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1551
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    .line 1552
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 1553
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 1556
    :cond_0
    const/4 v0, 0x1

    .line 1558
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1463
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1464
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 1465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1468
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1469
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1470
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1473
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 1474
    return-void
.end method

.method public final setConferenceables(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1483
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/IConferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 1484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/IConferenceable;

    .line 1487
    .local v0, "c":Landroid/telecom/IConferenceable;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1488
    instance-of v4, v0, Landroid/telecom/Connection;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 1489
    check-cast v2, Landroid/telecom/Connection;

    .line 1490
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v4, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1495
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1491
    :cond_2
    instance-of v4, v0, Landroid/telecom/Conference;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 1492
    check-cast v1, Landroid/telecom/Conference;

    .line 1493
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v4, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_1

    .line 1498
    .end local v0    # "c":Landroid/telecom/IConferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 1499
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 1413
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1414
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v2, p1, :cond_0

    .line 1415
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 1416
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1417
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1420
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 1512
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1513
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    .line 1514
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    :goto_0
    return-void

    .line 1517
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method public final setDialing()V
    .locals 1

    .prologue
    .line 1306
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1307
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1308
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1343
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1344
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1345
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Connection;->setState(I)V

    .line 1346
    const-string v2, "Disconnected with cause %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1348
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 1350
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setInitialized()V
    .locals 1

    .prologue
    .line 1298
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1300
    return-void
.end method

.method public final setInitializing()V
    .locals 1

    .prologue
    .line 1290
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1292
    return-void
.end method

.method public final setNextPostDialWaitChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    .line 1380
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1381
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1382
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    goto :goto_0

    .line 1384
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    .prologue
    .line 1314
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1315
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1316
    return-void
.end method

.method public final setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 1363
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1364
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1365
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 1367
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    .prologue
    .line 1393
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1394
    iget-boolean v2, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_0

    .line 1395
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 1396
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1397
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    goto :goto_0

    .line 1400
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setRinging()V
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1283
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 1284
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 1450
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1451
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1452
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1453
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 1455
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 1324
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1325
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1326
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1327
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 1329
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    .prologue
    .line 1260
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 1261
    const-string v2, "setVideoState %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1262
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 1263
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1264
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    goto :goto_0

    .line 1266
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method

.method public final unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 1525
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    .line 1526
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1531
    :goto_0
    return-void

    .line 1529
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    goto :goto_0
.end method

.method protected final updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1936
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 1937
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    goto :goto_0

    .line 1939
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    :cond_0
    return-void
.end method
