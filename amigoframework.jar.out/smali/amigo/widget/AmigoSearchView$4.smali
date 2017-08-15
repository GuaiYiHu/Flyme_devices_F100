.class Lamigo/widget/AmigoSearchView$4;
.super Ljava/lang/Object;
.source "AmigoSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoSearchView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoSearchView;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$4;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$4;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$100(Lamigo/widget/AmigoSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$4;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lamigo/widget/AmigoSearchView;->access$100(Lamigo/widget/AmigoSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoSearchView$4;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 300
    :cond_0
    return-void
.end method
