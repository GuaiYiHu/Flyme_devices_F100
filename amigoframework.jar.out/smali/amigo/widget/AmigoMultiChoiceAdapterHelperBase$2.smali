.class Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;
.super Ljava/lang/Object;
.source "AmigoMultiChoiceAdapterHelperBase.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;->displayMultichoiceView(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;->this$0:Lamigo/widget/AmigoMultiChoiceAdapterHelperBase;

    iput p2, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;->val$visible:I

    iput-object p3, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 373
    iget v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;->val$visible:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;->val$view:Landroid/view/View;

    iget v1, p0, Lamigo/widget/AmigoMultiChoiceAdapterHelperBase$2;->val$visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 369
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 364
    return-void
.end method
