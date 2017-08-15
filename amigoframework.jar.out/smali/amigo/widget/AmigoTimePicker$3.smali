.class Lamigo/widget/AmigoTimePicker$3;
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
    .line 175
    iput-object p1, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lamigo/widget/AmigoNumberPicker;II)V
    .locals 7
    .param p1, "spinner"    # Lamigo/widget/AmigoNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 177
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # invokes: Lamigo/widget/AmigoTimePicker;->updateInputState()V
    invoke-static {v5}, Lamigo/widget/AmigoTimePicker;->access$000(Lamigo/widget/AmigoTimePicker;)V

    .line 178
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v5}, Lamigo/widget/AmigoTimePicker;->access$400(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lamigo/widget/AmigoNumberPicker;->getMinValue()I

    move-result v1

    .line 179
    .local v1, "minValue":I
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mMinuteSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v5}, Lamigo/widget/AmigoTimePicker;->access$400(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lamigo/widget/AmigoNumberPicker;->getMaxValue()I

    move-result v0

    .line 180
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 181
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v5}, Lamigo/widget/AmigoTimePicker;->access$500(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lamigo/widget/AmigoNumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 182
    .local v2, "newHour":I
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v5}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 183
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    iget-object v6, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mIsAm:Z
    invoke-static {v6}, Lamigo/widget/AmigoTimePicker;->access$100(Lamigo/widget/AmigoTimePicker;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    # setter for: Lamigo/widget/AmigoTimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Lamigo/widget/AmigoTimePicker;->access$102(Lamigo/widget/AmigoTimePicker;Z)Z

    .line 184
    iget-object v3, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # invokes: Lamigo/widget/AmigoTimePicker;->updateAmPmControl()V
    invoke-static {v3}, Lamigo/widget/AmigoTimePicker;->access$200(Lamigo/widget/AmigoTimePicker;)V

    .line 186
    :cond_0
    iget-object v3, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v3}, Lamigo/widget/AmigoTimePicker;->access$500(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 195
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # invokes: Lamigo/widget/AmigoTimePicker;->onTimeChanged()V
    invoke-static {v3}, Lamigo/widget/AmigoTimePicker;->access$300(Lamigo/widget/AmigoTimePicker;)V

    .line 196
    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    .line 183
    goto :goto_0

    .line 187
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 188
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v5}, Lamigo/widget/AmigoTimePicker;->access$500(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Lamigo/widget/AmigoNumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 189
    .restart local v2    # "newHour":I
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    invoke-virtual {v5}, Lamigo/widget/AmigoTimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 190
    iget-object v5, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    iget-object v6, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mIsAm:Z
    invoke-static {v6}, Lamigo/widget/AmigoTimePicker;->access$100(Lamigo/widget/AmigoTimePicker;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    # setter for: Lamigo/widget/AmigoTimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Lamigo/widget/AmigoTimePicker;->access$102(Lamigo/widget/AmigoTimePicker;Z)Z

    .line 191
    iget-object v3, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # invokes: Lamigo/widget/AmigoTimePicker;->updateAmPmControl()V
    invoke-static {v3}, Lamigo/widget/AmigoTimePicker;->access$200(Lamigo/widget/AmigoTimePicker;)V

    .line 193
    :cond_4
    iget-object v3, p0, Lamigo/widget/AmigoTimePicker$3;->this$0:Lamigo/widget/AmigoTimePicker;

    # getter for: Lamigo/widget/AmigoTimePicker;->mHourSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v3}, Lamigo/widget/AmigoTimePicker;->access$500(Lamigo/widget/AmigoTimePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 190
    goto :goto_2
.end method
