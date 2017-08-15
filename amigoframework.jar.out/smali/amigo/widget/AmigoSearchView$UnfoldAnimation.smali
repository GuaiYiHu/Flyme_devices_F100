.class Lamigo/widget/AmigoSearchView$UnfoldAnimation;
.super Landroid/view/animation/Animation;
.source "AmigoSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnfoldAnimation"
.end annotation


# instance fields
.field private mDeltaWidth:I

.field private mStartWidth:I

.field final synthetic this$0:Lamigo/widget/AmigoSearchView;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoSearchView;II)V
    .locals 1
    .param p2, "startWidth"    # I
    .param p3, "endWidth"    # I

    .prologue
    .line 2006
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->this$0:Lamigo/widget/AmigoSearchView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2007
    iput p2, p0, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->mStartWidth:I

    .line 2008
    sub-int v0, p3, p2

    iput v0, p0, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->mDeltaWidth:I

    .line 2009
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 2013
    iget-object v1, p0, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lamigo/widget/AmigoSearchView;->access$1900(Lamigo/widget/AmigoSearchView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2015
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 2016
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2023
    :goto_0
    iget-object v1, p0, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->this$0:Lamigo/widget/AmigoSearchView;

    # getter for: Lamigo/widget/AmigoSearchView;->mGnSearchBgLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lamigo/widget/AmigoSearchView;->access$1900(Lamigo/widget/AmigoSearchView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2024
    return-void

    .line 2019
    :cond_0
    iget v1, p0, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->mStartWidth:I

    int-to-float v1, v1

    iget v2, p0, Lamigo/widget/AmigoSearchView$UnfoldAnimation;->mDeltaWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 2028
    const/4 v0, 0x1

    return v0
.end method
