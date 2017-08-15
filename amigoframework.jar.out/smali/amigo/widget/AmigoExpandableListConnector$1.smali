.class Lamigo/widget/AmigoExpandableListConnector$1;
.super Ljava/lang/Object;
.source "AmigoExpandableListConnector.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
.method constructor <init>(Lamigo/widget/AmigoExpandableListConnector;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 1225
    iput-object p1, p0, Lamigo/widget/AmigoExpandableListConnector$1;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    iput-object p2, p0, Lamigo/widget/AmigoExpandableListConnector$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lamigo/widget/AmigoExpandableListConnector$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1246
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1237
    const-string v0, "AmigoExpandListConnector"

    const-string v1, "createExpandAnimaForView onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1240
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector$1;->this$0:Lamigo/widget/AmigoExpandableListConnector;

    # getter for: Lamigo/widget/AmigoExpandableListConnector;->mItemHeight:I
    invoke-static {v1}, Lamigo/widget/AmigoExpandableListConnector;->access$100(Lamigo/widget/AmigoExpandableListConnector;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1241
    iget-object v0, p0, Lamigo/widget/AmigoExpandableListConnector$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lamigo/widget/AmigoExpandableListConnector$1;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1242
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1233
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1229
    return-void
.end method
