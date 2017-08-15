.class Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;
.super Landroid/os/Handler;
.source "AmigoActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AmigoActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmigoPermCtrlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AmigoActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AmigoActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    .line 655
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 656
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 660
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 663
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 664
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v8, v4, v5

    .line 665
    .local v8, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v17, v4, v5

    .line 666
    .local v17, "permGrp":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v9, v4, v5

    .line 667
    .local v9, "permission":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 669
    .local v7, "uid":I
    const-string v4, "perm_ctrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "permGrp = "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, " uid = "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v20, " pkgName = "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v4, Lamigo/app/AmigoAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v5

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lamigo/app/AmigoAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7020004

    invoke-virtual {v4, v5}, Lamigo/app/AmigoAlertDialog$Builder;->setIcon(I)Lamigo/app/AmigoAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lamigo/app/AmigoAlertDialog$Builder;->create()Lamigo/app/AmigoAlertDialog;

    move-result-object v10

    .line 673
    .local v10, "permDialog":Lamigo/app/AmigoAlertDialog;
    invoke-virtual {v10}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 674
    invoke-virtual {v10}, Lamigo/app/AmigoAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/view/Window;->setFlags(II)V

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 676
    .local v18, "res":Landroid/content/res/Resources;
    const v4, 0x7070003

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Lamigo/app/AmigoAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 678
    const v4, 0x7070004

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoGetAppNameLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1, v8}, Lcom/android/server/am/AmigoActivityManagerService;->access$300(Lcom/android/server/am/AmigoActivityManagerService;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v5, v20

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 679
    .local v15, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoGetPkgPermLabel(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v9}, Lcom/android/server/am/AmigoActivityManagerService;->access$400(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 680
    const v4, 0x7070008

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 681
    .local v16, "messageMore":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoBuildPermissionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    invoke-static {v4, v15, v0, v9}, Lcom/android/server/am/AmigoActivityManagerService;->access$500(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v14

    .line 682
    .local v14, "layout":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lamigo/app/AmigoAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 683
    invoke-virtual {v10, v14}, Lamigo/app/AmigoAlertDialog;->setView(Landroid/view/View;)V

    .line 685
    new-instance v13, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v8}, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$1;-><init>(Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .local v13, "dialogClickLsn":Landroid/content/DialogInterface$OnClickListener;
    const/4 v4, -0x1

    const v5, 0x7070006

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5, v13}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 713
    const/4 v4, -0x3

    const v5, 0x7070007

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0xa

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5, v13}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 717
    const/4 v4, -0x2

    const v5, 0x7070005

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5, v13}, Lamigo/app/AmigoAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 721
    new-instance v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v9, v6}, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler$2;-><init>(Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Lamigo/app/AmigoAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    move-object/from16 v20, v0

    new-instance v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;-><init>(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lamigo/app/AmigoAlertDialog;)V

    move-object/from16 v0, v20

    # setter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    invoke-static {v0, v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1502(Lcom/android/server/am/AmigoActivityManagerService;Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1500(Lcom/android/server/am/AmigoActivityManagerService;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    invoke-virtual {v4}, Lamigo/app/AmigoAlertDialog;->show()V

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1500(Lcom/android/server/am/AmigoActivityManagerService;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lamigo/app/AmigoAlertDialog;->getButton(I)Lamigo/widget/AmigoButton;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1500(Lcom/android/server/am/AmigoActivityManagerService;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lamigo/app/AmigoAlertDialog;->getButton(I)Lamigo/widget/AmigoButton;

    move-result-object v4

    const/16 v5, -0x7000

    invoke-virtual {v4, v5}, Lamigo/widget/AmigoButton;->setTextColor(I)V

    .line 757
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1600(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 758
    .local v12, "countDownMsg":Landroid/os/Message;
    iput-object v6, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1600(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v20, 0x3e8

    move-wide/from16 v0, v20

    invoke-virtual {v4, v12, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 764
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "permission":Ljava/lang/String;
    .end local v10    # "permDialog":Lamigo/app/AmigoAlertDialog;
    .end local v12    # "countDownMsg":Landroid/os/Message;
    .end local v13    # "dialogClickLsn":Landroid/content/DialogInterface$OnClickListener;
    .end local v14    # "layout":Landroid/view/View;
    .end local v15    # "message":Ljava/lang/String;
    .end local v16    # "messageMore":Ljava/lang/String;
    .end local v17    # "permGrp":Ljava/lang/String;
    .end local v18    # "res":Landroid/content/res/Resources;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 765
    .restart local v6    # "key":Ljava/lang/String;
    const-string v4, "perm_ctrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Count down "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoIsScreenLocked()Z
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1700(Lcom/android/server/am/AmigoActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoCleanAllPermMessages()V
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$000(Lcom/android/server/am/AmigoActivityManagerService;)V

    goto/16 :goto_0

    .line 771
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 773
    .local v11, "count":I
    add-int/lit8 v11, v11, -0x1

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlResultMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$600(Lcom/android/server/am/AmigoActivityManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1500(Lcom/android/server/am/AmigoActivityManagerService;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lamigo/app/AmigoAlertDialog;->getButton(I)Lamigo/widget/AmigoButton;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v20, 0x7070007

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 778
    if-lez v11, :cond_3

    .line 779
    const-string v4, "perm_ctrl"

    const-string v5, "Count down!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1600(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xc9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 781
    move-object/from16 v0, p1

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermCtrlHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1600(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 783
    :cond_3
    if-nez v11, :cond_0

    .line 784
    const-string v4, "perm_ctrl"

    const-string v5, "Count down end!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mPermDialogEntry:Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
    invoke-static {v4}, Lcom/android/server/am/AmigoActivityManagerService;->access$1500(Lcom/android/server/am/AmigoActivityManagerService;)Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Lamigo/app/AmigoAlertDialog;->getButton(I)Lamigo/widget/AmigoButton;

    move-result-object v4

    invoke-virtual {v4}, Lamigo/widget/AmigoButton;->performClick()Z

    goto/16 :goto_0

    .line 793
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "count":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v8, v4, v5

    .line 794
    .restart local v8    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v9, v4, v5

    .line 795
    .restart local v9    # "permission":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 796
    .local v19, "status":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermCtrlHandler;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    move/from16 v0, v19

    # invokes: Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermDB(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v8, v9, v0}, Lcom/android/server/am/AmigoActivityManagerService;->access$1800(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
