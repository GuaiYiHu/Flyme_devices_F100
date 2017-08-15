.class Lcom/android/internal/policy/impl/AmigoGlobalActions$6;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 418
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    const-string v0, "AmigoGlobalActions"

    const-string v1, "mRebootImageView onLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$6;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->safeMode()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1400(Lcom/android/internal/policy/impl/AmigoGlobalActions;)V

    .line 423
    const/4 v0, 0x1

    return v0
.end method
