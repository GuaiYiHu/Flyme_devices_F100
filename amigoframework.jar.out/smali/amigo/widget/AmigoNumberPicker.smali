.class public Lamigo/widget/AmigoNumberPicker;
.super Landroid/widget/LinearLayout;
.source "AmigoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoNumberPicker$CustomEditText;,
        Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;,
        Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;,
        Lamigo/widget/AmigoNumberPicker$InputTextFilter;,
        Lamigo/widget/AmigoNumberPicker$Formatter;,
        Lamigo/widget/AmigoNumberPicker$OnScrollListener;,
        Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0xa0

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lamigo/widget/AmigoNumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private bottomOfTopDivider:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mAlign:Landroid/graphics/Paint$Align;

.field private mChangeCurrentByOneFromLongPressCommand:Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCheckBeginEditOnUpEvent:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDelta:I

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lamigo/widget/AmigoNumberPicker$Formatter;

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lamigo/widget/AmigoNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionBottomDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private mSelectionSrc:Landroid/graphics/drawable/Drawable;

.field private final mSelectionTopDivider:Landroid/graphics/drawable/Drawable;

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private mSuffixBaseLien:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTextSize:I

.field private mTextWidth:F

.field private mTouchSlop:I

.field private mUnit:Ljava/lang/String;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z

.field private topOfBottomDivider:I

.field private xPosition:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lamigo/widget/AmigoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 150
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lamigo/widget/AmigoNumberPicker;->DIGIT_CHARACTERS:[C

    .line 166
    new-instance v0, Lamigo/widget/AmigoNumberPicker$1;

    invoke-direct {v0}, Lamigo/widget/AmigoNumberPicker$1;-><init>()V

    sput-object v0, Lamigo/widget/AmigoNumberPicker;->TWO_DIGIT_FORMATTER:Lamigo/widget/AmigoNumberPicker$Formatter;

    return-void

    .line 150
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 518
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 529
    const v0, 0x9010001

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 530
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 543
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 269
    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lamigo/widget/AmigoNumberPicker;->mLongPressUpdateInterval:J

    .line 274
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 279
    const/4 v15, 0x5

    new-array v15, v15, [I

    fill-array-data v15, :array_0

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    .line 295
    const/high16 v15, -0x80000000

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    .line 418
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 423
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mScrollState:I

    .line 441
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mSelectionSrc:Landroid/graphics/drawable/Drawable;

    .line 1464
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mTextWidth:F

    .line 1489
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->bottomOfTopDivider:I

    .line 1490
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    .line 1566
    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    .line 1567
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    .line 1744
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    .line 1857
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mSuffixBaseLien:I

    .line 546
    sget-object v15, Lcom/amigo/internal/R$styleable;->AmigoNumberPicker:[I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 548
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mSolidColor:I

    .line 549
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lamigo/widget/AmigoNumberPicker;->mFlingable:Z

    .line 551
    const/16 v15, 0xc

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mSelectionTopDivider:Landroid/graphics/drawable/Drawable;

    .line 553
    const/16 v15, 0xd

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mSelectionBottomDivider:Landroid/graphics/drawable/Drawable;

    .line 556
    const/4 v15, 0x1

    const/high16 v16, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v15

    float-to-int v7, v15

    .line 558
    .local v7, "defSelectionDividerHeight":I
    const/4 v15, 0x2

    invoke-virtual {v4, v15, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mSelectionDividerHeight:I

    .line 560
    const/4 v15, 0x4

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mMinHeight:I

    .line 562
    const/4 v15, 0x5

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mMaxHeight:I

    .line 564
    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mMinHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mMaxHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoNumberPicker;->mMaxHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 565
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "minHeight > maxHeight"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 567
    :cond_0
    const/4 v15, 0x6

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mMinWidth:I

    .line 569
    const/4 v15, 0x7

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    .line 571
    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mMinWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 572
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "minWidth > maxWidth"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 574
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lamigo/widget/AmigoNumberPicker;->mComputeMaxWidth:Z

    .line 576
    const/16 v15, 0xa

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mSelectionSrc:Landroid/graphics/drawable/Drawable;

    .line 577
    const/16 v15, 0x8

    const v16, 0x9030004

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 581
    .local v9, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 583
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x10e0002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 591
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lamigo/widget/AmigoNumberPicker;->setWillNotDraw(Z)V

    .line 592
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V

    .line 594
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 597
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v9, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 600
    new-instance v10, Lamigo/widget/AmigoNumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lamigo/widget/AmigoNumberPicker$2;-><init>(Lamigo/widget/AmigoNumberPicker;)V

    .line 616
    .local v10, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v11, Lamigo/widget/AmigoNumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lamigo/widget/AmigoNumberPicker$3;-><init>(Lamigo/widget/AmigoNumberPicker;)V

    .line 629
    .local v11, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    const v15, 0x90b0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 630
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 634
    const v15, 0x90b0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 635
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 639
    const v15, 0x90b000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lamigo/widget/AmigoNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    .line 640
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v16, Lamigo/widget/AmigoNumberPicker$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lamigo/widget/AmigoNumberPicker$4;-><init>(Lamigo/widget/AmigoNumberPicker;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lamigo/widget/AmigoNumberPicker$InputTextFilter;

    invoke-direct/range {v18 .. v19}, Lamigo/widget/AmigoNumberPicker$InputTextFilter;-><init>(Lamigo/widget/AmigoNumberPicker;)V

    aput-object v18, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v16, 0x6

    invoke-virtual/range {v15 .. v16}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lamigo/widget/AmigoNumberPicker;->getTextColorAccent(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 660
    .local v5, "colorAccent":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15, v5}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 664
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mTouchSlop:I

    .line 665
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 666
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mTouchSlop:I

    .line 667
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mMinimumFlingVelocity:I

    .line 668
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v15

    div-int/lit8 v15, v15, 0x8

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mMaximumFlingVelocity:I

    .line 670
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTextSize()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    .line 673
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 674
    .local v12, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 675
    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 676
    move-object/from16 v0, p0

    iget v15, v0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 681
    const v15, -0x777778

    invoke-virtual {v12, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    move-object/from16 v0, p0

    iput-object v12, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 686
    const-string v15, "selectorPaintAlpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 688
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    const-string v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 690
    .local v14, "showIncrementButton":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    const-string v16, "alpha"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    fill-array-data v17, :array_3

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 692
    .local v13, "showDecrementButton":Landroid/animation/ObjectAnimator;
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    const/16 v17, 0x2

    aput-object v13, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    new-instance v16, Lamigo/widget/AmigoNumberPicker$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v13}, Lamigo/widget/AmigoNumberPicker$5;-><init>(Lamigo/widget/AmigoNumberPicker;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 719
    new-instance v15, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v15 .. v18}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 720
    new-instance v15, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v16

    new-instance v17, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v18, 0x40200000    # 2.5f

    invoke-direct/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v15 .. v17}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lamigo/widget/AmigoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 722
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 723
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 725
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lamigo/widget/AmigoNumberPicker;->mFlingable:Z

    if-eqz v15, :cond_2

    .line 726
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->isInEditMode()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 727
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V

    .line 736
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->changeColor()V

    .line 737
    return-void

    .line 574
    .end local v5    # "colorAccent":Landroid/content/res/ColorStateList;
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "layoutResourceId":I
    .end local v10    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v11    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v13    # "showDecrementButton":Landroid/animation/ObjectAnimator;
    .end local v14    # "showIncrementButton":Landroid/animation/ObjectAnimator;
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 732
    .restart local v5    # "colorAccent":Landroid/content/res/ColorStateList;
    .restart local v6    # "configuration":Landroid/view/ViewConfiguration;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v9    # "layoutResourceId":I
    .restart local v10    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v11    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .restart local v12    # "paint":Landroid/graphics/Paint;
    .restart local v13    # "showDecrementButton":Landroid/animation/ObjectAnimator;
    .restart local v14    # "showIncrementButton":Landroid/animation/ObjectAnimator;
    :cond_4
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V

    .line 733
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->hideInputControls()V

    goto :goto_1

    .line 279
    nop

    :array_0
    .array-data 4
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
        -0x80000000
    .end array-data

    .line 686
    :array_1
    .array-data 4
        0xff
        0xa0
    .end array-data

    .line 688
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 690
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lamigo/widget/AmigoNumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Lamigo/widget/AmigoNumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lamigo/widget/AmigoNumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lamigo/widget/AmigoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1300(Lamigo/widget/AmigoNumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lamigo/widget/AmigoNumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1502(Lamigo/widget/AmigoNumberPicker;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1600(Lamigo/widget/AmigoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1700(Lamigo/widget/AmigoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1800(Lamigo/widget/AmigoNumberPicker;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1900(Lamigo/widget/AmigoNumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget-wide v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lamigo/widget/AmigoNumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Lamigo/widget/AmigoNumberPicker;J)V
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoNumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$2100(Lamigo/widget/AmigoNumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$2200(Lamigo/widget/AmigoNumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2300(Lamigo/widget/AmigoNumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget-wide v0, p0, Lamigo/widget/AmigoNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoNumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lamigo/widget/AmigoNumberPicker;I)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$500(Lamigo/widget/AmigoNumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoNumberPicker;

    .prologue
    .line 58
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$900()[C
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lamigo/widget/AmigoNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method private changeColor()V
    .locals 3

    .prologue
    .line 777
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 780
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionBottomDivider:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 784
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 785
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 787
    :cond_0
    return-void
.end method

.method private changeCurrent(I)V
    .locals 2
    .param p1, "current"    # I

    .prologue
    .line 1761
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1771
    :goto_0
    return-void

    .line 1765
    :cond_0
    iget-boolean v1, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1766
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1768
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    .line 1769
    .local v0, "previous":I
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoNumberPicker;->setValue(I)V

    .line 1770
    invoke-direct {p0, v0, p1}, Lamigo/widget/AmigoNumberPicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1780
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1781
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1782
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1783
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1784
    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I

    .line 1785
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1786
    if-eqz p1, :cond_0

    .line 1787
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1793
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    .line 1801
    :goto_1
    return-void

    .line 1790
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1795
    :cond_1
    if-eqz p1, :cond_2

    .line 1796
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lamigo/widget/AmigoNumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1798
    :cond_2
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lamigo/widget/AmigoNumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private computeTextWidth(I)V
    .locals 7
    .param p1, "digit"    # I

    .prologue
    .line 1475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1476
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1477
    const-string v5, "8"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1479
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1481
    .local v2, "s":Ljava/lang/String;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1482
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1483
    .local v4, "tempPaint":Landroid/graphics/Paint;
    iget v5, p0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1484
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v2, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1486
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lamigo/widget/AmigoNumberPicker;->mTextWidth:F

    .line 1487
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2032
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2033
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2032
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2035
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 2036
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 2037
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    .line 2039
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 2040
    invoke-direct {p0, v1}, Lamigo/widget/AmigoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 2041
    return-void
.end method

.method private drawAboveWheel(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1581
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1583
    .local v5, "saveCount":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoNumberPicker;->bottomOfTopDivider:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1584
    move-object/from16 v0, p0

    iget-object v8, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    .line 1585
    .local v8, "selectorIndices":[I
    const-wide/high16 v14, 0x3fec000000000000L    # 0.875

    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    int-to-float v13, v13

    const/high16 v16, 0x3e800000    # 0.25f

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x3fc00000    # 1.5f

    div-float v12, v13, v14

    .line 1587
    .local v12, "y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getBaseline()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTop()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v2, v13

    .line 1588
    .local v2, "desPosition":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1589
    .local v6, "scale":F
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1590
    .local v10, "textSize":F
    move-object/from16 v0, p0

    iget v11, v0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    .line 1591
    .local v11, "x":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v13, v14, :cond_6

    .line 1592
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    const/high16 v14, 0x40800000    # 4.0f

    add-float v11, v13, v14

    .line 1596
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v13, v8

    if-ge v3, v13, :cond_7

    .line 1597
    aget v7, v8, v3

    .line 1598
    .local v7, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1599
    .local v9, "text":Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v3, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_4

    .line 1600
    :cond_1
    cmpg-float v13, v12, v2

    if-gtz v13, :cond_2

    .line 1601
    div-float v6, v12, v2

    .line 1603
    :cond_2
    const v13, 0x3ecccccd    # 0.4f

    cmpg-float v13, v6, v13

    if-gez v13, :cond_3

    .line 1604
    const v6, 0x3ecccccd    # 0.4f

    .line 1607
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    int-to-float v13, v13

    mul-float v10, v6, v13

    .line 1608
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1614
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3eb33333    # 0.35f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 1615
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->bottomOfTopDivider:I

    int-to-float v13, v13

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_5

    .line 1616
    const v13, 0x3e99999a    # 0.3f

    mul-float v4, v10, v13

    .line 1617
    .local v4, "offY":F
    add-float/2addr v12, v4

    .line 1596
    .end local v4    # "offY":F
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1593
    .end local v3    # "i":I
    .end local v7    # "selectorIndex":I
    .end local v9    # "text":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    sget-object v14, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v13, v14, :cond_0

    .line 1594
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    const/high16 v14, 0x41000000    # 8.0f

    sub-float v11, v13, v14

    goto :goto_0

    .line 1621
    .restart local v3    # "i":I
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1622
    return-void
.end method

.method private drawBelowWheel(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1625
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1627
    .local v4, "saveCount":I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1628
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    int-to-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3eb33333    # 0.35f

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v14, v15

    sub-float v10, v13, v14

    .line 1629
    .local v10, "transY":F
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v7, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    .line 1631
    .local v7, "selectorIndices":[I
    const-wide/high16 v14, 0x3fec000000000000L    # 0.875

    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    int-to-float v13, v13

    const/high16 v16, 0x3e800000    # 0.25f

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v13, v13, v16

    float-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x3fc00000    # 1.5f

    div-float v12, v13, v14

    .line 1633
    .local v12, "y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getBaseline()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTop()I

    move-result v14

    add-int/2addr v13, v14

    int-to-float v2, v13

    .line 1634
    .local v2, "desPosition":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1635
    .local v5, "scale":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1636
    .local v9, "textSize":F
    move-object/from16 v0, p0

    iget v11, v0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    .line 1637
    .local v11, "x":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v13, v14, :cond_5

    .line 1638
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    const/high16 v14, 0x40800000    # 4.0f

    add-float v11, v13, v14

    .line 1642
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v13, v7

    if-ge v3, v13, :cond_6

    .line 1643
    aget v6, v7, v3

    .line 1644
    .local v6, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1645
    .local v8, "text":Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v3, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_4

    .line 1647
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    int-to-float v13, v13

    sub-float/2addr v13, v10

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_2

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v12

    div-float v5, v13, v2

    .line 1650
    :cond_2
    const v13, 0x3ecccccd    # 0.4f

    cmpg-float v13, v5, v13

    if-gtz v13, :cond_3

    .line 1651
    const v5, 0x3ecccccd    # 0.4f

    .line 1653
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    int-to-float v13, v13

    mul-float v9, v5, v13

    .line 1654
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1656
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1659
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3eb33333    # 0.35f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    .line 1642
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1639
    .end local v3    # "i":I
    .end local v6    # "selectorIndex":I
    .end local v8    # "text":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    sget-object v14, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v13, v14, :cond_0

    .line 1640
    move-object/from16 v0, p0

    iget v13, v0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    const/high16 v14, 0x41000000    # 8.0f

    sub-float v11, v13, v14

    goto :goto_0

    .line 1663
    .restart local v3    # "i":I
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1664
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 1493
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1495
    .local v1, "saveCount":I
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionTopDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionBottomDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1497
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lamigo/widget/AmigoNumberPicker;->bottomOfTopDivider:I

    .line 1498
    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->bottomOfTopDivider:I

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionDividerHeight:I

    sub-int v2, v3, v4

    .line 1499
    .local v2, "topOfTopDivider":I
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getRight()I

    move-result v4

    iget v5, p0, Lamigo/widget/AmigoNumberPicker;->bottomOfTopDivider:I

    invoke-virtual {v3, v8, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1500
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionTopDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1503
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    .line 1504
    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionDividerHeight:I

    add-int v0, v3, v4

    .line 1505
    .local v0, "bottomOfBottomDivider":I
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionBottomDivider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getRight()I

    move-result v5

    invoke-virtual {v3, v8, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1506
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionBottomDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1514
    .end local v0    # "bottomOfBottomDivider":I
    .end local v2    # "topOfTopDivider":I
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1515
    return-void

    .line 1508
    :cond_1
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionSrc:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 1509
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v3

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 1510
    .restart local v2    # "topOfTopDivider":I
    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    add-int v0, v2, v3

    .line 1511
    .restart local v0    # "bottomOfBottomDivider":I
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getWidth()I

    move-result v4

    invoke-virtual {v3, v8, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1512
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawMiddleWheel(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1518
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1520
    .local v2, "saveCount":I
    iget v7, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    int-to-float v6, v7

    .line 1521
    .local v6, "yOfSmallScroll":F
    const/4 v7, 0x0

    iget v8, p0, Lamigo/widget/AmigoNumberPicker;->bottomOfTopDivider:I

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getWidth()I

    move-result v9

    iget v10, p0, Lamigo/widget/AmigoNumberPicker;->topOfBottomDivider:I

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1522
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initMiddleWheelPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1524
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    .line 1525
    .local v5, "selectorIndices":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v5

    if-ge v0, v7, :cond_2

    .line 1526
    aget v4, v5, v0

    .line 1527
    .local v4, "selectorIndex":I
    iget-object v7, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1528
    .local v3, "scrollSelectorValue":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-object v7, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1529
    :cond_0
    iget v7, p0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    invoke-virtual {p1, v3, v7, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1531
    :cond_1
    float-to-double v8, v6

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v7

    int-to-double v10, v7

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v6, v8

    .line 1525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1542
    .end local v3    # "scrollSelectorValue":Ljava/lang/String;
    .end local v4    # "selectorIndex":I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1543
    return-void
.end method

.method private drawUnit(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1441
    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker;->mUnit:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1450
    :goto_0
    return-void

    .line 1445
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initUnitPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 1447
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1448
    .local v0, "density":F
    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker;->mUnit:Ljava/lang/String;

    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mTextWidth:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float v4, v5, v0

    add-float/2addr v3, v4

    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mSuffixBaseLien:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2048
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2049
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2050
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2064
    :goto_0
    return-void

    .line 2053
    :cond_0
    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 2054
    :cond_1
    const-string v2, ""

    .line 2063
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2056
    :cond_2
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2057
    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 2058
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 2059
    goto :goto_1

    .line 2060
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 3
    .param p1, "animationDuration"    # J

    .prologue
    .line 1965
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1966
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1967
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1968
    return-void
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1924
    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I

    .line 1926
    if-lez p1, :cond_0

    .line 1927
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1932
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    .line 1933
    return-void

    .line 1929
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1808
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1809
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1810
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1811
    .local v1, "yBeforeAbort":I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1812
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1813
    .local v2, "yDelta":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lamigo/widget/AmigoNumberPicker;->scrollBy(II)V

    .line 1815
    .end local v1    # "yBeforeAbort":I
    .end local v2    # "yDelta":I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2067
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFormatter:Lamigo/widget/AmigoNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFormatter:Lamigo/widget/AmigoNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lamigo/widget/AmigoNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDeltaCount(II)I
    .locals 3
    .param p1, "big"    # I
    .param p2, "small"    # I

    .prologue
    .line 2003
    sub-int v1, p1, p2

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    rem-int v0, v1, v2

    .line 2004
    .local v0, "yu":I
    if-lez v0, :cond_0

    .line 2005
    sub-int v1, p1, p2

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    div-int/2addr v1, v2

    .line 2007
    :goto_0
    return v1

    :cond_0
    sub-int v1, p1, p2

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private getDisableColor(Landroid/content/res/ColorStateList;)I
    .locals 9
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 755
    const/4 v1, -0x1

    .line 756
    .local v1, "disableColorIndex":I
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v7

    .line 757
    .local v7, "stateItems":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v7

    if-ge v2, v8, :cond_2

    .line 758
    aget-object v4, v7, v2

    .line 759
    .local v4, "item":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_0

    aget v6, v0, v3

    .line 760
    .local v6, "state":I
    const v8, -0x101009e

    if-ne v6, v8, :cond_1

    .line 761
    move v1, v2

    .line 757
    .end local v6    # "state":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    .restart local v6    # "state":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 767
    .end local v0    # "arr$":[I
    .end local v3    # "i$":I
    .end local v4    # "item":[I
    .end local v5    # "len$":I
    .end local v6    # "state":I
    :cond_2
    if-ltz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 768
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v8

    aget v8, v8, v1

    .line 770
    :goto_2
    return v8

    :cond_3
    const/16 v8, -0x7000

    goto :goto_2
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2150
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2152
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2176
    :goto_0
    return v1

    .line 2157
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2159
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2160
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2161
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 2157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2170
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2153
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 2176
    :goto_2
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    goto :goto_0

    .line 2171
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getTextColorAccent(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 8
    .param p1, "textColors"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 741
    new-array v2, v7, [[I

    .line 742
    .local v2, "newStates":[[I
    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 743
    new-array v3, v5, [I

    aput-object v3, v2, v6

    .line 745
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->getDisableColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    .line 747
    .local v0, "disableColor":I
    new-array v1, v7, [I

    .line 748
    .local v1, "newColors":[I
    aput v0, v1, v5

    .line 749
    const/16 v3, -0x7000

    aput v3, v1, v6

    .line 751
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 3
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1990
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1992
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    invoke-direct {p0, p1, v1}, Lamigo/widget/AmigoNumberPicker;->getDeltaCount(II)I

    move-result v1

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    mul-int/2addr v1, v2

    add-int p1, v0, v1

    .line 1999
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1994
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1996
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    invoke-direct {p0, v1, p1}, Lamigo/widget/AmigoNumberPicker;->getDeltaCount(II)I

    move-result v1

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    mul-int/2addr v1, v2

    sub-int p1, v0, v1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1939
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1940
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1941
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1942
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1943
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2016
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2017
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2019
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 2020
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 2021
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    .line 2023
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 2024
    invoke-direct {p0, v1}, Lamigo/widget/AmigoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 2025
    return-void
.end method

.method private initMiddleWheelPaint()Landroid/graphics/Paint;
    .locals 5

    .prologue
    .line 1555
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1556
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1557
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1558
    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1559
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1560
    iget-object v3, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1561
    .local v1, "colors":Landroid/content/res/ColorStateList;
    sget-object v3, Lamigo/widget/AmigoNumberPicker;->ENABLED_STATE_SET:[I

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1562
    .local v0, "color":I
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1563
    return-object v2
.end method

.method private initTextGapHeight()V
    .locals 4

    .prologue
    .line 1879
    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    mul-int/lit8 v1, v2, 0x3

    .line 1880
    .local v1, "totalTextHeight":I
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v0, v2

    .line 1881
    .local v0, "totalTextGapHeight":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorTextGapHeight:I

    .line 1882
    return-void
.end method

.method private initUnitPaint()Landroid/graphics/Paint;
    .locals 6

    .prologue
    .line 1453
    iget-object v4, p0, Lamigo/widget/AmigoNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 1454
    .local v2, "density":F
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1455
    .local v3, "paint":Landroid/graphics/Paint;
    iget-object v4, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1456
    .local v1, "colors":Landroid/content/res/ColorStateList;
    sget-object v4, Lamigo/widget/AmigoNumberPicker;->ENABLED_STATE_SET:[I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1457
    .local v0, "color":I
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1458
    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1459
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1460
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1461
    return-object v3
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1885
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1886
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->setFadingEdgeLength(I)V

    .line 1887
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .prologue
    .line 1860
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1866
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initTextGapHeight()V

    .line 1869
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    .line 1871
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBaseline()I

    move-result v1

    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTop()I

    move-result v2

    add-int v0, v1, v2

    .line 1872
    .local v0, "editTextTextPosition":I
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    .line 1873
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    .line 1874
    iput v0, p0, Lamigo/widget/AmigoNumberPicker;->mSuffixBaseLien:I

    .line 1875
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 1876
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 6

    .prologue
    .line 1731
    iget-object v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1732
    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    .line 1733
    .local v2, "selectorIdices":[I
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getValue()I

    move-result v0

    .line 1734
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1735
    add-int/lit8 v4, v1, -0x2

    iget v5, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    mul-int/2addr v4, v5

    add-int v3, v0, v4

    .line 1736
    .local v3, "selectorIndex":I
    iget-boolean v4, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1737
    invoke-direct {p0, v3}, Lamigo/widget/AmigoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1739
    :cond_0
    iget-object v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1740
    iget-object v4, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lamigo/widget/AmigoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1742
    .end local v3    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1831
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1832
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1833
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1835
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1689
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1700
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1692
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1693
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1694
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1702
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1698
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1700
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1694
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 2110
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mOnValueChangeListener:Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mOnValueChangeListener:Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;->onValueChange(Lamigo/widget/AmigoNumberPicker;II)V

    .line 2113
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1911
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    iput p1, p0, Lamigo/widget/AmigoNumberPicker;->mScrollState:I

    .line 1915
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mOnScrollListener:Lamigo/widget/AmigoNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mOnScrollListener:Lamigo/widget/AmigoNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lamigo/widget/AmigoNumberPicker$OnScrollListener;->onScrollStateChange(Lamigo/widget/AmigoNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v2, 0x0

    .line 1893
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1894
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1895
    invoke-direct {p0, v2}, Lamigo/widget/AmigoNumberPicker;->postAdjustScrollerCommand(I)V

    .line 1896
    invoke-direct {p0, v2}, Lamigo/widget/AmigoNumberPicker;->onScrollStateChange(I)V

    .line 1905
    :goto_0
    return-void

    .line 1898
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 1899
    iget-wide v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lamigo/widget/AmigoNumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1902
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 1903
    iget-wide v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lamigo/widget/AmigoNumberPicker;->showInputControls(J)V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 4
    .param p1, "delayMillis"    # I

    .prologue
    .line 2199
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerCommand:Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 2200
    new-instance v0, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;-><init>(Lamigo/widget/AmigoNumberPicker;)V

    iput-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerCommand:Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

    .line 2204
    :goto_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerCommand:Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lamigo/widget/AmigoNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2205
    return-void

    .line 2202
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerCommand:Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .param p1, "increment"    # Z

    .prologue
    .line 2122
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2123
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->removeAllCallbacks()V

    .line 2124
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lamigo/widget/AmigoNumberPicker;)V

    iput-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 2127
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$600(Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2128
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2129
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2184
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2185
    new-instance v0, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;-><init>(Lamigo/widget/AmigoNumberPicker;)V

    iput-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    .line 2189
    :goto_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    # setter for: Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->access$702(Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;I)I

    .line 2190
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    # setter for: Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;->access$802(Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;I)I

    .line 2191
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2192
    return-void

    .line 2187
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 2135
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lamigo/widget/AmigoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2138
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerCommand:Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 2139
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerCommand:Lamigo/widget/AmigoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2141
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 2142
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSetSelectionCommand:Lamigo/widget/AmigoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2144
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1719
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1720
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1721
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lamigo/widget/AmigoNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1723
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 1823
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1824
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    .line 1825
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 2
    .param p1, "selectorWheelState"    # I

    .prologue
    .line 1842
    iput p1, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelState:I

    .line 1843
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1844
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1855
    :cond_0
    return-void
.end method

.method private showInputControls(J)V
    .locals 3
    .param p1, "animationDuration"    # J

    .prologue
    .line 1952
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1953
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1954
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1955
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1956
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1173
    iget-boolean v8, p0, Lamigo/widget/AmigoNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    const/4 v4, 0x0

    .line 1177
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1178
    const/4 v3, 0x0

    .line 1179
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1180
    iget-object v8, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1181
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1182
    move v3, v1

    .line 1179
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1185
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1186
    .local v5, "numberOfDigits":I
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    .line 1187
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1188
    add-int/lit8 v5, v5, 0x1

    .line 1189
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1191
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1201
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1202
    iget v8, p0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1203
    iget v8, p0, Lamigo/widget/AmigoNumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1204
    iput v4, p0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    .line 1208
    :goto_3
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    goto :goto_0

    .line 1193
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1194
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1195
    iget-object v8, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1196
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1197
    float-to-int v4, v6

    .line 1194
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1206
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Lamigo/widget/AmigoNumberPicker;->mMinWidth:I

    iput v8, p0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1974
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_2

    .line 1975
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1979
    :goto_0
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1980
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1984
    :goto_1
    return-void

    .line 1977
    :cond_2
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1982
    :cond_3
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInputTextView()V
    .locals 4

    .prologue
    .line 2093
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2094
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lamigo/widget/AmigoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2098
    :goto_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2104
    return-void

    .line 2096
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2071
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2072
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2074
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 2080
    :goto_0
    return-void

    .line 2077
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lamigo/widget/AmigoNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2078
    .local v0, "current":I
    invoke-direct {p0, v0}, Lamigo/widget/AmigoNumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1012
    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1016
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1017
    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1018
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1022
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1023
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1024
    .local v0, "currentScrollerY":I
    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 1025
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I

    .line 1027
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lamigo/widget/AmigoNumberPicker;->scrollBy(II)V

    .line 1028
    iput v0, p0, Lamigo/widget/AmigoNumberPicker;->mPreviousScrollerY:I

    .line 1029
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1030
    invoke-direct {p0, v1}, Lamigo/widget/AmigoNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1032
    :cond_4
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 994
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 995
    .local v0, "keyCode":I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 996
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->removeAllCallbacks()V

    .line 998
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 977
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 989
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 979
    :pswitch_0
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 980
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->removeAllCallbacks()V

    .line 981
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 986
    :pswitch_1
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 977
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1003
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1004
    .local v0, "action":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1005
    :cond_0
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->removeAllCallbacks()V

    .line 1007
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1374
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1309
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1276
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1369
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1221
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public mDelta(I)V
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 1746
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1750
    :goto_0
    return-void

    .line 1749
    :cond_0
    iput p1, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1379
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1382
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1384
    iget-wide v0, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lamigo/widget/AmigoNumberPicker;->showInputControls(J)V

    .line 1386
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 843
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 844
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1390
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->removeAllCallbacks()V

    .line 1391
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1427
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelState:I

    if-nez v0, :cond_0

    .line 1436
    :goto_0
    return-void

    .line 1431
    :cond_0
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->drawDivider(Landroid/graphics/Canvas;)V

    .line 1432
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->drawMiddleWheel(Landroid/graphics/Canvas;)V

    .line 1433
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->drawAboveWheel(Landroid/graphics/Canvas;)V

    .line 1434
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->drawBelowWheel(Landroid/graphics/Canvas;)V

    .line 1435
    invoke-direct {p0, p1}, Lamigo/widget/AmigoNumberPicker;->drawUnit(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 862
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lamigo/widget/AmigoNumberPicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 906
    :goto_0
    return v3

    .line 865
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 906
    goto :goto_0

    .line 867
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lamigo/widget/AmigoNumberPicker;->mLastDownEventY:F

    iput v5, p0, Lamigo/widget/AmigoNumberPicker;->mLastMotionEventY:F

    .line 868
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->removeAllCallbacks()V

    .line 869
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 870
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 871
    iput-boolean v4, p0, Lamigo/widget/AmigoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 872
    iput-boolean v3, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 873
    iget v5, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 874
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 875
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 876
    .local v2, "scrollersFinished":Z
    :goto_1
    if-nez v2, :cond_3

    .line 877
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 878
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 879
    invoke-direct {p0, v4}, Lamigo/widget/AmigoNumberPicker;->onScrollStateChange(I)V

    .line 881
    :cond_3
    iput-boolean v2, p0, Lamigo/widget/AmigoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 882
    iput-boolean v3, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 883
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->hideInputControls()V

    goto :goto_0

    .end local v2    # "scrollersFinished":Z
    :cond_4
    move v2, v4

    .line 875
    goto :goto_1

    .line 886
    :cond_5
    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lamigo/widget/AmigoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lamigo/widget/AmigoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v3, v4

    .line 888
    goto :goto_0

    .line 890
    :cond_7
    iput-boolean v4, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 891
    invoke-direct {p0, v6}, Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V

    .line 892
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->hideInputControls()V

    goto :goto_0

    .line 895
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 896
    .local v0, "currentMoveY":F
    iget v5, p0, Lamigo/widget/AmigoNumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 897
    .local v1, "deltaDownY":I
    iget v5, p0, Lamigo/widget/AmigoNumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 898
    iput-boolean v4, p0, Lamigo/widget/AmigoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 899
    invoke-direct {p0, v3}, Lamigo/widget/AmigoNumberPicker;->onScrollStateChange(I)V

    .line 900
    invoke-direct {p0, v6}, Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V

    .line 901
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 791
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getMeasuredWidth()I

    move-result v20

    .line 792
    .local v20, "msrdWdth":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getMeasuredHeight()I

    move-result v19

    .line 795
    .local v19, "msrdHght":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 796
    .local v12, "inctBtnMsrdWdth":I
    sub-int v21, v20, v12

    div-int/lit8 v9, v21, 0x2

    .line 797
    .local v9, "incrBtnLeft":I
    const/4 v11, 0x0

    .line 798
    .local v11, "incrBtnTop":I
    add-int v10, v9, v12

    .line 799
    .local v10, "incrBtnRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    add-int/lit8 v8, v21, 0x0

    .line 800
    .local v8, "incrBtnBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1, v10, v8}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v16

    .line 804
    .local v16, "inptTxtMsrdWdth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v15

    .line 805
    .local v15, "inptTxtMsrdHght":I
    sub-int v21, v20, v16

    div-int/lit8 v14, v21, 0x2

    .line 806
    .local v14, "inptTxtLeft":I
    sub-int v21, v19, v15

    div-int/lit8 v18, v21, 0x2

    .line 807
    .local v18, "inptTxtTop":I
    add-int v17, v14, v16

    .line 808
    .local v17, "inptTxtRight":I
    add-int v13, v18, v15

    .line 809
    .local v13, "inptTxtBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/widget/EditText;->layout(IIII)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v5

    .line 813
    .local v5, "decrBtnMsrdWdth":I
    sub-int v21, v20, v5

    div-int/lit8 v4, v21, 0x2

    .line 814
    .local v4, "decrBtnLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v21

    sub-int v7, v19, v21

    .line 815
    .local v7, "decrBtnTop":I
    add-int v6, v4, v5

    .line 816
    .local v6, "decrBtnRight":I
    move/from16 v3, v19

    .line 817
    .local v3, "decrBtnBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7, v6, v3}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 819
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 820
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 822
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->initializeSelectorWheel()V

    .line 823
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->initializeFadingEdges()V

    .line 826
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 827
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoNumberPicker;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    .line 829
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getLeft()I

    move-result v21

    add-int/lit8 v21, v21, 0x6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    .line 832
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getRight()I

    move-result v21

    add-int/lit8 v21, v21, -0x6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoNumberPicker;->xPosition:F

    .line 838
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 849
    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lamigo/widget/AmigoNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 850
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lamigo/widget/AmigoNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 851
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 853
    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lamigo/widget/AmigoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 855
    .local v3, "widthSize":I
    iget v4, p0, Lamigo/widget/AmigoNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lamigo/widget/AmigoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 857
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lamigo/widget/AmigoNumberPicker;->setMeasuredDimension(II)V

    .line 858
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 911
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 912
    const/4 v9, 0x0

    .line 971
    :goto_0
    return v9

    .line 914
    :cond_0
    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_1

    .line 915
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 917
    :cond_1
    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 919
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 971
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 921
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 922
    .local v1, "currentMoveY":F
    iget-boolean v9, p0, Lamigo/widget/AmigoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v9, :cond_2

    iget v9, p0, Lamigo/widget/AmigoNumberPicker;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    .line 923
    :cond_2
    iget v9, p0, Lamigo/widget/AmigoNumberPicker;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 924
    .local v2, "deltaDownY":I
    iget v9, p0, Lamigo/widget/AmigoNumberPicker;->mTouchSlop:I

    if-le v2, v9, :cond_3

    .line 925
    const/4 v9, 0x0

    iput-boolean v9, p0, Lamigo/widget/AmigoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 926
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lamigo/widget/AmigoNumberPicker;->onScrollStateChange(I)V

    .line 929
    .end local v2    # "deltaDownY":I
    :cond_3
    iget v9, p0, Lamigo/widget/AmigoNumberPicker;->mLastMotionEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    .line 930
    .local v3, "deltaMoveY":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Lamigo/widget/AmigoNumberPicker;->scrollBy(II)V

    .line 931
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    .line 932
    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 935
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    iget-boolean v9, p0, Lamigo/widget/AmigoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v9, :cond_5

    .line 936
    const/4 v9, 0x0

    iput-boolean v9, p0, Lamigo/widget/AmigoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 937
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lamigo/widget/AmigoNumberPicker;->mLastUpEventTimeMillis:J

    sub-long v4, v10, v12

    .line 938
    .local v4, "deltaTapTimeMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v4, v10

    if-gez v9, :cond_5

    .line 939
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lamigo/widget/AmigoNumberPicker;->setSelectorWheelState(I)V

    .line 940
    iget-wide v10, p0, Lamigo/widget/AmigoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v10, v11}, Lamigo/widget/AmigoNumberPicker;->showInputControls(J)V

    .line 941
    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 942
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    move-object v7, v9

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 944
    .local v7, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_4

    .line 945
    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 947
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lamigo/widget/AmigoNumberPicker;->mLastUpEventTimeMillis:J

    .line 948
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 951
    .end local v4    # "deltaTapTimeMillis":J
    .end local v7    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    iget-object v8, p0, Lamigo/widget/AmigoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 952
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lamigo/widget/AmigoNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 953
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v6, v9

    .line 954
    .local v6, "initialVelocity":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lamigo/widget/AmigoNumberPicker;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_7

    .line 955
    invoke-direct {p0, v6}, Lamigo/widget/AmigoNumberPicker;->fling(I)V

    .line 956
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lamigo/widget/AmigoNumberPicker;->onScrollStateChange(I)V

    .line 966
    :cond_6
    :goto_2
    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 967
    const/4 v9, 0x0

    iput-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 968
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lamigo/widget/AmigoNumberPicker;->mLastUpEventTimeMillis:J

    goto/16 :goto_1

    .line 958
    :cond_7
    iget-boolean v9, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v9, :cond_8

    .line 959
    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lamigo/widget/AmigoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 960
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lamigo/widget/AmigoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 963
    :cond_8
    sget v9, Lamigo/widget/AmigoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v9}, Lamigo/widget/AmigoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x2

    .line 1046
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    .line 1050
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1051
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1054
    :cond_2
    iget-boolean v1, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1055
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1058
    :cond_3
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    .line 1059
    :cond_4
    :goto_1
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 1060
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    .line 1061
    invoke-direct {p0, v0}, Lamigo/widget/AmigoNumberPicker;->decrementSelectorIndices([I)V

    .line 1062
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lamigo/widget/AmigoNumberPicker;->changeCurrent(I)V

    .line 1063
    iget-boolean v1, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1064
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1067
    :cond_5
    :goto_2
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1068
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    .line 1069
    invoke-direct {p0, v0}, Lamigo/widget/AmigoNumberPicker;->incrementSelectorIndices([I)V

    .line 1070
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lamigo/widget/AmigoNumberPicker;->changeCurrent(I)V

    .line 1071
    iget-boolean v1, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 1072
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 1677
    return-void
.end method

.method public setAlign(Landroid/graphics/Paint$Align;)V
    .locals 2
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 1570
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker;->mAlign:Landroid/graphics/Paint$Align;

    .line 1571
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    if-ne p1, v0, :cond_1

    .line 1572
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 1578
    :cond_0
    :goto_0
    return-void

    .line 1573
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p1, v0, :cond_2

    .line 1574
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    .line 1575
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne p1, v0, :cond_0

    .line 1576
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1352
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1365
    :goto_0
    return-void

    .line 1355
    :cond_0
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1356
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1358
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1362
    :goto_1
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 1363
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1364
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1360
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1038
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1039
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1040
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1041
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1042
    return-void
.end method

.method public setFormatter(Lamigo/widget/AmigoNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lamigo/widget/AmigoNumberPicker$Formatter;

    .prologue
    .line 1115
    iget-object v0, p0, Lamigo/widget/AmigoNumberPicker;->mFormatter:Lamigo/widget/AmigoNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1118
    :cond_0
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker;->mFormatter:Lamigo/widget/AmigoNumberPicker$Formatter;

    .line 1119
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1120
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1319
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1334
    :goto_0
    return-void

    .line 1322
    :cond_0
    if-gez p1, :cond_1

    .line 1323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1325
    :cond_1
    iput p1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    .line 1326
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1327
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    .line 1329
    :cond_2
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1330
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1331
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1332
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 1333
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1329
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1286
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1301
    :goto_0
    return-void

    .line 1289
    :cond_0
    if-gez p1, :cond_1

    .line 1290
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1292
    :cond_1
    iput p1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    .line 1293
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1294
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    iput v1, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    .line 1296
    :cond_2
    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget v2, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1297
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lamigo/widget/AmigoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1298
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1299
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 1300
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1296
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1258
    iput-wide p1, p0, Lamigo/widget/AmigoNumberPicker;->mLongPressUpdateInterval:J

    .line 1259
    return-void
.end method

.method public setOnScrollListener(Lamigo/widget/AmigoNumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lamigo/widget/AmigoNumberPicker$OnScrollListener;

    .prologue
    .line 1099
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker;->mOnScrollListener:Lamigo/widget/AmigoNumberPicker$OnScrollListener;

    .line 1100
    return-void
.end method

.method public setOnValueChangedListener(Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;

    .prologue
    .line 1089
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker;->mOnValueChangeListener:Lamigo/widget/AmigoNumberPicker$OnValueChangeListener;

    .line 1090
    return-void
.end method

.method public setSelectionSrc(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1668
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker;->mSelectionSrc:Landroid/graphics/drawable/Drawable;

    .line 1669
    return-void
.end method

.method public setUnit(Ljava/lang/String;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "digit"    # I

    .prologue
    .line 1467
    const/4 v0, 0x5

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iput-object p1, p0, Lamigo/widget/AmigoNumberPicker;->mUnit:Ljava/lang/String;

    .line 1471
    invoke-direct {p0, p2}, Lamigo/widget/AmigoNumberPicker;->computeTextWidth(I)V

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1153
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1156
    :cond_0
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1157
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    .line 1159
    :cond_1
    :goto_1
    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1160
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    .line 1162
    :cond_2
    :goto_2
    iput p1, p0, Lamigo/widget/AmigoNumberPicker;->mValue:I

    .line 1163
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1164
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateInputTextView()V

    .line 1165
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1166
    invoke-virtual {p0}, Lamigo/widget/AmigoNumberPicker;->invalidate()V

    goto :goto_0

    .line 1157
    :cond_3
    iget p1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    goto :goto_1

    .line 1160
    :cond_4
    iget p1, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1236
    if-eqz p1, :cond_0

    iget v0, p0, Lamigo/widget/AmigoNumberPicker;->mMaxValue:I

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lamigo/widget/AmigoNumberPicker;->mDelta:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lamigo/widget/AmigoNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1238
    const-string v0, "AmigoNumberPicker"

    const-string v1, "Range less than selector items count"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/4 p1, 0x0

    .line 1241
    :cond_0
    iget-boolean v0, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1242
    iput-boolean p1, p0, Lamigo/widget/AmigoNumberPicker;->mWrapSelectorWheel:Z

    .line 1243
    invoke-direct {p0}, Lamigo/widget/AmigoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1245
    :cond_1
    return-void
.end method
