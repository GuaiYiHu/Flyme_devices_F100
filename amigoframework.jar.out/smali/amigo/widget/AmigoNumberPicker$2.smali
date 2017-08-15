.class Lamigo/widget/AmigoNumberPicker$2;
.super Ljava/lang/Object;
.source "AmigoNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 600
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker$2;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 602
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$2;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1}, Lamigo/widget/AmigoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v1

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 604
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$2;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lamigo/widget/AmigoNumberPicker;->access$000(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$2;->this$0:Lamigo/widget/AmigoNumberPicker;

    invoke-virtual {v1}, Lamigo/widget/AmigoNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 607
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$2;->this$0:Lamigo/widget/AmigoNumberPicker;

    # getter for: Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lamigo/widget/AmigoNumberPicker;->access$000(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x90b0012

    if-ne v1, v2, :cond_1

    .line 609
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$2;->this$0:Lamigo/widget/AmigoNumberPicker;

    const/4 v2, 0x1

    # invokes: Lamigo/widget/AmigoNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v2}, Lamigo/widget/AmigoNumberPicker;->access$100(Lamigo/widget/AmigoNumberPicker;Z)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker$2;->this$0:Lamigo/widget/AmigoNumberPicker;

    # invokes: Lamigo/widget/AmigoNumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v3}, Lamigo/widget/AmigoNumberPicker;->access$100(Lamigo/widget/AmigoNumberPicker;Z)V

    goto :goto_0
.end method
