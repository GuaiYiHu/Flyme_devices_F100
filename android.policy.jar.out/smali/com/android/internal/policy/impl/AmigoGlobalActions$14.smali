.class Lcom/android/internal/policy/impl/AmigoGlobalActions$14;
.super Ljava/lang/Object;
.source "AmigoGlobalActions.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AmigoGlobalActions;->changeText(Landroid/widget/TextView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

.field final synthetic val$appear:Z

.field final synthetic val$textId:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AmigoGlobalActions;ILandroid/widget/TextView;Z)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iput p2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$textId:I

    iput-object p3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$textView:Landroid/widget/TextView;

    iput-boolean p4, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$appear:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 609
    iget v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$textId:I

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$textView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$textId:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 611
    iget-object v2, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/AmigoGlobalActions;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$textView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/AmigoGlobalActions$14;->val$appear:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/internal/policy/impl/AmigoGlobalActions;->changeText(Landroid/widget/TextView;IZ)V
    invoke-static {v2, v3, v1, v0}, Lcom/android/internal/policy/impl/AmigoGlobalActions;->access$1900(Lcom/android/internal/policy/impl/AmigoGlobalActions;Landroid/widget/TextView;IZ)V

    .line 613
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 611
    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 605
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 600
    return-void
.end method
