.class Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
.super Ljava/lang/Object;
.source "AmigoAlphabetIndexView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAlphabetIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LetterHolder"
.end annotation


# instance fields
.field private index:I

.field mDrawRect:Landroid/graphics/Rect;

.field mIsEnable:Z

.field mLetter:Ljava/lang/String;

.field mOrigRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lamigo/widget/AmigoAlphabetIndexView;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoAlphabetIndexView;IIIILjava/lang/String;I)V
    .locals 1
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "letter"    # Ljava/lang/String;
    .param p7, "index"    # I

    .prologue
    .line 575
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v0, p6, p7}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;-><init>(Lamigo/widget/AmigoAlphabetIndexView;Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 576
    return-void
.end method

.method public constructor <init>(Lamigo/widget/AmigoAlphabetIndexView;Landroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 3
    .param p2, "origRect"    # Landroid/graphics/Rect;
    .param p3, "letter"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 578
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mIsEnable:Z

    .line 572
    const/4 v0, -0x1

    iput v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->index:I

    .line 579
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    .line 580
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    # getter for: Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLeftOffset:I
    invoke-static {p1}, Lamigo/widget/AmigoAlphabetIndexView;->access$000(Lamigo/widget/AmigoAlphabetIndexView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 581
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    # getter for: Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLeftOffset:I
    invoke-static {p1}, Lamigo/widget/AmigoAlphabetIndexView;->access$000(Lamigo/widget/AmigoAlphabetIndexView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 582
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    .line 584
    iput-object p3, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mLetter:Ljava/lang/String;

    .line 585
    iput p4, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->index:I

    .line 586
    return-void
.end method


# virtual methods
.method public getDrawRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->index:I

    return v0
.end method

.method public getNavigationCircleLeft()I
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getNavigationTextLeft()I
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getOrigRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTextTop()I
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mIsEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 611
    iput-boolean p1, p0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mIsEnable:Z

    .line 612
    return-void
.end method
