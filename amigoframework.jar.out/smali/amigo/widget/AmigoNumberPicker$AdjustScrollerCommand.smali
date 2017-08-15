.class Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "AmigoNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoNumberPicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoNumberPicker;)V
    .locals 0

    .prologue
    .line 2288
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2290
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # setter for: Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lamigo/widget/AmigoNumberPicker;->access$1502(Lamigo/widget/AmigoNumberPicker;I)I

    .line 2291
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$1600(Lamigo/widget/AmigoNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lamigo/widget/AmigoNumberPicker;->access$1700(Lamigo/widget/AmigoNumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2292
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # invokes: Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$1800(Lamigo/widget/AmigoNumberPicker;)V

    .line 2293
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimimationDuration:J
    invoke-static {v1}, Lamigo/widget/AmigoNumberPicker;->access$1900(Lamigo/widget/AmigoNumberPicker;)J

    move-result-wide v2

    # invokes: Lamigo/widget/AmigoNumberPicker;->showInputControls(J)V
    invoke-static {v0, v2, v3}, Lamigo/widget/AmigoNumberPicker;->access$2000(Lamigo/widget/AmigoNumberPicker;J)V

    .line 2303
    :goto_0
    return-void

    .line 2297
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$1600(Lamigo/widget/AmigoNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lamigo/widget/AmigoNumberPicker;->access$1700(Lamigo/widget/AmigoNumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 2298
    .local v4, "deltaY":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lamigo/widget/AmigoNumberPicker;->access$2100(Lamigo/widget/AmigoNumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 2299
    if-lez v4, :cond_2

    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$2100(Lamigo/widget/AmigoNumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 2301
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$2200(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2302
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    goto :goto_0

    .line 2299
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$2100(Lamigo/widget/AmigoNumberPicker;)I

    move-result v0

    goto :goto_1
.end method
