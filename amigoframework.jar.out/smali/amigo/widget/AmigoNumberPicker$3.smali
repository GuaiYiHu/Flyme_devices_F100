.class Lamigo/widget/AmigoNumberPicker$3;
.super Ljava/lang/Object;
.source "AmigoNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoNumberPicker;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoNumberPicker;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$3;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 618
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$3;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$000(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 619
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x90b0012

    if-ne v0, v1, :cond_0

    .line 620
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$3;->this$0:Lamigo/widget/AmigoNumberPicker;

    # invokes: Lamigo/widget/AmigoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V
    invoke-static {v0, v2}, Lamigo/widget/AmigoNumberPicker;->access$200(Lamigo/widget/AmigoNumberPicker;Z)V

    .line 624
    :goto_0
    return v2

    .line 622
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$3;->this$0:Lamigo/widget/AmigoNumberPicker;

    const/4 v1, 0x0

    # invokes: Lamigo/widget/AmigoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V
    invoke-static {v0, v1}, Lamigo/widget/AmigoNumberPicker;->access$200(Lamigo/widget/AmigoNumberPicker;Z)V

    goto :goto_0
.end method
