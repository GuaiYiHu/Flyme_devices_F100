.class Lcom/android/internal/policy/impl/AmigoGlobalActions$7;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 430
    const-string v0, "AmigoGlobalActions"

    const-string v1, "mRebootImageView click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOT:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->setState(Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1200(Lcom/android/internal/policy/impl/AmigoGlobalActions;Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$7;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->reboot()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    .line 433
    return-void
.end method
