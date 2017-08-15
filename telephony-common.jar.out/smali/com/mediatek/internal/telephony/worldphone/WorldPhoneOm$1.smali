.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    const-string v14, "[Receiver]+"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "action":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 246
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 247
    const-string v14, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 248
    .local v10, "simStatus":Ljava/lang/String;
    const-string v14, "slot"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 249
    .local v11, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 250
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " simStatus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sMajorSim:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 251
    const-string v14, "IMSI"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 252
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$202(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 253
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$200()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 254
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sProxyPhones:[Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400()[Lcom/android/internal/telephony/Phone;

    move-result-object v15

    aget-object v15, v15, v11

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v15

    aput-object v15, v14, v11

    .line 260
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    aget-object v14, v14, v11

    if-eqz v14, :cond_3

    .line 261
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v15

    aget-object v15, v15, v11

    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    .line 266
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600()[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I
    invoke-static {v15, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)I

    move-result v15

    aput v15, v14, v11

    .line 267
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sImsi["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 270
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()Z

    move-result v14

    if-eqz v14, :cond_9

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    if-ne v11, v14, :cond_9

    .line 271
    const-string v14, "Major SIM"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v11

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1000(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$902(I)I

    .line 273
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100()[Z

    move-result-object v14

    aget-boolean v14, v14, v11

    if-eqz v14, :cond_0

    .line 274
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 275
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$900()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 276
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1200()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v15, 0x65

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 287
    :cond_0
    :goto_0
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Z

    move-result-object v14

    aget-boolean v14, v14, v11

    if-eqz v14, :cond_1

    .line 288
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 289
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 290
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMSI fot slot"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " now ready, resuming PLMN:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with ID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1600()[I

    move-result-object v15

    aget v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V
    invoke-static {v14, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 533
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_1
    :goto_1
    const-string v14, "[Receiver]-"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 534
    :goto_2
    return-void

    .line 257
    .restart local v10    # "simStatus":Ljava/lang/String;
    .restart local v11    # "slotId":I
    :cond_2
    const-string v14, "Null sUiccController"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 263
    :cond_3
    const-string v14, "Null sIccRecordsInstance"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 278
    :cond_4
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1200()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 279
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v15, 0x64

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto :goto_0

    .line 281
    :cond_5
    const-string v14, "Region unknown"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_6
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$900()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$900()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 284
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v15, 0x64

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto/16 :goto_0

    .line 294
    :cond_8
    const-string v14, "sNwPlmnStrings is Null"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 298
    :cond_9
    const-string v14, "Not major SIM or in maual selection mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v11

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1000(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    .line 300
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Z

    move-result-object v14

    aget-boolean v14, v14, v11

    if-eqz v14, :cond_1

    .line 301
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 302
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMSI fot slot"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " now ready, resuming with ID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1600()[I

    move-result-object v15

    aget v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 304
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1800()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    aget-object v14, v14, v11

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1600()[I

    move-result-object v15

    aget v15, v15, v11

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 307
    :cond_a
    const-string v14, "ABSENT"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 308
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    aput-object v15, v14, v11

    .line 310
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100()[Z

    move-result-object v14

    const/4 v15, 0x1

    aput-boolean v15, v14, v11

    .line 313
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 314
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600()[I

    move-result-object v14

    const/4 v15, 0x0

    aput v15, v14, v11

    .line 315
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    if-ne v11, v14, :cond_b

    .line 316
    const-string v14, "Major SIM removed, no world phone service"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2000(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 318
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$902(I)I

    .line 319
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2102(I)I

    .line 320
    const/16 v14, -0x63

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    goto/16 :goto_1

    .line 322
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not major SIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 325
    :cond_c
    const-string v14, "READY"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 326
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reset sIsInvalidSim by solt:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 327
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    goto/16 :goto_1

    .line 330
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_d
    const-string v14, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2302(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 332
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 333
    const-string v14, "slot"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 334
    .restart local v11    # "slotId":I
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2502(I)I

    .line 336
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2602(I)I

    .line 337
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2702(I)I

    .line 338
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2802(I)I

    .line 339
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2902(I)I

    .line 340
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3002(I)I

    .line 341
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600()[I

    move-result-object v15

    aget v15, v15, v11

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 342
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sMajorSim: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 344
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sPlmnSs: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2400()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 345
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sVoiceRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2500()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 346
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilVoiceRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2600()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 347
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilVoiceRadioTech: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2700()I

    move-result v15

    invoke-static {v15}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 348
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sDataRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2800()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 349
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilDataRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2900()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilDataRadioTech: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Landroid/telephony/ServiceState;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3000()I

    move-result v15

    invoke-static {v15}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 351
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sIsAutoSelectEnable: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 352
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRadioTechModeForWp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3100()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 356
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    if-ne v11, v14, :cond_1

    .line 357
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNoService()Z
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleNoService()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 360
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 361
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2400()Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2000(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 363
    const-string v14, "reset sIsInvalidSim"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 364
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    goto/16 :goto_1

    .line 367
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 368
    const-string v14, "reset sIsInvalidSim in manual mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 369
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2400()Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    goto/16 :goto_1

    .line 375
    .end local v11    # "slotId":I
    :cond_10
    const-string v14, "Null sServiceState"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 377
    :cond_11
    const-string v14, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, "ci":Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v14

    if-nez v14, :cond_12

    .line 381
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1800()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v2, v14, v15

    .line 385
    :goto_3
    if-nez v2, :cond_13

    .line 386
    const-string v14, "SHUTDOWN_IPO getActiveCi fail, switch not executed!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 383
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v15, 0x0

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3500(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    goto :goto_3

    .line 391
    :cond_13
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3600()I

    move-result v14

    const/16 v15, 0x64

    if-ne v14, v15, :cond_15

    .line 392
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 393
    const/4 v14, 0x5

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 395
    const-string v14, "Reload to FDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 397
    :cond_14
    const/4 v14, 0x3

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 399
    const-string v14, "Reload to WG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 401
    :cond_15
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3600()I

    move-result v14

    const/16 v15, 0x65

    if-ne v14, v15, :cond_1

    .line 402
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 403
    const/4 v14, 0x6

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 405
    const-string v14, "Reload to TDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    :cond_16
    const/4 v14, 0x4

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 409
    const-string v14, "Reload to TG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 412
    .end local v2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_17
    const-string v14, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 413
    const-string v14, "mdType"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 414
    .local v13, "toModem":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "toModem: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 415
    const/4 v14, 0x3

    if-eq v13, v14, :cond_18

    const/4 v14, 0x4

    if-eq v13, v14, :cond_18

    const/4 v14, 0x5

    if-eq v13, v14, :cond_18

    const/4 v14, 0x6

    if-ne v13, v14, :cond_19

    .line 419
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 421
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 423
    .end local v13    # "toModem":I
    :cond_1a
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 424
    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_1b

    .line 425
    const-string v14, "Leave flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 426
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3700()I

    move-result v14

    if-ge v7, v14, :cond_1

    .line 428
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v7

    .line 427
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 431
    .end local v7    # "i":I
    :cond_1b
    const-string v14, "Enter flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 432
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3700()I

    move-result v14

    if-ge v7, v14, :cond_1

    .line 433
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100()[Z

    move-result-object v14

    const/4 v15, 0x1

    aput-boolean v15, v14, v7

    .line 432
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 436
    .end local v7    # "i":I
    :cond_1c
    const-string v14, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 438
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3800(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 441
    :cond_1d
    const-string v14, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 442
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 443
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3102(I)I

    goto/16 :goto_1

    .line 445
    :cond_1e
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3102(I)I

    goto/16 :goto_1

    .line 447
    :cond_1f
    const-string v14, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 448
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 449
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v9

    .line 450
    .local v9, "majorySim":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v12

    .line 451
    .local v12, "svlteModeSlot":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "majorySim="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " svlteModeSlot="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 452
    const/16 v14, -0x63

    if-eq v9, v14, :cond_21

    .line 453
    if-ne v12, v9, :cond_20

    .line 454
    const/4 v14, 0x2

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3102(I)I

    .line 462
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3800(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 456
    :cond_20
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3102(I)I

    goto :goto_6

    .line 459
    :cond_21
    const/4 v14, 0x2

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3102(I)I

    goto :goto_6

    .line 464
    .end local v9    # "majorySim":I
    .end local v12    # "svlteModeSlot":I
    :cond_22
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3102(I)I

    goto/16 :goto_1

    .line 466
    :cond_23
    const-string v14, "android.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 467
    const-string v14, "FAKE_USER_TYPE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 468
    .local v5, "fakeUserType":I
    const-string v14, "EXTRA_FAKE_REGION"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 469
    .local v4, "fakeRegion":I
    const/4 v6, 0x0

    .line 471
    .local v6, "hasChanged":Z
    if-nez v5, :cond_24

    if-nez v4, :cond_24

    .line 472
    const-string v14, "Leave ADB Test mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 474
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 475
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 476
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 477
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4200()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 478
    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4300()V

    goto/16 :goto_1

    .line 480
    :cond_24
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 481
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    const/16 v15, -0x63

    if-eq v14, v15, :cond_2a

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2a

    .line 484
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v15

    aget-object v8, v14, v15

    .line 485
    .local v8, "imsi":Ljava/lang/String;
    if-eqz v8, :cond_26

    const-string v14, ""

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_26

    .line 486
    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 487
    packed-switch v5, :pswitch_data_0

    .line 499
    :pswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown fakeUserType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 505
    :goto_7
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v3, v14, v15

    .line 506
    .local v3, "currentMcc":Ljava/lang/String;
    if-eqz v3, :cond_25

    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-ge v14, v15, :cond_27

    .line 507
    :cond_25
    const-string v14, "Invalid sNwPlmnStrings"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 524
    .end local v3    # "currentMcc":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    :goto_8
    if-eqz v6, :cond_1

    .line 525
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sPlmnType1:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3900()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 526
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sPlmnType1Ext:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1Ext:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4000()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 527
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sPlmnType3:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4100()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 528
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sMccDomestic:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4200()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioTechModeSwitch()V

    goto/16 :goto_1

    .line 489
    .restart local v8    # "imsi":Ljava/lang/String;
    :pswitch_1
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const/4 v6, 0x1

    .line 491
    goto/16 :goto_7

    .line 494
    :pswitch_2
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4100()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v6, 0x1

    .line 496
    goto/16 :goto_7

    .line 502
    :cond_26
    const-string v14, "Imsi of sMajorSim is unknown"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 509
    .restart local v3    # "currentMcc":Ljava/lang/String;
    :cond_27
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 510
    const/4 v14, 0x1

    if-ne v4, v14, :cond_28

    .line 511
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4200()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    const/4 v6, 0x1

    goto/16 :goto_8

    .line 513
    :cond_28
    const/4 v14, 0x2

    if-ne v4, v14, :cond_29

    .line 514
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4200()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    const/4 v6, 0x1

    goto/16 :goto_8

    .line 517
    :cond_29
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown fakeRegion:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 521
    .end local v3    # "currentMcc":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    :cond_2a
    const-string v14, "sMajorSim is Unknown or Capability OFF"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 487
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
