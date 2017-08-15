.class public abstract Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;
.super Ljava/lang/Object;
.source "ImsBaseCommands.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface;


# instance fields
.field protected mAvailRegistrants:Landroid/os/RegistrantList;

.field protected mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallInfoRegistrants:Landroid/os/RegistrantList;

.field protected mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

.field protected mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

.field protected mCallStateRegistrants:Landroid/os/RegistrantList;

.field protected mCipherIndicationRegistrant:Landroid/os/RegistrantList;

.field protected mCnapNotifyRegistrant:Landroid/os/Registrant;

.field protected mContext:Landroid/content/Context;

.field protected mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

.field protected mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

.field protected mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

.field protected mEconfResultRegistrants:Landroid/os/RegistrantList;

.field protected mEconfSrvccRegistrants:Landroid/os/RegistrantList;

.field protected mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

.field protected mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

.field protected mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsDisableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

.field protected mImsEnableStartRegistrants:Landroid/os/RegistrantList;

.field protected mImsRegistrationInfo:[I

.field protected mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

.field protected mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

.field protected mNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

.field protected mOnRegistrants:Landroid/os/RegistrantList;

.field protected mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected mRingRegistrant:Landroid/os/Registrant;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field protected mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

.field protected mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

.field protected mSrvccStateRegistrants:Landroid/os/RegistrantList;

.field protected mSsnRegistrant:Landroid/os/Registrant;

.field protected mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 55
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    .line 56
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    .line 57
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 58
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    .line 59
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 61
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 64
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    .line 68
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    .line 73
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    .line 74
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    .line 75
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    .line 78
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    .line 82
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    .line 85
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    .line 89
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    .line 91
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    .line 93
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    .line 97
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    .line 105
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method


# virtual methods
.method protected onRadioAvailable()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 156
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 158
    return-void
.end method

.method public registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 253
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 255
    return-void
.end method

.method public registerForCallProgressIndicator(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 366
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 369
    return-void
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 127
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 129
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 189
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 191
    return-void
.end method

.method public registerForDedicateBearerActivated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 318
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 319
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 320
    return-void
.end method

.method public registerForDedicateBearerDeactivated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 336
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 338
    return-void
.end method

.method public registerForDedicateBearerModified(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 327
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 329
    return-void
.end method

.method public registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 244
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 245
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 246
    return-void
.end method

.method public registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 235
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 236
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 237
    return-void
.end method

.method public registerForEpsNetworkFeatureInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 218
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 220
    return-void
.end method

.method public registerForEpsNetworkFeatureSupport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 209
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 210
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 211
    return-void
.end method

.method public registerForImsDisableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 290
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 291
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 292
    return-void
.end method

.method public registerForImsDisableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 272
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 274
    return-void
.end method

.method public registerForImsEnableComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 281
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 282
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 283
    return-void
.end method

.method public registerForImsEnableStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 263
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 264
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 265
    return-void
.end method

.method public registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 299
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    .local v0, "r":Landroid/os/Registrant;
    const-string v1, "IMS_RILA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerForImsRegistrationInfo(), mImsRegistrationInfo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsRegistrationInfo:[I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", handler= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 307
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsRegistrationInfo:[I

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsRegistrationInfo:[I

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 311
    :cond_0
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 109
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 114
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 117
    :cond_0
    monitor-exit v2

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 147
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 149
    return-void
.end method

.method public registerForSrvccHandoverInfoIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 227
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 229
    return-void
.end method

.method public registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 356
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 359
    return-void
.end method

.method public setCnapNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 181
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCnapNotifyRegistrant:Landroid/os/Registrant;

    .line 182
    return-void
.end method

.method public setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 165
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    .line 166
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 136
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 137
    return-void
.end method

.method public setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 173
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    .line 174
    return-void
.end method

.method public setOnSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 198
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    .line 199
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 345
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 346
    return-void
.end method

.method protected setRadioState(Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;)V
    .locals 3
    .param p1, "newState"    # Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .prologue
    .line 389
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .line 391
    .local v0, "oldState":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    .line 393
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 395
    monitor-exit v2

    .line 419
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRadioStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 400
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 402
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->onRadioAvailable()V

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 410
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 413
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mState:Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mOffOrNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 418
    :cond_5
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldState":Lcom/mediatek/internal/telephony/ims/ImsCommandsInterface$RadioState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unSetCnapNotify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCnapNotifyRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 186
    return-void
.end method

.method public unSetOnCallRelatedSuppSvc(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 170
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingRegistrant:Landroid/os/Registrant;

    .line 144
    :cond_0
    return-void
.end method

.method public unSetOnSpeechCodecInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    .line 206
    :cond_0
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSsnRegistrant:Landroid/os/Registrant;

    .line 353
    :cond_0
    return-void
.end method

.method public unregisterForCallForwardingInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 162
    return-void
.end method

.method public unregisterForCallInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 259
    return-void
.end method

.method public unregisterForCallProgressIndicator(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallProgressIndicatorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 373
    return-void
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 133
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 195
    return-void
.end method

.method public unregisterForDedicateBearerActivated(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerActivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 324
    return-void
.end method

.method public unregisterForDedicateBearerDeactivated(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerDeactivatedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 342
    return-void
.end method

.method public unregisterForDedicateBearerModified(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mDedicateBearerModifiedRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 333
    return-void
.end method

.method public unregisterForEconfResult(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 250
    return-void
.end method

.method public unregisterForEconfSrvcc(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 241
    return-void
.end method

.method public unregisterForEpsNetworkFeatureInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 224
    return-void
.end method

.method public unregisterForEpsNetworkFeatureSupport(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 215
    return-void
.end method

.method public unregisterForImsDisableComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsDisableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 296
    return-void
.end method

.method public unregisterForImsDisableStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsDisableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 278
    return-void
.end method

.method public unregisterForImsEnableComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsEnableDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 287
    return-void
.end method

.method public unregisterForImsEnableStart(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsEnableStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 269
    return-void
.end method

.method public unregisterForImsRegistrationInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 315
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mNotAvailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 153
    return-void
.end method

.method public unregisterForSrvccHandoverInfoIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 232
    return-void
.end method

.method public unregisterForSrvccStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mSrvccStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 363
    return-void
.end method

.method public unsetOnIncomingCallIndication(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ims/ImsBaseCommands;->mIncomingCallIndicationRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 178
    return-void
.end method
