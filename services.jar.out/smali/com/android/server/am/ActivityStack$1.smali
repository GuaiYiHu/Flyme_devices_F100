.class Lcom/android/server/am/ActivityStack$1;
.super Ljava/lang/Object;
.source "ActivityStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStack;->setThumbnailBlur(Landroid/graphics/Bitmap;ILcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;

.field final synthetic val$iBlur:I

.field final synthetic val$mThumbnail:Landroid/graphics/Bitmap;

.field final synthetic val$prev:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Landroid/graphics/Bitmap;ILcom/android/server/am/ActivityRecord;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack$1;->val$mThumbnail:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/server/am/ActivityStack$1;->val$iBlur:I

    iput-object p4, p0, Lcom/android/server/am/ActivityStack$1;->val$prev:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 881
    invoke-static {}, Lamigo/widget/blur/AmigoBlur;->getInstance()Lamigo/widget/blur/AmigoBlur;

    move-result-object v0

    .line 882
    .local v0, "blur":Lamigo/widget/blur/AmigoBlur;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$1;->val$mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack$1;->val$mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    :cond_0
    const-string v1, "ActivityManager"

    const-string v2, "mThumbnail == null or recycled.. "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$1;->val$mThumbnail:Landroid/graphics/Bitmap;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/ActivityStack$1;->val$iBlur:I

    new-instance v4, Lcom/android/server/am/ActivityStack$1$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/ActivityStack$1$1;-><init>(Lcom/android/server/am/ActivityStack$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lamigo/widget/blur/AmigoBlur;->generateBlurBitmap(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BitmapCallback;)V

    goto :goto_0
.end method
