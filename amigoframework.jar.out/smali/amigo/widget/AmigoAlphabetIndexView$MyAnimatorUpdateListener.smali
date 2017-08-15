.class Lamigo/widget/AmigoAlphabetIndexView$MyAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "AmigoAlphabetIndexView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoAlphabetIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAnimatorUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoAlphabetIndexView;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoAlphabetIndexView;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView$MyAnimatorUpdateListener;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1196
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView$MyAnimatorUpdateListener;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    # setter for: Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    invoke-static {v1, v0}, Lamigo/widget/AmigoAlphabetIndexView;->access$802(Lamigo/widget/AmigoAlphabetIndexView;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    .line 1197
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView$MyAnimatorUpdateListener;->this$0:Lamigo/widget/AmigoAlphabetIndexView;

    invoke-virtual {v0}, Lamigo/widget/AmigoAlphabetIndexView;->invalidate()V

    .line 1198
    return-void
.end method
