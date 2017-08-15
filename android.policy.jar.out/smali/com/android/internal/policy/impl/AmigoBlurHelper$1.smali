.class Lcom/android/internal/policy/impl/AmigoBlurHelper$1;
.super Ljava/lang/Object;
.source "AmigoBlurHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoBlurHelper;->createBlurBg(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoBlurHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoBlurHelper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$1;->this$0:Lcom/android/internal/policy/impl/AmigoBlurHelper;

    iput-object p2, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 59
    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->takeScreenShot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 60
    .local v1, "screenShot":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 61
    const/high16 v3, 0x3d800000    # 0.0625f

    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->zoomInBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 62
    .local v2, "zoomBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v0, "c":Landroid/graphics/Canvas;
    const/high16 v3, -0x56000000

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 65
    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$1;->this$0:Lcom/android/internal/policy/impl/AmigoBlurHelper;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/policy/impl/AmigoBlurHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/policy/impl/AmigoBlurHelper;->blur(Landroid/graphics/Bitmap;ILandroid/content/Context;)V

    .line 67
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "zoomBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
