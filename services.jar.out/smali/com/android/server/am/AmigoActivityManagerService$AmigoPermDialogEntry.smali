.class Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;
.super Ljava/lang/Object;
.source "AmigoActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AmigoActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmigoPermDialogEntry"
.end annotation


# instance fields
.field dialog:Lamigo/app/AmigoAlertDialog;

.field key:Ljava/lang/String;

.field perm:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/AmigoActivityManagerService;

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AmigoActivityManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lamigo/app/AmigoAlertDialog;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "perm"    # Ljava/lang/String;
    .param p6, "dialog"    # Lamigo/app/AmigoAlertDialog;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->key:Ljava/lang/String;

    .line 525
    iput p3, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->uid:I

    .line 526
    iput-object p4, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->pkgName:Ljava/lang/String;

    .line 527
    iput-object p6, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->dialog:Lamigo/app/AmigoAlertDialog;

    .line 528
    iput-object p5, p0, Lcom/android/server/am/AmigoActivityManagerService$AmigoPermDialogEntry;->perm:Ljava/lang/String;

    .line 529
    return-void
.end method
