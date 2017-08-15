.class Lamigo/widget/AmigoEditText$GnPositionListener;
.super Ljava/lang/Object;
.source "AmigoEditText.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamigo/widget/AmigoEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnPositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field final synthetic this$0:Lamigo/widget/AmigoEditText;


# direct methods
.method private constructor <init>(Lamigo/widget/AmigoEditText;)V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1380
    iput-object p1, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1383
    iput v1, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 1384
    new-array v0, v1, [Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    iput-object v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionListeners:[Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    .line 1385
    new-array v0, v1, [Z

    iput-object v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mCanMove:[Z

    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionHasChanged:Z

    return-void
.end method

.method synthetic constructor <init>(Lamigo/widget/AmigoEditText;Lamigo/widget/AmigoEditText$1;)V
    .locals 0
    .param p1, "x0"    # Lamigo/widget/AmigoEditText;
    .param p2, "x1"    # Lamigo/widget/AmigoEditText$1;

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText$GnPositionListener;-><init>(Lamigo/widget/AmigoEditText;)V

    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1479
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v3, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v3, v3, Lamigo/widget/AmigoEditText;->mGnTempCoords:[I

    invoke-virtual {v0, v3}, Lamigo/widget/AmigoEditText;->getLocationInWindow([I)V

    .line 1480
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mGnTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionX:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mGnTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionY:I

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionHasChanged:Z

    .line 1482
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mGnTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionX:I

    .line 1483
    iget-object v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mGnTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionY:I

    .line 1484
    return-void

    :cond_1
    move v0, v1

    .line 1480
    goto :goto_0
.end method


# virtual methods
.method public addSubscriber(Lamigo/widget/AmigoEditText$GnEditTextPositionListener;Z)V
    .locals 5
    .param p1, "positionListener"    # Lamigo/widget/AmigoEditText$GnEditTextPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    .line 1399
    iget v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_0

    .line 1400
    invoke-direct {p0}, Lamigo/widget/AmigoEditText$GnPositionListener;->updatePosition()V

    .line 1402
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v4}, Lamigo/widget/AmigoEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 1403
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1406
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 1408
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x6

    if-ge v1, v4, :cond_3

    .line 1409
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionListeners:[Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    aget-object v2, v4, v1

    .line 1411
    .local v2, "listener":Lamigo/widget/AmigoEditText$GnEditTextPositionListener;
    if-ne v2, p1, :cond_1

    .line 1421
    .end local v2    # "listener":Lamigo/widget/AmigoEditText$GnEditTextPositionListener;
    :goto_1
    return-void

    .line 1413
    .restart local v2    # "listener":Lamigo/widget/AmigoEditText$GnEditTextPositionListener;
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 1414
    move v0, v1

    .line 1408
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1418
    .end local v2    # "listener":Lamigo/widget/AmigoEditText$GnEditTextPositionListener;
    :cond_3
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionListeners:[Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    aput-object p1, v4, v0

    .line 1419
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 1420
    iget v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mNumberOfListeners:I

    goto :goto_1
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 1441
    iget v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionY:I

    return v0
.end method

.method public onDraw()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1450
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v4}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1452
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1453
    .local v3, "textLength":I
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget v4, v4, Lamigo/widget/AmigoEditText;->mStart:I

    if-ltz v4, :cond_0

    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget v4, v4, Lamigo/widget/AmigoEditText;->mStart:I

    if-le v4, v3, :cond_1

    .line 1454
    :cond_0
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iput v8, v4, Lamigo/widget/AmigoEditText;->mStart:I

    .line 1456
    :cond_1
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget v4, v4, Lamigo/widget/AmigoEditText;->mEnd:I

    if-le v4, v3, :cond_2

    .line 1457
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iput v3, v4, Lamigo/widget/AmigoEditText;->mEnd:I

    .line 1458
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    # getter for: Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;
    invoke-static {v4}, Lamigo/widget/AmigoEditText;->access$800(Lamigo/widget/AmigoEditText;)Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->hide()V

    .line 1461
    :cond_2
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget v4, v4, Lamigo/widget/AmigoEditText;->mStart:I

    iget-object v5, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    iget v5, v5, Lamigo/widget/AmigoEditText;->mEnd:I

    invoke-static {v2, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1462
    invoke-direct {p0}, Lamigo/widget/AmigoEditText$GnPositionListener;->updatePosition()V

    .line 1463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x6

    if-ge v0, v4, :cond_5

    .line 1464
    iget-boolean v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionHasChanged:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mScrollHasChanged:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mCanMove:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    .line 1465
    :cond_3
    iget-object v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionListeners:[Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    aget-object v1, v4, v0

    .line 1467
    .local v1, "positionListener":Lamigo/widget/AmigoEditText$GnEditTextPositionListener;
    if-eqz v1, :cond_4

    .line 1468
    iget v4, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionX:I

    iget v5, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionY:I

    iget-boolean v6, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionHasChanged:Z

    iget-boolean v7, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v4, v5, v6, v7}, Lamigo/widget/AmigoEditText$GnEditTextPositionListener;->updatePosition(IIZZ)V

    .line 1463
    .end local v1    # "positionListener":Lamigo/widget/AmigoEditText$GnEditTextPositionListener;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :cond_5
    iput-boolean v8, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mScrollHasChanged:Z

    .line 1476
    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 1487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mScrollHasChanged:Z

    .line 1488
    return-void
.end method

.method public removeSubscriber(Lamigo/widget/AmigoEditText$GnEditTextPositionListener;)V
    .locals 4
    .param p1, "positionListener"    # Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    .prologue
    .line 1425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 1426
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionListeners:[Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 1427
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mPositionListeners:[Lamigo/widget/AmigoEditText$GnEditTextPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1428
    iget v2, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mNumberOfListeners:I

    .line 1434
    :cond_0
    iget v2, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_1

    .line 1435
    iget-object v2, p0, Lamigo/widget/AmigoEditText$GnPositionListener;->this$0:Lamigo/widget/AmigoEditText;

    invoke-virtual {v2}, Lamigo/widget/AmigoEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1436
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 1438
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 1425
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
