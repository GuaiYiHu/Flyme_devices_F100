.class Lamigo/widget/AmigoDateTimePicker$3;
.super Ljava/lang/Object;
.source "AmigoDateTimePicker.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 150
    iput-object p1, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v0, "Tab1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;
    invoke-static {v0}, Lamigo/widget/AmigoDateTimePicker;->access$300(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTextView;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I
    invoke-static {v1}, Lamigo/widget/AmigoDateTimePicker;->access$200(Lamigo/widget/AmigoDateTimePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTextView;->setTextColor(I)V

    .line 156
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;
    invoke-static {v0}, Lamigo/widget/AmigoDateTimePicker;->access$500(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTextView;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mNomalColor:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lamigo/widget/AmigoDateTimePicker;->access$400(Lamigo/widget/AmigoDateTimePicker;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mTimeTabLabel:Lamigo/widget/AmigoTextView;
    invoke-static {v0}, Lamigo/widget/AmigoDateTimePicker;->access$500(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTextView;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mAccentColor:I
    invoke-static {v1}, Lamigo/widget/AmigoDateTimePicker;->access$200(Lamigo/widget/AmigoDateTimePicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTextView;->setTextColor(I)V

    .line 159
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mDateTabLabel:Lamigo/widget/AmigoTextView;
    invoke-static {v0}, Lamigo/widget/AmigoDateTimePicker;->access$300(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTextView;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoDateTimePicker$3;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mNomalColor:Landroid/content/res/ColorStateList;
    invoke-static {v1}, Lamigo/widget/AmigoDateTimePicker;->access$400(Lamigo/widget/AmigoDateTimePicker;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
