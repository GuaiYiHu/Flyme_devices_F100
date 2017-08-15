.class Lcom/android/server/pm/AmigoPermission$2;
.super Ljava/lang/Object;
.source "AmigoPermission.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/AmigoPermission;->readSystemAppInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AmigoPermission;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AmigoPermission;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    # invokes: Lcom/android/server/pm/AmigoPermission;->Amigo_readSystemAppInfoPkgname()Z
    invoke-static {v1}, Lcom/android/server/pm/AmigoPermission;->access$500(Lcom/android/server/pm/AmigoPermission;)Z

    move-result v0

    .line 596
    .local v0, "read_sucucess":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getRomVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mRomVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/AmigoPermission;->access$600(Lcom/android/server/pm/AmigoPermission;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    const-string v1, "AmigoPermission"

    const-string v2, "rmSipperDatabase"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    # invokes: Lcom/android/server/pm/AmigoPermission;->rmSipperDatabase()V
    invoke-static {v1}, Lcom/android/server/pm/AmigoPermission;->access$700(Lcom/android/server/pm/AmigoPermission;)V

    .line 601
    :cond_0
    invoke-static {}, Lcom/android/server/pm/AmigoPermission;->getRomVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mRomVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/AmigoPermission;->access$600(Lcom/android/server/pm/AmigoPermission;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    # invokes: Lcom/android/server/pm/AmigoPermission;->getPreInstallAppInfo()V
    invoke-static {v1}, Lcom/android/server/pm/AmigoPermission;->access$800(Lcom/android/server/pm/AmigoPermission;)V

    .line 605
    iget-object v1, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    iget-object v2, p0, Lcom/android/server/pm/AmigoPermission$2;->this$0:Lcom/android/server/pm/AmigoPermission;

    # getter for: Lcom/android/server/pm/AmigoPermission;->mPakagenameList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/pm/AmigoPermission;->access$900(Lcom/android/server/pm/AmigoPermission;)Ljava/util/List;

    move-result-object v2

    # invokes: Lcom/android/server/pm/AmigoPermission;->Amigo_writeSystemAppInfoPkgname(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/AmigoPermission;->access$1000(Lcom/android/server/pm/AmigoPermission;Ljava/util/List;)V

    goto :goto_0
.end method
