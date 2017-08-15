.class Lcom/android/server/am/AmigoActivityManagerService$3;
.super Ljava/lang/Object;
.source "AmigoActivityManagerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AmigoActivityManagerService;->amigoBuildPermissionView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AmigoActivityManagerService;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/am/AmigoActivityManagerService;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/server/am/AmigoActivityManagerService$3;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/AmigoActivityManagerService$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$3;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z
    invoke-static {v0, v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$1002(Lcom/android/server/am/AmigoActivityManagerService;Z)Z

    .line 957
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AmigoActivityManagerService$3;->this$0:Lcom/android/server/am/AmigoActivityManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/am/AmigoActivityManagerService;->mRememberMe:Z
    invoke-static {v0, v1}, Lcom/android/server/am/AmigoActivityManagerService;->access$1002(Lcom/android/server/am/AmigoActivityManagerService;Z)Z

    goto :goto_0
.end method
