.class Lcom/android/internal/policy/impl/AmigoGlobalActions$3;
.super Landroid/database/ContentObserver;
.source "AmigoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$900(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "amigo_silent_switch"

    invoke-static {v3, v4, v1}, Lamigo/provider/AmigoSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$502(Lcom/android/internal/policy/impl/AmigoGlobalActions;Z)Z

    .line 211
    const-string v0, "AmigoGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSilentChangeObserver onChange  mSilentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mSilentState:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$500(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$800(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0
.end method
