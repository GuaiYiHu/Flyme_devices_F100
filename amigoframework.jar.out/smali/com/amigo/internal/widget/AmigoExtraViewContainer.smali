.class public Lcom/amigo/internal/widget/AmigoExtraViewContainer;
.super Landroid/widget/RelativeLayout;
.source "AmigoExtraViewContainer.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getExtraView()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setExtraView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x2

    .line 16
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->removeView(Landroid/view/View;)V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->mView:Landroid/view/View;

    .line 20
    if-eqz p1, :cond_1

    .line 21
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 24
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoExtraViewContainer;->addView(Landroid/view/View;)V

    .line 27
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void
.end method
