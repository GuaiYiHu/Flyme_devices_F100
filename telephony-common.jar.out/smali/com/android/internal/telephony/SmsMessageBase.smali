.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$PduBase;
    }
.end annotation


# instance fields
.field protected absoluteValidityPeriod:I

.field protected destinationAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mEmailBody:Ljava/lang/String;

.field protected mEmailFrom:Ljava/lang/String;

.field protected mIndexOnIcc:I

.field protected mIsEmail:Z

.field protected mIsMwi:Z

.field protected mMessageBody:Ljava/lang/String;

.field public mMessageRef:I

.field protected mMwiDontStore:Z

.field protected mMwiSense:Z

.field protected mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mPdu:[B

.field protected mPseudoSubject:Ljava/lang/String;

.field protected mScAddress:Ljava/lang/String;

.field protected mScTimeMillis:J

.field protected mStatusOnIcc:I

.field protected mUserData:[B

.field protected mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field protected mwiCount:I

.field protected mwiType:I

.field protected relativeValidityPeriod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    .line 100
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    .line 115
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiType:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiCount:I

    .line 142
    return-void
.end method

.method public static calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;

    .prologue
    .line 452
    new-instance v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v5}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 453
    .local v5, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    mul-int/lit8 v3, v6, 0x2

    .line 454
    .local v3, "octets":I
    const/4 v6, 0x3

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 455
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 456
    const/16 v6, 0x8c

    if-le v3, v6, :cond_4

    .line 462
    const/16 v0, 0x86

    .line 463
    .local v0, "maxUserDataBytesWithHeader":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v6

    if-nez v6, :cond_0

    .line 465
    const/16 v6, 0x4a4

    if-gt v3, v6, :cond_0

    .line 466
    add-int/lit8 v0, v0, -0x2

    .line 470
    :cond_0
    const/4 v4, 0x0

    .line 471
    .local v4, "pos":I
    const/4 v1, 0x0

    .line 472
    .local v1, "msgCount":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 473
    invoke-static {v4, v0, p0}, Lcom/android/internal/telephony/SmsMessageBase;->findNextUnicodePosition(IILjava/lang/CharSequence;)I

    move-result v2

    .line 475
    .local v2, "nextPos":I
    if-le v2, v4, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v2, v6, :cond_2

    .line 485
    .end local v2    # "nextPos":I
    :cond_1
    iput v1, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 491
    .end local v0    # "maxUserDataBytesWithHeader":I
    .end local v1    # "msgCount":I
    .end local v4    # "pos":I
    :goto_1
    return-object v5

    .line 478
    .restart local v0    # "maxUserDataBytesWithHeader":I
    .restart local v1    # "msgCount":I
    .restart local v2    # "nextPos":I
    .restart local v4    # "pos":I
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v2, v6, :cond_3

    .line 479
    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 482
    :cond_3
    move v4, v2

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 484
    goto :goto_0

    .line 487
    .end local v0    # "maxUserDataBytesWithHeader":I
    .end local v1    # "msgCount":I
    .end local v2    # "nextPos":I
    .end local v4    # "pos":I
    :cond_4
    const/4 v6, 0x1

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 488
    rsub-int v6, v3, 0x8c

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findNextUnicodePosition(IILjava/lang/CharSequence;)I
    .locals 4
    .param p0, "currentPosition"    # I
    .param p1, "byteLimit"    # I
    .param p2, "msgBody"    # Ljava/lang/CharSequence;

    .prologue
    .line 431
    div-int/lit8 v2, p1, 0x2

    add-int/2addr v2, p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 435
    .local v1, "nextPos":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 436
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 437
    .local v0, "breakIterator":Ljava/text/BreakIterator;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    .line 442
    .end local v0    # "breakIterator":Ljava/text/BreakIterator;
    :cond_0
    return v1
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v2, "( /)|( )"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v3, :cond_0

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    .line 416
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    goto :goto_0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    .line 182
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()I
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public getValidityPeriodRelative()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, -0x1

    return v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 391
    :cond_0
    return-void
.end method
