.class Lcom/android/server/am/TaskRecord$1$1;
.super Lamigo/widget/blur/AmigoBlur$BitmapCallback;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TaskRecord$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/TaskRecord$1;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskRecord$1;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/server/am/TaskRecord$1$1;->this$1:Lcom/android/server/am/TaskRecord$1;

    invoke-direct {p0}, Lamigo/widget/blur/AmigoBlur$BitmapCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "completeBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 759
    const-string v0, "ActivityManager"

    const-string v1, "TaskRecord completeDrawable and updateThumbnailLocked. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/android/server/am/TaskRecord$1$1;->this$1:Lcom/android/server/am/TaskRecord$1;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord$1;->val$prev:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 761
    return-void
.end method
