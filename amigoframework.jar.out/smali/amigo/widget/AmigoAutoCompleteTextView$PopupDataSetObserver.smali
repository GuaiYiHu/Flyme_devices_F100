.class Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AmigoAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoAutoCompleteTextView;Lamigo/widget/AmigoAutoCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoAutoCompleteTextView;
    .param p2, "x1"    # Lamigo/widget/AmigoAutoCompleteTextView$1;

    .prologue
    .line 1273
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;-><init>(Lamigo/widget/AmigoAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1276
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    # getter for: Lamigo/widget/AmigoAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lamigo/widget/AmigoAutoCompleteTextView;->access$700(Lamigo/widget/AmigoAutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;->this$0:Lamigo/widget/AmigoAutoCompleteTextView;

    new-instance v1, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver$1;

    invoke-direct {v1, p0}, Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver$1;-><init>(Lamigo/widget/AmigoAutoCompleteTextView$PopupDataSetObserver;)V

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoAutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1292
    :cond_0
    return-void
.end method
