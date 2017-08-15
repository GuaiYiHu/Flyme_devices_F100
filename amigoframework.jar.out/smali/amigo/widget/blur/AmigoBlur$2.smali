.class Lamigo/widget/blur/AmigoBlur$2;
.super Ljava/lang/Object;
.source "AmigoBlur.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/blur/AmigoBlur;->execute(Landroid/graphics/Bitmap;Landroid/content/res/Resources;ILamigo/widget/blur/AmigoBlur$BlurCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/blur/AmigoBlur;

.field final synthetic val$blurRatio:I

.field final synthetic val$callback:Lamigo/widget/blur/AmigoBlur$BlurCallback;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$srcBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lamigo/widget/blur/AmigoBlur;Landroid/graphics/Bitmap;ILamigo/widget/blur/AmigoBlur$BlurCallback;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lamigo/widget/blur/AmigoBlur$2;->this$0:Lamigo/widget/blur/AmigoBlur;

    iput-object p2, p0, Lamigo/widget/blur/AmigoBlur$2;->val$srcBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lamigo/widget/blur/AmigoBlur$2;->val$blurRatio:I

    iput-object p4, p0, Lamigo/widget/blur/AmigoBlur$2;->val$callback:Lamigo/widget/blur/AmigoBlur$BlurCallback;

    iput-object p5, p0, Lamigo/widget/blur/AmigoBlur$2;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    const/16 v1, -0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 146
    const-string v1, "GioneeBlur"

    const-string v2, "execute method!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v1, "GioneeBlur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lamigo/widget/blur/AmigoBlur$2;->this$0:Lamigo/widget/blur/AmigoBlur;

    iget-object v2, p0, Lamigo/widget/blur/AmigoBlur$2;->val$srcBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lamigo/widget/blur/AmigoBlur$2;->val$blurRatio:I

    # invokes: Lamigo/widget/blur/AmigoBlur;->process(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, v3}, Lamigo/widget/blur/AmigoBlur;->access$100(Lamigo/widget/blur/AmigoBlur;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lamigo/widget/blur/AmigoBlur$2;->val$callback:Lamigo/widget/blur/AmigoBlur$BlurCallback;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const-string v1, "GioneeBlur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lamigo/widget/blur/AmigoBlur$2;->val$callback:Lamigo/widget/blur/AmigoBlur$BlurCallback;

    instance-of v3, v3, Lamigo/widget/blur/AmigoBlur$DrawableCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lamigo/widget/blur/AmigoBlur$2;->val$callback:Lamigo/widget/blur/AmigoBlur$BlurCallback;

    instance-of v1, v1, Lamigo/widget/blur/AmigoBlur$DrawableCallback;

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lamigo/widget/blur/AmigoBlur$2;->val$callback:Lamigo/widget/blur/AmigoBlur$BlurCallback;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lamigo/widget/blur/AmigoBlur$2;->val$res:Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lamigo/widget/blur/AmigoBlur$BlurCallback;->onComplete(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lamigo/widget/blur/AmigoBlur$2;->val$callback:Lamigo/widget/blur/AmigoBlur$BlurCallback;

    invoke-interface {v1, v0}, Lamigo/widget/blur/AmigoBlur$BlurCallback;->onComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
