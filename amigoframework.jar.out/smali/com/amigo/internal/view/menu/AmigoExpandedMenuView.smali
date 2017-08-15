.class public Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;
.super Landroid/widget/ListView;
.source "AmigoExpandedMenuView.java"

# interfaces
.implements Lcom/amigo/internal/view/menu/AmigoMenuBuilder$ItemInvoker;
.implements Lcom/amigo/internal/view/menu/AmigoMenuView;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAnimations:I

.field private mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0, p0}, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/amigo/internal/view/menu/AmigoMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    .line 38
    return-void
.end method

.method public invokeItem(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->mMenu:Lcom/amigo/internal/view/menu/AmigoMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/amigo/internal/view/menu/AmigoMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->setChildrenDrawingCacheEnabled(Z)V

    .line 46
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/amigo/internal/view/menu/AmigoExpandedMenuView;->invokeItem(Lcom/amigo/internal/view/menu/AmigoMenuItemImpl;)Z

    .line 54
    return-void
.end method
