.class Lamigo/widget/AmigoDateTimePicker$2;
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
    .line 137
    iput-object p1, p0, Lamigo/widget/AmigoDateTimePicker$2;->this$0:Lamigo/widget/AmigoDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lamigo/widget/AmigoDateTimePicker$2;->this$0:Lamigo/widget/AmigoDateTimePicker;

    # getter for: Lamigo/widget/AmigoDateTimePicker;->mTimePicker:Lamigo/widget/AmigoTimePicker;
    invoke-static {v0}, Lamigo/widget/AmigoDateTimePicker;->access$100(Lamigo/widget/AmigoDateTimePicker;)Lamigo/widget/AmigoTimePicker;

    move-result-object v0

    return-object v0
.end method
