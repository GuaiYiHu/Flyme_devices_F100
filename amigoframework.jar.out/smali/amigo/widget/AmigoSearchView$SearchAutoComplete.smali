.class public Lamigo/widget/AmigoSearchView$SearchAutoComplete;
.super Lamigo/widget/AmigoAutoCompleteTextView;
.source "AmigoSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Lamigo/widget/AmigoSearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1753
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1758
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1759
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 1762
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AmigoAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1763
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->mThreshold:I

    .line 1766
    # getter for: Lamigo/widget/AmigoSearchView;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {}, Lamigo/widget/AmigoSearchView;->access$1700()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1767
    # getter for: Lamigo/widget/AmigoSearchView;->mTextColor:Landroid/content/res/ColorStateList;
    invoke-static {}, Lamigo/widget/AmigoSearchView;->access$1700()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1769
    :cond_0
    # getter for: Lamigo/widget/AmigoSearchView;->mHintColor:Landroid/content/res/ColorStateList;
    invoke-static {}, Lamigo/widget/AmigoSearchView;->access$1800()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1770
    # getter for: Lamigo/widget/AmigoSearchView;->mHintColor:Landroid/content/res/ColorStateList;
    invoke-static {}, Lamigo/widget/AmigoSearchView;->access$1800()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1774
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->changeColors()V

    .line 1775
    return-void
.end method

.method static synthetic access$1000(Lamigo/widget/AmigoSearchView$SearchAutoComplete;)Z
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSearchView$SearchAutoComplete;

    .prologue
    .line 1744
    invoke-direct {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private changeColors()V
    .locals 1

    .prologue
    .line 1778
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setTextColor(I)V

    .line 1780
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnAppbar_T3()I

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setHintTextColor(I)V

    .line 1781
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->setBackgroundColor(I)V

    .line 1783
    :cond_0
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 1852
    iget v0, p0, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Lamigo/widget/AmigoAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1842
    invoke-super {p0, p1, p2, p3}, Lamigo/widget/AmigoAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1843
    iget-object v0, p0, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->mSearchView:Lamigo/widget/AmigoSearchView;

    invoke-virtual {v0}, Lamigo/widget/AmigoSearchView;->onTextFocusChanged()V

    .line 1844
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1857
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 1860
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1861
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1862
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1863
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1880
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 1866
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1867
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1868
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 1869
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1880
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-super {p0, p1, p2}, Lamigo/widget/AmigoAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1826
    invoke-super {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1828
    if-eqz p1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->mSearchView:Lamigo/widget/AmigoSearchView;

    invoke-virtual {v1}, Lamigo/widget/AmigoSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1829
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1831
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1834
    invoke-virtual {p0}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamigo/widget/AmigoSearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1835
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 1838
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 0

    .prologue
    .line 1818
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1808
    return-void
.end method

.method setSearchView(Lamigo/widget/AmigoSearchView;)V
    .locals 0
    .param p1, "searchView"    # Lamigo/widget/AmigoSearchView;

    .prologue
    .line 1786
    iput-object p1, p0, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->mSearchView:Lamigo/widget/AmigoSearchView;

    .line 1787
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 1791
    invoke-super {p0, p1}, Lamigo/widget/AmigoAutoCompleteTextView;->setThreshold(I)V

    .line 1792
    iput p1, p0, Lamigo/widget/AmigoSearchView$SearchAutoComplete;->mThreshold:I

    .line 1793
    return-void
.end method
