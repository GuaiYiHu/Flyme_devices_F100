.class Lamigo/widget/AmigoSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "AmigoSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoSpinner$DropdownPopup;-><init>(Lamigo/widget/AmigoSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

.field final synthetic val$this$0:Lamigo/widget/AmigoSpinner;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSpinner$DropdownPopup;Lamigo/widget/AmigoSpinner;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    iput-object p2, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;->val$this$0:Lamigo/widget/AmigoSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 455
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    iget-object v0, v0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v0, p3}, Lamigo/widget/AmigoSpinner;->setSelection(I)V

    .line 456
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    iget-object v0, v0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    iget-object v0, v0, Lamigo/widget/AmigoSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    iget-object v0, v0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    iget-object v1, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    # getter for: Lamigo/widget/AmigoSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lamigo/widget/AmigoSpinner$DropdownPopup;->access$100(Lamigo/widget/AmigoSpinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lamigo/widget/AmigoSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 459
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;->this$1:Lamigo/widget/AmigoSpinner$DropdownPopup;

    invoke-virtual {v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->dismiss()V

    .line 460
    return-void
.end method
