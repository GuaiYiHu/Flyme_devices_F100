.class Lamigo/widget/AmigoSpinner$1;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "AmigoSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoSpinner;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSpinner;Landroid/view/View;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 171
    iput-object p1, p0, Lamigo/widget/AmigoSpinner$1;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$1;->this$0:Lamigo/widget/AmigoSpinner;

    # getter for: Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;
    invoke-static {v0}, Lamigo/widget/AmigoSpinner;->access$000(Lamigo/widget/AmigoSpinner;)Lamigo/widget/AmigoSpinner$DropdownPopup;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$1;->this$0:Lamigo/widget/AmigoSpinner;

    # getter for: Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;
    invoke-static {v0}, Lamigo/widget/AmigoSpinner;->access$000(Lamigo/widget/AmigoSpinner;)Lamigo/widget/AmigoSpinner$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$1;->this$0:Lamigo/widget/AmigoSpinner;

    # getter for: Lamigo/widget/AmigoSpinner;->mPopup:Lamigo/widget/AmigoSpinner$DropdownPopup;
    invoke-static {v0}, Lamigo/widget/AmigoSpinner;->access$000(Lamigo/widget/AmigoSpinner;)Lamigo/widget/AmigoSpinner$DropdownPopup;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoSpinner$1;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v1}, Lamigo/widget/AmigoSpinner;->getTextDirection()I

    move-result v1

    iget-object v2, p0, Lamigo/widget/AmigoSpinner$1;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v2}, Lamigo/widget/AmigoSpinner;->getTextAlignment()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lamigo/widget/AmigoSpinner$DropdownPopup;->show(II)V

    .line 182
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
