.class Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsService;Lcom/mediatek/internal/telephony/ims/ImsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/ims/ImsService;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/ims/ImsService$1;

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;-><init>(Lcom/mediatek/internal/telephony/ims/ImsService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 864
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 865
    .local v4, "phoneId":I
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1036
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 867
    :pswitch_1
    const-string v9, "ImsService"

    const-string v12, "receive EVENT_IMS_REGISTRATION_INFO"

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 886
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    const/4 v12, 0x2

    aget v8, v9, v12

    .line 887
    .local v8, "socketId":I
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v7

    .line 888
    .local v7, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 889
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v7

    .line 891
    :cond_1
    const-string v9, "ImsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IMS: socketId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mActivePhoneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v13}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " slotId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    if-eq v8, v7, :cond_2

    .line 895
    const-string v9, "ImsService"

    const-string v10, "IMS: ignore other slot\'s registration event"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 900
    :cond_2
    const/4 v3, 0x3

    .line 901
    .local v3, "newImsRegInfo":I
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    aget v9, v9, v10

    if-ne v9, v11, :cond_4

    .line 902
    const/4 v3, 0x0

    .line 907
    :goto_1
    const-string v9, "persist.ims.simulate"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_3

    .line 908
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegistry:Z
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$300(Lcom/mediatek/internal/telephony/ims/ImsService;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v3, v10

    .line 910
    :goto_2
    const-string v9, "ImsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_3
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    aget v2, v9, v11

    .line 918
    .local v2, "newImsExtInfo":I
    const-string v9, "ImsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newReg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " oldReg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$700(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v9, v3}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$702(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 922
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$700(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationStateChange(I)V
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$800(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    .line 926
    const-string v9, "ImsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newRegExt:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "oldRegExt:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$900(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$700(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    if-nez v9, :cond_0

    .line 930
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v9, v2}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$902(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 931
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$900(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 904
    .end local v2    # "newImsExtInfo":I
    :cond_4
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_5
    move v3, v11

    .line 908
    goto/16 :goto_2

    .line 938
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "newImsRegInfo":I
    .end local v7    # "slotId":I
    .end local v8    # "socketId":I
    :pswitch_2
    const-string v9, "ImsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EVENT_IMS_ENABLING_URC: mActivePhoneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v13}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " phoneId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    if-eq v9, v4, :cond_6

    .line 943
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v9, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$202(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 946
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v1, "intent":Landroid/content/Intent;
    const-string v9, "android:phone_id"

    iget-object v12, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v12

    invoke-virtual {v1, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$500(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 950
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->enableImsAdapter()V

    .line 951
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v9, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    .line 952
    const-string v9, "ro.mtk_wfc_support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "1"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 953
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRILAdapter:Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$600(Lcom/mediatek/internal/telephony/ims/ImsService;)Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;

    move-result-object v9

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$500(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_selected_wfc_preference"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsRILAdapter;->sendWfcProfileInfo(I)V

    goto/16 :goto_0

    .line 961
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v9, "ImsService"

    const-string v10, "receive EVENT_IMS_ENABLED_URC"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 967
    :pswitch_4
    const-string v9, "ImsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_IMS_DISABLING_URC: mActivePhoneId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " phoneId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$200(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    if-eq v9, v4, :cond_0

    .line 972
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mActivePhoneId:I
    invoke-static {v9, v4}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$202(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto/16 :goto_0

    .line 977
    :pswitch_5
    const-string v9, "ImsService"

    const-string v12, "receive EVENT_IMS_DISABLED_URC"

    invoke-static {v9, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$500(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 981
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v9, v11}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    .line 982
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # setter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsState:I
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1102(Lcom/mediatek/internal/telephony/ims/ImsService;I)I

    goto/16 :goto_0

    .line 987
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_6
    const-string v9, "ImsService"

    const-string v10, "receive EVENT_SET_IMS_ENABLED_DONE"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 993
    :pswitch_7
    const-string v9, "ImsService"

    const-string v10, "receive EVENT_SET_IMS_DISABLE_DONE"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 997
    :pswitch_8
    const-string v9, "ImsService"

    const-string v10, "receive EVENT_INCOMING_CALL_INDICATION"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 999
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->sendIncomingCallIndication(Landroid/os/AsyncResult;)V
    invoke-static {v9, v0}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1200(Lcom/mediatek/internal/telephony/ims/ImsService;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1002
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    const-string v9, "ImsService"

    const-string v10, "receive EVENT_CALL_RING"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1005
    :pswitch_a
    const-string v9, "ImsService"

    const-string v11, "receive EVENT_RADIO_NOT_AVAILABLE"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$500(Lcom/mediatek/internal/telephony/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1007
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    invoke-virtual {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->disableImsAdapter(Z)V

    goto/16 :goto_0

    .line 1010
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1011
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v6, v9

    check-cast v6, [I

    .line 1013
    .local v6, "sipMessage":[I
    if-eqz v6, :cond_0

    .line 1014
    const-string v9, "ImsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Method ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Reg cause ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    aget v9, v6, v12

    if-eqz v9, :cond_7

    aget v9, v6, v12

    const/16 v10, 0x9

    if-ne v9, v10, :cond_0

    .line 1018
    :cond_7
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    aget v11, v6, v12

    aget v12, v6, v13

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->translateRegErrors(II)I
    invoke-static {v10, v11, v12}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1300(Lcom/mediatek/internal/telephony/ims/ImsService;II)I

    move-result v10

    iput v10, v9, Lcom/mediatek/internal/telephony/ims/ImsService;->mWfcRegErrorCode:I

    goto/16 :goto_0

    .line 1024
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "sipMessage":[I
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 1025
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v9, "handoverResult"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1027
    .local v5, "result":Z
    const-string v9, "ImsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_HANDOVER_DONE_INDICATION result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsRegInfo:I
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$700(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v9

    if-nez v9, :cond_0

    .line 1029
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/internal/telephony/ims/ImsService;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsService;->mImsExtInfo:I
    invoke-static {v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$900(Lcom/mediatek/internal/telephony/ims/ImsService;)I

    move-result v10

    # invokes: Lcom/mediatek/internal/telephony/ims/ImsService;->notifyRegistrationCapabilityChange(I)V
    invoke-static {v9, v10}, Lcom/mediatek/internal/telephony/ims/ImsService;->access$1000(Lcom/mediatek/internal/telephony/ims/ImsService;I)V

    goto/16 :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
