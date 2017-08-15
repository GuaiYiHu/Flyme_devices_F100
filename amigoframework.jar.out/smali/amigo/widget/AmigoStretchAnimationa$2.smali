.class Lamigo/widget/AmigoStretchAnimationa$2;
.super Ljava/lang/Object;
.source "AmigoStretchAnimationa.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoStretchAnimationa;->createAnimator(Lamigo/widget/AmigoStretchAnimationa$ChildView;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoStretchAnimationa;

.field final synthetic val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoStretchAnimationa;Lamigo/widget/AmigoStretchAnimationa$ChildView;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lamigo/widget/AmigoStretchAnimationa$2;->this$0:Lamigo/widget/AmigoStretchAnimationa;

    iput-object p2, p0, Lamigo/widget/AmigoStretchAnimationa$2;->val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 252
    iget-object v1, p0, Lamigo/widget/AmigoStretchAnimationa$2;->val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lamigo/widget/AmigoStretchAnimationa$ChildView;->mCurHeight:I

    .line 253
    iget-object v0, p0, Lamigo/widget/AmigoStretchAnimationa$2;->val$view:Lamigo/widget/AmigoStretchAnimationa$ChildView;

    invoke-virtual {v0}, Lamigo/widget/AmigoStretchAnimationa$ChildView;->changeChildLayout()V

    .line 254
    return-void
.end method
