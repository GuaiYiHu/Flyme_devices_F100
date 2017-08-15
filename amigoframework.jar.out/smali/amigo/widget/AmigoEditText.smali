.class public Lamigo/widget/AmigoEditText;
.super Landroid/widget/EditText;
.source "AmigoEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;,
        Lamigo/widget/AmigoEditText$OnTextDeletedListener;,
        Lamigo/widget/AmigoEditText$GnTextWatcher;,
        Lamigo/widget/AmigoEditText$GnPositionListener;,
        Lamigo/widget/AmigoEditText$GnEditTextPositionListener;,
        Lamigo/widget/AmigoEditText$GnHandleView;,
        Lamigo/widget/AmigoEditText$GnSelectionEndHandleView;,
        Lamigo/widget/AmigoEditText$GnSelectionStartHandleView;,
        Lamigo/widget/AmigoEditText$GnCursorController;,
        Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;
    }
.end annotation


# static fields
.field private static final LOG_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AmigoEditText"

.field private static final sTmpPosition:[F


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected isEditToolbarReadMode:Z

.field private mAfterLongClicked:Z

.field private mArea:I

.field protected mContext:Landroid/content/Context;

.field private mCurOffset:I

.field private mCurX:I

.field private mCurY:I

.field private mDeletable:Z

.field private mDiscardNextActionUp:Z

.field protected mDoubleTaped:Z

.field private mDownMotionEvent:Landroid/view/MotionEvent;

.field private mDrawableSizeRight:I

.field private mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;

.field public mEnd:I

.field private mGnPositionListener:Lamigo/widget/AmigoEditText$GnPositionListener;

.field final mGnTempCoords:[I

.field private mGnTextWatcher:Lamigo/widget/AmigoEditText$GnTextWatcher;

.field private mImSwitcherEnabled:Z

.field private mIsFirstTap:Z

.field private mIsInTextSelectionMode:Z

.field private mMagnifierAndTextSelectionEnabled:Z

.field private mMagnifierEnabled:Z

.field private mModeCallback:Landroid/view/ActionMode$Callback;

.field private mOnScrollChanged:Z

.field private mPasswordDeleteListener:Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;

.field private mPreEnd:I

.field private mPreStart:I

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mQuickDelete:Z

.field private mSelectHandleEnd:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleStart:Landroid/graphics/drawable/Drawable;

.field private mSelectionActionMode:Landroid/view/ActionMode;

.field private mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

.field private mSelectionControllerEnabled:Z

.field private mSelectionToolEnabled:Z

.field mShouldHandleDelete:Z

.field private mShowQuickDeleteDrawable:Z

.field private final mSquaredTouchSlopDistance:I

.field public mStart:I

.field private mTextDeleteListener:Lamigo/widget/AmigoEditText$OnTextDeletedListener;

.field private mToolbarEnabled:Z

.field private mWordIterator:Lamigo/text/method/AmigoWordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lamigo/widget/AmigoEditText;->sTmpPosition:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lamigo/widget/AmigoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mDoubleTaped:Z

    .line 71
    const-string v2, "GnEditText"

    iput-object v2, p0, Lamigo/widget/AmigoEditText;->LOG_TAG:Ljava/lang/String;

    .line 74
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lamigo/widget/AmigoEditText;->mPreviousTapUpTime:J

    .line 76
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mDiscardNextActionUp:Z

    .line 77
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText;->mToolbarEnabled:Z

    .line 78
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText;->mSelectionToolEnabled:Z

    .line 81
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText;->mIsFirstTap:Z

    .line 82
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mAfterLongClicked:Z

    .line 83
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText;->mImSwitcherEnabled:Z

    .line 84
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mIsInTextSelectionMode:Z

    .line 89
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lamigo/widget/AmigoEditText;->mGnTempCoords:[I

    .line 90
    const/4 v2, -0x1

    iput v2, p0, Lamigo/widget/AmigoEditText;->mCurOffset:I

    .line 92
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText;->mMagnifierEnabled:Z

    .line 101
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->isEditToolbarReadMode:Z

    .line 103
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mMagnifierAndTextSelectionEnabled:Z

    .line 114
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mDeletable:Z

    .line 119
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mQuickDelete:Z

    .line 124
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mShouldHandleDelete:Z

    .line 134
    iput-object v6, p0, Lamigo/widget/AmigoEditText;->mTextDeleteListener:Lamigo/widget/AmigoEditText$OnTextDeletedListener;

    .line 135
    iput-object v6, p0, Lamigo/widget/AmigoEditText;->mPasswordDeleteListener:Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;

    .line 138
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText;->mShowQuickDeleteDrawable:Z

    .line 140
    iput-object v6, p0, Lamigo/widget/AmigoEditText;->mGnTextWatcher:Lamigo/widget/AmigoEditText$GnTextWatcher;

    .line 1491
    iput-boolean v4, p0, Lamigo/widget/AmigoEditText;->mOnScrollChanged:Z

    .line 1603
    new-instance v2, Lamigo/widget/AmigoEditText$1;

    invoke-direct {v2, p0}, Lamigo/widget/AmigoEditText$1;-><init>(Lamigo/widget/AmigoEditText;)V

    iput-object v2, p0, Lamigo/widget/AmigoEditText;->mModeCallback:Landroid/view/ActionMode$Callback;

    .line 156
    iput-object p1, p0, Lamigo/widget/AmigoEditText;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 158
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 159
    .local v0, "touchSlop":I
    mul-int v2, v0, v0

    iput v2, p0, Lamigo/widget/AmigoEditText;->mSquaredTouchSlopDistance:I

    .line 160
    iget-object v2, p0, Lamigo/widget/AmigoEditText;->mModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, v2}, Lamigo/widget/AmigoEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 161
    invoke-virtual {p0, v5}, Lamigo/widget/AmigoEditText;->setMagnifierAndTextSelectionEnabled(Z)V

    .line 163
    invoke-virtual {p0, v4}, Lamigo/widget/AmigoEditText;->setFastDeletable(Z)V

    .line 165
    invoke-virtual {p0, v5}, Lamigo/widget/AmigoEditText;->setMagnifierAndTextSelectionEnabled(Z)V

    .line 167
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    :cond_0
    iput-boolean v5, p0, Lamigo/widget/AmigoEditText;->mDeletable:Z

    .line 171
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lamigo/widget/AmigoEditText;->changeColor(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 60
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectHandleStart:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    iput-object p1, p0, Lamigo/widget/AmigoEditText;->mSelectHandleStart:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lamigo/widget/AmigoEditText;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 60
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectHandleEnd:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lamigo/widget/AmigoEditText;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    iput-object p1, p0, Lamigo/widget/AmigoEditText;->mSelectHandleEnd:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lamigo/widget/AmigoEditText;F)I
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;
    .param p1, "x1"    # F

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText;->getLineAtCoordinate(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lamigo/widget/AmigoEditText;)Lamigo/widget/AmigoEditText$GnPositionListener;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 60
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->getGnPositionListener()Lamigo/widget/AmigoEditText$GnPositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lamigo/widget/AmigoEditText;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 60
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    return-void
.end method

.method static synthetic access$500(Lamigo/widget/AmigoEditText;)V
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 60
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->showEditToolbar()V

    return-void
.end method

.method static synthetic access$602(Lamigo/widget/AmigoEditText;I)I
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lamigo/widget/AmigoEditText;->mCurOffset:I

    return p1
.end method

.method static synthetic access$800(Lamigo/widget/AmigoEditText;)Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;

    .prologue
    .line 60
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    return-object v0
.end method

.method static synthetic access$902(Lamigo/widget/AmigoEditText;Z)Z
    .locals 0
    .param p0, "x0"    # Lamigo/widget/AmigoEditText;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lamigo/widget/AmigoEditText;->mDeletable:Z

    return p1
.end method

.method private changeColor(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 176
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 179
    sget-object v7, Lcom/android/internal/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 181
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x40

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 182
    .local v6, "textSelectHandle":Landroid/graphics/drawable/Drawable;
    const/16 v7, 0x46

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 185
    .local v5, "textCursorDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lamigo/widget/AmigoEditText;->getSelectHandleCenter(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 187
    .local v4, "selectHandleCenter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 188
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 193
    :cond_0
    if-eqz v6, :cond_1

    .line 194
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    :cond_1
    if-eqz v5, :cond_2

    .line 199
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 202
    :cond_2
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoEditText;->setHighlightColor(I)V

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 208
    .local v2, "defaultColor":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 209
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x9040007

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    if-ne v2, v7, :cond_4

    .line 210
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoEditText;->setTextColor(I)V

    .line 211
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnBackgroud_C2()I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoEditText;->setHintTextColor(I)V

    .line 212
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 213
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 214
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getEditTextBackgroudColor_B3()I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoEditText;->setBackgroundColor(I)V

    .line 228
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "defaultColor":I
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "selectHandleCenter":Landroid/graphics/drawable/Drawable;
    .end local v5    # "textCursorDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "textSelectHandle":Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_0
    return-void

    .line 218
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "defaultColor":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "selectHandleCenter":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "textCursorDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "textSelectHandle":Landroid/graphics/drawable/Drawable;
    :cond_4
    const v7, 0x904000a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    if-ne v2, v7, :cond_3

    .line 219
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoEditText;->setTextColor(I)V

    .line 220
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorSecondaryOnAppbar_T2()I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoEditText;->setHintTextColor(I)V

    .line 221
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 222
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 223
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getEditTextBackgroudColor_B3()I

    move-result v7

    invoke-virtual {p0, v7}, Lamigo/widget/AmigoEditText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 476
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 479
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 480
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 481
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 483
    return p1
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    .line 1589
    iget-object v2, p0, Lamigo/widget/AmigoEditText;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Lamigo/widget/AmigoEditText;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1590
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .line 1591
    .local v1, "padding":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .line 1589
    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0
.end method

.method private getCharRange(I)[I
    .locals 10
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1680
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1681
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->length()I

    move-result v5

    .line 1683
    .local v5, "textLength":I
    add-int/lit8 v6, p1, 0x1

    if-ge v6, v5, :cond_0

    .line 1684
    invoke-interface {v4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1685
    .local v0, "currentChar":C
    add-int/lit8 v6, p1, 0x1

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1687
    .local v1, "nextChar":C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1688
    new-array v6, v7, [I

    aput p1, v6, v8

    add-int/lit8 v7, p1, 0x2

    aput v7, v6, v9

    .line 1709
    .end local v0    # "currentChar":C
    .end local v1    # "nextChar":C
    :goto_0
    return-object v6

    .line 1692
    :cond_0
    if-ge p1, v5, :cond_1

    .line 1693
    new-array v6, v7, [I

    aput p1, v6, v8

    add-int/lit8 v7, p1, 0x1

    aput v7, v6, v9

    goto :goto_0

    .line 1696
    :cond_1
    add-int/lit8 v6, p1, -0x2

    if-ltz v6, :cond_2

    .line 1697
    add-int/lit8 v6, p1, -0x1

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1698
    .local v2, "previousChar":C
    add-int/lit8 v6, p1, -0x2

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1700
    .local v3, "previousPreviousChar":C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1701
    new-array v6, v7, [I

    add-int/lit8 v7, p1, -0x2

    aput v7, v6, v8

    aput p1, v6, v9

    goto :goto_0

    .line 1705
    .end local v2    # "previousChar":C
    .end local v3    # "previousPreviousChar":C
    :cond_2
    add-int/lit8 v6, p1, -0x1

    if-ltz v6, :cond_3

    .line 1706
    new-array v6, v7, [I

    add-int/lit8 v7, p1, -0x1

    aput v7, v6, v8

    aput p1, v6, v9

    goto :goto_0

    .line 1709
    :cond_3
    new-array v6, v7, [I

    aput p1, v6, v8

    aput p1, v6, v9

    goto :goto_0
.end method

.method private declared-synchronized getEditToolbar()Lamigo/widget/AmigoTextViewEditToolbar;
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoTextViewEditToolbar;-><init>(Lamigo/widget/AmigoEditText;)V

    iput-object v0, p0, Lamigo/widget/AmigoEditText;->mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;

    .line 548
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getEditor()Landroid/widget/Editor;
    .locals 2

    .prologue
    .line 251
    const-string v1, "mEditor"

    invoke-static {p0, v1}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 252
    .local v0, "editor":Landroid/widget/Editor;
    return-object v0
.end method

.method private getGnPositionListener()Lamigo/widget/AmigoEditText$GnPositionListener;
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mGnPositionListener:Lamigo/widget/AmigoEditText$GnPositionListener;

    if-nez v0, :cond_0

    .line 1374
    new-instance v0, Lamigo/widget/AmigoEditText$GnPositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lamigo/widget/AmigoEditText$GnPositionListener;-><init>(Lamigo/widget/AmigoEditText;Lamigo/widget/AmigoEditText$1;)V

    iput-object v0, p0, Lamigo/widget/AmigoEditText;->mGnPositionListener:Lamigo/widget/AmigoEditText$GnPositionListener;

    .line 1377
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mGnPositionListener:Lamigo/widget/AmigoEditText$GnPositionListener;

    return-object v0
.end method

.method private getGnSelectionController()Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    invoke-direct {v0, p0}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;-><init>(Lamigo/widget/AmigoEditText;)V

    iput-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    .line 696
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 700
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    return-object v0
.end method

.method private getHintLayout()Landroid/text/Layout;
    .locals 2

    .prologue
    .line 1584
    const-string v1, "mHintLayout"

    invoke-static {p0, v1}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    .line 1585
    .local v0, "hintLayout":Landroid/text/Layout;
    return-object v0
.end method

.method private getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 465
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 468
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 469
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 470
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 472
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method private getSelectHandleCenter(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 232
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->getEditor()Landroid/widget/Editor;

    move-result-object v0

    .line 233
    .local v0, "editor":Landroid/widget/Editor;
    if-nez v0, :cond_0

    .line 234
    const/4 v1, 0x0

    .line 241
    :goto_0
    return-object v1

    .line 236
    :cond_0
    const-string v2, "mSelectHandleCenter"

    invoke-static {v0, v2}, Lcom/amigo/internal/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 237
    .local v1, "selectHandleCenter":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 238
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText;->initSelectHandleCenter(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 240
    :cond_1
    const-string v2, "mSelectHandleCenter"

    invoke-static {v0, v2, v1}, Lcom/amigo/internal/util/ReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getVerticalOffset(Z)I
    .locals 7
    .param p1, "forceNormal"    # Z

    .prologue
    .line 1559
    const/4 v5, 0x0

    .line 1560
    .local v5, "voffset":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getGravity()I

    move-result v6

    and-int/lit8 v1, v6, 0x70

    .line 1562
    .local v1, "gravity":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 1563
    .local v3, "l":Landroid/text/Layout;
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->getHintLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1564
    .local v2, "hintLayout":Landroid/text/Layout;
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    .line 1565
    move-object v3, v2

    .line 1568
    :cond_0
    const/16 v6, 0x30

    if-eq v1, v6, :cond_1

    .line 1569
    invoke-direct {p0, v3}, Lamigo/widget/AmigoEditText;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .line 1570
    .local v0, "boxht":I
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v4

    .line 1572
    .local v4, "textht":I
    if-ge v4, v0, :cond_1

    .line 1573
    const/16 v6, 0x50

    if-ne v1, v6, :cond_2

    .line 1574
    sub-int v5, v0, v4

    .line 1580
    .end local v0    # "boxht":I
    .end local v4    # "textht":I
    :cond_1
    :goto_0
    return v5

    .line 1576
    .restart local v0    # "boxht":I
    .restart local v4    # "textht":I
    :cond_2
    sub-int v6, v0, v4

    shr-int/lit8 v5, v6, 0x1

    goto :goto_0
.end method

.method private hideEditToolbar()V
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isToolbarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->hide()V

    goto :goto_0
.end method

.method private initSelectHandleCenter(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 245
    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 246
    .local v0, "mTextSelectHandleRes":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 247
    .local v1, "selectHandleCenter":Landroid/graphics/drawable/Drawable;
    return-object v1
.end method

.method private isEditToolbarShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 507
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isToolbarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    iget-object v1, p0, Lamigo/widget/AmigoEditText;->mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;

    if-eqz v1, :cond_0

    .line 512
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mEditToolbar:Lamigo/widget/AmigoTextViewEditToolbar;

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "currentText"    # Ljava/lang/String;

    .prologue
    .line 2065
    if-nez p1, :cond_0

    .line 2066
    const/4 v0, 0x0

    .line 2069
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private isOutside(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 538
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 540
    .local v1, "y":F
    cmpg-float v2, v0, v3

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    cmpg-float v2, v1, v3

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPositionOnSelection(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 434
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 435
    .local v2, "y":F
    invoke-virtual {p0, v1, v2}, Lamigo/widget/AmigoEditText;->getOffsetForPosition(FF)I

    move-result v0

    .line 436
    .local v0, "offset":I
    iget v3, p0, Lamigo/widget/AmigoEditText;->mStart:I

    if-le v0, v3, :cond_0

    iget v3, p0, Lamigo/widget/AmigoEditText;->mEnd:I

    if-ge v0, v3, :cond_0

    .line 437
    const/4 v3, 0x1

    .line 439
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v1

    .line 450
    :cond_1
    invoke-direct {p0, p2}, Lamigo/widget/AmigoEditText;->getLineAtCoordinate(F)I

    move-result v0

    .line 451
    .local v0, "line":I
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 453
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 457
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 461
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isStartHandleDraging()Z
    .locals 1

    .prologue
    .line 2150
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    if-nez v0, :cond_0

    .line 2151
    const/4 v0, 0x0

    .line 2153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v0

    goto :goto_0
.end method

.method private moveEditToolbar()V
    .locals 1

    .prologue
    .line 1950
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isToolbarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1955
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->getEditToolbar()Lamigo/widget/AmigoTextViewEditToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->move()V

    goto :goto_0
.end method

.method private onFastDelete()V
    .locals 4

    .prologue
    .line 2080
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, "mText":Ljava/lang/CharSequence;
    move-object v1, v0

    .line 2081
    check-cast v1, Landroid/text/Editable;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2082
    const-string v1, ""

    invoke-virtual {p0, v1}, Lamigo/widget/AmigoEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2083
    return-void
.end method

.method private positionCursor(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1756
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1795
    :goto_0
    return-void

    .line 1760
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {p0, v8}, Lamigo/widget/AmigoTextViewHelper;->getLineNumber(Landroid/widget/TextView;F)I

    move-result v3

    .line 1761
    .local v3, "line":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {p0, v3, v8}, Lamigo/widget/AmigoTextViewHelper;->getOffsetByLine(Landroid/widget/TextView;IF)I

    move-result v5

    .line 1763
    .local v5, "offset":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->length()I

    move-result v8

    if-gtz v8, :cond_2

    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    const/high16 v9, 0x10000

    invoke-static {v8, v9}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    if-nez v8, :cond_3

    .line 1765
    :cond_2
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1766
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 1772
    :goto_1
    invoke-direct {p0, p1}, Lamigo/widget/AmigoEditText;->isOutside(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1774
    .local v6, "outside":Z
    if-eqz v6, :cond_4

    .line 1775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lamigo/widget/AmigoEditText;->mCurX:I

    .line 1776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lamigo/widget/AmigoEditText;->mCurY:I

    goto :goto_0

    .line 1768
    .end local v6    # "outside":Z
    :cond_3
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v9

    invoke-static {v8, v9, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1

    .line 1778
    .restart local v6    # "outside":Z
    :cond_4
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1779
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1780
    .local v2, "left":I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1781
    .local v7, "top":I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    .line 1782
    .local v0, "bottom":I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v8

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTotalPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 1785
    .local v4, "lineRight":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    cmpl-float v8, v8, v4

    if-lez v8, :cond_6

    .line 1786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lamigo/widget/AmigoEditText;->mCurX:I

    .line 1792
    :cond_5
    :goto_2
    add-int v8, v7, v0

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTotalPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getScrollY()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Lamigo/widget/AmigoEditText;->mCurY:I

    goto/16 :goto_0

    .line 1787
    :cond_6
    iget v8, p0, Lamigo/widget/AmigoEditText;->mCurOffset:I

    if-eq v5, v8, :cond_5

    .line 1788
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTotalPaddingLeft()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getScrollX()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Lamigo/widget/AmigoEditText;->mCurX:I

    .line 1789
    iput v5, p0, Lamigo/widget/AmigoEditText;->mCurOffset:I

    goto :goto_2
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1798
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1799
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    .line 1803
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    if-eqz v0, :cond_1

    .line 1805
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 1809
    :cond_1
    iput v1, p0, Lamigo/widget/AmigoEditText;->mCurX:I

    .line 1810
    iput v1, p0, Lamigo/widget/AmigoEditText;->mCurY:I

    .line 1811
    const/4 v0, -0x1

    iput v0, p0, Lamigo/widget/AmigoEditText;->mCurOffset:I

    .line 1812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoEditText;->mIsFirstTap:Z

    .line 1814
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 1815
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1818
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 1819
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 20

    .prologue
    .line 599
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->length()I

    move-result v18

    if-gtz v18, :cond_0

    .line 600
    const/16 v18, 0x0

    .line 672
    :goto_0
    return v18

    .line 603
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 604
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->selectAll()V

    .line 606
    const/16 v18, 0x1

    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getInputType()I

    move-result v4

    .line 610
    .local v4, "inputType":I
    and-int/lit8 v5, v4, 0xf

    .line 611
    .local v5, "klass":I
    and-int/lit16 v0, v4, 0xff0

    move/from16 v16, v0

    .line 613
    .local v16, "variation":I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v5, v0, :cond_2

    const/16 v18, 0x10

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x20

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0xd0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0xb0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 620
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->selectAll()V

    .line 622
    const/16 v18, 0x1

    goto :goto_0

    .line 625
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v10

    .line 626
    .local v10, "selStart":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v9

    .line 627
    .local v9, "selEnd":I
    const/16 v18, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 628
    .local v7, "minOffset":I
    const/16 v18, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 630
    .local v6, "maxOffset":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_4

    .line 631
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->length()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .line 636
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    .local v13, "text":Ljava/lang/CharSequence;
    move-object/from16 v18, v13

    .line 638
    check-cast v18, Landroid/text/Spanned;

    const-class v19, Landroid/text/style/URLSpan;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/URLSpan;

    .local v15, "urlSpans":[Landroid/text/style/URLSpan;
    move-object/from16 v18, v13

    .line 640
    check-cast v18, Landroid/text/Spanned;

    const-class v19, Landroid/text/style/ImageSpan;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v7, v6, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ImageSpan;

    .line 643
    .local v3, "imageSpans":[Landroid/text/style/ImageSpan;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 644
    const/16 v18, 0x0

    aget-object v14, v15, v18

    .local v14, "urlSpan":Landroid/text/style/URLSpan;
    move-object/from16 v18, v13

    .line 645
    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .local v12, "selectionStart":I
    move-object/from16 v18, v13

    .line 646
    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 671
    .end local v14    # "urlSpan":Landroid/text/style/URLSpan;
    .local v11, "selectionEnd":I
    :cond_5
    :goto_1
    check-cast v13, Landroid/text/Spannable;

    .end local v13    # "text":Ljava/lang/CharSequence;
    invoke-static {v13, v12, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 672
    if-le v11, v12, :cond_a

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 647
    .end local v11    # "selectionEnd":I
    .end local v12    # "selectionStart":I
    .restart local v13    # "text":Ljava/lang/CharSequence;
    :cond_6
    array-length v0, v3

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 648
    const/16 v18, 0x0

    aget-object v2, v3, v18

    .local v2, "imageSpan":Landroid/text/style/ImageSpan;
    move-object/from16 v18, v13

    .line 649
    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .restart local v12    # "selectionStart":I
    move-object/from16 v18, v13

    .line 650
    check-cast v18, Landroid/text/Spanned;

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 651
    .restart local v11    # "selectionEnd":I
    goto :goto_1

    .line 652
    .end local v2    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v11    # "selectionEnd":I
    .end local v12    # "selectionStart":I
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoEditText;->getWordIterator(I)Lamigo/text/method/AmigoWordIterator;

    move-result-object v17

    .line 653
    .local v17, "wordIterator":Lamigo/text/method/AmigoWordIterator;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v7, v6}, Lamigo/text/method/AmigoWordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 655
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lamigo/text/method/AmigoWordIterator;->getBeginning(I)I

    move-result v12

    .line 656
    .restart local v12    # "selectionStart":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lamigo/text/method/AmigoWordIterator;->getEnd(I)I

    move-result v11

    .line 658
    .restart local v11    # "selectionEnd":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_8

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_9

    .line 660
    :cond_8
    move v12, v7

    .line 661
    move v11, v6

    .line 664
    :cond_9
    if-ne v12, v11, :cond_5

    .line 666
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lamigo/widget/AmigoEditText;->getCharRange(I)[I

    move-result-object v8

    .line 667
    .local v8, "range":[I
    const/16 v18, 0x0

    aget v12, v8, v18

    .line 668
    const/16 v18, 0x1

    aget v11, v8, v18

    goto :goto_1

    .line 672
    .end local v8    # "range":[I
    .end local v13    # "text":Ljava/lang/CharSequence;
    .end local v17    # "wordIterator":Lamigo/text/method/AmigoWordIterator;
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private showEditToolbar()V
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isToolbarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->isEditToolbarShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->getEditToolbar()Lamigo/widget/AmigoTextViewEditToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->move()V

    goto :goto_0

    .line 496
    :cond_2
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->getEditToolbar()Lamigo/widget/AmigoTextViewEditToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/widget/AmigoTextViewEditToolbar;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bringPointIntoView(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 2143
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->isStartHandleDraging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result p1

    .line 2146
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1858
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1859
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    .line 1864
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1843
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1844
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    .line 1848
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1849
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 1853
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1997
    const/4 v0, 0x1

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 5

    .prologue
    .line 1667
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1668
    .local v0, "locale":Ljava/util/Locale;
    iget-object v3, p0, Lamigo/widget/AmigoEditText;->mContext:Landroid/content/Context;

    const-string v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .line 1669
    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v1, 0x0

    .line 1671
    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    .line 1672
    new-instance v0, Ljava/util/Locale;

    .end local v0    # "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 1675
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-object v0
.end method

.method public getWordIterator(I)Lamigo/text/method/AmigoWordIterator;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1654
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mWordIterator:Lamigo/text/method/AmigoWordIterator;

    if-nez v0, :cond_0

    .line 1655
    new-instance v0, Lamigo/text/method/AmigoWordIterator;

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lamigo/text/method/AmigoWordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lamigo/widget/AmigoEditText;->mWordIterator:Lamigo/text/method/AmigoWordIterator;

    .line 1658
    :cond_0
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mWordIterator:Lamigo/text/method/AmigoWordIterator;

    return-object v0
.end method

.method protected hideGnSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mSelectionController:Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->hide()V

    .line 688
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoEditText;->setCursorVisible(Z)V

    .line 690
    return-void
.end method

.method public isFastDeletable()Z
    .locals 1

    .prologue
    .line 2042
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mQuickDelete:Z

    return v0
.end method

.method public isImSwitcherEnabled()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mImSwitcherEnabled:Z

    return v0
.end method

.method protected isMagnifierAndTextSelectionEnabled()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mMagnifierAndTextSelectionEnabled:Z

    return v0
.end method

.method protected isPositionVisible(II)Z
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1505
    sget-object v6, Lamigo/widget/AmigoEditText;->sTmpPosition:[F

    monitor-enter v6

    .line 1506
    :try_start_0
    sget-object v2, Lamigo/widget/AmigoEditText;->sTmpPosition:[F

    .line 1507
    .local v2, "position":[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 1508
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 1510
    move-object v3, p0

    .line 1512
    .local v3, "view":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 1513
    if-eq v3, p0, :cond_0

    .line 1515
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1516
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 1519
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1522
    :cond_1
    monitor-exit v6

    .line 1543
    :goto_1
    return v4

    .line 1525
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1526
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1529
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1530
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 1532
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1534
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 1535
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 1538
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1541
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 1543
    goto :goto_1

    .line 1541
    .end local v2    # "position":[F
    .end local v3    # "view":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isSelectionToolEnabled()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mSelectionToolEnabled:Z

    return v0
.end method

.method public isToolbarEnabled()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mToolbarEnabled:Z

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1899
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1901
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1903
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1904
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1908
    :cond_0
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v2, "IS_IME_STYLE_Gn"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1911
    :cond_1
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1884
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1886
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1887
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1888
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    .line 1890
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoEditText;->setSelection(I)V

    .line 1895
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1937
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 1939
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1940
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->moveEditToolbar()V

    .line 1942
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->isEditToolbarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lamigo/widget/AmigoEditText;->postInvalidateDelayed(J)V

    .line 1947
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1825
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1827
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->reset()V

    .line 1830
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2109
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mQuickDelete:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 2110
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2112
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mPasswordDeleteListener:Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mPasswordDeleteListener:Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;

    invoke-interface {v0}, Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;->onPasswordDeleted()Z

    .line 2116
    :cond_0
    const/4 v0, 0x1

    .line 2119
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1967
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 1971
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 1663
    const/4 v0, 0x0

    iput-object v0, p0, Lamigo/widget/AmigoEditText;->mWordIterator:Lamigo/text/method/AmigoWordIterator;

    .line 1664
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 2158
    invoke-super {p0}, Landroid/widget/EditText;->onPreDraw()Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1596
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1598
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoEditText;->setSelection(I)V

    .line 1601
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamigo/widget/AmigoEditText;->mOnScrollChanged:Z

    .line 1496
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    .line 1497
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mGnPositionListener:Lamigo/widget/AmigoEditText$GnPositionListener;

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mGnPositionListener:Lamigo/widget/AmigoEditText$GnPositionListener;

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnPositionListener;->onScrollChanged()V

    .line 1500
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 1641
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 1649
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1650
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mQuickDelete:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lamigo/widget/AmigoEditText;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 261
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getRight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getLeft()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoEditText;->mDrawableSizeRight:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 263
    .local v7, "deltX":I
    if-gez v7, :cond_1

    .line 264
    const/4 v14, 0x0

    .line 429
    .end local v7    # "deltX":I
    :cond_0
    :goto_0
    :pswitch_0
    return v14

    .line 267
    .restart local v7    # "deltX":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v5, v0

    .line 268
    .local v5, "cur_x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 271
    .local v6, "cur_y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 273
    .local v4, "action":I
    packed-switch v4, :pswitch_data_0

    .line 325
    .end local v4    # "action":I
    .end local v5    # "cur_x":I
    .end local v6    # "cur_y":I
    .end local v7    # "deltX":I
    :cond_2
    :goto_1
    :pswitch_1
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 327
    .local v14, "handled":Z
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v19

    packed-switch v19, :pswitch_data_1

    goto :goto_0

    .line 330
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoEditText;->mPreStart:I

    .line 331
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoEditText;->mPreEnd:I

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 333
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 335
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 339
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lamigo/widget/AmigoEditText;->mPreviousTapUpTime:J

    move-wide/from16 v22, v0

    sub-long v12, v20, v22

    .line 345
    .local v12, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v19, v12, v20

    if-gtz v19, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lamigo/widget/AmigoEditText;->isPositionOnText(FF)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoEditText;->mPreviousTapPositionX:F

    move/from16 v19, v0

    sub-float v8, v17, v19

    .line 348
    .local v8, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoEditText;->mPreviousTapPositionY:F

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 349
    .local v9, "deltaY":F
    mul-float v19, v8, v8

    mul-float v20, v9, v9

    add-float v10, v19, v20

    .line 352
    .local v10, "distanceSquared":F
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoEditText;->mSquaredTouchSlopDistance:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v10, v19

    if-gez v19, :cond_5

    .line 353
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->startTextSelectionMode()Z

    .line 355
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 356
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mDoubleTaped:Z

    .line 359
    :cond_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mDiscardNextActionUp:Z

    .line 363
    .end local v8    # "deltaX":F
    .end local v9    # "deltaY":F
    .end local v10    # "distanceSquared":F
    :cond_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoEditText;->mPreviousTapPositionX:F

    .line 364
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoEditText;->mPreviousTapPositionY:F

    goto/16 :goto_0

    .line 275
    .end local v12    # "duration":J
    .end local v14    # "handled":Z
    .end local v17    # "x":F
    .end local v18    # "y":F
    .restart local v4    # "action":I
    .restart local v5    # "cur_x":I
    .restart local v6    # "cur_y":I
    .restart local v7    # "deltX":I
    :pswitch_3
    if-le v5, v7, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mDeletable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 277
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mShouldHandleDelete:Z

    .line 279
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 286
    :pswitch_4
    if-le v5, v7, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mDeletable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mShouldHandleDelete:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mTextDeleteListener:Lamigo/widget/AmigoEditText$OnTextDeletedListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lamigo/widget/AmigoEditText;->mTextDeleteListener:Lamigo/widget/AmigoEditText$OnTextDeletedListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lamigo/widget/AmigoEditText$OnTextDeletedListener;->onTextDeleted()Z

    move-result v19

    if-nez v19, :cond_2

    .line 299
    :cond_6
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->onFastDelete()V

    .line 300
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mShouldHandleDelete:Z

    .line 302
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 310
    :pswitch_5
    if-lt v5, v7, :cond_2

    if-ltz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-le v6, v0, :cond_2

    goto/16 :goto_1

    .line 369
    .end local v4    # "action":I
    .end local v5    # "cur_x":I
    .end local v6    # "cur_y":I
    .end local v7    # "deltX":I
    .restart local v14    # "handled":Z
    :pswitch_6
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lamigo/widget/AmigoEditText;->mCurOffset:I

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lamigo/widget/AmigoEditText;->mPreviousTapUpTime:J

    .line 372
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mDoubleTaped:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mToolbarEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mSelectionToolEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 375
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->startTextSelectionMode()Z

    .line 377
    :cond_7
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->showEditToolbar()V

    .line 380
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mDoubleTaped:Z

    .line 415
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mAfterLongClicked:Z

    .line 416
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mIsFirstTap:Z

    goto/16 :goto_0

    .line 383
    :cond_9
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->isEditToolbarShowing()Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mAfterLongClicked:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 384
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mIsInTextSelectionMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 385
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getEditToolbar()Lamigo/widget/AmigoTextViewEditToolbar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lamigo/widget/AmigoTextViewEditToolbar;->move()V

    .line 405
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mOnScrollChanged:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mIsInTextSelectionMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    invoke-direct/range {p0 .. p1}, Lamigo/widget/AmigoEditText;->isPositionOnSelection(Landroid/view/MotionEvent;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 407
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 410
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lamigo/widget/AmigoEditText;->mOnScrollChanged:Z

    goto :goto_2

    .line 387
    :cond_c
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    goto :goto_3

    .line 390
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getSelectionStart()I

    move-result v16

    .line 391
    .local v16, "start":I
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v11

    .line 392
    .local v11, "end":I
    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoEditText;->mPreStart:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoEditText;->mPreEnd:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move/from16 v0, v16

    if-ne v0, v11, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lamigo/widget/AmigoEditText;->mPreStart:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/4 v15, 0x1

    .line 394
    .local v15, "moved":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v19

    if-eqz v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->isInputMethodTarget()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-direct/range {p0 .. p1}, Lamigo/widget/AmigoEditText;->isOutside(Landroid/view/MotionEvent;)Z

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mIsFirstTap:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    if-nez v15, :cond_a

    .line 397
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lamigo/widget/AmigoEditText;->mToolbarEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 398
    invoke-direct/range {p0 .. p0}, Lamigo/widget/AmigoEditText;->showEditToolbar()V

    goto :goto_3

    .line 392
    .end local v15    # "moved":Z
    :cond_e
    const/4 v15, 0x0

    goto :goto_4

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1870
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1872
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    if-eqz p2, :cond_0

    .line 1874
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1875
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->hideEditToolbar()V

    .line 1879
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1834
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1836
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->reset()V

    .line 1839
    :cond_0
    return-void
.end method

.method public performLongClick()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1717
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->showEditToolbar()V

    .line 1720
    const/4 v0, 0x0

    .line 1722
    .local v0, "handled":Z
    const/4 v1, 0x1

    .line 1725
    .local v1, "vibrate":Z
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1726
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->showContextMenu()Z

    move-result v0

    .line 1728
    if-nez v0, :cond_0

    iget-object v3, p0, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getDefaultEditable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1729
    iget-object v3, p0, Lamigo/widget/AmigoEditText;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v3}, Lamigo/widget/AmigoEditText;->positionCursor(Landroid/view/MotionEvent;)V

    .line 1735
    iput-boolean v2, p0, Lamigo/widget/AmigoEditText;->mAfterLongClicked:Z

    .line 1736
    const/4 v0, 0x1

    .line 1740
    :cond_0
    if-eqz v1, :cond_1

    .line 1741
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lamigo/widget/AmigoEditText;->performHapticFeedback(I)Z

    .line 1744
    :cond_1
    if-eqz v0, :cond_2

    .line 1748
    :goto_0
    return v2

    :cond_2
    invoke-super {p0}, Landroid/widget/EditText;->performLongClick()Z

    move-result v2

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 2094
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mShowQuickDeleteDrawable:Z

    if-nez v0, :cond_0

    .line 2095
    invoke-super {p0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2098
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2100
    if-eqz p3, :cond_1

    .line 2101
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lamigo/widget/AmigoEditText;->mDrawableSizeRight:I

    .line 2105
    :goto_0
    return-void

    .line 2103
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lamigo/widget/AmigoEditText;->mDrawableSizeRight:I

    goto :goto_0
.end method

.method public setFastDeletable(Z)V
    .locals 2
    .param p1, "quickDelete"    # Z

    .prologue
    .line 2026
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mQuickDelete:Z

    if-eq v0, p1, :cond_0

    .line 2027
    iput-boolean p1, p0, Lamigo/widget/AmigoEditText;->mQuickDelete:Z

    .line 2028
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mQuickDelete:Z

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mGnTextWatcher:Lamigo/widget/AmigoEditText$GnTextWatcher;

    if-nez v0, :cond_0

    .line 2031
    new-instance v0, Lamigo/widget/AmigoEditText$GnTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lamigo/widget/AmigoEditText$GnTextWatcher;-><init>(Lamigo/widget/AmigoEditText;Lamigo/widget/AmigoEditText$1;)V

    iput-object v0, p0, Lamigo/widget/AmigoEditText;->mGnTextWatcher:Lamigo/widget/AmigoEditText$GnTextWatcher;

    .line 2032
    iget-object v0, p0, Lamigo/widget/AmigoEditText;->mGnTextWatcher:Lamigo/widget/AmigoEditText$GnTextWatcher;

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2036
    :cond_0
    return-void
.end method

.method public setMagnifierAndTextSelectionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1918
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->isMagnifierAndTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1920
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->stopTextSelectionMode()V

    .line 1923
    :cond_0
    iput-boolean p1, p0, Lamigo/widget/AmigoEditText;->mMagnifierAndTextSelectionEnabled:Z

    .line 1924
    return-void
.end method

.method public setMagnifierEnabled(Z)V
    .locals 0
    .param p1, "magnifierEnabled"    # Z

    .prologue
    .line 1931
    iput-boolean p1, p0, Lamigo/widget/AmigoEditText;->mMagnifierEnabled:Z

    .line 1932
    return-void
.end method

.method public setOnPasswordDeletedListener(Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;)V
    .locals 0
    .param p1, "passwordDeletedListener"    # Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;

    .prologue
    .line 2055
    iput-object p1, p0, Lamigo/widget/AmigoEditText;->mPasswordDeleteListener:Lamigo/widget/AmigoEditText$OnPasswordDeletedListener;

    .line 2056
    return-void
.end method

.method public setOnTextDeletedListener(Lamigo/widget/AmigoEditText$OnTextDeletedListener;)V
    .locals 0
    .param p1, "textDeleteListener"    # Lamigo/widget/AmigoEditText$OnTextDeletedListener;

    .prologue
    .line 2050
    iput-object p1, p0, Lamigo/widget/AmigoEditText;->mTextDeleteListener:Lamigo/widget/AmigoEditText$OnTextDeletedListener;

    .line 2051
    return-void
.end method

.method public setQuickDeleteDrawableVisible(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 2123
    iput-boolean p1, p0, Lamigo/widget/AmigoEditText;->mShowQuickDeleteDrawable:Z

    .line 2124
    return-void
.end method

.method public setToolbarEnabled(Z)V
    .locals 0
    .param p1, "toolbarEnabled"    # Z

    .prologue
    .line 1962
    iput-boolean p1, p0, Lamigo/widget/AmigoEditText;->mToolbarEnabled:Z

    .line 1963
    return-void
.end method

.method protected showGnSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->getGnSelectionController()Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lamigo/widget/AmigoEditText$GnSelectionModifierCursorController;->show()V

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoEditText;->setCursorVisible(Z)V

    .line 680
    return-void
.end method

.method public startTextSelectionMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 569
    iget-boolean v2, p0, Lamigo/widget/AmigoEditText;->mIsInTextSelectionMode:Z

    if-nez v2, :cond_3

    .line 570
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 586
    :goto_0
    return v0

    .line 574
    :cond_1
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->hasSelection()Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    invoke-direct {p0}, Lamigo/widget/AmigoEditText;->selectCurrentWord()Z

    move-result v1

    if-nez v1, :cond_2

    .line 580
    :cond_2
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->showGnSelectionModifierCursorController()V

    .line 581
    iput-boolean v0, p0, Lamigo/widget/AmigoEditText;->mIsInTextSelectionMode:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 586
    goto :goto_0
.end method

.method public stopTextSelectionMode()V
    .locals 2

    .prologue
    .line 1631
    iget-boolean v0, p0, Lamigo/widget/AmigoEditText;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_0

    .line 1632
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1633
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->hideGnSelectionModifierCursorController()V

    .line 1634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamigo/widget/AmigoEditText;->mIsInTextSelectionMode:Z

    .line 1636
    :cond_0
    return-void
.end method

.method protected viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 1547
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getCompoundPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 1551
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getExtendedPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getScrollY()I

    move-result v2

    sub-int v0, v1, v2

    .line 1552
    .local v0, "offset":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditText;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 1553
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lamigo/widget/AmigoEditText;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 1555
    :cond_0
    return v0
.end method
