.class Lamigo/widget/AmigoDatePicker$1;
.super Ljava/lang/Object;
.source "AmigoDatePicker.java"

# interfaces
.implements Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoDatePicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoDatePicker;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lamigo/widget/AmigoNumberPicker;II)V
    .locals 9
    .param p1, "picker"    # Lamigo/widget/AmigoNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 151
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # invokes: Lamigo/widget/AmigoDatePicker;->updateInputState()V
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$000(Lamigo/widget/AmigoDatePicker;)V

    .line 152
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Lamigo/widget/AmigoDatePicker;->access$100(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mDaySpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$300(Lamigo/widget/AmigoDatePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 155
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 156
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 157
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 177
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    iget-object v2, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Lamigo/widget/AmigoDatePicker;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Lamigo/widget/AmigoDatePicker;->access$600(Lamigo/widget/AmigoDatePicker;III)V

    .line 179
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # invokes: Lamigo/widget/AmigoDatePicker;->updateSpinners()V
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$700(Lamigo/widget/AmigoDatePicker;)V

    .line 180
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # invokes: Lamigo/widget/AmigoDatePicker;->updateCalendarView()V
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$800(Lamigo/widget/AmigoDatePicker;)V

    .line 181
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # invokes: Lamigo/widget/AmigoDatePicker;->notifyDateChanged()V
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$900(Lamigo/widget/AmigoDatePicker;)V

    .line 182
    return-void

    .line 158
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 159
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 163
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mMonthSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$400(Lamigo/widget/AmigoDatePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 164
    if-ne p2, v8, :cond_3

    if-nez p3, :cond_3

    .line 165
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 166
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v8, :cond_4

    .line 167
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 169
    :cond_4
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 171
    :cond_5
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mYearSpinner:Lamigo/widget/AmigoNumberPicker;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$500(Lamigo/widget/AmigoDatePicker;)Lamigo/widget/AmigoNumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 172
    iget-object v1, p0, Lamigo/widget/AmigoDatePicker$1;->this$0:Lamigo/widget/AmigoDatePicker;

    # getter for: Lamigo/widget/AmigoDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lamigo/widget/AmigoDatePicker;->access$200(Lamigo/widget/AmigoDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 174
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
