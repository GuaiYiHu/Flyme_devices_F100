.class Lamigo/widget/AmigoDatePicker$2;
.super Ljava/lang/Object;
.source "AmigoDatePicker.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


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
    .line 191
    iput-object p1, p0, Lamigo/widget/AmigoDatePicker$2;->this$0:Lamigo/widget/AmigoDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CalendarView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "monthDay"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker$2;->this$0:Lamigo/widget/AmigoDatePicker;

    # invokes: Lamigo/widget/AmigoDatePicker;->setDate(III)V
    invoke-static {v0, p2, p3, p4}, Lamigo/widget/AmigoDatePicker;->access$600(Lamigo/widget/AmigoDatePicker;III)V

    .line 194
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker$2;->this$0:Lamigo/widget/AmigoDatePicker;

    # invokes: Lamigo/widget/AmigoDatePicker;->updateSpinners()V
    invoke-static {v0}, Lamigo/widget/AmigoDatePicker;->access$700(Lamigo/widget/AmigoDatePicker;)V

    .line 195
    iget-object v0, p0, Lamigo/widget/AmigoDatePicker$2;->this$0:Lamigo/widget/AmigoDatePicker;

    # invokes: Lamigo/widget/AmigoDatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lamigo/widget/AmigoDatePicker;->access$900(Lamigo/widget/AmigoDatePicker;)V

    .line 196
    return-void
.end method
