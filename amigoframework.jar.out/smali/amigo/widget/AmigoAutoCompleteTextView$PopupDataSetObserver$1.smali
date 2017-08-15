.class Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AmigoAutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0

    .prologue
    .line 1281
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1283
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    # getter for: Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lamigo/widget/AmigoAutoCompleteTextView;->access$700(Lamigo/widget/AmigoAutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1284
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 1287
    iget-object v1, p0, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver$1;->this$1:Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    # invokes: Lamigo/widget/AmigoAutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Lamigo/widget/AmigoAutoCompleteTextView;->access$800(Lamigo/widget/AmigoAutoCompleteTextView;I)V

    .line 1289
    :cond_0
    return-void
.end method
