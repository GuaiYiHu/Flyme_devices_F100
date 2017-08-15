.class Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;
.super Ljava/lang/Object;
.source "AmigoEditText.java"

# interfaces
.implements Lamigo/widget/AmigoEditText$GnCursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnSelectionModifierCursorController"
.end annotation


# instance fields
.field private mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

.field private mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

.field final synthetic this$0:Lamigo/widget/AmigoEditText;


# direct methods
.method constructor <init>(Lamigo/widget/AmigoEditText;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleStart:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lamigo/widget/AmigoEditText;->access$000(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v1, v1, Lamigo/widget/AmigoEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lamigo/widget/AmigoEditText;->mSelectHandleStart:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lamigo/widget/AmigoEditText;->access$002(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 723
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleEnd:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lamigo/widget/AmigoEditText;->access$100(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 724
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v1, v1, Lamigo/widget/AmigoEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x902000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lamigo/widget/AmigoEditText;->mSelectHandleEnd:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lamigo/widget/AmigoEditText;->access$102(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 728
    :cond_1
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleStart:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lamigo/widget/AmigoEditText;->access$000(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 730
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleEnd:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lamigo/widget/AmigoEditText;->access$100(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 732
    :cond_2
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 736
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleStart:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lamigo/widget/AmigoEditText;->access$000(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleEnd:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lamigo/widget/AmigoEditText;->access$100(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;-><init>(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    .line 741
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    if-nez v0, :cond_1

    .line 742
    new-instance v0, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleEnd:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lamigo/widget/AmigoEditText;->access$100(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectHandleStart:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lamigo/widget/AmigoEditText;->access$000(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;-><init>(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    .line 746
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->show()V

    .line 747
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->show()V

    .line 748
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->hide()V

    .line 755
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->hide()V

    .line 758
    :cond_1
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 768
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 769
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 771
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mStartHandle:Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;->onDetached()V

    .line 775
    :cond_0
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->mEndHandle:Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;

    invoke-virtual {v1}, Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;->onDetached()V

    .line 778
    :cond_1
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 761
    if-nez p1, :cond_0

    .line 762
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->hide()V

    .line 764
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->initDrawables()V

    .line 714
    invoke-direct {p0}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->initHandles()V

    .line 715
    return-void
.end method
