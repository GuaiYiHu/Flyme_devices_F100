.class Lcom/android/server/accessibility/ScreenMagnifier$1;
.super Landroid/os/Handler;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 194
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 196
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 197
    .local v2, "bounds":Landroid/graphics/Region;
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    invoke-static {v7, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->access$000(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V

    .line 198
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 201
    .end local v2    # "bounds":Landroid/graphics/Region;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 202
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 203
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 204
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 205
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 206
    .local v1, "bottom":I
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRectangleOnScreenRequested(IIII)V
    invoke-static {v7, v3, v6, v4, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->access$100(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V

    .line 207
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 210
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :sswitch_2
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnUserContextChanged()V
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$200(Lcom/android/server/accessibility/ScreenMagnifier;)V

    goto :goto_0

    .line 213
    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 214
    .local v5, "rotation":I
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRotationChanged(I)V
    invoke-static {v7, v5}, Lcom/android/server/accessibility/ScreenMagnifier;->access$300(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_0

    .line 218
    .end local v5    # "rotation":I
    :sswitch_4
    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/ScreenMagnifier;->access$400()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MESSAGE_KEY_BACK_ACTION! mSmallScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mSmallScreen:Z
    invoke-static {v9}, Lcom/android/server/accessibility/ScreenMagnifier;->access$500(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v7, p0, Lcom/android/server/accessibility/ScreenMagnifier$1;->this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->amigoSetSmallScreen()V
    invoke-static {v7}, Lcom/android/server/accessibility/ScreenMagnifier;->access$600(Lcom/android/server/accessibility/ScreenMagnifier;)V

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method
