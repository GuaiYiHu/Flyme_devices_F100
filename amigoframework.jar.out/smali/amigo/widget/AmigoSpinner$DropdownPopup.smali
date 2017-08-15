.class Lamigo/widget/AmigoSpinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "AmigoSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lamigo/widget/AmigoSpinner;


# direct methods
.method public constructor <init>(Lamigo/widget/AmigoSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 447
    iput-object p1, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    .line 448
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 442
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    .line 450
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setModal(Z)V

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 453
    new-instance v0, Lamigo/widget/AmigoSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lamigo/widget/AmigoSpinner$DropdownPopup$1;-><init>(Lamigo/widget/AmigoSpinner$DropdownPopup;Lamigo/widget/AmigoSpinner;)V

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 462
    return-void
.end method

.method static synthetic access$100(Lamigo/widget/AmigoSpinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoSpinner$DropdownPopup;

    .prologue
    .line 439
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private changeDropDownListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 467
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    .end local p1    # "selector":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 471
    :cond_0
    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 10

    .prologue
    .line 489
    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 490
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 491
    .local v3, "hOffset":I
    if-eqz v0, :cond_2

    .line 492
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 493
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v7}, Lamigo/widget/AmigoSpinner;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 498
    :goto_0
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v7}, Lamigo/widget/AmigoSpinner;->getPaddingLeft()I

    move-result v4

    .line 499
    .local v4, "spinnerPaddingLeft":I
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v7}, Lamigo/widget/AmigoSpinner;->getPaddingRight()I

    move-result v5

    .line 500
    .local v5, "spinnerPaddingRight":I
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v7}, Lamigo/widget/AmigoSpinner;->getWidth()I

    move-result v6

    .line 502
    .local v6, "spinnerWidth":I
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    # getter for: Lamigo/widget/AmigoSpinner;->mDropDownWidth:I
    invoke-static {v7}, Lamigo/widget/AmigoSpinner;->access$200(Lamigo/widget/AmigoSpinner;)I

    move-result v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 503
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v7, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lamigo/widget/AmigoSpinner$DropdownPopup;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 505
    .local v1, "contentWidth":I
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    # getter for: Lamigo/widget/AmigoSpinner;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lamigo/widget/AmigoSpinner;->access$300(Lamigo/widget/AmigoSpinner;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, v7, v8

    .line 507
    .local v2, "contentWidthLimit":I
    if-le v1, v2, :cond_0

    .line 508
    move v1, v2

    .line 510
    :cond_0
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setContentWidth(I)V

    .line 518
    .end local v1    # "contentWidth":I
    .end local v2    # "contentWidthLimit":I
    :goto_1
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v7}, Lamigo/widget/AmigoSpinner;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 519
    sub-int v7, v6, v5

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 523
    :goto_2
    invoke-virtual {p0, v3}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 524
    return-void

    .line 493
    .end local v4    # "spinnerPaddingLeft":I
    .end local v5    # "spinnerPaddingRight":I
    .end local v6    # "spinnerWidth":I
    :cond_1
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    neg-int v3, v7

    goto :goto_0

    .line 495
    :cond_2
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 512
    .restart local v4    # "spinnerPaddingLeft":I
    .restart local v5    # "spinnerPaddingRight":I
    .restart local v6    # "spinnerWidth":I
    :cond_3
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    # getter for: Lamigo/widget/AmigoSpinner;->mDropDownWidth:I
    invoke-static {v7}, Lamigo/widget/AmigoSpinner;->access$200(Lamigo/widget/AmigoSpinner;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 513
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 515
    :cond_4
    iget-object v7, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    # getter for: Lamigo/widget/AmigoSpinner;->mDropDownWidth:I
    invoke-static {v7}, Lamigo/widget/AmigoSpinner;->access$200(Lamigo/widget/AmigoSpinner;)I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 521
    :cond_5
    add-int/2addr v3, v4

    goto :goto_2
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 578
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 581
    if-nez p1, :cond_1

    .line 582
    const/4 v8, 0x0

    .line 621
    :cond_0
    :goto_0
    return v8

    .line 585
    :cond_1
    const/4 v8, 0x0

    .line 586
    .local v8, "width":I
    const/4 v5, 0x0

    .line 587
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 588
    .local v4, "itemType":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 590
    .local v9, "widthMeasureSpec":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 595
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 596
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 597
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 598
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 599
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 600
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 601
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 602
    move v4, v6

    .line 603
    const/4 v5, 0x0

    .line 605
    :cond_2
    iget-object v10, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-interface {p1, v3, v5, v10}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 606
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 607
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 612
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 599
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 616
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 617
    iget-object v10, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 618
    iget-object v10, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 475
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 476
    iput-object p1, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 477
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 485
    iput-object p1, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 486
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 527
    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->isShowing()Z

    move-result v3

    .line 528
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->computeContentWidth()V

    .line 529
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 530
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 531
    invoke-virtual {p0}, Lamigo/widget/AmigoSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 532
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 533
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 534
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 535
    iget-object v4, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v4}, Lamigo/widget/AmigoSpinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setSelection(I)V

    .line 536
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lamigo/widget/AmigoSpinner$DropdownPopup;->changeDropDownListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 537
    if-eqz v3, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v4, p0, Lamigo/widget/AmigoSpinner$DropdownPopup;->this$0:Lamigo/widget/AmigoSpinner;

    invoke-virtual {v4}, Lamigo/widget/AmigoSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 547
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 548
    new-instance v0, Lamigo/widget/AmigoSpinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoSpinner$DropdownPopup$2;-><init>(Lamigo/widget/AmigoSpinner$DropdownPopup;)V

    .line 562
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 563
    new-instance v4, Lamigo/widget/AmigoSpinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Lamigo/widget/AmigoSpinner$DropdownPopup$3;-><init>(Lamigo/widget/AmigoSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Lamigo/widget/AmigoSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
