.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$Callback;
    }
.end annotation


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/RemoteConference;

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectionCapabilities:I

.field private final mConnectionId:Ljava/lang/String;

.field private mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mIsVoipAudioMode:Z

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private mVideoState:I


# direct methods
.method constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x1

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 496
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 499
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 559
    const-string v0, "NULL"

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 561
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 562
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 563
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    const/4 v3, 0x1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 496
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 499
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 521
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 522
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 523
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 525
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v3, 0x1

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 496
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 499
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 532
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 533
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 534
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 535
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 536
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 537
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 538
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 539
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 540
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 541
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 542
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 543
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 544
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 545
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 546
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 548
    return-void
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1069
    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 709
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer()V
    .locals 2

    .prologue
    .line 721
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 735
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 738
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 783
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressPresentation()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    return v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 681
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    return v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 759
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isRingbackRequested()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public isVoipAudioMode()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method onPostDialChar(C)V
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    .line 981
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 982
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onPostDialChar(Landroid/telecom/RemoteConnection;C)V

    goto :goto_0

    .line 984
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 801
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 847
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 571
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method public reject()V
    .locals 2

    .prologue
    .line 747
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setAddress(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1024
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 1025
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 1026
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 1027
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    goto :goto_0

    .line 1029
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 2
    .param p1, "state"    # Landroid/telecom/AudioState;

    .prologue
    .line 861
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1033
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 1034
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 1035
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 1036
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    goto :goto_0

    .line 1038
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .locals 3
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1051
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    if-eq v2, p1, :cond_0

    .line 1052
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 1053
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 1054
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    goto :goto_0

    .line 1057
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1042
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1043
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1044
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 1045
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConnection$Callback;->onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V

    goto :goto_0

    .line 1047
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 941
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 942
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 943
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V

    .line 944
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onCallCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_0

    .line 946
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 5

    .prologue
    .line 952
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 954
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 955
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x1

    const-string v4, "Connection destroyed."

    invoke-direct {v2, v3, v4}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 959
    :cond_0
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 960
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0}, Landroid/telecom/RemoteConnection$Callback;->onDestroyed(Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .line 962
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_1
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 964
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 966
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x6

    .line 915
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v2, v3, :cond_0

    .line 916
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 917
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 919
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 920
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/RemoteConnection$Callback;->onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 923
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .locals 3
    .param p1, "isVoip"    # Z

    .prologue
    .line 1008
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 1009
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 1010
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V

    goto :goto_0

    .line 1012
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setPostDialWait(Ljava/lang/String;)V
    .locals 3
    .param p1, "remainingDigits"    # Ljava/lang/String;

    .prologue
    .line 972
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 973
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    goto :goto_0

    .line 975
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setRingbackRequested(Z)V
    .locals 3
    .param p1, "ringback"    # Z

    .prologue
    .line 929
    iget-boolean v2, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    if-eq v2, p1, :cond_0

    .line 930
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 931
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 932
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V

    goto :goto_0

    .line 935
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 903
    iget v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v2, p1, :cond_0

    .line 904
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 905
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 906
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onStateChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_0

    .line 909
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 1016
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1017
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 1018
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 1020
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 1000
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 1001
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 1002
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    goto :goto_0

    .line 1004
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 990
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 991
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$Callback;

    .line 992
    .local v0, "c":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V

    goto :goto_0

    .line 994
    .end local v0    # "c":Landroid/telecom/RemoteConnection$Callback;
    :cond_0
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 817
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 771
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 583
    :cond_0
    return-void
.end method
