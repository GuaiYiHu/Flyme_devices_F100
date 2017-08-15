.class Lcom/android/internal/policy/impl/AmigoBlurHelper$2$1;
.super Lamigo/widget/blur/AmigoBlur$BitmapCallback;
.source "AmigoBlurHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/AmigoBlurHelper$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoBlurHelper$2;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2$1;->this$1:Lcom/android/internal/policy/impl/AmigoBlurHelper$2;

    invoke-direct {p0}, Lamigo/widget/blur/AmigoBlur$BitmapCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "completeBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    const-string v3, "AmigoBlurHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeDrawable = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",this = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v3, Lcom/android/internal/policy/impl/AmigoBlurHelper;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 91
    :try_start_0
    sget-object v2, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    const-string v2, "AmigoBlurHelper"

    const-string v4, "mBlur  recycle"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v2, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    .line 96
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->zoomInBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/AmigoBlurHelper;->mBlur:Landroid/graphics/Bitmap;

    .line 100
    # getter for: Lcom/android/internal/policy/impl/AmigoBlurHelper;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;

    .line 101
    .local v0, "callback":Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;
    invoke-interface {v0}, Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;->completeBlur()V

    goto :goto_1

    .line 88
    .end local v0    # "callback":Lcom/android/internal/policy/impl/AmigoBlurHelper$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 103
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2$1;->this$1:Lcom/android/internal/policy/impl/AmigoBlurHelper$2;

    iget-object v2, v2, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$background:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-static {p1}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    return-void
.end method
