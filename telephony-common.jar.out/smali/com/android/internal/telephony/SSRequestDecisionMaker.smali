.class public Lcom/android/internal/telephony/SSRequestDecisionMaker;
.super Ljava/lang/Object;
.source "SSRequestDecisionMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_DELAY_TIMEOUT:I = 0x2710

.field private static final EVENT_SS_CLEAR_TEMP_VOLTE_USER_FLAG:I = 0x3

.field private static final EVENT_SS_RESPONSE:I = 0x2

.field private static final EVENT_SS_SEND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "SSDecisonMaker"

.field private static final SS_ERROR_UT_CONFLICT:I = 0x199

.field private static final SS_ERROR_UT_NOT_FOUND:I = 0x194

.field private static final SS_ERROR_UT_USER_UNKNOWN:I = 0x193

.field private static final SS_REQUEST_GET_CALL_BARRING:I = 0x3

.field private static final SS_REQUEST_GET_CALL_FORWARD:I = 0x1

.field private static final SS_REQUEST_GET_CALL_FORWARD_TIME_SLOT:I = 0xf

.field private static final SS_REQUEST_GET_CALL_WAITING:I = 0x5

.field private static final SS_REQUEST_GET_CLIP:I = 0x9

.field private static final SS_REQUEST_GET_CLIR:I = 0x7

.field private static final SS_REQUEST_GET_COLP:I = 0xd

.field private static final SS_REQUEST_GET_COLR:I = 0xb

.field private static final SS_REQUEST_SET_CALL_BARRING:I = 0x4

.field private static final SS_REQUEST_SET_CALL_FORWARD:I = 0x2

.field private static final SS_REQUEST_SET_CALL_FORWARD_TIME_SLOT:I = 0x10

.field private static final SS_REQUEST_SET_CALL_WAITING:I = 0x6

.field private static final SS_REQUEST_SET_CLIP:I = 0xa

.field private static final SS_REQUEST_SET_CLIR:I = 0x8

.field private static final SS_REQUEST_SET_COLP:I = 0xe

.field private static final SS_REQUEST_SET_COLR:I = 0xc


# instance fields
.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsTempVolteUser:Z

.field private mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneId:I

.field private mSSHandlerThread:Landroid/os/HandlerThread;

.field private mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mContext:Landroid/content/Context;

    move-object v1, p2

    .line 109
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 111
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    .line 113
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SSRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 115
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 116
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;-><init>(Lcom/android/internal/telephony/SSRequestDecisionMaker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/MMTelSSTransport;->getInstance()Lcom/android/internal/telephony/MMTelSSTransport;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, p2, p1, v2}, Lcom/android/internal/telephony/MMTelSSTransport;->registerPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SSRequestDecisionMaker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processSendRequest(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->processResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SSRequestDecisionMaker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    return p1
.end method

.method private getCommandException(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/internal/telephony/CommandException;
    .locals 2
    .param p1, "xcapException"    # Lcom/mediatek/simservs/xcap/XcapException;

    .prologue
    .line 777
    invoke-virtual {p1}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 785
    const-string v0, "SSDecisonMaker"

    const-string v1, "getCommandException GENERIC_FAILURE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 789
    :goto_0
    return-object v0

    .line 779
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isEnableXcapHttpResponse409(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    const-string v0, "SSDecisonMaker"

    const-string v1, "getCommandException UT_XCAP_409_CONFLICT"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_409_CONFLICT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 788
    :cond_0
    const-string v0, "SSDecisonMaker"

    const-string v1, "getCommandException GENERIC_FAILURE"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x199
        :pswitch_0
    .end packed-switch
.end method

.method private processResponse(Ljava/lang/Object;)V
    .locals 34
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 318
    const/4 v10, 0x0

    .local v10, "resp":Landroid/os/Message;
    move-object/from16 v17, p1

    .line 319
    check-cast v17, Landroid/os/AsyncResult;

    .line 320
    .local v17, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .line 321
    .local v19, "arResult":Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    .line 322
    .local v18, "arException":Ljava/lang/Throwable;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v30, v4

    check-cast v30, Ljava/util/ArrayList;

    .line 323
    .local v30, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 324
    .local v29, "request":Ljava/lang/Integer;
    const-string v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processResponse, request = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 763
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    instance-of v4, v0, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_1

    .line 764
    const-string v11, "SSDecisonMaker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processResponse, xcapException.httpErrorCode = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v4, v18

    check-cast v4, Lcom/mediatek/simservs/xcap/XcapException;

    invoke-virtual {v4}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    check-cast v18, Lcom/mediatek/simservs/xcap/XcapException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCommandException(Lcom/mediatek/simservs/xcap/XcapException;)Lcom/android/internal/telephony/CommandException;

    move-result-object v18

    .line 770
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_1
    if-eqz v10, :cond_2

    .line 771
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v10, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 772
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 774
    :cond_2
    :goto_1
    return-void

    .line 328
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 329
    .local v6, "cfReason":I
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 330
    .local v7, "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 331
    .local v8, "number":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 333
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_3

    .line 334
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 335
    .local v31, "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto :goto_1

    .line 340
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_3
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 347
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 348
    .local v5, "action":I
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 349
    .restart local v6    # "cfReason":I
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 350
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 351
    .restart local v8    # "number":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 352
    .local v9, "timeSeconds":I
    const/4 v4, 0x6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 354
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_4

    .line 355
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 356
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_5

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 362
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_4
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_5

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 367
    :cond_5
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v6, :cond_8

    .line 370
    const/16 v20, 0x0

    .line 371
    .local v20, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    if-nez v19, :cond_a

    .line 372
    const-string v4, "SSDecisonMaker"

    const-string v11, "arResult is null."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_6
    :goto_2
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    array-length v4, v0

    if-nez v4, :cond_b

    .line 379
    :cond_7
    const-string v4, "SSDecisonMaker"

    const-string v11, "cfInfo is null or length is 0."

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_8
    :goto_3
    if-nez v6, :cond_0

    .line 401
    const/4 v4, 0x1

    if-eq v5, v4, :cond_9

    const/4 v4, 0x3

    if-ne v5, v4, :cond_e

    .line 402
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v11, "persist.radio.ut.cfu.mode"

    const-string v15, "enabled_ut_cfu_mode_on"

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    .restart local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_a
    move-object/from16 v0, v19

    instance-of v4, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v4, :cond_6

    move-object/from16 v4, v19

    .line 375
    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v20, v4

    check-cast v20, [Lcom/android/internal/telephony/CallForwardInfo;

    goto :goto_2

    .line 381
    :cond_b
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v23

    if-ge v0, v4, :cond_8

    .line 382
    aget-object v4, v20, v23

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    .line 384
    aget-object v4, v20, v23

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v4, :cond_c

    .line 385
    const-string v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Set CF_DISABLE, serviceClass: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v15, v20, v23

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v5, 0x0

    goto :goto_3

    .line 389
    :cond_c
    const-string v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Set CF_ENABLE, serviceClass: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v15, v20, v23

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v5, 0x1

    .line 393
    goto :goto_3

    .line 381
    :cond_d
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 405
    .end local v20    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v23    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v11, "persist.radio.ut.cfu.mode"

    const-string v15, "enabled_ut_cfu_mode_off"

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v5    # "action":I
    .end local v6    # "cfReason":I
    .end local v7    # "serviceClass":I
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "timeSeconds":I
    :pswitch_2
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 415
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_f

    .line 416
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 417
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 418
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 420
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_0

    .line 423
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_f
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 424
    if-eqz v10, :cond_2

    .line 425
    const/4 v4, 0x0

    new-instance v11, Lcom/android/internal/telephony/CommandException;

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v11, v15}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v10, v4, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 428
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 435
    :pswitch_3
    const/4 v4, 0x7

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 437
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_10

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_10

    .line 438
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 439
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 440
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 442
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_0

    .line 445
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_10
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 446
    if-eqz v10, :cond_2

    .line 447
    const/4 v4, 0x0

    new-instance v11, Lcom/android/internal/telephony/CommandException;

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v11, v15}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {v10, v4, v11}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 450
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 457
    :pswitch_4
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 458
    .local v12, "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 459
    .local v14, "password":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 460
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 462
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_13

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_13

    .line 463
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 464
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_11

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 469
    :cond_11
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x194

    if-ne v4, v11, :cond_12

    .line 471
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 472
    const-string v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processResponse, xcapException.httpErrorCode = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    check-cast v18, Lcom/mediatek/simservs/xcap/XcapException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 482
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    .restart local v18    # "arException":Ljava/lang/Throwable;
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 486
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 487
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    .line 490
    .local v26, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const-wide/16 v32, 0x2710

    move-object/from16 v0, v26

    move-wide/from16 v1, v32

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 477
    .end local v26    # "msg":Landroid/os/Message;
    :cond_13
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_12

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_12

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v12, v14, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 495
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    :pswitch_5
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 496
    .restart local v12    # "facility":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 497
    .local v13, "lockState":Z
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 498
    .restart local v14    # "password":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 499
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 501
    .restart local v10    # "resp":Landroid/os/Message;
    invoke-static {v12}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 502
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 504
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 507
    .end local v19    # "arResult":Ljava/lang/Object;
    :cond_14
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_16

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_16

    .line 508
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 509
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_15

    .line 510
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 514
    :cond_15
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x194

    if-ne v4, v11, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp05IccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    const-string v4, "SSDecisonMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "processResponse, xcapException.httpErrorCode = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    check-cast v18, Lcom/mediatek/simservs/xcap/XcapException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .restart local v18    # "arException":Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 522
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_16
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 523
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v15, v7

    move-object/from16 v16, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 530
    .end local v7    # "serviceClass":I
    .end local v12    # "facility":Ljava/lang/String;
    .end local v13    # "lockState":Z
    .end local v14    # "password":Ljava/lang/String;
    .restart local v19    # "arResult":Ljava/lang/Object;
    :pswitch_6
    const-string v4, "SSDecisonMaker"

    const-string v11, "SS_REQUEST_GET_CALL_WAITING"

    invoke-static {v4, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v27, 0x0

    .line 533
    .local v27, "queryVolteUser":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_17

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 535
    .local v22, "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTbcwMode()I

    move-result v4

    if-nez v4, :cond_17

    .line 536
    const/16 v27, 0x1

    .line 540
    .end local v22    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    :cond_17
    if-eqz v27, :cond_21

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 542
    .restart local v22    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 544
    .local v28, "reqCode":Ljava/lang/Integer;
    const/16 v21, 0x0

    .line 545
    .local v21, "enable":Z
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_19

    .line 546
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 547
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 554
    .restart local v10    # "resp":Landroid/os/Message;
    :goto_5
    const/16 v31, 0x0

    .line 555
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_18

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_18

    .line 556
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 559
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_18
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1b

    .line 560
    const/4 v4, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 561
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 562
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_1a

    .line 563
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 549
    .end local v7    # "serviceClass":I
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 550
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 551
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .restart local v10    # "resp":Landroid/os/Message;
    goto :goto_5

    .line 565
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_1a
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 567
    :cond_1b
    if-eqz v31, :cond_1d

    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_1d

    .line 569
    const/4 v4, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwMode(I)V

    .line 570
    const-string v4, "persist.radio.terminal-based.cw"

    const-string v11, "disabled_tbcw"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_1c

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 577
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 575
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v21

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_6

    .line 578
    :cond_1d
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1f

    .line 580
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_1e

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 583
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v21

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 587
    :cond_1f
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 589
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v11, 0x5

    if-ne v4, v11, :cond_20

    .line 590
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 592
    :cond_20
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 597
    .end local v7    # "serviceClass":I
    .end local v21    # "enable":Z
    .end local v22    # "gsmPhone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v28    # "reqCode":Ljava/lang/Integer;
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_21
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 598
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 600
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_22

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_22

    .line 601
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 602
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 607
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_22
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 617
    .end local v7    # "serviceClass":I
    .end local v27    # "queryVolteUser":Z
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    .line 618
    .restart local v21    # "enable":Z
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 619
    .restart local v7    # "serviceClass":I
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 620
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_23

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_23

    .line 621
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 622
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_0

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v21

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 627
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_23
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_0

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v21

    invoke-interface {v4, v0, v7, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_1

    .line 635
    .end local v7    # "serviceClass":I
    .end local v21    # "enable":Z
    :pswitch_8
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 637
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_24

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_24

    .line 638
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 639
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_25

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 644
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_24
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_25

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_25

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 648
    :cond_25
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 650
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 651
    goto/16 :goto_0

    .line 654
    :pswitch_9
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 655
    .local v24, "mode":I
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 657
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_26

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_26

    .line 658
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 659
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_27

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v24

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 664
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_26
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_27

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_27

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v24

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 668
    :cond_27
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 670
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 671
    goto/16 :goto_0

    .line 674
    .end local v24    # "mode":I
    :pswitch_a
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 675
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_28

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_28

    .line 676
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 677
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_29

    .line 678
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 682
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_28
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_29

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_29

    .line 683
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 686
    :cond_29
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 688
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 689
    goto/16 :goto_0

    .line 692
    :pswitch_b
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 693
    .restart local v24    # "mode":I
    if-nez v24, :cond_2a

    const/16 v25, 0x0

    .line 694
    .local v25, "modeCs":Z
    :goto_7
    const/4 v4, 0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 695
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2b

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_2b

    .line 696
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 697
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_2c

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v25

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 693
    .end local v25    # "modeCs":Z
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2a
    const/16 v25, 0x1

    goto :goto_7

    .line 702
    .restart local v25    # "modeCs":Z
    :cond_2b
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2c

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_2c

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, v25

    invoke-interface {v4, v0, v10}, Lcom/android/internal/telephony/CommandsInterface;->setCLIP(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 706
    :cond_2c
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 708
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 709
    goto/16 :goto_0

    .line 712
    .end local v24    # "mode":I
    .end local v25    # "modeCs":Z
    :pswitch_c
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 713
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2d

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_2d

    .line 714
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 715
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_2e

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 720
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2d
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2e

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_2e

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLR(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 724
    :cond_2e
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 726
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 727
    goto/16 :goto_0

    .line 730
    :pswitch_d
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 732
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 733
    goto/16 :goto_0

    .line 736
    :pswitch_e
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "resp":Landroid/os/Message;
    check-cast v10, Landroid/os/Message;

    .line 737
    .restart local v10    # "resp":Landroid/os/Message;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2f

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/mediatek/simservs/xcap/XcapException;

    if-eqz v4, :cond_2f

    .line 738
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    check-cast v31, Lcom/mediatek/simservs/xcap/XcapException;

    .line 739
    .restart local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    invoke-virtual/range {v31 .. v31}, Lcom/mediatek/simservs/xcap/XcapException;->getHttpErrorCode()I

    move-result v4

    const/16 v11, 0x193

    if-ne v4, v11, :cond_30

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/PhoneBase;->setCsFallbackStatus(I)V

    goto/16 :goto_1

    .line 744
    .end local v31    # "xcapException":Lcom/mediatek/simservs/xcap/XcapException;
    :cond_2f
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_30

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_30

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCOLP(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 748
    :cond_30
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 750
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 751
    goto/16 :goto_0

    .line 754
    :pswitch_f
    new-instance v18, Lcom/android/internal/telephony/CommandException;

    .end local v18    # "arException":Ljava/lang/Throwable;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 756
    .restart local v18    # "arException":Ljava/lang/Throwable;
    const/16 v19, 0x0

    .line 757
    goto/16 :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processSendRequest(Ljava/lang/Object;)V
    .locals 28
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 169
    const/16 v26, 0x0

    .local v26, "resp":Landroid/os/Message;
    move-object/from16 v27, p1

    .line 170
    check-cast v27, Ljava/util/ArrayList;

    .line 171
    .local v27, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 172
    .local v25, "request":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v6, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v1, v6, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 174
    .local v5, "utResp":Landroid/os/Message;
    const-string v1, "SSDecisonMaker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSendRequest, request = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    .local v2, "cfReason":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 180
    .local v3, "serviceClass":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    .local v4, "number":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 183
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;I)V

    goto :goto_0

    .line 188
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    .end local v4    # "number":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 189
    .local v7, "action":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 190
    .restart local v2    # "cfReason":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 191
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 192
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 193
    .local v11, "timeSeconds":I
    const/4 v1, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 195
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move v8, v2

    move v9, v3

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 200
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "action":I
    .end local v11    # "timeSeconds":I
    :pswitch_2
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 201
    .restart local v2    # "cfReason":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 202
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 204
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 209
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    :pswitch_3
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 210
    .restart local v7    # "action":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 211
    .restart local v2    # "cfReason":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 212
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    .restart local v4    # "number":Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 214
    .restart local v11    # "timeSeconds":I
    const/4 v1, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    move-object v12, v1

    check-cast v12, [J

    .line 215
    .local v12, "timeSlot":[J
    const/4 v1, 0x7

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 217
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move v8, v2

    move v9, v3

    move-object v10, v4

    move-object v13, v5

    invoke-virtual/range {v6 .. v14}, Lcom/android/internal/telephony/MMTelSSTransport;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;I)V

    goto/16 :goto_0

    .line 222
    .end local v2    # "cfReason":I
    .end local v3    # "serviceClass":I
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "action":I
    .end local v11    # "timeSeconds":I
    .end local v12    # "timeSlot":[J
    :pswitch_4
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 223
    .local v14, "facility":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 224
    .local v15, "password":Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 225
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 227
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v14}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mIsTempVolteUser:Z

    if-eqz v1, :cond_1

    .line 230
    if-eqz v26, :cond_0

    .line 231
    const/4 v1, 0x0

    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v8}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object/from16 v0, v26

    invoke-static {v0, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 233
    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 237
    :cond_1
    const-string v14, "AI"

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move/from16 v18, v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/MMTelSSTransport;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 244
    .end local v3    # "serviceClass":I
    .end local v14    # "facility":Ljava/lang/String;
    .end local v15    # "password":Ljava/lang/String;
    :pswitch_5
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 245
    .restart local v14    # "facility":Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 246
    .local v18, "lockState":Z
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 247
    .restart local v15    # "password":Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 248
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 249
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move/from16 v22, v0

    move-object/from16 v17, v14

    move-object/from16 v19, v15

    move/from16 v20, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/telephony/MMTelSSTransport;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 254
    .end local v3    # "serviceClass":I
    .end local v14    # "facility":Ljava/lang/String;
    .end local v15    # "password":Ljava/lang/String;
    .end local v18    # "lockState":Z
    :pswitch_6
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 255
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 256
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 260
    .end local v3    # "serviceClass":I
    :pswitch_7
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 261
    .local v23, "enable":Z
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 262
    .restart local v3    # "serviceClass":I
    const/4 v1, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 265
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCallWaiting(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 269
    .end local v3    # "serviceClass":I
    .end local v23    # "enable":Z
    :pswitch_8
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 270
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->getCLIR(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 274
    :pswitch_9
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 275
    .local v24, "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 276
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIR(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 280
    .end local v24    # "mode":I
    :pswitch_a
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 281
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->queryCLIP(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 285
    :pswitch_b
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 286
    .restart local v24    # "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 287
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCLIP(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 291
    .end local v24    # "mode":I
    :pswitch_c
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 292
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLR(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 296
    :pswitch_d
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 297
    .restart local v24    # "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 298
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLR(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 302
    .end local v24    # "mode":I
    :pswitch_e
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 303
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    invoke-virtual {v1, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->getCOLP(Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 307
    :pswitch_f
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 308
    .restart local v24    # "mode":I
    const/4 v1, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "resp":Landroid/os/Message;
    check-cast v26, Landroid/os/Message;

    .line 309
    .restart local v26    # "resp":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mMMTelSSTSL:Lcom/android/internal/telephony/MMTelSSTransport;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mPhoneId:I

    move/from16 v0, v24

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/internal/telephony/MMTelSSTransport;->setCOLP(ILandroid/os/Message;I)V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 127
    const-string v1, "SSDecisonMaker"

    const-string v2, "dispose."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 129
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 130
    return-void
.end method

.method public getCLIP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 901
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 886
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 931
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 916
    return-void
.end method

.method public queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 825
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cfReason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 801
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 870
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 844
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 850
    return-void
.end method

.method send(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker;->mSSRequestHandler:Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 944
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 945
    return-void
.end method

.method public setCLIP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clipMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 909
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 894
    return-void
.end method

.method public setCOLP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colpMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 939
    return-void
.end method

.method public setCOLR(ILandroid/os/Message;)V
    .locals 3
    .param p1, "colrMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 924
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 815
    return-void
.end method

.method public setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "timeSeconds"    # I
    .param p6, "timeSlot"    # [J
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 839
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 879
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v0, "ssParmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->send(Ljava/util/ArrayList;)V

    .line 862
    return-void
.end method
