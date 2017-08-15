.class Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "AmigoActionBarView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amigo/internal/widget/AmigoActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/amigo/internal/widget/AmigoActionBarView;


# direct methods
.method private constructor <init>(Lcom/amigo/internal/widget/AmigoActionBarView;)V
    .locals 0

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1647
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v1, v1, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    .line 1652
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$800(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->removeView(Landroid/view/View;)V

    .line 1653
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iput-object v3, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1654
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$200(Lcom/amigo/internal/widget/AmigoActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$900(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setVisibility(I)V

    .line 1657
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$200(Lcom/amigo/internal/widget/AmigoActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1658
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1000(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1659
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # invokes: Lcom/amigo/internal/widget/AmigoActionBarView;->initTitle()V
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1400(Lcom/amigo/internal/widget/AmigoActionBarView;)V

    .line 1664
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1100(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1500(Lcom/amigo/internal/widget/AmigoActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1665
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1100(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    .line 1667
    :cond_3
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1200(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mNavigationMode:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1500(Lcom/amigo/internal/widget/AmigoActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1668
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1200(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1670
    :cond_4
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$200(Lcom/amigo/internal/widget/AmigoActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 1671
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    :cond_5
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$800(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1674
    iput-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1675
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->requestLayout()V

    .line 1676
    invoke-virtual {p2, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1678
    return v4

    .line 1661
    :cond_6
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1000(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1615
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1617
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$700(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$800(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$700(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v2}, Lcom/amigo/internal/widget/AmigoActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1621
    :cond_0
    iput-object p2, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1622
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-eq v0, v1, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v1, v1, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$800(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    if-eq v0, v1, :cond_2

    .line 1626
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    invoke-static {v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$800(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarView;->addView(Landroid/view/View;)V

    .line 1628
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mHomeLayout:Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$900(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amigo/internal/widget/AmigoActionBarView$HomeView;->setVisibility(I)V

    .line 1629
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1000(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1000(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1630
    :cond_3
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1100(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mTabContainer:Lcom/amigo/internal/widget/AmigoTabContainerView;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1100(Lcom/amigo/internal/widget/AmigoActionBarView;)Lcom/amigo/internal/widget/AmigoTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amigo/internal/widget/AmigoTabContainerView;->setVisibility(I)V

    .line 1631
    :cond_4
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1200(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1200(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1632
    :cond_5
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    # getter for: Lcom/amigo/internal/widget/AmigoActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->access$1300(Lcom/amigo/internal/widget/AmigoActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    :cond_6
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    invoke-virtual {v0}, Lcom/amigo/internal/widget/AmigoActionBarView;->requestLayout()V

    .line 1634
    invoke-virtual {p2, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1636
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_7

    .line 1637
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/amigo/internal/widget/AmigoActionBarView;

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1640
    :cond_7
    return v4
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1610
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1683
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1568
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1563
    :cond_0
    iput-object p2, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1564
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1606
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1693
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1688
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1601
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1597
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1574
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1575
    const/4 v1, 0x0

    .line 1577
    .local v1, "found":Z
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1578
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1579
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1580
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1581
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1582
    const/4 v1, 0x1

    .line 1588
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1590
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/amigo/internal/widget/AmigoActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1593
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1579
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
