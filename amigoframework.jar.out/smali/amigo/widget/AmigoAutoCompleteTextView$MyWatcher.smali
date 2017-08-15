.class Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;
.super Ljava/lang/Object;
.source "AmigoAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;
    .param p2, "x1"    # Lamigo/widget/AmigoAutoCompleteTextView$1;

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 762
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    invoke-virtual {v0}, Lamigo/widget/AmigoAutoCompleteTextView;->doAfterTextChanged()V

    .line 763
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 765
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$MyWatcher;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    invoke-virtual {v0}, Lamigo/widget/AmigoAutoCompleteTextView;->doBeforeTextChanged()V

    .line 766
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 768
    return-void
.end method
