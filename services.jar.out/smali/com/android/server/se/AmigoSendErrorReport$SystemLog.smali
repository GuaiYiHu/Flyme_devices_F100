.class Lcom/android/server/se/AmigoSendErrorReport$SystemLog;
.super Ljava/lang/Object;
.source "AmigoSendErrorReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/se/AmigoSendErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemLog"
.end annotation


# instance fields
.field private app:I

.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private tag:I

.field final synthetic this$0:Lcom/android/server/se/AmigoSendErrorReport;

.field private type:I

.field private uuid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/se/AmigoSendErrorReport;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->this$0:Lcom/android/server/se/AmigoSendErrorReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->app:I

    return v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->tag:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->type:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApp(I)V
    .locals 0
    .param p1, "app"    # I

    .prologue
    .line 641
    iput p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->app:I

    .line 642
    return-void
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->attachments:Ljava/util/List;

    .line 638
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->description:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->imei:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->model:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->sign:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 601
    iput p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->tag:I

    .line 602
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 605
    iput p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->type:I

    .line 606
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->uuid:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/server/se/AmigoSendErrorReport$SystemLog;->version:Ljava/lang/String;

    .line 630
    return-void
.end method
