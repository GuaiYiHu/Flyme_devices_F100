.class Lamigo/widget/AmigoExpandableListConnector$2;
.super Ljava/lang/Object;
.source "AmigoExpandableListConnector.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoExpandableListConnector;->createExpandAnimaForView(Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoExpandableListConnector;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoExpandableListConnector;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1249
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListConnector$2;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    iput-object p2, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1253
    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1254
    const-string v0, "AmigoExpandListConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createExpandAnimaForView onAnimationUpdate lp.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector$2;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    # getter for: Lamigo/widget/AmigoExpandableListConnector;->mChildItemHeight:I
    invoke-static {v1}, Lamigo/widget/AmigoExpandableListConnector;->access$200(Lamigo/widget/AmigoExpandableListConnector;)I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    if-ge v0, v1, :cond_0

    .line 1258
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1262
    :goto_0
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1263
    return-void

    .line 1260
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$2;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
