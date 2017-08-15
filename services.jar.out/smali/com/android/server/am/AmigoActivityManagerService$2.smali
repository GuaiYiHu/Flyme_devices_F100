.class Lcom/android/server/am/AmigoActivityManagerService$2;
.super Ljava/lang/Object;
.source "AmigoActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AmigoActivityManagerService;->amigoUpdatePermDB(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AmigoActivityManagerService;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/server/am/AmigoActivityManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    iput p2, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$status:I

    iput-object p3, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 455
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "status"

    iget v2, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    iget-object v1, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$200(Lcom/android/server/am/AmigoActivityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/am/AmigoActivityManagerService;->GN_PERM_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AmigoActivityManagerService;->access$100()Landroid/net/Uri;

    move-result-object v2

    const-string v3, " packagename = ? and permission =?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$pkgName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$permission:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    const-string v1, "perm_ctrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData : pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " permission = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/AmigoActivityManagerService$2;->val$status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v1

    goto :goto_0
.end method
