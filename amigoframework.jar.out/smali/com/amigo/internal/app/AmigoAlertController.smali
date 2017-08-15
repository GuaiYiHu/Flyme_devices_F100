.class public Lcom/amigo/internal/app/AmigoAlertController;
.super Ljava/lang/Object;
.source "AmigoAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amigo/internal/app/AmigoAlertController$AlertParams;,
        Lcom/amigo/internal/app/AmigoAlertController$RecycleListView;,
        Lcom/amigo/internal/app/AmigoAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static mIsGnWidget3Style:Z


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAlertDialogMaxHeight:I

.field private mButtonCancel:Landroid/widget/ImageButton;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Lamigo/widget/AmigoButton;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Lamigo/widget/AmigoButton;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralStyle:I

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Lamigo/widget/AmigoButton;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveStyle:I

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mContextMenuDialogMaxHeight:I

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasCancelIconButton:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsStrongHint:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mPositiveColor:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mStrongHintLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amigo/internal/app/AmigoAlertController;->mIsGnWidget3Style:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v3, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingSpecified:Z

    .line 98
    iput v3, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconId:I

    .line 114
    const/4 v1, -0x1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mCheckedItem:I

    .line 126
    iput v3, p0, Lcom/amigo/internal/app/AmigoAlertController;->mPositiveColor:I

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mHasCancelIconButton:Z

    .line 130
    iput-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonCancel:Landroid/widget/ImageButton;

    .line 146
    new-instance v1, Lcom/amigo/internal/app/AmigoAlertController$1;

    invoke-direct {v1, p0}, Lcom/amigo/internal/app/AmigoAlertController$1;-><init>(Lcom/amigo/internal/app/AmigoAlertController;)V

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 214
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 216
    iput-object p3, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    .line 217
    new-instance v1, Lcom/amigo/internal/app/AmigoAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/amigo/internal/app/AmigoAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mHandler:Landroid/os/Handler;

    .line 219
    sget-object v1, Lcom/amigo/internal/R$styleable;->AmigoAlertDialog:[I

    const v2, 0x9010070

    invoke-virtual {p1, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    .local v0, "a":Landroid/content/res/TypedArray;
    const v1, 0x9030011

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mAlertDialogLayout:I

    .line 225
    const/16 v1, 0xb

    const v2, 0x9030012

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListLayout:I

    .line 228
    const/16 v1, 0xc

    const v2, 0x9030013

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMultiChoiceItemLayout:I

    .line 231
    const/16 v1, 0xd

    const v2, 0x9030014

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mSingleChoiceItemLayout:I

    .line 234
    const/16 v1, 0xe

    const v2, 0x9030015

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListItemLayout:I

    .line 238
    const/16 v1, 0x12

    const v2, 0x9030037

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mStrongHintLayout:I

    .line 243
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mAlertDialogMaxHeight:I

    .line 247
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x9050019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContextMenuDialogMaxHeight:I

    .line 249
    const/16 v1, 0x11

    const v2, 0x106000c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mPositiveColor:I

    .line 253
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/amigo/internal/app/AmigoAlertController;)Lamigo/widget/AmigoButton;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amigo/internal/app/AmigoAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/amigo/internal/app/AmigoAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/amigo/internal/app/AmigoAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/amigo/internal/app/AmigoAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1402(Lcom/amigo/internal/app/AmigoAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/amigo/internal/app/AmigoAlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1602(Lcom/amigo/internal/app/AmigoAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amigo/internal/app/AmigoAlertController;)Lamigo/widget/AmigoButton;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amigo/internal/app/AmigoAlertController;)Lamigo/widget/AmigoButton;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonCancel:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amigo/internal/app/AmigoAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/amigo/internal/app/AmigoAlertController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/amigo/internal/app/AmigoAlertController;->mIsGnWidget3Style:Z

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    :goto_0
    return v2

    .line 261
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 262
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 265
    check-cast v1, Landroid/view/ViewGroup;

    .line 266
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 267
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 268
    add-int/lit8 v0, v0, -0x1

    .line 269
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 270
    invoke-static {p0}, Lcom/amigo/internal/app/AmigoAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 275
    goto :goto_0
.end method

.method private centerButton(Lamigo/widget/AmigoButton;)V
    .locals 2
    .param p1, "button"    # Lamigo/widget/AmigoButton;

    .prologue
    .line 778
    invoke-virtual {p1}, Lamigo/widget/AmigoButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 779
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 780
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 781
    invoke-virtual {p1, v0}, Lamigo/widget/AmigoButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    return-void
.end method

.method private holdByStrongHint(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIsStrongHint:Z

    return v0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 798
    const/16 v19, 0x1

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 800
    .local v9, "fullDark":I
    const/16 v19, 0x2

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 802
    .local v16, "topDark":I
    const/16 v19, 0x3

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 804
    .local v7, "centerDark":I
    const/16 v19, 0x4

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 806
    .local v4, "bottomDark":I
    const/16 v19, 0x5

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 808
    .local v8, "fullBright":I
    const/16 v19, 0x6

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 810
    .local v15, "topBright":I
    const/16 v19, 0x7

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 812
    .local v6, "centerBright":I
    const/16 v19, 0x8

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 814
    .local v3, "bottomBright":I
    const/16 v19, 0x9

    const v20, 0x106000b

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 826
    .local v5, "bottomMedium":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 827
    .local v18, "views":[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 828
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 829
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 831
    .local v10, "lastLight":Z
    const/4 v13, 0x0

    .line 832
    .local v13, "pos":I
    if-eqz p6, :cond_0

    .line 833
    aput-object p1, v18, v13

    .line 834
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 835
    add-int/lit8 v13, v13, 0x1

    .line 843
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_1
    aput-object p2, v18, v13

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v12, v13

    .line 846
    add-int/lit8 v13, v13, 0x1

    .line 847
    if-eqz p3, :cond_2

    .line 848
    aput-object p3, v18, v13

    .line 849
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 850
    add-int/lit8 v13, v13, 0x1

    .line 852
    :cond_2
    if-eqz p4, :cond_3

    .line 853
    aput-object p7, v18, v13

    .line 854
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 857
    :cond_3
    const/4 v14, 0x0

    .line 858
    .local v14, "setView":Z
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 859
    aget-object v17, v18, v13

    .line 860
    .local v17, "v":Landroid/view/View;
    if-nez v17, :cond_5

    .line 858
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 845
    .end local v14    # "setView":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 863
    .restart local v14    # "setView":Z
    .restart local v17    # "v":Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 864
    if-nez v14, :cond_8

    .line 865
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 869
    :goto_4
    const/4 v14, 0x1

    .line 871
    :cond_6
    move-object/from16 v11, v17

    .line 872
    aget-boolean v10, v12, v13

    goto :goto_2

    :cond_7
    move/from16 v19, v16

    .line 865
    goto :goto_3

    .line 867
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v19, v7

    goto :goto_5

    .line 875
    .end local v17    # "v":Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 876
    if-eqz v14, :cond_f

    .line 881
    if-eqz v10, :cond_e

    if-eqz p4, :cond_d

    .end local v5    # "bottomMedium":I
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 913
    .end local v8    # "fullBright":I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amigo/internal/app/AmigoAlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 920
    :cond_c
    return-void

    .restart local v5    # "bottomMedium":I
    .restart local v8    # "fullBright":I
    :cond_d
    move v5, v3

    .line 881
    goto :goto_6

    :cond_e
    move v5, v4

    goto :goto_6

    .line 884
    :cond_f
    if-eqz v10, :cond_10

    .end local v8    # "fullBright":I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8    # "fullBright":I
    :cond_10
    move v8, v9

    goto :goto_8
.end method

.method private setupButtonStyle()V
    .locals 4

    .prologue
    const v3, 0x9040004

    const/4 v2, 0x1

    .line 1218
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveStyle:I

    if-ne v0, v2, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1221
    :cond_0
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralStyle:I

    if-ne v0, v2, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1225
    :cond_1
    return-void
.end method

.method private setupButtons()Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 712
    const/4 v2, 0x1

    .line 713
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 714
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 715
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 716
    .local v3, "whichButtons":I
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x90b0035

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lamigo/widget/AmigoButton;

    iput-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    .line 717
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    iget-object v6, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lamigo/widget/AmigoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 720
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    invoke-virtual {v4, v8}, Lamigo/widget/AmigoButton;->setVisibility(I)V

    .line 730
    :goto_0
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x90b0036

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lamigo/widget/AmigoButton;

    iput-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;

    .line 731
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;

    iget-object v6, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lamigo/widget/AmigoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 734
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;

    invoke-virtual {v4, v8}, Lamigo/widget/AmigoButton;->setVisibility(I)V

    .line 742
    :goto_1
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x90b0037

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lamigo/widget/AmigoButton;

    iput-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    .line 743
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    iget-object v6, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Lamigo/widget/AmigoButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 746
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    invoke-virtual {v4, v8}, Lamigo/widget/AmigoButton;->setVisibility(I)V

    .line 755
    :goto_2
    sget-boolean v4, Lcom/amigo/internal/app/AmigoAlertController;->mIsGnWidget3Style:Z

    if-eqz v4, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoAlertController;->setupButtonStyle()V

    .line 760
    :cond_0
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amigo/internal/app/AmigoAlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 765
    if-ne v3, v2, :cond_5

    .line 766
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    invoke-direct {p0, v4}, Lcom/amigo/internal/app/AmigoAlertController;->centerButton(Lamigo/widget/AmigoButton;)V

    .line 774
    :cond_1
    :goto_3
    if-eqz v3, :cond_7

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 723
    :cond_2
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    iget-object v6, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/amigo/internal/app/AmigoAlertController;->mPositiveColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lamigo/widget/AmigoButton;->setTextColor(I)V

    .line 725
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    iget-object v6, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    invoke-virtual {v4, v5}, Lamigo/widget/AmigoButton;->setVisibility(I)V

    .line 727
    or-int/2addr v3, v2

    goto :goto_0

    .line 736
    :cond_3
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;

    iget-object v6, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;

    invoke-virtual {v4, v5}, Lamigo/widget/AmigoButton;->setVisibility(I)V

    .line 739
    or-int/2addr v3, v0

    goto :goto_1

    .line 748
    :cond_4
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    iget-object v6, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Lamigo/widget/AmigoButton;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    invoke-virtual {v4, v5}, Lamigo/widget/AmigoButton;->setVisibility(I)V

    .line 751
    or-int/2addr v3, v1

    goto :goto_2

    .line 767
    :cond_5
    if-ne v3, v0, :cond_6

    .line 768
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    invoke-direct {p0, v4}, Lcom/amigo/internal/app/AmigoAlertController;->centerButton(Lamigo/widget/AmigoButton;)V

    goto :goto_3

    .line 769
    :cond_6
    if-ne v3, v1, :cond_1

    .line 770
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    invoke-direct {p0, v4}, Lcom/amigo/internal/app/AmigoAlertController;->centerButton(Lamigo/widget/AmigoButton;)V

    goto :goto_3

    :cond_7
    move v4, v5

    .line 774
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 8
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v7, 0x90b0034

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    .line 664
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 666
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 673
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x90b0008

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    .line 674
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 679
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 681
    :cond_2
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 684
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_5

    .line 685
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 686
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "listHeight":I
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 694
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContextMenuDialogMaxHeight:I

    .line 698
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 696
    :cond_3
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mAlertDialogMaxHeight:I

    goto :goto_1

    .line 702
    .end local v0    # "listHeight":I
    :cond_4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 706
    :cond_5
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 8
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v7, 0x90b0032

    const/4 v0, 0x0

    const/16 v6, 0x8

    .line 598
    const/4 v1, 0x1

    .line 600
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 602
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 605
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 609
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 660
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 611
    :cond_0
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 613
    .local v0, "hasTextTitle":Z
    :cond_1
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x90b001d

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    .line 614
    if-eqz v0, :cond_4

    .line 616
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x90b0033

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitleView:Landroid/widget/TextView;

    .line 618
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 634
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 635
    :cond_2
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 636
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 648
    :cond_3
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 653
    :cond_4
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 654
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 485
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b002a

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 486
    .local v2, "contentPanel":Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/amigo/internal/app/AmigoAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 487
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoAlertController;->setupButtons()Z

    move-result v4

    .line 489
    .local v4, "hasButtons":Z
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b002b

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 490
    .local v1, "topPanel":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcom/amigo/internal/R$styleable;->AmigoAlertDialog:[I

    const v12, 0x9010070

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 492
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/amigo/internal/app/AmigoAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 494
    .local v6, "hasTitle":Z
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b002c

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 495
    .local v7, "buttonPanel":Landroid/view/View;
    if-nez v4, :cond_0

    .line 496
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_0
    const/4 v3, 0x0

    .line 501
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b002d

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 503
    .restart local v3    # "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b002e

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 504
    .local v8, "custom":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 506
    iget v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 519
    .end local v8    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 520
    const/4 v9, 0x0

    .line 521
    .local v9, "divider":Landroid/view/View;
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_7

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b002f

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 543
    :goto_1
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b0031

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonCancel:Landroid/widget/ImageButton;

    .line 554
    .end local v9    # "divider":Landroid/view/View;
    :cond_4
    iget-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIsStrongHint:Z

    if-nez v0, :cond_5

    move-object v0, p0

    .line 555
    invoke-direct/range {v0 .. v7}, Lcom/amigo/internal/app/AmigoAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 557
    :cond_5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 559
    invoke-virtual {p0, v1, v2, v3, v7}, Lcom/amigo/internal/app/AmigoAlertController;->changeColor(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 560
    return-void

    .line 513
    :cond_6
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b002d

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 524
    .restart local v9    # "divider":Landroid/view/View;
    :cond_7
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const v10, 0x90b0030

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method private strongHintDialogWindow()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 312
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 313
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 314
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 315
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 316
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 317
    return-void
.end method


# virtual methods
.method public changeColor(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/widget/FrameLayout;
    .param p4, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 565
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->isNeedChangeColor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mCustomTitleView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getContentColorPrimaryOnBackgroud_C1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    :cond_3
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 579
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 581
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 583
    if-eqz p3, :cond_4

    .line 584
    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getPopupBackgroudColor_B2()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 589
    :cond_4
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    invoke-static {}, Lamigo/changecolors/ChameleonColorManager;->getAccentColor_G1()I

    move-result v1

    invoke-virtual {v0, v1}, Lamigo/widget/AmigoButton;->setTextColor(I)V

    goto :goto_0
.end method

.method public getButton(I)Lamigo/widget/AmigoButton;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 458
    packed-switch p1, :pswitch_data_0

    .line 466
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositive:Lamigo/widget/AmigoButton;

    goto :goto_0

    .line 462
    :pswitch_1
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegative:Lamigo/widget/AmigoButton;

    goto :goto_0

    .line 464
    :pswitch_2
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutral:Lamigo/widget/AmigoButton;

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 444
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 445
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 446
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 4

    .prologue
    const/high16 v3, 0x20000

    .line 284
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 286
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/amigo/internal/app/AmigoAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 291
    :cond_1
    iget-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIsStrongHint:Z

    if-eqz v1, :cond_4

    .line 292
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    iget v2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mStrongHintLayout:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    const v2, 0x9080005

    if-eq v1, v2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 301
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 305
    .end local v0    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoAlertController;->setupView()V

    .line 306
    iget-boolean v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIsStrongHint:Z

    if-eqz v1, :cond_3

    .line 307
    invoke-direct {p0}, Lcom/amigo/internal/app/AmigoAlertController;->strongHintDialogWindow()V

    .line 309
    :cond_3
    return-void

    .line 294
    :cond_4
    iget-object v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mWindow:Landroid/view/Window;

    iget v2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mAlertDialogLayout:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->holdByStrongHint(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amigo/internal/app/AmigoAlertController;->holdByStrongHint(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 377
    sget-boolean v0, Lcom/amigo/internal/app/AmigoAlertController;->mIsGnWidget3Style:Z

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amigo/internal/app/AmigoAlertController;->setHasCancelIcon(Z)V

    .line 382
    :cond_0
    if-nez p4, :cond_1

    if-eqz p3, :cond_1

    .line 383
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 386
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AmigoButton does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :pswitch_0
    iput-object p2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 390
    iput-object p4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 406
    :goto_0
    return-void

    .line 394
    :pswitch_1
    iput-object p2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 395
    iput-object p4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 399
    :pswitch_2
    iput-object p2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 400
    iput-object p4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonStyle(II)V
    .locals 1
    .param p1, "whichButton"    # I
    .param p2, "buttonStyle"    # I

    .prologue
    .line 1230
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1231
    iput p2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonPositiveStyle:I

    .line 1235
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    .line 1233
    iput p2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonNeutralStyle:I

    goto :goto_0
.end method

.method public setCancelIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "cancelIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonCancel:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mButtonCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1209
    :cond_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mCustomTitleView:Landroid/view/View;

    .line 331
    return-void
.end method

.method public setGnWidget3Style(Z)V
    .locals 0
    .param p1, "isGnWidget3Style"    # Z

    .prologue
    .line 1238
    sput-boolean p1, Lcom/amigo/internal/app/AmigoAlertController;->mIsGnWidget3Style:Z

    .line 1239
    return-void
.end method

.method public setHasCancelIcon(Z)V
    .locals 0
    .param p1, "hasCancelIcon"    # Z

    .prologue
    .line 1202
    iput-boolean p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mHasCancelIconButton:Z

    .line 1203
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 415
    iput p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconId:I

    .line 416
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 417
    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconId:I

    .line 428
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mForceInverseBackground:Z

    .line 451
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 335
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    return-void
.end method

.method public setStrongHint(Z)V
    .locals 0
    .param p1, "strongHint"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mIsStrongHint:Z

    .line 280
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 321
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mView:Landroid/view/View;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingSpecified:Z

    .line 346
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 353
    iput-object p1, p0, Lcom/amigo/internal/app/AmigoAlertController;->mView:Landroid/view/View;

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingSpecified:Z

    .line 355
    iput p2, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingLeft:I

    .line 356
    iput p3, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingTop:I

    .line 357
    iput p4, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingRight:I

    .line 358
    iput p5, p0, Lcom/amigo/internal/app/AmigoAlertController;->mViewSpacingBottom:I

    .line 359
    return-void
.end method
