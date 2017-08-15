.class Lcom/android/internal/policy/impl/AmigoBlurHelper$2;
.super Ljava/lang/Object;
.source "AmigoBlurHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoBlurHelper;->blur(Landroid/graphics/Bitmap;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoBlurHelper;

.field final synthetic val$background:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iBlur:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoBlurHelper;Landroid/graphics/Bitmap;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->this$0:Lcom/android/internal/policy/impl/AmigoBlurHelper;

    iput-object p2, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$background:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$iBlur:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$background:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$background:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_0
    const-string v2, "AmigoBlurHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "background == null is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$background:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",may be OutOfMemory."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_1
    return-void

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lamigo/widget/blur/AmigoBlur;->getInstance()Lamigo/widget/blur/AmigoBlur;

    move-result-object v0

    .line 83
    .local v0, "blur":Lamigo/widget/blur/AmigoBlur;
    iget-object v1, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$background:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$2;->val$iBlur:I

    new-instance v4, Lcom/android/internal/policy/impl/AmigoBlurHelper$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AmigoBlurHelper$2$1;-><init>(Lcom/android/internal/policy/impl/AmigoBlurHelper$2;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lamigo/widget/blur/AmigoBlur;->generateBlurBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V

    goto :goto_1
.end method
