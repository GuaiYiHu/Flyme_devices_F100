.class public Lcom/amigo/internal/widget/AmigoSplitActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "AmigoSplitActionBarContainer.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContainerHeight:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoSplitActionBarContainer;->mContext:Landroid/content/Context;

    .line 19
    sget-object v1, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 20
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/amigo/internal/widget/AmigoSplitActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 21
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoSplitActionBarContainer;->mContainerHeight:I

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoSplitActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/amigo/internal/widget/AmigoSplitActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    return-void
.end method
