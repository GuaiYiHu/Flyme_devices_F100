.class Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;
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
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lamigo/widget/AmigoNumberPicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoNumberPicker;)V
    .locals 0

    .prologue
    .line 2309
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2309
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V

    return-void
.end method

.method private setIncrement(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2313
    iput-boolean p1, p0, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2314
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2317
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    iget-boolean v1, p0, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Lamigo/widget/AmigoNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoNumberPicker;->access$100(Lamigo/widget/AmigoNumberPicker;Z)V

    .line 2318
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Lamigo/widget/AmigoNumberPicker;->access$2300(Lamigo/widget/AmigoNumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lamigo/widget/AmigoNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2319
    return-void
.end method
