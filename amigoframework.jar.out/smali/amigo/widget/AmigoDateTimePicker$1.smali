.class Lamigo/widget/AmigoDateTimePicker$1;
.super Ljava/lang/Object;
.source "AmigoDateTimePicker.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoDateTimePicker;->initTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoDateTimePicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoDateTimePicker;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lamigo/widget/AmigoDateTimePicker$1;->this$0:Lamigo/widget/AmigoDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker$1;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mDatePicker:Lamigo/widget/AmigoDatePicker;
    invoke-static {v0}, Lamigo/widget/AmigoDateTimePicker;->access$000(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoDatePicker;

    move-result-object v0

    return-object v0
.end method
