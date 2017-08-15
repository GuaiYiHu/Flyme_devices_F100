.class Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "AmigoTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;


# direct methods
.method private constructor <init>(Lcom/amigo/internal/widget/AmigoTabContainerView;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amigo/internal/widget/AmigoTabContainerView;Lcom/amigo/internal/widget/AmigoTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amigo/internal/widget/AmigoTabContainerView;
    .param p2, "x1"    # Lcom/amigo/internal/widget/AmigoTabContainerView$1;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;-><init>(Lcom/amigo/internal/widget/AmigoTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 383
    move-object v3, p1

    check-cast v3, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;

    .line 384
    .local v3, "tabView":Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;
    invoke-virtual {v3}, Lcom/amigo/internal/widget/AmigoTabContainerView$TabView;->getTab()Lamigo/app/AmigoActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Lamigo/app/AmigoActionBar$Tab;->select()V

    .line 385
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;
    invoke-static {v4}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$400(Lcom/amigo/internal/widget/AmigoTabContainerView;)Lcom/amigo/internal/widget/AmigoTabIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildCount()I

    move-result v2

    .line 386
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 387
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoTabContainerView$TabClickListener;->this$0:Lcom/amigo/internal/widget/AmigoTabContainerView;

    # getter for: Lcom/amigo/internal/widget/AmigoTabContainerView;->mTabLayout:Lcom/amigo/internal/widget/AmigoTabIndicator;
    invoke-static {v4}, Lcom/amigo/internal/widget/AmigoTabContainerView;->access$400(Lcom/amigo/internal/widget/AmigoTabContainerView;)Lcom/amigo/internal/widget/AmigoTabIndicator;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/amigo/internal/widget/AmigoTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 390
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
