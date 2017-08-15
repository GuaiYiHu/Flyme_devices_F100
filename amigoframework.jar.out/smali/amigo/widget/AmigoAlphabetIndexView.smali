.class public final Lamigo/widget/AmigoAlphabetIndexView;
.super Lamigo/widget/AbsListIndexer;
.source "AmigoAlphabetIndexView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoAlphabetIndexView$MyAnimatorUpdateListener;,
        Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;,
        Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;,
        Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION:I = 0xc8

.field private static final DEFAULT_PADDING_RIGHT:I = 0x3

.field private static final DEFAULT_PADDING_TOP:I = 0x5

.field private static final DEFAULT_TOUCHING_LEFT:I = 0x4b

.field private static final INVALID_INDEX:I = -0x1

.field private static final LETTER_DISPLAY_AREA_REPRESENTER:Ljava/lang/String; = "M"

.field private static final TAG:Ljava/lang/String; = "AmigoAlphabetIndexView"


# instance fields
.field private final ALPHABET_LEN:I

.field private MAX_TOUCHBLE_WIDTH:I

.field private isAnimatorPrepareing:Z

.field private mAlphabet:[Ljava/lang/String;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCurrentLetterColor:I

.field private mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

.field private mCurrentShowingBgcolor:I

.field private mDisableLetterColor:I

.field private mEnableLetterColor:I

.field private mIsTouching:Z

.field mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

.field private mLetterTextSize:I

.field private mList:Landroid/widget/ListView;

.field private mListOffset:I

.field private mMaxCircleRadius:F

.field private mMinCircleRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPreTouchingLetterIndex:I

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionStrings:[Ljava/lang/String;

.field private mSelectedLetterPaint:Landroid/graphics/Paint;

.field private mShowingLetterColor:I

.field private mShowingLetterIndex:I

.field private mTouchY:I

.field private mTouchingAlphbetIndex:I

.field private mTouchingLeftOffset:I

.field private mTouchingLetterTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lamigo/widget/AmigoAlphabetIndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoAlphabetIndexView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lamigo/widget/AbsListIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/16 v7, 0x32

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->MAX_TOUCHBLE_WIDTH:I

    .line 61
    const/4 v7, -0x1

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    .line 62
    const/4 v7, -0x1

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingAlphbetIndex:I

    .line 63
    const/4 v7, -0x1

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPreTouchingLetterIndex:I

    .line 68
    const/4 v7, 0x0

    iput-boolean v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    .line 185
    const/4 v7, 0x0

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    .line 358
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    iput-object v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    .line 774
    const/4 v7, 0x0

    iput-boolean v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z

    .line 85
    sget-object v7, Lcom/amigo/internal/R$styleable;->AmigoAlphabetIndexView:[I

    const v8, 0x9080026

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x905001a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->MAX_TOUCHBLE_WIDTH:I

    .line 91
    const/4 v7, 0x5

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoAlphabetIndexView;->toRawTextSize(F)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    .line 93
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->applyOrientationLandscape()V

    .line 94
    const/4 v7, 0x0

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-virtual {p0, v8}, Lamigo/widget/AmigoAlphabetIndexView;->toRawTextSize(F)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLetterTextSize:I

    .line 96
    const/4 v7, 0x4

    iget-object v8, p0, Lamigo/widget/AmigoAlphabetIndexView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x42960000    # 75.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLeftOffset:I

    .line 100
    const v7, 0x9040008

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 101
    .local v2, "defalutEnableLetterColor":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mEnableLetterColor:I

    .line 104
    const v7, 0x9040009

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 105
    .local v1, "defalultDisableLetterColor":I
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mDisableLetterColor:I

    .line 108
    const v7, 0x904000e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 109
    .local v3, "defalutShowingLetterColor":I
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterColor:I

    .line 112
    const/4 v7, -0x1

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentLetterColor:I

    .line 113
    iget v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterColor:I

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentShowingBgcolor:I

    .line 115
    const/16 v7, 0x11

    iget-object v8, p0, Lamigo/widget/AmigoAlphabetIndexView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 117
    .local v5, "rightPadding":I
    const/16 v7, 0x10

    iget-object v8, p0, Lamigo/widget/AmigoAlphabetIndexView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x5

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 119
    .local v6, "topPadding":I
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {p0, v7, v6, v5, v8}, Lamigo/widget/AmigoAlphabetIndexView;->setPadding(IIII)V

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    const/16 v7, 0x1b

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "A"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "B"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "C"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "D"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "E"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "F"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "G"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "H"

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "I"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "J"

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "K"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    const-string v9, "L"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "M"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "N"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "O"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "P"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "Q"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "R"

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "S"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "T"

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "U"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    const-string v9, "V"

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "W"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    const-string v9, "X"

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "Y"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    const-string v9, "Z"

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "#"

    aput-object v9, v7, v8

    iput-object v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    .line 125
    iget-object v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    array-length v7, v7

    iput v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->ALPHABET_LEN:I

    .line 126
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->ChangeViewColorWithChameleon()V

    .line 127
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoAlphabetIndexView;->init(Landroid/content/Context;)V

    .line 129
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->adjustPadding()V

    .line 130
    return-void
.end method

.method private ChangeViewColorWithChameleon()V
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mEnableLetterColor:I

    .line 559
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mDisableLetterColor:I

    .line 560
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterColor:I

    .line 561
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentShowingBgcolor:I

    .line 563
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoAlphabetIndexView;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;

    .prologue
    .line 35
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLeftOffset:I

    return v0
.end method

.method static synthetic access$102(Lamigo/widget/AmigoAlphabetIndexView;Z)Z
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z

    return p1
.end method

.method static synthetic access$200(Lamigo/widget/AmigoAlphabetIndexView;)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;

    .prologue
    .line 35
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    return v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoAlphabetIndexView;ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoAlphabetIndexView;->createBeginValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lamigo/widget/AmigoAlphabetIndexView;ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lamigo/widget/AmigoAlphabetIndexView;->createEndValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lamigo/widget/AmigoAlphabetIndexView;Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;
    .param p1, "x1"    # Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAlphabetIndexView;->createMiddleValue(Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lamigo/widget/AmigoAlphabetIndexView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;

    .prologue
    .line 35
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$802(Lamigo/widget/AmigoAlphabetIndexView;Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoAlphabetIndexView;
    .param p1, "x1"    # Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    .prologue
    .line 35
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    return-object p1
.end method

.method private adjustPadding()V
    .locals 6

    .prologue
    .line 133
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingBottom()I

    move-result v0

    .line 134
    .local v0, "paddingBottom":I
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingTop()I

    move-result v3

    .line 135
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingRight()I

    move-result v2

    .line 136
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingLeft()I

    move-result v1

    .line 137
    .local v1, "paddingLeft":I
    int-to-float v4, v3

    iget v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 138
    iget v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    float-to-int v3, v4

    .line 140
    :cond_0
    int-to-float v4, v0

    iget v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 141
    iget v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    float-to-int v0, v4

    .line 143
    :cond_1
    invoke-virtual {p0, v1, v3, v2, v0}, Lamigo/widget/AmigoAlphabetIndexView;->setPadding(IIII)V

    .line 144
    return-void
.end method

.method private applyOrientationLandscape()V
    .locals 3

    .prologue
    .line 1212
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1213
    .local v0, "screenHeigh":I
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1214
    .local v1, "screenWidht":I
    if-ge v0, v1, :cond_0

    .line 1215
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    mul-int/2addr v2, v0

    div-int/2addr v2, v1

    iput v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    .line 1217
    :cond_0
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 369
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 373
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 374
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method private computeCircleCenterY(FFI)F
    .locals 5
    .param p1, "textY"    # F
    .param p2, "circleRadius"    # F
    .param p3, "textSize"    # I

    .prologue
    .line 882
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 883
    .local v2, "tempPaint":Landroid/graphics/Paint;
    int-to-float v3, p3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 884
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 886
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetricsInt;
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v0, p1, v3

    .line 887
    .local v0, "circleCenterY":F
    return v0
.end method

.method private countShowingLetterIndex()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v3

    .line 276
    :cond_1
    const/4 v2, 0x0

    .line 277
    .local v2, "shallShowing":I
    iget-boolean v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    if-eqz v4, :cond_2

    .line 278
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingAlphbetIndex:I

    .line 286
    :goto_1
    iget v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    if-eq v4, v2, :cond_0

    .line 289
    iput v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    .line 292
    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    if-nez v3, :cond_4

    .line 293
    invoke-direct {p0, v2}, Lamigo/widget/AmigoAlphabetIndexView;->initSelctedItemParam(I)V

    .line 298
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 280
    :cond_2
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mListOffset:I

    sub-int v0, v4, v5

    .line 281
    .local v0, "position":I
    if-gez v0, :cond_3

    move v0, v3

    .line 282
    :cond_3
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v4, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    .line 283
    .local v1, "sectionIndex":I
    invoke-direct {p0, v1}, Lamigo/widget/AmigoAlphabetIndexView;->toAlphbetIndex(I)I

    move-result v2

    goto :goto_1

    .line 295
    .end local v0    # "position":I
    .end local v1    # "sectionIndex":I
    :cond_4
    invoke-direct {p0, v2}, Lamigo/widget/AmigoAlphabetIndexView;->updateSelctedItemParam(I)V

    goto :goto_2
.end method

.method private createBeginValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 8
    .param p1, "isShow"    # Z
    .param p2, "holder"    # Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    .prologue
    .line 845
    const/4 v2, 0x0

    .line 846
    .local v2, "circleCenterX":F
    const/4 v4, 0x0

    .line 847
    .local v4, "circleCenterY":F
    const/4 v3, 0x0

    .line 848
    .local v3, "circleRadius":F
    const/4 v5, 0x0

    .line 849
    .local v5, "textX":F
    const/4 v6, 0x0

    .line 850
    .local v6, "textY":F
    const/4 v7, 0x0

    .line 852
    .local v7, "textSize":I
    if-eqz p1, :cond_0

    .line 853
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationTextLeft()I

    move-result v0

    int-to-float v5, v0

    .line 854
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 855
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationTextLeft()I

    move-result v0

    int-to-float v2, v0

    .line 856
    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMinCircleRadius:F

    .line 857
    iget v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    .line 858
    invoke-direct {p0, v6, v3, v7}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v4

    .line 878
    :goto_0
    new-instance v0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;-><init>(Lamigo/widget/AmigoAlphabetIndexView;FFFFFI)V

    return-object v0

    .line 860
    :cond_0
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationCircleLeft()I

    move-result v0

    int-to-float v2, v0

    .line 861
    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    .line 862
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationCircleLeft()I

    move-result v0

    int-to-float v5, v0

    .line 863
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    int-to-float v6, v0

    .line 864
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getIndex()I

    move-result v0

    if-nez v0, :cond_1

    .line 865
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 866
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 869
    :cond_1
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getIndex()I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 870
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 871
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 874
    :cond_2
    iget v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLetterTextSize:I

    .line 875
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    int-to-float v0, v0

    invoke-direct {p0, v0, v3, v7}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v4

    goto :goto_0
.end method

.method private createEndValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 8
    .param p1, "isShow"    # Z
    .param p2, "holder"    # Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    .prologue
    .line 903
    const/4 v2, 0x0

    .line 904
    .local v2, "circleCenterX":F
    const/4 v4, 0x0

    .line 905
    .local v4, "circleCenterY":F
    const/4 v3, 0x0

    .line 906
    .local v3, "circleRadius":F
    const/4 v5, 0x0

    .line 907
    .local v5, "textX":F
    const/4 v6, 0x0

    .line 908
    .local v6, "textY":F
    const/4 v7, 0x0

    .line 910
    .local v7, "textSize":I
    if-eqz p1, :cond_2

    .line 911
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationCircleLeft()I

    move-result v0

    int-to-float v2, v0

    .line 912
    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    .line 913
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationCircleLeft()I

    move-result v0

    int-to-float v5, v0

    .line 914
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    int-to-float v6, v0

    .line 915
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 917
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 920
    :cond_0
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getIndex()I

    move-result v0

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 921
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 922
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 926
    :cond_1
    iget v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLetterTextSize:I

    .line 927
    invoke-direct {p0, v6, v3, v7}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v4

    .line 937
    :goto_0
    new-instance v0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;-><init>(Lamigo/widget/AmigoAlphabetIndexView;FFFFFI)V

    return-object v0

    .line 929
    :cond_2
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationTextLeft()I

    move-result v0

    int-to-float v2, v0

    .line 930
    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMinCircleRadius:F

    .line 931
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationTextLeft()I

    move-result v0

    int-to-float v5, v0

    .line 932
    invoke-virtual {p2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 933
    iget v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    .line 934
    invoke-direct {p0, v6, v3, v7}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v4

    goto :goto_0
.end method

.method private createMiddleValue(Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    .locals 8
    .param p1, "holder"    # Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    .prologue
    .line 891
    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationCircleLeft()I

    move-result v0

    int-to-float v2, v0

    .line 892
    .local v2, "circleCenterX":F
    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    .line 893
    .local v3, "circleRadius":F
    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationCircleLeft()I

    move-result v0

    int-to-float v5, v0

    .line 894
    .local v5, "textX":F
    invoke-virtual {p1}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 895
    .local v6, "textY":F
    iget v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLetterTextSize:I

    .line 896
    .local v7, "textSize":I
    invoke-direct {p0, v6, v3, v7}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v4

    .line 898
    .local v4, "circleCenterY":F
    new-instance v0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;-><init>(Lamigo/widget/AmigoAlphabetIndexView;FFFFFI)V

    return-object v0
.end method

.method private doDrawCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1020
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    int-to-float v1, v1

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleRadius()F

    move-result v2

    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v3}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextSize()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v0

    .line 1022
    .local v0, "cy":F
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1023
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterY()F

    move-result v0

    .line 1032
    :cond_0
    :goto_0
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    if-nez v1, :cond_1

    .line 1033
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    int-to-float v1, v1

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1034
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v1

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleRadius()F

    move-result v2

    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v3}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextSize()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v0

    .line 1039
    :cond_1
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1040
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    int-to-float v1, v1

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1041
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v1

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleRadius()F

    move-result v2

    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v3}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextSize()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v0

    .line 1046
    :cond_2
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterX()F

    move-result v1

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleRadius()F

    move-result v2

    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1048
    return-void

    .line 1025
    :cond_3
    iget-boolean v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    if-nez v1, :cond_0

    .line 1026
    iget-boolean v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z

    if-nez v1, :cond_0

    .line 1027
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v1}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getCircleCenterY()F

    move-result v0

    goto :goto_0
.end method

.method private doDrawSelectedLetter(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 992
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    aget-object v0, v2, v3

    .line 993
    .local v0, "holder":Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSelectedLetterPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v3}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 995
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    int-to-float v1, v2

    .line 996
    .local v1, "y":F
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->isAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 997
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v1

    .line 1006
    :cond_0
    :goto_0
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    if-nez v2, :cond_1

    .line 1007
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 1008
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v1

    .line 1011
    :cond_1
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1012
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 1013
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v1

    .line 1016
    :cond_2
    iget-object v2, v0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mLetter:Ljava/lang/String;

    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    # getter for: Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->textX:F
    invoke-static {v3}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->access$700(Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;)F

    move-result v3

    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSelectedLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1017
    return-void

    .line 999
    :cond_3
    iget-boolean v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    if-nez v2, :cond_0

    .line 1000
    iget-boolean v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z

    if-nez v2, :cond_0

    .line 1001
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->getTextY()F

    move-result v1

    goto :goto_0
.end method

.method private drawAlphabet(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 950
    const/4 v0, 0x0

    .line 954
    .local v0, "hodler":Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 955
    iget v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    if-ne v5, v1, :cond_0

    .line 954
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    :cond_0
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v0, v5, v1

    .line 960
    invoke-virtual {v0}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v4

    .line 961
    .local v4, "textTop":I
    invoke-virtual {v0}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationTextLeft()I

    move-result v3

    .line 963
    .local v3, "textLeft":I
    invoke-virtual {v0}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 964
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mEnableLetterColor:I

    .line 968
    .local v2, "paintColor":I
    :goto_2
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 969
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 970
    iget-object v5, v0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mLetter:Ljava/lang/String;

    int-to-float v6, v3

    int-to-float v7, v4

    iget-object v8, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 966
    .end local v2    # "paintColor":I
    :cond_1
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mDisableLetterColor:I

    .restart local v2    # "paintColor":I
    goto :goto_2

    .line 974
    .end local v2    # "paintColor":I
    .end local v3    # "textLeft":I
    .end local v4    # "textTop":I
    :cond_2
    return-void
.end method

.method private drawSelectedItem(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 984
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    if-gez v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAlphabetIndexView;->doDrawCircle(Landroid/graphics/Canvas;)V

    .line 988
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAlphabetIndexView;->doDrawSelectedLetter(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private initAnimator(Z)V
    .locals 8
    .param p1, "isShow"    # Z

    .prologue
    .line 820
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    iget v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    aget-object v2, v4, v5

    .line 822
    .local v2, "holder":Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
    invoke-direct {p0, p1, v2}, Lamigo/widget/AmigoAlphabetIndexView;->createBeginValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v0

    .line 823
    .local v0, "beginValue":Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    invoke-direct {p0, p1, v2}, Lamigo/widget/AmigoAlphabetIndexView;->createEndValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v1

    .line 824
    .local v1, "endValue":Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    invoke-direct {p0, v2}, Lamigo/widget/AmigoAlphabetIndexView;->createMiddleValue(Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v3

    .line 825
    .local v3, "middleValue":Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 826
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 827
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;

    invoke-direct {v5, p0}, Lamigo/widget/AmigoAlphabetIndexView$MyTypeEvaluator;-><init>(Lamigo/widget/AmigoAlphabetIndexView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 828
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 829
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lamigo/widget/AmigoAlphabetIndexView$MyAnimatorUpdateListener;

    invoke-direct {v5, p0}, Lamigo/widget/AmigoAlphabetIndexView$MyAnimatorUpdateListener;-><init>(Lamigo/widget/AmigoAlphabetIndexView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 830
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 831
    return-void
.end method

.method private initCircleParam()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 741
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 743
    .local v1, "tempPaint":Landroid/graphics/Paint;
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingLetterTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 744
    const-string v2, "M"

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 745
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMaxCircleRadius:F

    .line 747
    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 748
    const-string v2, "M"

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 749
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMinCircleRadius:F

    .line 750
    return-void
.end method

.method private initLetterHolders(I)V
    .locals 13
    .param p1, "viewHeight"    # I

    .prologue
    .line 634
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    array-length v8, v0

    .line 635
    .local v8, "alphbetLen":I
    if-gtz v8, :cond_0

    .line 659
    :goto_0
    return-void

    .line 638
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingTop()I

    move-result v11

    .line 639
    .local v11, "sectionTopOffset":I
    sub-int v0, p1, v11

    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingBottom()I

    move-result v1

    sub-int v9, v0, v1

    .line 640
    .local v9, "realHeight":I
    div-int v10, v9, v8

    .line 641
    .local v10, "sectionHeight":I
    rem-int v0, v9, v8

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v11, v0

    .line 642
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 643
    .local v2, "leftOffset":I
    new-array v0, v8, [Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    .line 645
    add-int v4, v2, v10

    .line 646
    .local v4, "right":I
    move v3, v11

    .line 647
    .local v3, "top":I
    add-int v5, v3, v10

    .line 649
    .local v5, "bottom":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 650
    iget-object v12, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    new-instance v0, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    aget-object v6, v1, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;-><init>(Lamigo/widget/AmigoAlphabetIndexView;IIIILjava/lang/String;I)V

    aput-object v0, v12, v7

    .line 652
    add-int/2addr v3, v10

    .line 653
    add-int/2addr v5, v10

    .line 649
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 656
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->pickDisableSection()Z

    .line 658
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    invoke-direct {p0, v0}, Lamigo/widget/AmigoAlphabetIndexView;->initSelctedItemParam(I)V

    goto :goto_0
.end method

.method private initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 753
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 754
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    .line 755
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 756
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 757
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 760
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCirclePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 761
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCirclePaint:Landroid/graphics/Paint;

    .line 762
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 763
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 766
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSelectedLetterPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 767
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSelectedLetterPaint:Landroid/graphics/Paint;

    .line 768
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSelectedLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 769
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSelectedLetterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 770
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSelectedLetterPaint:Landroid/graphics/Paint;

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentLetterColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 772
    :cond_2
    return-void
.end method

.method private initSections()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 431
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-nez v4, :cond_0

    .line 456
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v4}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    .line 436
    .local v2, "sections":[Ljava/lang/Object;
    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 437
    array-length v4, v2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    .line 438
    const/4 v3, 0x1

    .line 439
    .local v3, "setNull":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 440
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 441
    const/4 v3, 0x1

    .line 442
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 443
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 444
    const/4 v3, 0x0

    .line 448
    :cond_1
    if-eqz v3, :cond_2

    .line 449
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aput-object v6, v4, v0

    .line 439
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 453
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "setNull":Z
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    iput-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    .line 455
    :cond_5
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->pickDisableSection()Z

    goto :goto_0
.end method

.method private initSections(Landroid/widget/ListView;)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v7, 0x0

    .line 463
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 464
    .local v0, "adapter":Landroid/widget/Adapter;
    iput-object v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 466
    instance-of v5, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 467
    check-cast v5, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v5}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v5

    iput v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mListOffset:I

    .line 468
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 471
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v5, v0, Landroid/widget/SectionIndexer;

    if-eqz v5, :cond_5

    .line 472
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 473
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v5}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 474
    .local v3, "sections":[Ljava/lang/Object;
    if-eqz v3, :cond_4

    array-length v5, v3

    if-lez v5, :cond_4

    .line 475
    array-length v5, v3

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    .line 476
    const/4 v4, 0x1

    .line 477
    .local v4, "setNull":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 478
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 479
    const/4 v4, 0x1

    .line 480
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 481
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 482
    const/4 v4, 0x0

    .line 486
    :cond_1
    if-eqz v4, :cond_2

    .line 487
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aput-object v7, v5, v1

    .line 477
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 491
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "setNull":Z
    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    iput-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    .line 496
    .end local v3    # "sections":[Ljava/lang/Object;
    :cond_5
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->pickDisableSection()Z

    .line 497
    return-void
.end method

.method private initSelctedItemParam(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 1051
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v8, v0, p1

    .line 1056
    .local v8, "holder":Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
    invoke-virtual {v8}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationTextLeft()I

    move-result v0

    int-to-float v2, v0

    .line 1057
    .local v2, "circleCenterX":F
    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMinCircleRadius:F

    .line 1058
    .local v3, "circleRadius":F
    invoke-virtual {v8}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getNavigationTextLeft()I

    move-result v0

    int-to-float v5, v0

    .line 1059
    .local v5, "textX":F
    iget v7, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    .line 1060
    .local v7, "textSize":I
    invoke-virtual {v8}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v0

    int-to-float v6, v0

    .line 1061
    .local v6, "textY":F
    invoke-direct {p0, v6, v3, v7}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v4

    .line 1062
    .local v4, "circleCenterY":F
    new-instance v0, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;-><init>(Lamigo/widget/AmigoAlphabetIndexView;FFFFFI)V

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    goto :goto_0
.end method

.method private moveList()V
    .locals 3

    .prologue
    .line 258
    iget-boolean v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    if-eqz v1, :cond_1

    .line 259
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPreTouchingLetterIndex:I

    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingAlphbetIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingAlphbetIndex:I

    if-eq v1, v2, :cond_1

    .line 261
    :cond_0
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingAlphbetIndex:I

    iput v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mPreTouchingLetterIndex:I

    .line 262
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingAlphbetIndex:I

    invoke-direct {p0, v1}, Lamigo/widget/AmigoAlphabetIndexView;->toSectionIndex(I)I

    move-result v0

    .line 263
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 269
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void

    .line 266
    .restart local v0    # "index":I
    :cond_2
    invoke-direct {p0, v0}, Lamigo/widget/AmigoAlphabetIndexView;->moveListToSection(I)V

    goto :goto_0
.end method

.method private moveListToSection(I)V
    .locals 4
    .param p1, "sectionIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 543
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    if-ne v3, p1, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 552
    .local v0, "position":I
    iget-object v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    iget v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mListOffset:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method private pickDisableSection()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 662
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    if-nez v4, :cond_0

    .line 679
    :goto_0
    return v2

    .line 666
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 667
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->setEnable(Z)V

    .line 668
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    .line 669
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 670
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v4, v4, v0

    iget-object v4, v4, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mLetter:Ljava/lang/String;

    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 671
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->setEnable(Z)V

    .line 666
    .end local v1    # "j":I
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 669
    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 676
    .end local v1    # "j":I
    :cond_3
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->setEnable(Z)V

    goto :goto_3

    :cond_4
    move v2, v3

    .line 679
    goto :goto_0
.end method

.method private startAnimator(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 777
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 782
    :goto_0
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    if-gez v0, :cond_1

    .line 817
    :goto_1
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 785
    :cond_1
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAlphabetIndexView;->initAnimator(Z)V

    .line 787
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lamigo/widget/AmigoAlphabetIndexView$1;

    invoke-direct {v1, p0, p1}, Lamigo/widget/AmigoAlphabetIndexView$1;-><init>(Lamigo/widget/AmigoAlphabetIndexView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 814
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 815
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->isAnimatorPrepareing:Z

    goto :goto_1
.end method

.method private toAlphbetIndex(I)I
    .locals 5
    .param p1, "sectionIndex"    # I

    .prologue
    .line 518
    if-ltz p1, :cond_1

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 519
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 521
    .local v1, "section":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 523
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    .end local v0    # "i":I
    .end local v1    # "section":Ljava/lang/String;
    :goto_1
    return v0

    .line 521
    .restart local v0    # "i":I
    .restart local v1    # "section":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    .end local v0    # "i":I
    .end local v1    # "section":Ljava/lang/String;
    :cond_1
    const-string v2, "AmigoAlphabetIndexView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toAlphbetIndex=-1, sectionIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mSectionStrings.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private toSectionIndex(I)I
    .locals 3
    .param p1, "alphbetIndex"    # I

    .prologue
    .line 500
    if-ltz p1, :cond_3

    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_3

    .line 501
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 502
    .local v1, "letter":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 503
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 502
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    :cond_1
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 514
    .end local v0    # "i":I
    .end local v1    # "letter":Ljava/lang/String;
    :goto_1
    return v0

    .line 508
    .restart local v0    # "i":I
    .restart local v1    # "letter":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 514
    .end local v0    # "i":I
    .end local v1    # "letter":Ljava/lang/String;
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private updateSelctedItemParam(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 302
    if-gez p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v2, v5, p1

    .line 307
    .local v2, "holder":Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;
    iget v1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mMinCircleRadius:F

    .line 308
    .local v1, "circleRadius":F
    iget v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterTextSize:I

    .line 309
    .local v3, "textSize":I
    invoke-virtual {v2}, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->getTextTop()I

    move-result v5

    int-to-float v4, v5

    .line 310
    .local v4, "textY":F
    invoke-direct {p0, v4, v1, v3}, Lamigo/widget/AmigoAlphabetIndexView;->computeCircleCenterY(FFI)F

    move-result v0

    .line 311
    .local v0, "circleCenterY":F
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v5, v4}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->setTextY(F)V

    .line 312
    iget-object v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    invoke-virtual {v5, v0}, Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;->setCircleCenterY(F)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphabet()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAlphabet:[Ljava/lang/String;

    return-object v0
.end method

.method protected getTouchingIndex(I)I
    .locals 8
    .param p1, "touchingY"    # I

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v4, v4, v1

    iget-object v4, v4, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge p1, v4, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    iget v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->ALPHABET_LEN:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le p1, v4, :cond_2

    .line 329
    iget v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->ALPHABET_LEN:I

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    .line 332
    :cond_2
    const/4 v3, 0x0

    .line 333
    .local v3, "start":I
    iget v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->ALPHABET_LEN:I

    add-int/lit8 v0, v4, -0x1

    .line 334
    .local v0, "end":I
    add-int v4, v3, v0

    shr-int/lit8 v1, v4, 0x1

    .line 336
    .local v1, "mid":I
    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v4, v4, v1

    iget-object v4, v4, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 338
    .local v2, "rect":Landroid/graphics/Rect;
    :goto_1
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v4, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    if-le v0, v3, :cond_0

    .line 339
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge p1, v4, :cond_3

    .line 340
    add-int/lit8 v0, v1, -0x1

    .line 345
    :goto_2
    int-to-long v4, v3

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 346
    iget-object v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    aget-object v4, v4, v1

    iget-object v2, v4, Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;->mOrigRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 342
    :cond_3
    add-int/lit8 v3, v1, 0x1

    goto :goto_2
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->initPaint()V

    .line 148
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->initCircleParam()V

    .line 149
    return-void
.end method

.method public invalidateShowingLetterIndex()V
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->countShowingLetterIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->invalidate()V

    .line 322
    :cond_0
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 978
    const/4 v0, 0x0

    .line 980
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isBusying()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    return v0
.end method

.method public layout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Lamigo/widget/AbsListIndexer;->layout(IIII)V

    .line 178
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lamigo/widget/AmigoAlphabetIndexView;->initLetterHolders(I)V

    .line 180
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    invoke-direct {p0, v0}, Lamigo/widget/AmigoAlphabetIndexView;->updateSelctedItemParam(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1206
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1207
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->applyOrientationLandscape()V

    .line 1209
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 943
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAlphabetIndexView;->drawAlphabet(Landroid/graphics/Canvas;)V

    .line 945
    invoke-direct {p0, p1}, Lamigo/widget/AmigoAlphabetIndexView;->drawSelectedItem(Landroid/graphics/Canvas;)V

    .line 947
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 210
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 212
    .local v2, "y":I
    iput v2, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchY:I

    .line 214
    invoke-virtual {p0, v2}, Lamigo/widget/AmigoAlphabetIndexView;->getTouchingIndex(I)I

    move-result v3

    iput v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mTouchingAlphbetIndex:I

    .line 216
    iget-boolean v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    iget v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->MAX_TOUCHBLE_WIDTH:I

    if-le v3, v4, :cond_1

    .line 217
    iget-boolean v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    if-eqz v3, :cond_0

    .line 218
    iput-boolean v6, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->invalidate()V

    .line 254
    iget-boolean v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    return v3

    .line 221
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->cancelFling()V

    .line 224
    iput-boolean v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    .line 225
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->moveList()V

    .line 226
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->countShowingLetterIndex()Z

    .line 227
    invoke-direct {p0, v5}, Lamigo/widget/AmigoAlphabetIndexView;->startAnimator(Z)V

    goto :goto_0

    .line 230
    :pswitch_1
    iput-boolean v5, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    .line 231
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->moveList()V

    .line 232
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->countShowingLetterIndex()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 235
    iget-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mLetterHolders:[Lamigo/widget/AmigoAlphabetIndexView$LetterHolder;

    iget v4, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterIndex:I

    aget-object v3, v3, v4

    invoke-direct {p0, v5, v3}, Lamigo/widget/AmigoAlphabetIndexView;->createEndValue(ZLamigo/widget/AmigoAlphabetIndexView$LetterHolder;)Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    move-result-object v3

    iput-object v3, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentSelectedItemParams:Lamigo/widget/AmigoAlphabetIndexView$SelectedItemParam;

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-direct {p0, v6}, Lamigo/widget/AmigoAlphabetIndexView;->startAnimator(Z)V

    .line 244
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->countShowingLetterIndex()Z

    .line 245
    iput-boolean v6, p0, Lamigo/widget/AmigoAlphabetIndexView;->mIsTouching:Z

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDisableLetterColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 705
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mDisableLetterColor:I

    .line 706
    return-void
.end method

.method public setEnableLetterColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 715
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mEnableLetterColor:I

    .line 716
    return-void
.end method

.method public setList(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lamigo/widget/AmigoAlphabetIndexView;->setList(Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 386
    return-void
.end method

.method public setList(Landroid/widget/ListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "scrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    const/4 v1, 0x0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    .line 402
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 403
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 404
    if-eqz p2, :cond_0

    .line 405
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mList:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lamigo/widget/AmigoAlphabetIndexView;->initSections(Landroid/widget/ListView;)V

    .line 410
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->countShowingLetterIndex()Z

    .line 411
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->invalidate()V

    .line 415
    return-void

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not set a null list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowingLetterColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 725
    iput p1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterColor:I

    .line 726
    iget v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mShowingLetterColor:I

    iput v0, p0, Lamigo/widget/AmigoAlphabetIndexView;->mCurrentShowingBgcolor:I

    .line 727
    return-void
.end method

.method public updateIndexer(Landroid/widget/SectionIndexer;)V
    .locals 0
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 424
    iput-object p1, p0, Lamigo/widget/AmigoAlphabetIndexView;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 425
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->initSections()V

    .line 426
    invoke-direct {p0}, Lamigo/widget/AmigoAlphabetIndexView;->countShowingLetterIndex()Z

    .line 427
    invoke-virtual {p0}, Lamigo/widget/AmigoAlphabetIndexView;->invalidate()V

    .line 428
    return-void
.end method
