.class Lcom/android/internal/policy/impl/AmigoGlobalActions$5;
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
    .line 408
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    const-string v0, "AmigoGlobalActions"

    const-string v1, "mShutdownImageView click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    sget-object v1, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->setState(Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1200(Lcom/android/internal/policy/impl/AmigoGlobalActions;Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$5;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->shutDown()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1300(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    .line 415
    return-void
.end method
