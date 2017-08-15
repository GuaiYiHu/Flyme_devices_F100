.class Lamigo/widget/AmigoTimePicker$5;
.super Ljava/lang/Object;
.source "AmigoTimePicker.java"

# interfaces
.implements Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoTimePicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoTimePicker;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lamigo/widget/AmigoTimePicker$5;->this$0:Lamigo/widget/AmigoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lamigo/widget/AmigoNumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Lamigo/widget/AmigoNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker$5;->this$0:Lamigo/widget/AmigoTimePicker;

    # invokes: Lamigo/widget/AmigoTimePicker;->updateInputState()V
    invoke-static {v0}, Lamigo/widget/AmigoTimePicker;->access$000(Lamigo/widget/AmigoTimePicker;)V

    .line 230
    invoke-virtual {p1}, Lamigo/widget/AmigoNumberPicker;->requestFocus()Z

    .line 231
    iget-object v1, p0, Lamigo/widget/AmigoTimePicker$5;->this$0:Lamigo/widget/AmigoTimePicker;

    iget-object v0, p0, Lamigo/widget/AmigoTimePicker$5;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lamigo/widget/AmigoTimePicker;->access$100(Lamigo/widget/AmigoTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lamigo/widget/AmigoTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lamigo/widget/AmigoTimePicker;->access$102(Lamigo/widget/AmigoTimePicker;Z)Z

    .line 232
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker$5;->this$0:Lamigo/widget/AmigoTimePicker;

    # invokes: Lamigo/widget/AmigoTimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lamigo/widget/AmigoTimePicker;->access$200(Lamigo/widget/AmigoTimePicker;)V

    .line 233
    iget-object v0, p0, Lamigo/widget/AmigoTimePicker$5;->this$0:Lamigo/widget/AmigoTimePicker;

    # invokes: Lamigo/widget/AmigoTimePicker;->onTimeChanged()V
    invoke-static {v0}, Lamigo/widget/AmigoTimePicker;->access$300(Lamigo/widget/AmigoTimePicker;)V

    .line 234
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
