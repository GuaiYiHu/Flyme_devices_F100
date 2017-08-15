.class public Lcom/amigo/internal/widget/AmigoActionBarContextView;
.super Lcom/amigo/internal/widget/AmigoAbsActionBarView;
.source "AmigoActionBarContextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final CUSTOMVIEW_LMARGIN:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mAnimateInOnLayout:Z

.field private mAnimationMode:I

.field private mClose:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mCustomView:Landroid/view/View;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    sget-object v1, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleStyleRes:I

    .line 71
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitleStyleRes:I

    .line 73
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContentHeight:I

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->changeColors()V

    .line 81
    return-void
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 568
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private finishAnimation()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 271
    .local v0, "a":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 273
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 275
    :cond_0
    return-void
.end method

.method private initTitle()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 167
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x903001b

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 169
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x90b0001

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 170
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v7, 0x90b0002

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 171
    iget v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 174
    :cond_0
    iget v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 183
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 184
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 187
    iget-object v3, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->addView(Landroid/view/View;)V

    .line 189
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 182
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 183
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 184
    goto :goto_2
.end method

.method private makeInAnimation()Landroid/animation/Animator;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 402
    iget-object v9, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v10, v8

    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v8, v10, v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 404
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    const-string v9, "translationX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 405
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 406
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 409
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 410
    .local v7, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 412
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 413
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 414
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 415
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ltz v5, :cond_0

    .line 416
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 417
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 418
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v3, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 419
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 420
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 415
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 425
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    return-object v7

    .line 418
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private makeOutAnimation()Landroid/animation/Animator;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 429
    iget-object v8, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    const-string v9, "translationX"

    new-array v10, v14, [F

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    neg-int v11, v7

    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v11, v7

    int-to-float v7, v7

    aput v7, v10, v13

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 431
    .local v2, "buttonAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 432
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 436
    .local v6, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 438
    .local v1, "b":Landroid/animation/AnimatorSet$Builder;
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 439
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 440
    .local v4, "count":I
    if-lez v4, :cond_0

    .line 441
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gez v5, :cond_0

    .line 442
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 443
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 444
    const-string v7, "scaleY"

    new-array v8, v14, [F

    aput v12, v8, v13

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 445
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 446
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 441
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 451
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_0
    return-object v6
.end method


# virtual methods
.method public changeColors()V
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAppbarColor_A1()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setBackgroundColor(I)V

    .line 564
    :cond_0
    return-void
.end method

.method public closeMode()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 254
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimationMode:I

    if-ne v0, v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->killMode()V

    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->finishAnimation()V

    .line 264
    iput v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimationMode:I

    .line 265
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->makeOutAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 266
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 316
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 321
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v4, 0x1

    .line 192
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    if-nez v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 194
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x9030024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    .line 195
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->addView(Landroid/view/View;)V

    .line 200
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 202
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 204
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorThirdlyOnBackgroud_C3()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    new-instance v3, Lcom/amigo/internal/widget/AmigoActionBarContextView$1;

    invoke-direct {v3, p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContextView$1;-><init>(Lcom/amigo/internal/widget/AmigoActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 247
    iput-boolean v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimateInOnLayout:Z

    .line 249
    iput-boolean v4, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mIsActionMode:Z

    .line 251
    return-void

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isActionModeShowing()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mIsActionModeShowing:Z

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->finishAnimation()V

    .line 279
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->removeAllViews()V

    .line 280
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSplitView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSplitView:Lcom/amigo/internal/widget/AmigoActionBarContainer;

    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarContainer;->removeView(Landroid/view/View;)V

    .line 283
    :cond_0
    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    .line 284
    iput-object v2, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimateInOnLayout:Z

    .line 286
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 507
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 499
    iget v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->killMode()V

    .line 502
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimationMode:I

    .line 503
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 511
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 495
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onDetachedFromWindow()V

    .line 86
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 88
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 90
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 522
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 523
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-super {p0, p1}, Lcom/amigo/internal/widget/AmigoAbsActionBarView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->isLayoutRtl()Z

    move-result v5

    .line 457
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 458
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 459
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 461
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 463
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 464
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 465
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->next(IIZ)I

    move-result v2

    .line 466
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 467
    invoke-static {v2, v12, v5}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->next(IIZ)I

    move-result v2

    .line 469
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimateInOnLayout:Z

    if-eqz v0, :cond_0

    .line 470
    const/4 v0, 0x1

    iput v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimationMode:I

    .line 471
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->makeInAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 472
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mAnimateInOnLayout:Z

    .line 477
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v2, v0

    .line 483
    iget-object v1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 486
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 488
    :goto_3
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 489
    iget-object v7, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 491
    :cond_3
    return-void

    .line 457
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 463
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 464
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 486
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 489
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 326
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 327
    .local v23, "widthMode":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 328
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 332
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 333
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 334
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 338
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 340
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContentHeight:I

    .line 342
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 343
    .local v22, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 344
    .local v3, "availableWidth":I
    sub-int v11, v15, v22

    .line 345
    .local v11, "height":I
    const/high16 v24, -0x80000000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 347
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 350
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 353
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mMenuView:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 357
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 358
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 359
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 360
    .local v20, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 362
    .local v19, "titleWidth":I
    move/from16 v0, v19

    if-gt v0, v3, :cond_9

    const/16 v18, 0x1

    .line 363
    .local v18, "titleFits":Z
    :goto_1
    if-eqz v18, :cond_4

    .line 364
    sub-int v3, v3, v19

    .line 366
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_a

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 374
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/high16 v10, 0x40000000    # 2.0f

    .line 376
    .local v10, "customWidthMode":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v24

    const/high16 v25, 0x41a00000    # 20.0f

    invoke-static/range {v24 .. v25}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->dip2px(Landroid/content/Context;F)I

    move-result v24

    sub-int v3, v3, v24

    .line 377
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_d

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 378
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    .line 380
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_f

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 381
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 385
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_11

    .line 386
    const/16 v16, 0x0

    .line 387
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getChildCount()I

    move-result v6

    .line 388
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_10

    .line 389
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 390
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 391
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 392
    move/from16 v16, v17

    .line 388
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 340
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 362
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v15    # "maxHeight":I
    .restart local v19    # "titleWidth":I
    .restart local v20    # "titleWidthSpec":I
    .restart local v22    # "verticalPadding":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 366
    .restart local v18    # "titleFits":Z
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 368
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 374
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x80000000

    goto/16 :goto_4

    .restart local v10    # "customWidthMode":I
    :cond_d
    move v9, v3

    .line 377
    goto :goto_5

    .line 378
    .restart local v9    # "customWidth":I
    :cond_e
    const/high16 v8, -0x80000000

    goto :goto_6

    .restart local v8    # "customHeightMode":I
    :cond_f
    move v7, v11

    .line 380
    goto :goto_7

    .line 395
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setMeasuredDimension(II)V

    .line 399
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_9
    return-void

    .line 397
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mContentHeight:I

    .line 129
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mCustomView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->removeView(Landroid/view/View;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 140
    :cond_1
    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p0, p1}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->addView(Landroid/view/View;)V

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->requestLayout()V

    .line 144
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 153
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->initTitle()V

    .line 154
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 148
    invoke-direct {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->initTitle()V

    .line 149
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/amigo/internal/widget/AmigoActionBarContextView;->requestLayout()V

    .line 535
    :cond_0
    iput-boolean p1, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mTitleOptional:Z

    .line 536
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/amigo/internal/widget/AmigoActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
