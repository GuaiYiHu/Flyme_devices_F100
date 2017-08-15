.class Lcom/android/internal/policy/impl/AmigoGlobalActions$4;
.super Landroid/app/Dialog;
.source "AmigoGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v4

    sget-object v5, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->SHUTDOWN:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/AmigoGlobalActions;->mViewState:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;
    invoke-static {v4}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$700(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    move-result-object v4

    sget-object v5, Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;->REBOOT:Lcom/android/internal/policy/impl/AmigoGlobalActions$VIEW_STATE;

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 266
    :goto_0
    return v2

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 253
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 254
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 255
    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->inTheRange(II)Z
    invoke-static {v3, v0, v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1000(Lcom/android/internal/policy/impl/AmigoGlobalActions;II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mTouched:Z

    if-nez v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->cancelAnimation()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1100(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iput-boolean v2, v3, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mTouched:Z

    .line 265
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 259
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 260
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->inTheRange(II)Z
    invoke-static {v4, v0, v1}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1000(Lcom/android/internal/policy/impl/AmigoGlobalActions;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iput-boolean v3, v4, Lcom/android/internal/policy/impl/AmigoGlobalActions;->mTouched:Z

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 271
    const-string v0, "AmigoGlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->cancelAnimation()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1100(Lcom/android/internal/policy/impl/AmigoGlobalActions;)Z

    .line 275
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
