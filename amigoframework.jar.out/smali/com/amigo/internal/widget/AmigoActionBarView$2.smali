.class Lcom/amigo/internal/widget/AmigoActionBarView$2;
.super Ljava/lang/Object;
.source "AmigoActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoActionBarView;


# direct methods
.method constructor <init>(Lcom/amigo/internal/widget/AmigoActionBarView;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$2;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedMenuPresenter:Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$100(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;

    move-result-object v1

    iget-object v0, v1, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 137
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 140
    :cond_0
    return-void
.end method
