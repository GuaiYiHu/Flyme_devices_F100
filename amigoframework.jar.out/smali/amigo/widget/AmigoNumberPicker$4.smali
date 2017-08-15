.class Lamigo/widget/AmigoNumberPicker$4;
.super Ljava/lang/Object;
.source "AmigoNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 640
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$4;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 642
    if-eqz p2, :cond_0

    .line 650
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$4;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Lamigo/widget/AmigoNumberPicker;->access$000(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 648
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker$4;->this$0:Lamigo/widget/AmigoNumberPicker;

    # invokes: Lamigo/widget/AmigoNumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lamigo/widget/AmigoNumberPicker;->access$300(Lamigo/widget/AmigoNumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
