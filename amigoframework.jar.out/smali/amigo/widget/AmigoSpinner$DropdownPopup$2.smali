.class Lamigo/widget/AmigoSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "AmigoSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoSpinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSpinner$DropdownPopup;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$2;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$2;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    iget-object v0, v0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    # invokes: Lamigo/widget/AmigoSpinner;->isVisibleToUser()Z
    invoke-static {v0}, Lamigo/widget/AmigoSpinner;->access$400(Lamigo/widget/AmigoSpinner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$2;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->dismiss()V

    .line 560
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$2;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->computeContentWidth()V

    .line 558
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$2;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->show()V

    goto :goto_0
.end method
