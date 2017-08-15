.class public Lamigo/widget/AmigoEditModeView;
.super Landroid/widget/RelativeLayout;
.source "AmigoEditModeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamigo/widget/AmigoEditModeView$EditModeClickListener;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mClickListener:Lamigo/widget/AmigoEditModeView$EditModeClickListener;

.field private mCxt:Landroid/content/Context;

.field private mLeftBtn:Lamigo/widget/AmigoButton;

.field private mLeftBtnTxt:Ljava/lang/String;

.field private mRightBtn:Lamigo/widget/AmigoButton;

.field private mRightBtnTxt:Ljava/lang/String;

.field private mTxtColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lamigo/widget/AmigoEditModeView;->mCxt:Landroid/content/Context;

    .line 31
    sget-object v4, Lcom/amigo/internal/R$styleable;->AmigoEditModeView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtnTxt:Ljava/lang/String;

    .line 35
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lamigo/widget/AmigoEditModeView;->mRightBtnTxt:Ljava/lang/String;

    .line 37
    const/4 v4, 0x2

    const v5, 0x106000b

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 40
    .local v3, "color":I
    invoke-virtual {p0}, Lamigo/widget/AmigoEditModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    .line 41
    const/4 v4, 0x0

    sget-object v5, Lcom/amigo/internal/R$styleable;->AmigoActionBar:[I

    const v6, 0x9010066

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 43
    .local v1, "bar":Landroid/content/res/TypedArray;
    const/high16 v4, 0x1060000

    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 45
    .local v2, "bgcolor":I
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lamigo/widget/AmigoEditModeView;->mBackgroundColor:I

    .line 48
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAppbarColor_A1()I

    move-result v4

    iput v4, p0, Lamigo/widget/AmigoEditModeView;->mBackgroundColor:I

    .line 50
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnAppbar_T1()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-direct {p0}, Lamigo/widget/AmigoEditModeView;->initViews()V

    .line 58
    invoke-direct {p0}, Lamigo/widget/AmigoEditModeView;->initClickListener()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lamigo/widget/AmigoEditModeView;)Lamigo/widget/AmigoEditModeView$EditModeClickListener;
    .locals 1
    .param p0, "x0"    # Lamigo/widget/AmigoEditModeView;

    .prologue
    .line 18
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mClickListener:Lamigo/widget/AmigoEditModeView$EditModeClickListener;

    return-object v0
.end method

.method private addLeftButton()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 90
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mCxt:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x9030032

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lamigo/widget/AmigoButton;

    iput-object v2, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    .line 94
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtnTxt:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mCxt:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x9090010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtnTxt:Ljava/lang/String;

    .line 99
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v1, "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 104
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    iget-object v3, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtnTxt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    iget-object v3, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 108
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {p0, v2, v1}, Lamigo/widget/AmigoEditModeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method private addRightButton()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 68
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mCxt:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x9030032

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lamigo/widget/AmigoButton;

    iput-object v2, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    .line 73
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mRightBtnTxt:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mCxt:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x909000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lamigo/widget/AmigoEditModeView;->mRightBtnTxt:Ljava/lang/String;

    .line 77
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v1, "rParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81
    const/16 v2, 0xf

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    iget-object v3, p0, Lamigo/widget/AmigoEditModeView;->mRightBtnTxt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    iget-object v3, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lamigo/widget/AmigoButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 86
    :cond_1
    iget-object v2, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {p0, v2, v1}, Lamigo/widget/AmigoEditModeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method private initClickListener()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    new-instance v1, Lamigo/widget/AmigoEditModeView$1;

    invoke-direct {v1, p0}, Lamigo/widget/AmigoEditModeView$1;-><init>(Lamigo/widget/AmigoEditModeView;)V

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    new-instance v1, Lamigo/widget/AmigoEditModeView$2;

    invoke-direct {v1, p0}, Lamigo/widget/AmigoEditModeView$2;-><init>(Lamigo/widget/AmigoEditModeView;)V

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lamigo/widget/AmigoEditModeView;->addLeftButton()V

    .line 63
    invoke-direct {p0}, Lamigo/widget/AmigoEditModeView;->addRightButton()V

    .line 64
    iget v0, p0, Lamigo/widget/AmigoEditModeView;->mBackgroundColor:I

    invoke-virtual {p0, v0}, Lamigo/widget/AmigoEditModeView;->setBackgroundColor(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public setEditModeBackgroud(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lamigo/widget/AmigoEditModeView;->setBackgroundColor(I)V

    .line 137
    return-void
.end method

.method public setEditModeBtnClickListener(Lamigo/widget/AmigoEditModeView$EditModeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lamigo/widget/AmigoEditModeView$EditModeClickListener;

    .prologue
    .line 160
    iput-object p1, p0, Lamigo/widget/AmigoEditModeView;->mClickListener:Lamigo/widget/AmigoEditModeView$EditModeClickListener;

    .line 161
    return-void
.end method

.method public setEditModeBtnTxt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "leftbtntxt"    # Ljava/lang/String;
    .param p2, "rightbtntxt"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v0, p2}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public setEditModeTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 140
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    .line 141
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoButton;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoButton;->setTextColor(I)V

    .line 143
    return-void
.end method

.method public setEditModeTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Lamigo/widget/AmigoEditModeView;->mTxtColor:Landroid/content/res/ColorStateList;

    .line 150
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mLeftBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    iget-object v0, p0, Lamigo/widget/AmigoEditModeView;->mRightBtn:Lamigo/widget/AmigoButton;

    invoke-virtual {v0, p1}, Lamigo/widget/AmigoButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
